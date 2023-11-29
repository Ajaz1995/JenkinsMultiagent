pipeline {
    agent none
    stages {
        stage('Build Java Project') {
            agent 
                { dockerfile true
                  args  '--no-cache'}
            steps {
                sh 'javac HelloWorld.java'
                sh 'jar cfm HelloWorld.jar Manifest.txt HelloWorld.class'
                sh 'ls'
                stash name: 'my-artifact', includes: 'HelloWorld.jar'
                sh 'rm -f HelloWorld.jar'
            }
        }
        stage('List Files') {
            agent 
                { dockerfile true
                  args  '--no-cache'}
            steps {
                echo 'Listing files in the working directory' 
                sh 'ls'
            }
        }
        stage('Execute Hello World') {
            agent 
                { dockerfile true
                  args  '--no-cache'}
            steps {
                unstash 'my-artifact'
                sh 'java -jar HelloWorld.jar' 
            }
        }
    }
}
