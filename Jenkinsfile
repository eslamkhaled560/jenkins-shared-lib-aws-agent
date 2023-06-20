pipeline {
    agent any
    environment {
        D = 'docker'
    }

    stages {
        stage('Build') {
            steps {
                sh '${D} build -t islamdevops/pvt-repo:${BUILD_NUMBER} .'
                echo 'Build is successful'
            }
        }
        stage('Test') {
            steps {
                sh '${D} run -d -p 5000:80 islamdevops/pvt-repo:${BUILD_NUMBER}'
                sh 'curl localhost:5000'
	        	sh '${D} stop islamdevops/pvt-repo:${BUILD_NUMBER}'
	        	echo 'Test is successful'
            }
        }
    stages {
        stage('Deploy') {
            steps {
                withCredentials([
                    usernamePassword(credentials: 'docker-hub', usernameVariable: USER, passwordVariable: PWD)
                ])
                sh '${D} login -t -u ${USER} -p ${PWD}'
	        	sh '${D} push islamdevops/pvt-repo:${BUILD_NUMBER}'
	        	echo 'Deployment is successful'
            }
        }
    
    }
}
