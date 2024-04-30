package roomescape.reservation.dto.request;

import java.time.LocalDate;
import roomescape.reservation.model.Reservation;
import roomescape.reservationtime.model.ReservationTime;

public record CreateReservationRequest(LocalDate date, String name, Long timeId) {
    public CreateReservationRequest(final LocalDate date, final String name, final Long timeId) {
        if (date == null || name.isBlank() || timeId == null) {
            throw new IllegalArgumentException("올바른 예약이 아닙니다.");
        }
        // 날짜 현재보다 이후인지
        this.date = date;
        this.name = name;
        this.timeId = timeId;
    }

    public Reservation toReservation(final ReservationTime reservationTime) {
        return new Reservation(
                null,
                this.name,
                this.date,
                reservationTime.getId(),
                reservationTime.getTime()
        );
    }
}
