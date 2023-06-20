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
	 stage('Test') {
            steps {
		sh "${D} run -d --name python1 islamdevops/simple-docker:${BUILD_NUMBER} python /app/app.py"
            }
        }
        stage('Deploy') {
            steps {
	        sh "${D} push islamdevops/simple-docker:${BUILD_NUMBER}"
		echo "Deployment for environment ${params.ENVIRONMENT} is successful"
            }
        }
    }
}
