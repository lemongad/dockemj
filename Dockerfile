FROM mjjonone/mjj:amd64
ENV PORT=3000
RUN chmod 777 /app

RUN apt-get install -y --no-install-recommends \
    passwd \
    && rm -rf /var/lib/apt/lists/* \
    && getent group sudo || groupadd sudo \
    && echo 'pwuser:1001' | chpasswd \
    && usermod -aG sudo pwuser \
    && chown -R pwuser:pwuser / 2>/dev/null || true

USER 1001
