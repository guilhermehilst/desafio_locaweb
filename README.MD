# Problema da listagem de Tweets

## Instruções

A aplicação está dividida em duas partes: backend (Ruby on Rails) e frontend (Angular).

O README com as instruções para o desafio encontra-se no arquivo `README-desafio.MD` na raiz do projeto.

### Standalone

#### - Backend -

##### Dependências

* Ruby 2.4.0p0
* Rails 5.0.2
* Bundler 1.14.3

A aplicação backend encontra-se na pasta `desafio_locaweb_api`. 

Entre na pasta:
```
cd desafio_locaweb_api
```
Instale as dependências:
```
bundle install
```
Inicie o servidor:
```
rails server
```
O servidor backend pode ser acessado pelas urls:

`http://localhost:3000/most_relevants`  - Lista os tweets por relevância.

e 

`http://localhost:3000/most_mentions` - Lista os usuários que mais mencionam a Locaweb.

##### Testes

Para rodar a suite de teste rode o comando:
```
bundle exec rspec spec
```

#### - Frontend -

##### Dependências

* [Node.js](https://nodejs.org)

A aplicação backend encontra-se na pasta `desafio-locaweb-frontend`. 

Instale o Angularjs com o comando:
```
npm install -g angular-cli
```
Entre na pasta:
```
cd desafio-locaweb-frontend
```
Inicie o servidor:
```
ng serve
```
ou
```
npm start
```
O servidor frontend pode ser acessado pela url:

`http://localhost:4200`

Lembre-se que para acessar o frontend, o servidor de backend deve estar rodando também.

### Container Docker

##### Dependências

* Docker
* Docker-compose

Certifique-se que tenha a versão mais atualizada do docker e docker-compose instalada. Você pode encontra-las [aqui](https://www.docker.com).

Para rodar o projeto dentro de um conteiner docker, rode o seguinte comando na pasta raiz do projeto:
```
docker-compose up
```
Esse comando já inicializa os servidores de backend e frontend.

#### Backend

O servidor backend pode ser acessado pelas urls:

`http://localhost:3000/most_relevants`  - Lista os tweets por relevância.

e 

`http://localhost:3000/most_mentions` - Lista os usuários que mais mencionam a Locaweb.

#### Testes

Para rodar os testes pelo docker, rode o seguinte comando:
```
docker-compose run -e "RAILS_ENV=test" api rspec spec
```

#### Frontend

O servidor frontend pode ser acessado pela url:

`http://localhost:4200`
