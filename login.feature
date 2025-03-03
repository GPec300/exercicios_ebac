      #language: pt

      Funcionalidade: Tela de Login
      Como aluno do Portal EBAC
      Quero me autenticar
      Para visualizar minhas notas

      Contexto:
      Dado que eu acesse a página de autenticação do portal EBAC

      Cenário: Autenticação válida
      Quando eu digitar o usuário "joao@ebac.com.br"
      E senha "senha@123"
      Então deve exibir uma mensagem de boas vinhas "Olá João"

      Cenário: Usuário inexistente
      Quando eu digitar o usuário "xxxxyyy@ebac.com.br"
      E senha "senha@123"
      Então deve exibir uma mensagem de aleta: "Usuário Inexistente"

      Cenário: Usuário inexistente
      Quando eu digitar o usuário "joao@ebac.com.br"
      E senha "senha@45774"
      Então deve exibir uma mensagem de aleta: "Usuário ou senha inválidos"

      Esquema do Cenário: Autenticar multiplos usuários
      Quando eu digitar <usuario>
      E a <senha>
      Então deve exibir a <mensagem> de sucesso

      Exemplos:
      | usuario             | senha       | mensagem     |
      | "joao@ebac.com.br"  | "teste@123" | "Olá João!"  |
      | "maria@ebac.com.br" | "teste@123" | "Olá Maria!" |
      | "jose@ebac.com.br"  | "teste@123" | "Olá José!"  |

