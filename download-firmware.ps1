$RunId = gh run list `
  --status success `
  --limit 1 `
  --json databaseId `
  --jq '.[0].databaseId'

$downloadDir = "./downloads/$RunId"

if(Test-Path $downloadDir){
  exit
}

mkdir $downloadDir

gh run download $RunId --dir ./downloads/$RunId
