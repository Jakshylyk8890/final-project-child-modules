pipeline {
    agent any
stages {
        // stage('Git Checkout') {
        //     steps {
        //         git branch: 'EKS', credentialsId: 'jakshylyk-gi', url: 'https://github.com/Jakshylyk8890/final-project-child-modules.git'
        //     }
        // }
        // stage('check pwd') {
        //     steps {
        //         sh 'ls'
        //     }
        // }
        stage('Terraform Init') {
            steps {
                sh 'terraform -chdir=vpc init'
            }
        }
        stage('Terraform Plan') {
            steps {
                   
                withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'aws-1', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY']]) 
                {
                sh 'terraform -chdir=vpc plan'
                }
            }
            }
        stage('Terraform Apply') {
            steps {
		    // timeout(time: 15, unit: "MINUTES") {
	        //             input message: 'Do you want to approve the Terraform apply?', ok: 'Yes'
	        //         }
			
	        //         echo "Initiating deployment"
                withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'aws-1', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY']]) 
		    
		    {
                
                sh 'terraform -chdir=vpc apply -auto-approve'
                }
            }
        }
	stage('Terraform Init') {
            steps {
                sh 'terraform -chdir=eks init'
            }
        }
        stage('Terraform Plan') {
            steps {
                   
                withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'aws-1', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY']]) 
                {
                sh 'terraform -chdir=eks plan'
                }
            }
            }
        stage('Terraform Apply') {
            steps {
		    // timeout(time: 15, unit: "MINUTES") {
	        //             input message: 'Do you want to approve the Terraform apply?', ok: 'Yes'
	        //         }
			
	        //         echo "Initiating deployment"
                withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'aws-1', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY']]) 
		    
		    {
                
                sh 'terraform -chdir=eks apply -auto-approve'
                }
            }
        }
        stage('Terraform Destroy') {
            steps {
                withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'aws-1', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY']]) 
      
		    {
                
                sh 'terraform destroy --auto-approve'
                }
            }
        }
    }
    post {
	
       success {
           emailext to: "jakshylyk.ashyrmamatov@gmail.com",
            subject: "Sended by Jakshylyk",
            body: "FROM Jenkins",
            attachLog: true
		    }
    }
}
