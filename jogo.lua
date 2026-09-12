
-- Arquivo principal jogo.lua
-- Importe a classe com require.
local personagem_classe = require('personagem')

-- Faça o personagem 1:
local personagem1 = personagem_classe:new("Hector")


-- Receber 30 de dano
personagem1:receberDano(30)
-- print(personagem1.vida)

-- Curar 10
personagem1:curar(10)
-- print(personagem1.vida)


-- Subir de nível
personagem1:subirNivel()
personagem1:subirNivel()

-- Mostrar status
personagem1:status()
print()
print(string.rep("-", 20))
print()
-- Faça o personagem 2:
local personagem2 = personagem_classe:new("Jason")

-- Receber dano suficiente para morrer
personagem2:receberDano(110)

-- Mostrar status
personagem2:status()
print()
print(string.rep("-", 20))
print()


personagem2:curar(100)
personagem2:subirNivel()
personagem2:status()

-- Faça o personagem 1 atacar o personagem 2.
personagem1:atacar(personagem2)
print()
print(string.rep("-", 20))
print()
print(personagem2:status())
