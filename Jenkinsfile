pipeline {
    agent none
    stages {
        stage('Build Java Project') {
            agent { dockerfile true }
            steps {
                sh 'javac HelloWorld.java'
                sh 'jar cfm HelloWorld.jar Manifest.txt HelloWorld.class'
                sh 'ls'
                stash name: 'my-artifact', includes: 'HelloWorld.jar'
                sh 'rm -f HelloWorld.jar'
            }
        }
        stage('List Files') {
            agent { dockerfile true }
            steps {
                sh 'ls'
            }
        }
        stage('Execute Hello World') {
            agent { dockerfile true }
            steps {
                unstash 'my-artifact'
                sh 'java -jar HelloWorld.jar' 
            }
        }
    }
}
