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
	stage('Cleanup') {
            steps {
                sh 'docker stop $(docker ps -q)'
                sh 'docker rm $(docker ps -a -q)'
		echo "Cleanup is successful"
            }
        }
    }
}
