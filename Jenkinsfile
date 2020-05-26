def dockeruser = "a20687iscte"
def wp_container = "docker_wordpress_1"
def db_container = "docker_db_1"


node {
    echo 'Building Apache Docker Image'
    
    stage('Git Checkout') {
        git 'https://github.com/bgnni-iscteiul/ES-II'
    }
    
    
    stage('Run from Docker-Compose'){
        powershell "docker-compose up -d"
    }
   
    stage('Stop Containers'){
        powershell "docker stop ${wp_container}"
        powershell "docker stop ${db_container}"
    }
    
    stage('Remove Containers'){
        powershell "docker container prune"
    }
    
    stage('Running Container to Test'){
        powershell "docker run -d --name ${wp_container}"
    }
    
    stage('Tag Images'){
        powershell "docker tag ${wp_container} ${env.dockeruser}/es2:1.0"
    }
    
    stage('Pushing Images to DockerHub'){
       withCredentials([usernamePassword(credentialsId: 'docker-hub-credentials', passwordVariable: 'dockerpasswd', usernameVariable: 'dockeruser')]) {
           powershell "docker login -u ${dockeruser} -p ${dockerpasswd}"
       }
       powershell "docker push ${dockeruser}/es2:1.0"
    }
    
}
