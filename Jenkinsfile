pipeline {
    agent any
 
    environment {
        VENV = 'venv'
    }
 
    stages {
        stage ("Build") {
            steps {
                sh '''
                    echo "building"
                    docker build -t minfy-python-demo .
                '''
            }
        }
        stage ("tag") {
            steps {
                sh'''
                    echo "tagging"
                    docker tag minfy-python-demo himaghna/minfy-python-demo:latest
                '''
            }
        }
        stage ("Push") {
            steps {
                sh'''
                    echo "pushing"
                    docker push himaghna/minfy-python-demo:latest
                '''
            }
        }
    }
}