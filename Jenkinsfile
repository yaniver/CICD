pipeline {
  agent any
  options {
    timeout(time: 15, unit: 'HOURS')
  }
  stages {
    stage('Clean') {
      steps {
        sh '~/CICD/jenkinsPipelineShellScripts/clean.sh'
      }
    }

    stage('Prometheus') {
      steps {
        echo "Deploy Prometheus: ${date}"

        sh '~/CICD/jenkinsPipelineShellScripts/dockpromDeploy.sh'
      }
    }

    stage('Solr Exporter') {
      steps {
        echo "Deploy solr exporter: ${date}"
        sh '~/CICD/jenkinsPipelineShellScripts/solrExporterDeploy.sh'
      }
    }

    stage('Parallel Stage') {
    failFast true
        parallel {
            stage('JMeter run') {
              steps {
                echo "Deploy JMeter: ${date}"
                sh '~/CICD/jenkinsPipelineShellScripts/jmeterScriptExec.sh'
              }
            }
            stage('Grafana Alerts') {
              steps {
                sh '~/CICD/jenkinsPipelineShellScripts/grafanaAlert.sh'
              }
            }
        }
    }
  }
  environment {
    ZK_HOST = '10.16.250.7'
    COLLECTION_NAME = 'collection2'
    SOLR_IP = '10.16.250.247:8983'
  }
  post {
    always {
      sh '~/CICD/jenkinsPipelineShellScripts/clean.sh'
    }		
  }
}
