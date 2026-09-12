# lua-poo-personagem
Estudos de Programação Orientada a Objetos em Lua usando uma classe Personagem como exemplo.


# 🎮 lua-poo-personagem

Estudos de **Programação Orientada a Objetos (POO)** em Lua, usando uma classe `Personagem` como exemplo prático.

---

## 📁 Estrutura

| Arquivo | Descrição |
|---------|-----------|
| `personagem.lua` | Definição da classe `Personagem` (atributos + métodos) |
| `jogo.lua` | Arquivo principal que importa e testa a classe |

---

## 🧠 Conceitos praticados

- Classes como **tabelas** em Lua
- Método construtor (`new`) e criação de **instâncias**
- **Herança** via `setmetatable` + `__index`
- **Independência** entre objetos
- Separação entre **métodos de ação** e **métodos de consulta**
- Uso de **`require`** para importar módulos

---

## ⚙️ Como funciona

A classe `Personagem` é uma tabela com atributos comuns a todos os personagens:

```lua
local personagem = {
    vivo = true,
    nivel = 1,
}
```

O método `new` cria uma nova instância, define os atributos individuais e liga o objeto à classe via `setmetatable`:

```lua
function personagem:new(name)
    local instance = {}
    instance.nome = name
    instance.vida = 100
    instance.forca = 0
    setmetatable(instance, {__index = personagem})
    return instance
end
```

Assim, cada objeto tem seus próprios valores, mas herda o comportamento da classe.

---

## 🛠️ Métodos disponíveis

| Método | O que faz |
|--------|-----------|
| `new(name)` | Cria um novo personagem com 100 de vida e 0 de força |
| `receberDano(valor)` | Reduz a vida; se chegar a 0, marca como morto |
| `curar(valor)` | Aumenta a vida (até 100), só se estiver vivo |
| `subirNivel()` | Aumenta o nível em 1 e a força em 5, só se estiver vivo |
| `atacar(alvo)` | Ataca outro personagem, causando dano igual à própria força |
| `status()` | Imprime nome, estado, vida, força e nível |

---

## ▶️ Como rodar

Clone o repositório e execute:

```bash
lua jogo.lua
```

Você verá algo como:

```
Nome: Hector
Status: Vivo | vida = 80
Força: 10
Nível: 3
--------------------
Nome: Jason
Status: Morto | vida = 0
Força: 0
Nível: 1
--------------------
Jason já está morto.
```

---

## 📚 Sobre

Repositório criado durante meus estudos de Lua, com foco em entender como a Programação Orientada a Objetos funciona na linguagem — sem classes nativas, apenas tabelas, metatables e `__index`.

---

## 📌 Próximos passos

- [ ] Adicionar método `reviver()`
- [ ] Criar uma classe `Arma` e permitir que personagens equipem armas
- [ ] Implementar herança entre classes (ex.: `Mago` e `Guerreiro` herdando de `Personagem`)

---

## 📝 Licença

Uso livre para estudos.
