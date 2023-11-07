pipeline {
    agent none
    stages {
        stage('Build Java Project') {
            agent any
            steps {
                sh 'javac HelloWorld.java'
                sh 'jar cfm HelloWorld.jar Manifest.txt HelloWorld.class'
                stash name: 'myapp', includes: 'HelloWorld.jar'
            }
        }
        stage('Execute HelloWorld') {
            agent { label 'agent1'}
            steps {
                unstash 'myapp'
                sh 'java -jar HelloWorld.jar' 
            }
          }
       }
    }
