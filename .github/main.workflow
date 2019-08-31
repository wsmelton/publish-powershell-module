workflow "main" {
  on = "push"
  resolves = ["Publish to PowerShell Gallery"]
}

action "Publish to PowerShell Gallery" {
  uses = "./"
  secrets = ["apikey"]
  env = {
    TAGS=['test1','test2','test3']
  }
}
