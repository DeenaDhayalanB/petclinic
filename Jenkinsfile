env.dockerimagename="devopsbasservice/buildonframework:buildonJenkinsfile2.0"
pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        echo 'Build started!'
      }
    }
    stage('Test') {
      parallel {
        stage('Unit Tests') {
          steps {
            echo 'Unit Tests Are Awesome!'
          }
        }
        stage('Integration Tests') {
          steps {
            echo 'Integration Tests Are Awesome!'
          }
        }
        stage('Smoke Tests') {
          steps {
            echo 'Where There is Smoke there is Fire!!!'
          }
        }
        stage('Reg Test') {
          steps {
            echo 'Reg Test executed'
          }
        }
      }
    }
    stage('CodeAnalysis') {
      steps {
        echo '-----Sonar Analysis started----'
      }
    }
    stage('Deploy') {
      steps {
        echo 'Ship It!'
      }
    }
  }
}
