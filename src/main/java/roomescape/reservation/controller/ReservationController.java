package roomescape.reservation.controller;

import java.net.URI;
import java.time.LocalDate;
import java.util.List;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import roomescape.reservation.dto.request.CreateReservationRequest;
import roomescape.reservation.dto.response.CreateReservationResponse;
import roomescape.reservation.dto.response.FindAvailableTimesResponse;
import roomescape.reservation.dto.response.FindReservationResponse;
import roomescape.reservation.service.ReservationService;

@RestController
public class ReservationController {

    private final ReservationService reservationService;

    public ReservationController(final ReservationService reservationService) {
        this.reservationService = reservationService;
    }

    @PostMapping("/reservations")
    public ResponseEntity<CreateReservationResponse> createReservation(
            @RequestBody CreateReservationRequest createReservationRequest) {
        CreateReservationResponse createReservationResponse = reservationService.createReservation(
                createReservationRequest);
        return ResponseEntity.created(URI.create("/reservations/" + createReservationResponse.id()))
                .body(createReservationResponse);
    }

    @GetMapping("/reservations")
    public ResponseEntity<List<FindReservationResponse>> getReservations() {
        return ResponseEntity.ok(reservationService.getReservations());
    }

    @GetMapping("/reservations/{id}")
    public ResponseEntity<FindReservationResponse> getReservation(@PathVariable final Long id) {
        return ResponseEntity.ok(reservationService.getReservation(id));
    }

    @GetMapping("/reservations/times")
    public ResponseEntity<List<FindAvailableTimesResponse>> getAvailableTimes(@RequestParam LocalDate date,
                                                                              @RequestParam Long themeId) {
        return ResponseEntity.ok(reservationService.getAvailableTimes(date, themeId));
    }

    @DeleteMapping("/reservations/{id}")
    public ResponseEntity<Void> deleteReservation(@PathVariable Long id) {
        reservationService.deleteReservation(id);
        return ResponseEntity.noContent().build();
    }
}
