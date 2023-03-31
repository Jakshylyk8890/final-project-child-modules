pipeline{

 agent  any//{ label 'Akmaral'}
 stages {
    stage('init') {
    steps {
        sh 'terraform init'
    }
    }
    stage('plan') {
    steps {
        withCredentials([aws(accessKeyVariable:'AWS_ACCESS_KEY_ID', credentialsId: 'aws3', secretKeyVarible: 'AWS_SECRET_ACCESS_KEY')]) {
        sh 'terraform plan '
        }
    }
    }
    stage('terraform apply') {
    steps {
        
        withCredentials([aws(accessKeyVariable:'AWS_ACCESS_KEY_ID', credentialsId: 'aws3', secretKeyVarible: 'AWS_SECRET_ACCESS_KEY')]) {
        sh 'terraform apply  -auto-approve '
        }
    }
    }
    stage('Integrate Jenkins with EKS Cluster and Deploy') {
    steps {
        withCredentials([aws(accessKeyVariable:'AWS_ACCESS_KEY_ID', credentialsId: 'aws3', secretKeyVarible: 'AWS_SECRET_ACCESS_KEY')]) {
            script {
                sh 'aws eks update-kubeconfig --name dev-eks --region us-east-1'
                sh 'kubectl apply -f nginx.yaml'
                // sh 'kubectl apply -f service.yaml'
            }
        }
    }
    }
    stage('terraform destroy') {
    input {
    message 'Are you sure to destroy all app'
    id 'envId'
    ok 'Submit'
    parameters {
        choice choices: ['no', 'yes', 'just', 'destroy'], name: 'proceed'
    }
    }
    steps {
        withCredentials([aws(accessKeyVariable:'AWS_ACCESS_KEY_ID', credentialsId: 'aws3', secretKeyVarible: 'AWS_SECRET_ACCESS_KEY')]) {
         sh 'terraform ${proceed} -auto-approve '
        }
    }
    }
 }
}
// pipeline {
//     agent any
// stages {
//         // stage('Git Checkout') {
//         //     steps {
//         //         git branch: 'EKS', credentialsId: 'jakshylyk-gi', url: 'https://github.com/Jakshylyk8890/final-project-child-modules.git'
//         //     }
//         // }
//         // stage('check pwd') {
//         //     steps {
//         //         sh 'ls'
//         //     }
//         // }
        
// 	stage('Terraform Init2') {
//             steps {
//                 sh 'terraform init'
//             }
//         }
//         stage('Terraform Plan2') {
//             steps {
                   
//                 withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'aws2', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY']]) 
//                 {
//                 sh 'terraform plan'
//                 }
//             }
//             }
//         stage('Terraform Apply2') {
//             steps {
// 		    // timeout(time: 15, unit: "MINUTES") {
// 	        //             input message: 'Do you want to approve the Terraform apply?', ok: 'Yes'
// 	        //         }
			
// 	        //         echo "Initiating deployment"
//                 withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'aws2', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY']]) 
		    
// 		    {
                
//                 sh 'terraform apply -auto-approve'
//                 }
//             }
//         }
// //         stage('Terraform Destroy') {
// //             steps {
// //                 withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'aws2', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY']]) 
      
// // 		    {
                
// //                 sh 'terraform destroy --auto-approve'
// //                 }
// //             }
// //         }
// 	stage('terraform destroy') {
//     input {
//     message 'Are you sure to destroy all app'
//     id 'envId'
//     ok 'Submit'
//     parameters {
//         choice choices: ['no', 'yes', 'minnn', 'destroy'], name: 'proceed'
//     }
//     }
//     steps {
//         withCredentials([aws(accessKeyVariable:'AWS_ACCESS_KEY_ID', credentialsId: 'aws2', secretKeyVarible: 'AWS_SECRET_ACCESS_KEY')]) {
//          sh 'terraform ${proceed} -auto-approve '
//         }
//     }
//     }
   
// }
