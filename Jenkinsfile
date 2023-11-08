pipeline {
    agent none
    stages {
        stage('Build Java Project') {
            agent {label 'master'}
            steps {
                sh 'javac HelloWorld.java'
                sh 'jar cf HelloWorld.jar HelloWorld.class'
                stash name: 'my-artifact', includes: 'HelloWorld.jar'

            }
        }
        stage('Retrieve Artifact') {
            agent { label 'agent1'}
            steps {
                unstash 'my-artifact'
            }
        }
         stage('Execute Hello World') {
             steps {
                sh 'java -jar HelloWorld.jar' 
            }
          }
       }
    }
