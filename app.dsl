multibranchPipelineJob("App") {
  factory {
    workflowBranchProjectFactory {
        scriptPath('Jenkinsfile')
    }
  }
  branchSources {
      git {
        credentialsId("github_ssh")
        remote("ssh://git@github.com:amit242/app.git")
      }
  }
  orphanedItemStrategy {
    discardOldItems {
      numToKeep(5)
    }
  }
}
