multibranchPipelineJob("App") {
  factory {
    workflowBranchProjectFactory {
        scriptPath('Jenkinsfile')
    }
  }
  branchSources {
      git {
        credentialsId("github_ssh")
        remote("git@github.com:amit242/app.git")
      }
  }
  triggers {
    periodic(5)
  }
  orphanedItemStrategy {
    discardOldItems {
      numToKeep(5)
    }
  }
}
