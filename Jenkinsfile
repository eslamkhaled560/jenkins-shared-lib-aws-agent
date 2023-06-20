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
                sh "${D} build -t islamdevops/simple-docker:${BUILD_NUMBER} ."
                echo "Build for environment ${params.ENVIRONMENT} is successful"
            }
        }
        stage('Deploy') {
            steps {
	        sh "${D} push islamdevops/simple-docker:${BUILD_NUMBER}"
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
