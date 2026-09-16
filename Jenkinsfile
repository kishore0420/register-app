pipeline{
    agent any
    tools{
        maven 'maven'
    }
      environment {
        AWS_REGION = 'us-east-1'
        ECR_REGISTRY = '463556655164.dkr.ecr.us-east-1.amazonaws.com'
        ECR_REPOSITORY = 'register-app'
        IMAGE_NAME = 'register-app'
        IMAGE_TAG = "${BUILD_NUMBER}"
        ECR_IMAGE = "${ECR_REGISTRY}/${ECR_REPOSITORY}:${IMAGE_TAG}"
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
                    sh 'docker build -t ${IMAGE_NAME}:${IMAGE_TAG} .'
                }
            }
        }
        stage('trivy scan'){
            steps{
                script{
                    sh 'trivy image --exit-code 1 --severity HIGH,CRITICAL ${IMAGE_NAME}:${IMAGE_TAG}'
                }
            }
        }
        stage('ECR login'){
            steps{
                script{
                    sh 'aws ecr get-login-password --region ${AWS_REGION} | docker login --username AWS --password-stdin ${ECR_REGISTRY}'
                }
            }
        }
        stage('docker push'){
            steps{
                script{
                    sh 'docker tag ${IMAGE_NAME}:${IMAGE_TAG} ${ECR_IMAGE}'
                    sh 'docker push ${ECR_IMAGE}'
                }
            }
        }

    }        
}

    
   
