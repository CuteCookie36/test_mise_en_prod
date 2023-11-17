pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                git branch: 'try-jenkins', url: 'https://github.com/CuteCookie36/test_mise_en_prod'
            }
        }

        stage('Build') {
            steps {
                script {
                    docker.build("test_mise_en_prod-java-1");
                }
            }
        }

        stage('Push') {
            steps {
                sh 'docker login -u stella639445 -p SteakHache5445!'
                sh 'docker image push back_app'
            }
        }
    }
}