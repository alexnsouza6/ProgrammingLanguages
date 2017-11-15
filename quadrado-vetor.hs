{-|
  Para rodar o programa é necessário instalar o compilhar haskell ghc
  Feito isso, entrar no terminal e digitar ghc para entrar no prompt Prelude
  Digitar ":set prompt "ghci> " para ir para o prompt ghci
  Digitar :l quadrado-vetor.hs para carregar as funções do arquivo
  Agora as funções foram carregadas e já podem ser executas no prompt ghci
-}

-- ^Função para elevar ao quadrado um inteiro.
square :: Int -> Int
square x = x * x
-- ^Função para elevar ao quadrado todos os elementos de uma lista.
sumSquared array = sum[square x | x <- array]
