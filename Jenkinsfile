pipeline {
    agent any
    stages {
        stage('Build Java Project') {
            agent { label 'agent1'}
            steps {
                sh 'javac HelloWorld.java'
                sh 'jar cfm HelloWorld.jar Manifest.txt HelloWorld.class'
                sh 'rm HelloWorld.jar'
                stash includes: 'HelloWorld.jar', name: 'myapp'
            }
        }
        stage('Execute HelloWorld') {
            steps {
                unstash 'myapp'
                //sh 'java -jar HelloWorld.jar' 
            }
          }
       }
    }
