pipeline {
    agent { label 'agent1'}
    stages {
        stage('Build Java Project') {
            steps {
                sh 'javac HelloWorld.java'
                sh 'jar cfm HelloWorld.jar Manifest.txt HelloWorld.class'
                sh 'pwd'
            }
        }
        stage('Stage 2') {
            steps {
                echo 'i’m on stage 2'
            }
        }
        stage('Execute HelloWorld') {
            steps {
                sh 'java -jar HelloWorld.jar'
            
            }
          }
       }
        post {
        success {
            archiveArtifacts artifacts: 'HelloWorld.jar'
       }
    }    
 }
