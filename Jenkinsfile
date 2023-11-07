pipeline {
    agent none
    stages {
        stage('Build Java Project') {
            agent {label 'master'}
            steps {
                sh 'javac HelloWorld.java'
                sh 'jar cvf HelloWorld.jar Manifest.txt HelloWorld.class'
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
