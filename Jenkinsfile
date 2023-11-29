pipeline {
    agent none
    stages {
        stage('Build Java Project') {
        agent {
                docker { image 'openjdk:22-slim-bullseye' }
            }
            steps {
                sh 'javac HelloWorld.java'
                sh 'jar cfm HelloWorld.jar Manifest.txt HelloWorld.class'
                sh 'ls'
                stash name: 'my-artifact', includes: 'HelloWorld.jar'
                sh 'rm -f HelloWorld.jar'
            }
        }
        stage('List Files') {
            agent {
                docker { image 'openjdk:22-slim-bullseye' }
            }
            steps {
                echo 'Listing files in the working directory' 
                sh 'ls'
            }
        }
        stage('Execute Hello World') {
            agent {
                docker { image 'openjdk:22-slim-bullseye' }
            }
            steps {
                unstash 'my-artifact'
                sh 'java -jar HelloWorld.jar' 
            }
        }
    }
 }
