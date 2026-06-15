# Usar una imagen oficial de Python liviana
FROM python:3.11-slim

# Evitar archivos .pyc y asegurar salida de logs en tiempo real
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Establecer el directorio de trabajo
WORKDIR /app

# Instalar pytest y ruff
RUN pip install --no-cache-dir pytest ruff

# Copiar el código del proyecto al contenedor
COPY . .

# Ejecutar ruff (linter) y luego pytest (tests)
# El operador '&&' asegura que si ruff falla, el proceso se detiene y avisa al CI
CMD ["sh", "-c", "ruff check . && pytest"]
