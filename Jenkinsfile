@Library('my-shared-library') _

pipeline{
    agent any
    tools {
        maven "maven3.9.1"
    }
    stages{
        stage('Git checkout'){
            steps{
                script{
                    gitCheckout(
                        branch: "main"
                        url: 'https://github.com/THARUN13055/maven_dev_4.git'
                    )
                }
            }
        }
    }
}