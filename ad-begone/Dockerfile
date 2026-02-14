# https://developers.home-assistant.io/docs/add-ons/configuration#add-on-dockerfile
ARG BUILD_FROM
FROM $BUILD_FROM

# Install Python, ffmpeg, and ad-begone
RUN apk add --no-cache python3 py3-pip ffmpeg \
    && pip3 install --no-cache-dir --break-system-packages \
       ad-begone@git+https://github.com/samanthavbarron/ad-begone.git

# Copy root filesystem
COPY rootfs /
