# https://developers.home-assistant.io/docs/add-ons/configuration#add-on-dockerfile
ARG BUILD_FROM
FROM ghcr.io/advplyr/audiobookshelf:2.32.1 AS audiobookshelf

FROM $BUILD_FROM

# Install runtime dependencies
RUN apk add --no-cache nodejs ffmpeg

# Copy audiobookshelf from upstream image
COPY --from=audiobookshelf /app /app
COPY --from=audiobookshelf /usr/local/lib/nusqlite3 /usr/local/lib/nusqlite3

# Use the musl-compiled SQLite unicode extension from the upstream image
# to prevent BinaryManager from downloading the wrong (glibc) variant
ENV NUSQLITE3_PATH="/usr/local/lib/nusqlite3/libnusqlite3.so"

# Copy root filesystem
COPY rootfs /
