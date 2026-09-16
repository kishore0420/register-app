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
                    sh 'mvn clean package -DskipTests'

                }
                
            }
        }
        stage('test'){
            steps{
                dir('webapp'){
                    sh 'mvn test'
                }
            }
        }
        stage('sonarqube analysis'){
            steps{
                script{
                    withSonarQubeEnv(credentialsId: 'jenkins-sonarqube') {
                        sh 'mvn org.sonarsource.scanner.maven:sonar-maven-plugin:sonar'
                    }

                }
            }
        }
        stage('quality gate'){
            steps{
                timeout(time: 5, unit: 'MINUTES'){
                    waitForQualityGate abortPipeline: true
                }
            }
        }
        stage('docker build'){
            steps{
                script{
                    sh 'docker build -t kishore0420/register-app:1.0 .'
                }
            }
        }
        stage('trivy scan'){
            steps{
                script{
                    sh 'trivy image --exit-code 1 --severity HIGH,CRITICAL kishore0420/register-app:1.0'
                }
            }
        }
    }
}