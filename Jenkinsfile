@Library('my-shared-library') _

pipeline{

    agent any

    parameters{
        choice(name: 'action', choices: 'create\ndelete', description: 'choose create/Destroy')
        string(name: 'imageName', description: "this is the image", defaultValue: 'java-app')
        string(name: 'imagetag', description: "this is the tags", defaultValue: 'v1')
        string(name: 'hubname', description: "this is the dockerhubname", defaultValue: 'tharun13055')
    }

    stages{

        stage('Git checkout'){
            when { expression { params.action == 'create' } }
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
            when { expression { params.action == 'create' } }
            steps{
                script{
                    mvnTest()
                }
            }
        }

        stage('Maven Integration test'){
            when { expression { params.action == 'create' } }
            steps{
                script{
                    integrationTest()
                }
            }
        }

        stage('Maven Install'){
            when { expression { params.action == 'create' } }
            steps{
                script{
                    mvnUnitTest()
                }
            }
        }
        stage('docker image create'){
            when { expression { params.action == 'create' } }
            steps{
                script{
                    dockerbuild("${params.imageName}", "${params.imagetag}", "${params.hubname}")
                }
            }
        }
        stage('trivy scan'){
            when { expression { params.action == 'create' } }
            steps{
                script{
                    trivyScan("${params.imageName}", "${params.imagetag}", "${params.hubname}")
                }
            }
        }
        stage('docker push'){
            when { expression { params.action == 'create' } }
            steps{
                script{
                    dockerpush("${params.imageName}", "${params.imagetag}", "${params.hubname}")
                }
            }
        }
    }
}