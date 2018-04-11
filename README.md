# Api_server

## Criando estruturas de pastas 

rspec --init 
```
bundle init                   # gerar o arquivo Gemfile
```

Abrir o arquivo Gemfile e adicionar as gems:
```
gem "rspec"
gem "httparty"
```
No terminal executar o comando:

bundle install
```

## Instalando server

npm install -g json-server
```

## Criar arquivo json

touch info.json                              #criar na raiz do projeto

## Subindo server 

json-server info.json
```
O resultado será: 

  \{^_^}/ hi!

  Loading info.json
  Done

  Resources
  http://localhost:3000/users

  Home
  http://localhost:3000

  Type s + enter at any time to create a snapshot of the database
```
##executando os testes

Abra uma nova aba e digite o comando abaixo:

rspec spec/<name_spec>.rb
```