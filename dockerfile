FROM python:3.13.3-bullseye

WORKDIR /app

COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /bin/

COPY .python-version .
COPY pyproject.toml .
COPY uv.lock .

COPY . .

RUN uv sync --no-dev --frozen --no-install-project

CMD ["uv", "run", "main.py"]
