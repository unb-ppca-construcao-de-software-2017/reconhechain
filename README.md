# reconhechain
Implementação utilizando blockchain do sistema "Reconhecer" do TCU.

## Introdução
O TCU possui o programa ["reconhecer"](http://www.tcu.gov.br/Consultas/Juris/Docs/judoc/PORTN/20120706/PRT2012-146.doc) que funciona como um programa de pontos no qual servidores são recompensados pelo desenvolvimento de atividades que gerem valor para o Órgão.

Por exemplo, a participação em um projeto inovador rende uma quantidade x de pontos, uma avaliação de desempenho positiva gera uma quantidade y de pontos, e assim por diante.

Os servidores possuidores dos pontos podem ofertá-los em troca de benefícios como possibilidade de falta ao trabalho, reembolso para curso de idiomas, etc.

O objetivo deste trabalho é ser um primeiro esboço da utilização do [multichain](http://www.multichain.com/), uma implementação de blockchain na gestão dos pontos do programa reconhecer do TCU.

## Requisitos
- [Git](https://git-scm.com/)

- [Docker](https://www.docker.com/)

- Conexão com a Internet


## Instalação

#### Passo 1: Clonar o projeto a partir do GitHub:
- `git clone https://github.com/wweellddeerr/reconhechain.git`

#### Passo 2: Criar uma rede interna docker chamada 'blockchain' para simular os múltiplos nós da rede
- `docker network create --subnet=172.20.0.0/16 blockchain`

#### Passo 3: Construir a imagem docker do nó que será [proprietário dos tokens](http://www.multichain.com/download/MultiChain-White-Paper.pdf) (pontos) do blockchain
- `docker build -t reconhechain .`

#### Passo 4: Executar o container a partir da imagem recém construída:
- `docker run --network=blockchain --ip=172.20.0.5 -it reconhechain`

#### Passo 5: Criar o blockchain de nome 'reconhecer' dentro do container:
- `reconhechain`
