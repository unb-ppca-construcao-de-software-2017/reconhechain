# reconhechain
Implementação utilizando blockchain do sistema "Reconhecer" do TCU

# Instalação

### Passo 1: Clonar o projeto a partir do GitHub:
- `git clone https://github.com/wweellddeerr/reconhechain.git`

### Passo 2: Criar uma rede interna docker chamada 'blockchain' para simular os múltiplos nós da rede
- `docker network create --subnet=172.20.0.0/16 blockchain`

### Passo 3: Construir a imagem docker do nó que será proprietário do blockchain
- `docker build -t reconhechain .`

### Passo 4: Executar o container a partir da imagem recém construída:
- `docker run --network=blockchain --ip=172.20.0.5 -it reconhechain`

### Passo 5: Criar o blockchain de nome 'reconhecer' dentro do container:
- `reconhechain`
