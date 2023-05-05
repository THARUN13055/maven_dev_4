@Library('my-shared-library') _

pipeline{

    agent any

    parameters{
        choice(name: 'action', choices: 'create\ndelete', description: 'choose create/Destroy')
    }

    stages{
        when { expression { params.action == 'create' } }
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
        when { expression { params.action == 'create' } }
        stage('Maven test'){
            steps{
                script{
                    mvnTest()
                }
            }
        }
        when { expression { params.action == 'create' } }
        stage('Maven Integration test'){
            steps{
                script{
                    integrationTest()
                }
            }
        }
        when { expression { params.action == 'create' } }
        stage('Maven Install'){
            steps{
                script{
                    mvnUnitTest()
                }
            }
        }
    }
}