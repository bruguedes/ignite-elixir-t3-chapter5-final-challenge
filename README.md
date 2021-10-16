# ignite-elixir-t3-chapter5-final-challenge
[![codecov](https://codecov.io/gh/bruguedes/ignite-elixir-t3-chapter5-final-challenge/branch/main/graph/badge.svg?token=KAXHYM1ZC8)](https://codecov.io/gh/bruguedes/ignite-elixir-t3-chapter5-final-challenge)

Desafio final: aplicação desenvolvida no decorrer da trilha Elixir, sistema de pedido de Delivery Rockelivery

Aplicação tem as funcionalidades basicas de um sistema de delivery, onde o usuario devera fazer um castrato, fazer login com autenticação via token, escolher os item, quantidade de cada item e gerar o pedido.

`
# Requisitos
  * [`Elixir`](https://github.com/elixir-lang/elixir) (v1.12.3)
  * [`Erlang`](https://www.erlang.org/) (OTP 24.0)
  * `Docker` (Para ambiente de desenvolvimento )

# Dependências
  * [`Pbkdf2_elixir`](https://github.com/riverrun/pbkdf2_elixir) (Biblioteca de hashing de senha)
  * [`Guardian`](https://github.com/riverrun/pbkdf2_elixir) (Biblioteca de autenticação baseada em tokens)
  * [`Tesla`](https://github.com/teamon/tesla) (Biblioteca responsavel pelas requisições HTTP)
  * [`hackney`](https://github.com/benoitc/hackney) (Biblioteca cliente HTTP em Erlang)
  * [`ExMachina`](https://github.com/thoughtbot/ex_machina) (Biblioteca para criação de dados de teste e associações)
  * [`ExCoveralls`](https://github.com/parroty/excoveralls) (Biblioteca para relata estatísticas de cobertura de teste)
  * [`Bypass`](https://github.com/PSPDFKit-labs/bypass) (Biblioteca que simula resposta de requisições HTTP)
  * [`Mox`](https://github.com/dashbitco/mox) (Biblioteca para definir simulações simultâneas)
  * [`Decimal`](https://github.com/ericmj/decimal) (Biblioteca para aritmética de precisão arbitrária)
 
# Iniciando o projeto
Estando na pasta do projeto via terminal execute os comandos a seguir: 
  * `docker-compose up -d` Inicair o container com postgres;
  * `mix deps.get` busca as dependências do projeto;
  * `mix setup` para criar o banco de dados e executar todas as migrações;
  * `mix phx.server` ou  `iex -S mix phx.server` para iniciar Phoenix server;

# Fazendo requisições:
* Rotas publicas:
  * Sign-up de usuario: 
    `POST` http://localhost:4000/api/users

   ![2021-10-15_17-17](https://user-images.githubusercontent.com/13700771/137559675-9e832a47-eb15-4690-be74-1024b2d749fe.png)
 
 * Sign-in usuario: 
    `POST` http://localhost:4000/api/users/singin
    
    ![2](https://user-images.githubusercontent.com/13700771/137561020-e8561080-d448-40ea-b3b0-e83c7eb693af.png)

* Rotas com autenticação:
  * Para rotas com autenticação via token é necessarrio copiar o token sem as aspas (" ") da resposta da rota de sing-in e adiociona na requisição de cadastro de item.
    
  ![4](https://user-images.githubusercontent.com/13700771/137562094-d2c5a9c6-c41d-4c58-a6f7-c6db7b3a0f28.png)

* Buscando Usuario: 
    `GET` http://localhost:4000/api/users/:user_id
    
    ![get](https://user-images.githubusercontent.com/13700771/137562947-be4f285c-ae7a-478a-99d2-669ddb87d107.png)

* Atualizando Usuario: 
    `PUT` http://localhost:4000/api/users/:user_id
    
    ![up](https://user-images.githubusercontent.com/13700771/137562772-7b0cba39-a97b-4ee1-ab54-8fc569392b50.png)

* Excluindo Usuario: 
   
   `DELETE` http://localhost:4000/api/users/:user_id

* Cadastrando item: 
   `POST` http://localhost:4000/api/items
   
   ![item](https://user-images.githubusercontent.com/13700771/137562215-1ea0d42d-ac59-480c-b500-17c3476b7089.png)
* Cadastrando ordem de pedido: 
   `POST` http://localhost:4000/api/orders
   
   ![order](https://user-images.githubusercontent.com/13700771/137562459-76b6e3e5-fdc2-41d0-ac65-3a48fdbb1fab.png)

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
