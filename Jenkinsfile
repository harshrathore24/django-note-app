pipeline {
    agent any 
    
    stages{
        stage("Clone Code"){
            steps {
                echo "Cloning the code"
                git url:"https://github.com/harshrathore24/django-note-app.git", branch: "main"
            }
        }
    stage('Test Docker') {
      steps {
         sh 'docker run --rm hello-world'
         }
       }

        stage("Build"){
            steps {
                echo "Building the image"
                sh "docker build -t my-note-app ."
            }
        }
       
    }
}
