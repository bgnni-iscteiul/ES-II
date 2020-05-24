def dockeruser = "bin0206"
def imagename = "projeto"
def container = "projetoES2"

node {
    echo 'Building Apache Docker Image'
    
stage('Git Checkout') {
    git 'https://github.com/bgnni-iscteiul/ES-II'
    }
    
    
stage('Build Docker Image'){
    powershell "docker build -t ${imagename} ."
    }
    
}
