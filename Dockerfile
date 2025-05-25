FROM python:3.10-slim AS builder
WORKDIR /app
COPY . /app
RUN apt-get update && apt-get install binutils -y
RUN pip install pyinstaller
RUN pyinstaller --onefile app.py

FROM python:3.10-slim
WORKDIR /app
COPY --from=builder /app/dist/app .
CMD ["./app"]

