pipeline {
    agent any
    
    stages {
        stage("Clone Code") {
            steps {
                echo "Cloning the code"
                git url: "https://github.com/harshrathore24/django-note-app.git", branch: "main"
            }
        }
   
        stage("Build") {
            steps {
                echo "Building the image"
                sh "docker build -t my-note-app ."
                sh "docker run -d -p 3000:80 --name my-note my-note-app"

            }
        }
   

    }
}

