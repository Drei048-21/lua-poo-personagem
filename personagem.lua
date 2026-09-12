local personagem = {
    vivo = true,
    nivel = 1,
}

-- Método construtor: cria uma nova instância
function personagem:new(name)
    -- 1. Cria uma tabela VAZIA (o futuro objeto)
    local instance = {}

    -- 2. Define atributos INDIVIDUAIS deste objeto
    instance.nome = name
    instance.vida = 100
    instance.forca = 0

    -- 3. Liga o objeto à classe (herança via __index)
    setmetatable(instance, {__index = personagem})

    -- 4. Retorna o objeto pronto
    return instance
end

-- Comportamento (método) compartilhado por todos os personagens

-- → reduz a vida
function personagem:receberDano(valor)
    self.vida = math.max(0, self.vida - valor)
    if self.vida == 0 then
        self.vivo = false
    end
end

-- → aumenta a vida
function personagem:curar(valor)
    self.vida = math.min(100, self.vida + valor)
end

-- → aumenta nivel em 1 e forca em 5
function personagem:subirNivel()
    self.nivel = self.nivel + 1
	self.forca = self.forca + 5
end

-- → imprime nome, vida, força e nível
function personagem:status()
    local estado = self.vivo and "Vivo" or "Morto"
    print("Nome: " .. self.nome)
    print("Status: " .. estado .. " | vida = " .. self.vida)
    print("Força: " .. self.forca)
    print("Nível: " .. self.nivel)
end


function personagem:atacar(alvo)
    alvo:receberDano(self.forca)
end

return personagem
