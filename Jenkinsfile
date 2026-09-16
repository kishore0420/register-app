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
        stage('checkout scm'){
            steps{
                git branch: 'main', credentialsId: 'bb5b7dbe-5357-4961-aace-2c1e581fd7e4', url: 'git@github.com:kishore0420/register-app.git'
            }
        }
        stage('build'){
            steps{
                dir('webapp'){
                    sh 'mvn clean package'

                }
                
            }
        }
        stage('test'){
            steps{
                sh 'mvn test'
            }
        }
        stage('sonarqube analysis'){
            steps{
                script{
                    withSonarQubeEnv(credentialsId: 'jenkins-sonarqube') {
                        sh 'mvn sonar:sonar'
                    }

                }
            }
        }
    }
}