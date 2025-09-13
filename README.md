Dockerized Flask Demo 🐳

A simple project to demonstrate running a Flask web application inside a Docker container.
The goal is to build a minimal Flask app, containerize it, and run it locally.

📂 Project Structure

app.py → Flask application code.

Dockerfile → Instructions to build the Docker image.

⚙️ Steps to Run
1️⃣ Clone the Repository
git clone https://github.com/<YourUserName>/Docker-Flask-Project.git
cd Docker-Flask-Project

2️⃣ Build the Docker Image
docker build -t flask-demo .

3️⃣ Run the Container
docker run -d -p 5000:5000 flask-demo

4️⃣ Open the App

Visit in your browser:
👉 http://localhost:5000

You should see:

Hello from Dockerized Flask!

🖼️ Screenshot:
<img width="1918" height="938" alt="Screenshot from 2025-09-13 17-31-26" src="https://github.com/user-attachments/assets/b4d3a899-d3bd-4c5e-8063-b9330f8b2a39" />


🐳 Dockerfile Explained
FROM python:3.9-slim        # Base image
WORKDIR /app                # Set working directory
COPY app.py .               # Copy Flask app
RUN pip install flask       # Install Flask
CMD ["python", "app.py"]    # Run the app


FROM → base image (Python 3.9 slim).

WORKDIR → sets the working directory inside the container.

COPY → copies app.py into the container.

RUN → installs dependencies (Flask).

CMD → defines the default command to run the app.
