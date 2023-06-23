@Library('shared-lib') _

pipeline {
    agent any

    stages {
	stage('git cofiguration') {
            steps {
        	git branch: 'dev', url: 'https://github.com/eslamkhaled560/simple-app.git'
		echo "git is cofigured succefully"
            }
        stage('Build') {
            steps {
        	buildImage()
            }
        }
        stage('Push') {
            steps {
	        pushImage()
            }
        }
	stage('CleanUp') {
            steps {
	        cleanUp()
            }
        }
    }
}
