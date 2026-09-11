pipeline{
    agent any
    tools{
        maven 'maven'
    }
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