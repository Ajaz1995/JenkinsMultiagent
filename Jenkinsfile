pipeline {
    agent any

    stages {
        stage('Build and Stash') {
            steps {
                // Step 1: Build the Java project and create JAR
                sh 'javac HelloWorld.java'
                sh 'jar cvf HelloWorld.jar HelloWorld.class'

                // Step 2: Stash the JAR file
                stash name: 'hello_world_jar', includes: 'HelloWorld.jar'
            }
        }

        stage('Pull and Execute') {
            steps {
                // Step 3: Unstash the JAR file
                unstash 'hello_world_jar'

                // Step 4: Execute the JAR file
                sh 'java -jar HelloWorld.jar'
            }
        }
    }
}
