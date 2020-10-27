pipeline {
    agent any
    stages {
        stage('sg-create-stack') {
            steps {
                sh "aws cloudformation create-stack --stack-name sg-stack --template-body file://sg.yml --region 'us-east-1'"
            }
        }
    }
}
