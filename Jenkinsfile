@Library('my-shared-library') _

pipeline{
    agent any
    stages{
        stage('Git checkout'){
            steps{
                script{
                    gitCheckout(
                        branch: "main",
                        url: "https://github.com/THARUN13055/maven_dev_4.git"
                    )
                }
            }
        }
        stage('Maven test'){
            steps{
                script{
                    mvnTest()
                }
            }
        }
        stage('Maven Integration test'){
            steps{
                script{
                    integrationTest()
                }
            }
        }
        stage('Maven Install'){
            steps{
                script{
                    mvnUnitTest()
                }
            }
        }
    }
}