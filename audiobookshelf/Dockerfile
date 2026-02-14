# https://developers.home-assistant.io/docs/add-ons/configuration#add-on-dockerfile
ARG BUILD_FROM
FROM ghcr.io/advplyr/audiobookshelf:2.32.1 AS audiobookshelf

FROM $BUILD_FROM

# Install runtime dependencies
RUN apk add --no-cache nodejs ffmpeg

# Copy audiobookshelf from upstream image
COPY --from=audiobookshelf /app /app
COPY --from=audiobookshelf /usr/local/lib/nusqlite3 /usr/local/lib/nusqlite3

# Skip BinaryManager's version check which rejects our binaries and
# downloads glibc variants that fail on Alpine/musl aarch64
ENV NUSQLITE3_PATH="/usr/local/lib/nusqlite3/libnusqlite3.so"
ENV FFMPEG_PATH="/usr/bin/ffmpeg"
ENV FFPROBE_PATH="/usr/bin/ffprobe"
ENV SKIP_BINARIES_CHECK="1"

# Copy root filesystem
COPY rootfs /
