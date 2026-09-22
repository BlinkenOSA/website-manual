FROM python:3.12-slim AS builder

ENV PIP_DISABLE_PIP_VERSION_CHECK=1 \
    PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

WORKDIR /manual

COPY requirements.txt ./
RUN python -m pip install --no-cache-dir --requirement requirements.txt

COPY mkdocs.yml ./
COPY docs ./docs

RUN mkdocs build --strict --clean --site-dir /site


FROM nginx:stable-alpine AS runtime

COPY deploy/site.nginx.conf /etc/nginx/conf.d/default.conf
COPY --from=builder /site/ /usr/share/nginx/html/

EXPOSE 80

HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD wget --quiet --spider http://127.0.0.1/healthz || exit 1

STOPSIGNAL SIGQUIT
