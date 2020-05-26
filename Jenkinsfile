def dockeruser = "a20687iscte"
def wp_container = "wordpress_project"
def db_container = "wordpress_project_db"


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
        pwershell "docker run -d --name ${wp_container}"
    
}
