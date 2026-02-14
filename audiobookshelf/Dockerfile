# https://developers.home-assistant.io/docs/add-ons/configuration#add-on-dockerfile
ARG BUILD_FROM
FROM ghcr.io/advplyr/audiobookshelf:2.32.1 AS audiobookshelf

FROM $BUILD_FROM

# Install runtime dependencies
RUN apk add --no-cache nodejs ffmpeg

# Copy audiobookshelf from upstream image
COPY --from=audiobookshelf /app /app

# Copy root filesystem
COPY rootfs /
