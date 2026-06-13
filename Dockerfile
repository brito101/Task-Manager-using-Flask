FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

COPY . .

# Diretório persistente para o banco SQLite
VOLUME ["/app/todo_project/todo_project/instance"]

EXPOSE 5000

WORKDIR /app/todo_project

ENV FLASK_ENV=production

CMD ["python", "run.py"]
