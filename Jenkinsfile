pipeline {
  agent any
  
    stages {
      stage('Docker Build') {
	when {
	     branch 'main'
	}
      agent any
      steps {
        sh 'docker build -t avis2good/frontend:latest ./frontend'
	sh 'docker build -t avis2good/backend:latest ./backend'
	sh 'docker build -t avis2good/mysql:latest ./mysql'
      }
    }
    stage('Docker Push') {
	when {
		branch 'main'
	}
      agent any
      steps {
    
    withCredentials([usernamePassword(credentialsId: 'docker_hub_login', passwordVariable: 'docker_hub_loginPassword', usernameVariable: 'docker_hub_loginUser')]) {
          sh "docker login -u ${env.docker_hub_loginUser} -p ${env.docker_hub_loginPassword}"
          sh 'docker push avis2good/frontend:latest'
	  sh 'docker push avis2good/backend:latest'
	  sh 'docker push avis2good/mysql:latest'
        }
      }
    }
     
    
}
} 
