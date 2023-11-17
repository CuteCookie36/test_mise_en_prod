pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                git branch: 'tryJenkins', url: 'https://github.com/CuteCookie36/test_mise_en_prod'
            }
        }

        stage('Build') {
            steps {
                script {
                    docker.build("test_mise_en_prod-java");
                }
            }
        }

        stage('Push') {
            steps {
                sh 'docker login -u stella639445 -p SteakHache5445!'
                sh 'docker image push test_mise_en_prod-java'
            }
        }
    }
}