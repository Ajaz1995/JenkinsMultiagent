pipeline {
    agent any
    stages {
        stage('Build Java Project') {
            steps {
                sh 'javac HelloWorld.java'
                sh 'jar cfm HelloWorld.jar Manifest.txt HelloWorld.class'
                sh 'pwd'
            }
        }
        
        stage('Execute HelloWorld') {
           agent { label 'agent1'}
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
