# Dockerfile for book_catalog microservice
# Use the official Python image from the Docker Hub
FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements.txt file into the container at /app
COPY /book_catalog/requirements.txt .

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container
COPY ./book_catalog ./book_catalog

# Set environment variables for the Postgres connection
ENV POSTGRES_HOST=dpg-cr7h22i3esus7389oj50-a.singapore-postgres.render.com
ENV POSTGRES_PORT=5432
ENV POSTGRES_DB=sit722_part2_zdo7
ENV POSTGRES_USER=sit722_part2_zdo7_user
ENV POSTGRES_PASSWORD=xyOUKEjlrs0JAYdf9BqZDrAIg1ggmPZI

# Expose the port the app runs on
EXPOSE 8000

# Set the command to run the application
CMD ["python", "book_catalog/main.py"]
