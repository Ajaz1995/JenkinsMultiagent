pipeline {
    agent {
        dockerfile true
    }
    stages {
        stage('Build Java Project') {
            //agent {label 'agent1'}
            steps {
                sh 'javac HelloWorld.java'
                sh 'jar cfm HelloWorld.jar Manifest.txt HelloWorld.class'
                sh 'ls'
                stash name: 'my-artifact', includes: 'HelloWorld.jar'
                sh 'rm -f HelloWorld.jar'
            }
        }
        stage('List Files') {
            //agent {label 'agent1'}
            steps {
                sh 'ls'
            }
        }
        stage('Execute Hello World') {
            //agent {label 'agent1'}
            steps {
                unstash 'my-artifact'
                sh 'java -jar HelloWorld.jar' 
            }
        }
    }
}
