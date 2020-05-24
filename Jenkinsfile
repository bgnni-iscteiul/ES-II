def dockeruser = "bin0206"
def wp_container = "docker_wordpress_1"
def db_container = "docker_db_1"


node {
    echo 'Building Apache Docker Image'
    
    stage('Git Checkout') {
        git 'https://github.com/bgnni-iscteiul/ES-II'
    }
    
    
    stage('Run from Docker-Compose'){
        cmd /c "docker-compose up -d ."
    }
   
    stage('Stop Containers'){
        powershell "docker stop ${wp_container}"
        powershell "docker stop ${db_container}"
    }
    
    stage('Remove Containers'){
        powershell "docker container prune"
    }
    
}
