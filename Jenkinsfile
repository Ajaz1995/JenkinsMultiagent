pipeline {
    agent none
    stages {
        stage('Build Java Project') {
            agent {label 'master'}
            steps {
                sh 'javac HelloWorld.java'
                sh 'jar cf HelloWorld.jar HelloWorld.class'
                stash name: 'my-artifact', includes: '/var/jenkins_home/artifacts/hello-world.jar'

            }
        }
        stage('Execute HelloWorld') {
            agent { label 'agent1'}
            steps {
                unstash 'my-artifact'
                sh 'java -jar HelloWorld.jar' 
            }
          }
       }
    }
