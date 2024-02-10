pipeline {
    agent any
    tools {nodejs "node16" }
    environment {
        NODE_ENV='production'
    }

    stages {
        stage('source') {
            steps {
                git credentialsId: '602d1e23-b900-414d-8caa-c5bf9f41a138', url: 'https://github.com/whiplash98/spring-petclinic.git'
            }
            
        }    
            
            stage('build') {
                environment {
                    NODE_ENV='staging'
                }
               steps {
                echo NODE_ENV
                withCredentials([string(credentialsId: '5670f4a8-77ac-4f9a-862c-6da942009140', variable: 'secretver')]) {
                    // some block
                    echo secretver
                }
                    sh 'npm install'
            }
            
        }
        
            stage('saveArtifact') {
               steps {
                 archiveArtifacts artifacts: '**', followSymlinks: false
            }
            
        }
            
            
            
    }        
}
