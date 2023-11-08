pipeline {
    agent none
    stages {
        stage('Build Java Project') {
            agent {label 'master'}
            steps {
                sh 'javac HelloWorld.java'
                stash name: 'hello_world_jar', includes: 'HelloWorld.jar'
            }
        }
        stage('Execute HelloWorld') {
            agent { label 'agent1'}
            steps {
                unstash 'hello_world_jar'
                sh 'java -jar HelloWorld.jar' 
            }
          }
       }
    }
