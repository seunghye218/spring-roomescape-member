package roomescape.reservation.dto.response;

import roomescape.theme.model.Theme;

public record FindThemeOfReservationResponse(Long id, String name, String description, String thumbnail) {

    public static FindThemeOfReservationResponse of(final Theme theme) {
        return new FindThemeOfReservationResponse(
                theme.getId(),
                theme.getName(),
                theme.getDescription(),
                theme.getThumbnail());
    }
}
