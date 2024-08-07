pipeline {
    agent any
    
    stages {
        stage("Clone Code") {
            steps {
                echo "Cloning the code"
                git url: "https://github.com/harshrathore24/django-note-app.git", branch: "main"
            }
        }
   
        stage("Build and Run") {
            steps {
                echo "Building the image"
                sh "docker build -t my-note-app ."
                
                echo "Stopping and removing any existing container with the same name"
                sh "docker stop my-note || true"
                sh "docker rm my-note || true"
                
                echo "Running the container"
                sh "docker run -d -p 8000:8000 --name my-note my-note-app"
            }
        }
    }
}
