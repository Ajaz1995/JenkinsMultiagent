pipeline {
    agent any
    stages {
        stage('Build Java Project') {
            steps {
                sh 'javac HelloWorld.java'
                sh 'jar cfm HelloWorld.jar Manifest.txt HelloWorld.class'
                stash includes: 'HelloWorld.jar', name: 'myapp'
            }
        }
        stage('Execute HelloWorld') {
            agent { label 'agent1'}
            steps {
                unstash 'myapp'
                sh 'java -jar myapp/HelloWorld.jar' 
            }
          }
       }
    }
