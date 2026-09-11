pipeline{
    agent any
    stages{
        stage('workspace clean'){
            steps{
                cleanWs()
            }
        }
        stage('build'){
            steps{
                sh 'mvn clean package'
            }
        }
    }
}