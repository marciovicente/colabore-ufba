**Colabore UFBA!** ![Colabore UFBA Bulhorn!](https://raw.githubusercontent.com/marciovicente/colabore-ufba/master/app/assets/images/bullhorn.png?token=AA-XzZSw8YfP8znk1IvYShIzXbi1LWLuks5UvsPRwA%3D%3D)
==================

Não vivemos em um mundo perfeito (infelizmente), a nossa universidade está rodeada de problemas. O professor está "mangueando"? Nunca é feita a coleta na lixeira do PAF? Aquele buraco no estacionamento já tem três anos? Então, por que não denunciar isso?

**#TODO List**
----
- [ ] Upload de imagem (nova denúncia)
- [ ] Colocar em produção
- [ ] Adicionar seção de sugestões
- [ ] Testes unitários
- [ ] Testes interação
- [ ] Permitir login com twitter e/ou por email


**Contribua com o projeto**
----
É desenvolvedor e quer contribuir com o projeto? Simples:

- Fork o projeto
- Clone em sua máquina o repositório que você acabou de dar fork
- Adicione o projeto original como upstream `git remote add https://github.com/marciovicente/colabore-ufba`
- `git fetch upstream`
- `git merge upstream/master`
- Crie uma branch: `git checkout -b your_branch_name`
- Faça as alterações
- Commit as alterações e dê push para sua branch
- Crie um Pull Request

**Depedências**
----
- Ruby 2.1.3
- Rails 4.1.6 (recomendo instalar via RVM)
- PostgreSQL +9.2
 
**Instalação**
----
Considerando que todas as dependências do projeto já estão instaladas e você está na raiz do projeto:

1) Instalar gem's do projeto
```bundle install```

2) Configurar database.yml
Modifique `database.yml.sample` com a configuração do seu banco Postgres e salve como `database.yml`. 
```yml
[...]
common: &common
  adapter: postgresql
  username: usuario_banco_postgres
  password: 123456
[...]
```

3) Criar os bancos e tabelas
```shell
rake db:create
rake db:migrate
```

4) Rodar o servidor
```ruby
rails s 
```

5) O servidor estará rodando na porta `3000` :)


Login com Facebook
------
O login com facebook só funcionará em modo de desenvolvimento se o seu usuário estiver cadastrado como beta tester. Então [solicite a permissão](mailto:marciovicente.filho@gmail.com).

[Contato/Sugestões/Dúvidas](mailto:marciovicente.filho@gmail.com)



