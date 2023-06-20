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
                sh "docker stop islamdevops/pvt-repo:${BUILD_NUMBER}"
                sh "docker rm islamdevops/pvt-repo:${BUILD_NUMBER}"
		echo "Cleanup for environment ${params.ENVIRONMENT} is successful"
            }
        }
    }
}
