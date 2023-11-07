pipeline {
    agent none
    stages {
        stage('Build Java Project') {
            agent { label 'agent1'}
            steps {
                sh 'javac HelloWorld.java'
                sh 'jar cfm HelloWorld.jar Manifest.txt HelloWorld.class'
                stash includes: '/root/jenkins/HelloWorld.jar', name: 'myapp'
            }
        }
        stage('Execute HelloWorld') {
            steps {
                sh 'java -jar HelloWorld.jar'
            
            }
          }
       }
    }

