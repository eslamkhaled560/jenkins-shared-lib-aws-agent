pipeline {
    agent any
    environment {
        D = 'docker'
    }
    parameters {
        string(name: 'ENVIRONMENT', defaultValue: 'dev', description: 'Environment to deploy')
        booleanParam(name: 'CLEAN_BUILD', defaultValue: true, description: 'Perform a clean build')
    }

    stages {
        stage('Build') {
            steps {
                sh "${D} build -t islamdevops/pvt-repo:${BUILD_NUMBER} ."
                echo "Build for environment ${params.ENVIRONMENT} is successful"
            }
        }
        stage('Test') {
            steps {
                sh "${D} run -d -p 5000:80 islamdevops/pvt-repo:${BUILD_NUMBER}"
                sh "curl localhost:5000"
	       	echo "Test for environment ${params.ENVIRONMENT} is successful"
            }
        }
        stage('Deploy') {
            steps {
                withCredentials([
                    usernamePassword(credentials: 'docker-hub', usernameVariable: USER, passwordVariable: PWD)
                ])
                sh "${D} login -t -u ${USER} -p ${PWD}"
	        sh "${D} push islamdevops/pvt-repo:${BUILD_NUMBER}"
		echo "Deployment for environment ${params.ENVIRONMENT} is successful"
            }
        }
	stage('Cleanup') {
            steps {
                sh "docker stop $(docker ps -q)"
                sh "docker rm $(docker ps -a -q)"
		echo "Cleanup for environment ${params.ENVIRONMENT} is successful"
            }
        }
    }
}
