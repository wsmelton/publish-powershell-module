workflow "main" {
  on = "push"
  resolves = ["Publish to PowerShell Gallery"]
}

action "Publish to PowerShell Gallery" {
  uses = "./"
  secrets = ["apikey"]
}
