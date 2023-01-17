Algoritmo "MEU PRIMEIRO CADASTRO - EXERCICIO CRUD COMPLETO"

// Os campos de NOME nao diferem maiusculas e minusculas
// O "BANCO" aceita até 50 cadastros simultaneos
// NAO UTILIZE caracteres especiais ou acentos

Var

   Resp, Key, SenhaCheck, AlterarQual, DeleteCert, NovaSenha, NovoNome, CriarCert: caractere
   Nome, Senha : vetor[1..50] de caractere
   qnt, i , NoLog : inteiro
   Idade : vetor[1..50] de inteiro
   NovaIdade: inteiro


Procedimento Cab()
inicio
   EscrevaL (" PRIMEIRO CADASTRO DA JESS ")
   EscrevaL ("_____________________________")
   EscrevaL ()
FimProcedimento

Procedimento MostrarMenu()
inicio
   EscrevaL ()
   EscrevaL ("[1] CADASTRAR")
   EscrevaL ("[2] FAZER LOGIN")
   EscrevaL ("[3] Limpar a Tela")
   EscrevaL ("[4] Sair")
   EscrevaL ("[5] Alterar Cadastro")
   EscrevaL ("_________________________________")
   Leia (Resp)
   Escolha Resp
   Caso "1"
      Cadastrar()
   Caso "2"
      Acessar()
   Caso "3"
      LimpaTela
      Cab()
      MostrarMenu()
   Caso "5"
      Se (NoLog <> 0) entao
         Alterar()
      Senao
         EscrevaL ()
         EscrevaL ("OPCAO INVALIDA. Faca LOGIN para continuar")
         MostrarMenu()
      FimSe
   FimEscolha
   EscrevaL ()
FimProcedimento

Procedimento Cadastrar()
inicio
   Repita
      EscrevaL ()
      Para i <- 1 ate 50 faca
         Se (Nome[i] = "") entao
            Escreva  ("Digite seu nome: ")
            Leia (Nome[i])
            Escreva ("Digite sua idade: ")
            Leia(Idade[i])
            EscrevaL ("Gostaria de criar uma senha de acesso? [S/N]: ")
            Leia (Key)
            Se  (Key = "s") ou (Key = "S") entao
               Escreva ("Criar senha: ")
               Leia (Senha[i])
               Limpatela
            FimSe
            Nome[i] <- (Maiusc(Nome[i]))
            Interrompa
         FimSe
      FimPara
      EscrevaL ()
      EscrevaL ("Nome: " , Nome[i])
      EscrevaL ("Idade: " , Idade[i])
      Se (Senha[i] <> "") entao
         EscrevaL ("Senha: " , Senha[i])
      FimSe
      EscrevaL ("As informacoes estao corretas?: [S/N] ")
      Leia (CriarCert)
      EscrevaL ("___________________________________")
      EscrevaL ()
      Se (CriarCert = "n") ou (CriarCert = "N") entao
         Nome[i] <- ""
         Idade[i] <- 0
         Senha[i] <- ""
      FimSe
   Ate (CriarCert = "s") ou (CriarCert = "S")

   EscrevaL ("Cadastro criado com sucesso!")
   EscrevaL ()
   EscrevaL ("___________________________________")
   EscrevaL ("Seu número de LOGIN é >>" , i , " <<")
   EscrevaL ("___________________________________")
   EscrevaL ()
   EscrevaL ("O que você gostaria de fazer agora? ")
   MostrarMenu()

FimProcedimento

Procedimento Acessar()
inicio
   EscrevaL ()
   EscrevaL ("ACESSO AO PERFIL")
   EscrevaL ("------------------")
   Escreva ()
   Escreva ("No. de Login: ")
   Leia (NoLog)
   Se (Nome[NoLog] = "") entao
      EscrevaL ()
      EscrevaL ("Desculpe, o Login informado nao consta no Sistema")
      NoLog <- 0
   senao
      Se (Senha[NoLog] <> "") entao
         Escreva ("Digite sua senha: ")
         Leia (SenhaCheck)
         Se (SenhaCheck = Senha[NoLog]) entao
            EscrevaL ()
            Limpatela
            EscrevaL ("-- BEM VINDO AO SEU PERFIL --")
            EscrevaL ("_____________________________")
            EscrevaL ()
            EscrevaL ("Titular do Cadastro: " , Nome[NoLog])
            EscrevaL ("Idade: " , Idade[NoLog] , " anos")
            EscrevaL ("_____________________________")
            EscrevaL ()
            SenhaCheck <- ""
            Senao
               EscrevaL ("SENHA INCORRETA")
               EscrevaL ("Tente novamente")
               NoLog <- 0
               MostrarMenu()
         FimSe
      Senao
           EscrevaL ()
           Limpatela
           EscrevaL ("-- BEM VINDO AO SEU PERFIL --")
           EscrevaL ("_____________________________")
           EscrevaL ()
           EscrevaL ("Titular do Cadastro: " , Nome[NoLog])
           EscrevaL ("Idade: " , Idade[NoLog] , " anos")
           EscrevaL ("_____________________________")
           EscrevaL ()
      FimSe
   FimSe
EscrevaL ()
EscrevaL ("O que você gostaria de fazer agora? ")
MostrarMenu()
FimProcedimento

Procedimento Alterar()
inicio
   Se (NoLog <> 0) entao
      Escreval ("Perfil: " , Nome[NoLog])
      EscrevaL ("Gostaria de alterar qual informacao? : ")
      EscrevaL ("[1] Nome")
      EscrevaL ("[2] Idade")
      EscrevaL ("[3] Senha")
      EscrevaL ("[4] Deletar Cadastro")
      EscrevaL ("[5] Voltar ao menu")
      Leia (AlterarQual)
      Escolha AlterarQual
      Caso "1"
         EscrevaL ("Digite o novo nome: ")
         Leia (NovoNome)
         Nome[NoLog] <- (NovoNome)
           EscrevaL ("_____________________________")
           EscrevaL ()
           EscrevaL ("Nome alterado com sucesso!")
           EscrevaL ("_____________________________")

      Caso "2"
         EscrevaL ("Digite o novo valor de idade: ")
         Leia (NovaIdade)
         Idade[NoLog] <- (NovaIdade)
           EscrevaL ("_____________________________")
           EscrevaL ()
           EscrevaL ("Idade alterada com sucesso!")
           EscrevaL ("_____________________________")
           MostrarMenu()
      Caso "3"
         EscrevaL ("Digite a nova senha: ")
         Leia (NovaSenha)
         Senha[NoLog] <- (NovaSenha)
           EscrevaL ("_____________________________")
           EscrevaL ()
           EscrevaL ("Senha alterada com sucesso!")
           EscrevaL ("_____________________________")
           MostrarMenu()
      Caso "4"
         EscrevaL ("Tem certeza que deseja excluir o cadastro? [S/N] ")
         Leia (DeleteCert)
         Se (DeleteCert = "S") ou (DeleteCert = "s") entao
            Nome[NoLog] <- ""
            Idade[NoLog] <- 0
            Senha[NoLog] <- ""
            NoLog <- 0
           EscrevaL ("_____________________________")
           EscrevaL ()
           EscrevaL ("Cadastro excluído com sucesso")
           EscrevaL ("_____________________________")
            MostrarMenu()
         FimSe
      Caso "5"
         Resp <- "3"
      FimEscolha
   Senao
      EscrevaL ()
      EscrevaL ("OPCAO INVALIDA. Faca LOGIN para continuar")
   FimSe
FimProcedimento

Inicio
   Repita
      Cab()

      MostrarMenu()

   Ate (Resp = "4")

Fimalgoritmo