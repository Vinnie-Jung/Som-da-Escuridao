<div align="center">

# Som da Escuridão

Um jogo *top-down* 2D feito em Godot. 
<br><br>
Go to: <a href="https://github.com/Vinnie-Jung/Som-da-Escuridao/README.md">*English Version*</a>
</div>

<div align="center">

<br>

|                Índice                |
|:------------------------------------:|
|[Sobre](#sobre)                       |
|[Ferramentas Utilizadas](#ferramentas)|
|[Telas](#telas)                       |
|[Equipe](#equipe)                     |

<br>
</div>


## Sobre <a name="sobre"></a>

Um jogo 2D com visão *top-down* (de cima para baixo) feito com a *game engine* Godot para a disciplina de Projeto de Jogos e Entretenimento Digital, da Univali. As versões disponíveis do projeto englobam sistemas Linux, Windows, MacOs e Android.

O jogo atualmente pode ser encontrado no **Itch.io** : [Link do jogo]()

**Tags de Jogo:**

~~~
Top-down | Suspense | Exploração | Investigação | 2D | Indie
~~~

### História

A história do jogo não é muito clara (propositalmente), porém o que se sabe é que a personagem principal (controlada pelo jogador) é uma jornalista que decide investigar um local onde supostamente diversas pessoas desapareceram. No meio da investigação, a personagem é capturada e desmaia no processo. Ao acordar após tal acontecimento, ela se encontra em um local completamente desconhecido e escuro. Seu objetivo passa a ser encontrar a saída do que parece ser o esconderijo daqueles que a capturaram.

### Mecânicas

Por se passar em ambientes completamente escuros, o jogador dependerá de dois importantíssimos recursos: os sons e os precários objetos de iluminação.

* **Os sons:**
    * Inimigos.
    * Obstáculos do cenário.
    * Eventos de cenário (sons de chuva, raios, etc).
    * Portas abrindo/fechando.
    * Objetos utilizados pelo jogador (arma, câmera, entre outros).

* **Movimentação:**
    * Lenta e cautelosa
    * O jogador pode dar uma corrida por um breve momento, porém fará mais barulho.

* **Iluminação:**
    * Alguns objetos no cenário servirão como pequenos pontos de luz (como **velas(1)**).
    * O jogador terá a oportunidade de possuir uma câmera, que pode emitir um **flash(2)**.
    * Relâmpagos poderão iluminar o cenário por um breve momento, porém o jogador deve estar perto de uma janela.

    1) **Velas:** são recursos encontrados pelo cenário que iluminam um pequeno raio ao redor de si. O jogador poderá pegar a vela, porém tal ação ocupa o espaço primário de equipamento, ou seja, não será possível utilizar outros itens enquanto o jogador estiver com a vela na mão. É importante ressaltar que a vela não pode ser guardada no inventário. Sendo assim, para usar outro item o jogador deve largar a vela no chão.

    2) **Flash:** É uma mecânica da câmera que projeta um breve feixe de luz na direção apontada. Cada uso do *flash* automaticamente gasta uma pilha da câmera.

* **Cenário:**
    * O cenário possuirá diversos obstáculos.
    * Alguns obstáculos serão apenas físicos, enquanto outros serão emissores de sons.
    * Os mapas serão todos escuros.
    * O tamanho dos mapas será, aproximadamente, o tamanho da tela do jogo.
    * Todos os mapas terão apenas uma saída para a próxima fase.

* **Inimigos:**
    * Os inimigos não possuem visão.
    * Os inimigos são apenas capazes de identificar sons ao seu redor.
    * Ao identificar qualquer som, o inimigo irá em direção ao mesmo.
    * Caso o inimigo acerte o jogador, automaticamente se tem um **Game Over**.

## Ferramentas Utilizadas <a name="ferramentas"></a>

### Trello

Para o projeto, foi utilizado o Trello para organizar os as funções de cada membro da equipe bem como os prazos e objetivos das atividades. O modelo de organização se deu pelo framework Scrum, determinando as tarefas por sprints posicionadas nas tabelas de *backlog*, *to do*, *in progress*, *testing* e *done*.

**Link do Scrum (Trello):** [Clique aqui](https://trello.com/b/j7MZBau1/som-da-escurid%C3%A3o-pedro-c-vin%C3%ADcius)

### Github

O projeto é versionado pelo Git e disponibilizado no Github, onde provavelmente está sendo lido. Ao versionar o projeto com essas ferramentas, se tem um desenvolvimento mais seguro e estável, pois as versões anteriores podem ser facilmente reavidas e toda a equipe pode ter acesso ao progresso da *build*.

As mudanças são realizadas por hierarquia entre as *branchs* do projeto:

* **Main:** Essa é a *branch* principal do projeto, que possui a versão estável mais atualizada da *build*. As atualizações que chegam aqui são apenas aquelas que já foram bem testadas e que dificilmente apresentarão muitos *bugs*.

* **Dev:** Tal *branch* é utilizada para reunir as alterações das outras *branches* menores. Aqui se tem a versão a ser testada ou que já está em teste. Caso a versão passe em todas as testagens, ela será fundida com a Main.

* **Outras:** São *branches* menores que representam desenvolvimentos específicos do projeto. Ao término, são fundidas com a *branch* Dev para serem testadas com o resto do projeto.

### Godot Engine

A *game engine* escolhida foi a Godot Engine. O motivo da escolha de tal motor se deve ao fato de ser o melhor quando se trata de desenvolvimento 2D, uma vez que o mesmo possui otimizações e recursos fartos para se fazer um jogo de duas dimensões. Além disso, é uma *engine* extremamente leve e portátil que oferece suporte para diversas plataformas.

Outro aspecto que chama a atenção sobre a Godot é o fato de se tratar de uma *engine open-source*, ou seja, possui código-aberto, tornando-se viável por não demandar qualquer tipo de pagamento ou tributo, bem como disponível para a instalação e desenvolvimento de *plugins* personalizados de maneira facilitada e acessível.

A Godot Engine utiliza como linguagem principal o GDScript, uma linguagem de *script* leve e performática baseada em Python, nativa da própria Godot. Outra alternativa que o motor oferece é o uso da linguagem C# da Microsoft, que apesar de possuir uma performance melhor que o GDScript, não está completamente consolidada na plataforma e, por isso, está mais sujeita a erros e *bugs*.

## Telas <a name="telas"></a>

### Menu principal

Uma tela inicial que oferece as opções de iniciar um novo jogo, carregar um jogo já iniciado, abrir as configurações do jogo, créditos e sair do jogo.

### Jogo

Exibe o jogo em si, com os mapas do jogo, os personagens e a interface do jogador.

**Interface:**
* Botão de configurações.
* Item primário equipado.
* Botão de inventário.
* Nível de ruído.
* *Portrait* de personagem.

### Carregar Jogo

Mostra três espaços em que podem haver jogos salvos para serem selecionados.

### Configurações | Opções

Uma simples tela que permite modificar alguns elementos do jogo, como tamanho de tela, nível de volume, etc.

### Créditos

Outra tela simples que exibe os créditos do jogo, apontando quem foram os contribuidores e o que cada um colaborou dentro do projeto.

<!-- ADICIONAR CONTROLES DO JOGO AQUI> -->

<div align="center">

## Equipe <a name="equipe"></a>

### Time de desenvolvimento

**Pedro Camargo Aita Bittencourt**   <br>
Designer de áudio                    <br>
Artista 2D (personagens e cenários)  <br>
Game Designer                        <br>
Roteirista                           <br>

Redes:                                                   
[Youtube](https://www.youtube.com/@spacenomad8308)       

**Vinícius Jung**     <br>
Programador           <br>
Quality Assurance     <br>
Prototipagem          <br>
Game Designer         <br>

Redes:

[Github](https://github.com/Vinnie-Jung) | [LinkedIn](https://www.linkedin.com/in/vinicius-jung/) | [Outlook](mailto:viniciusjung@outlook.com)               

### Professor

**Dennis Kerr Coelho**<br>
Supervisor            <br>
Produtor              <br>

Redes:                                                    <br>
[LinkedIn](https://www.linkedin.com/in/dennis-kerr-coelho-902a184/)

</div>