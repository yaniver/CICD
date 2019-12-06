pipeline {
  agent any
  stages {
    stage('Prometheus') {
      steps {
        sh '~/CICD/jenkinsPipelineShellScripts/dockpromDeploy.sh'
      }
    }

    stage('Solr Exporter') {
      steps {
        sh '~/CICD/jenkinsPipelineShellScripts/solrExporterDeploy.sh'
      }
    }

    stage('JMeter run') {
      steps {
        sh '~/CICD/jenkinsPipelineShellScripts/jmeterScriptExec.sh'
      }
    }

  }
  environment {
    ZK_HOST = '10.16.250.7'
    COLLECTION_NAME = 'collection2'
    SOLR_IP = '10.16.250.247:8983'
  }
}
