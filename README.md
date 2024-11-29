# JFLAP - Linguagens e Métodos Formais

![{13FEA662-4A63-498D-97BF-8684319D4BCF}](https://github.com/user-attachments/assets/80421f32-c20a-4264-ba69-584219af2fd0)

[https://github.com/joaozenaro/jflap-vnc](https://github.com/joaozenaro/jflap-vnc)

Esta tarefa consiste em documentar o processo de instalação do programa [JFLAP](https://www.jflap.org/).

<details>
<summary>Descrição da tarefa</summary>
<br>

> O JFLAP, que significa Java Formal Languages and Automata Package, é um software desenvolvido por Susan Rodger e sua equipe na Universidade de Duke. Ele foi projetado para permitir a experimentação interativa com conceitos de linguagens formais e autômatos, incluindo autômatos finitos não determinísticos, autômatos de pilha não determinísticos e autômatos com múltiplas fitas. A interface gráfica amigável do JFLAP facilita a visualização e a manipulação destes conceitos teóricos, tornando-o uma ferramenta popular em cursos de Ciência da Computação, especialmente em disciplinas como Teoria da Computação, Linguagens Formais e Compiladores. Diversas universidades ao redor do mundo adotaram o JFLAP como parte de seus currículos, oferecendo aos estudantes uma abordagem prática para entender tópicos complexos de teorias computacionais.

#### 1. Observe que o ambiente runtime da linguagem Java é um requisito para o JFLAP, e seu processo de instalação deve ser documentado também.
A documentação deve seguir um formato de tutorial, com descrição dos passos, e screenshots ilustrando o processo em seu computador.

<img align="right" width="400" height="400" src="https://github.com/user-attachments/assets/c287555a-5aa5-4c15-b2bc-f02cba855c27">

#### 2. Baixe o arquivo Gramatica.jff em seu computador, e abra-o com o JFLAP. Você deverá ver uma gramática como esta mostrada à direita.

Vá ao menu "Input/Multiple brute force parse". No lado direito da tela, você poderá inserir palavras para testar. Para rodar o teste, clique na aba "Run Inputs", na parte inferior direita da tela. Uma vez que você consiga rodar testes nesta gramática, responda às seguintes questões:
2.1. Qual o alfabeto desta gramática?
2.2. Que tipos de palavras esta gramática reconhece? Como são chamadas palavras deste tipo?
2.3. O que é o símbolo λ nesta gramática? Explique por que ele é relevante.

3. Leia o material recomendado sobre expressões regulares.

a) Bibliografia da disciplina.

b) [Grep Linux manual page](https://man7.org/linux/man-pages/man1/grep.1.html)

c) [http://www.cyberciti.biz/faq/grep-regular-expressions/](http://www.cyberciti.biz/faq/grep-regular-expressions/)

d) [Wikipedia - Expressões Regulares](https://pt.wikipedia.org/wiki/Express%C3%A3o_regular)

f) [Expressões Regulares por Aurelio Jargas](https://aurelio.net/regex/)

3.1. Baixe o ArquivoExemplo.txt.
3.2. O comando do linux `grep -E 'EXPRESSAO' ArquivoExemplo.txt` busca expressões regulares em um determinado arquivo. Escreva expressões regulares para encontrar somente os telefones e placas válidos no ArquivoExemplo.txt (uma expressão para telefones e outra para placas). A execução dos comandos sobre o arquivo de exemplo deverá retornar somente as expressões válidas.
3.3 Responda: O que expressões regulares têm a ver com reconhecimento de linguagens regulares e autômatos finitos?

</details>

---

## Objetivo do repositório

Esse repositório tem como objetivo criar um ambiente facilmente replicavel e compreensivel para utilizar aplicações desktop. Para isso foi feita uma implementação de Virtual Network Computing (ou somente VNC), que é um sistema de compartilhamento gráfico de desktop. Feito em um container [alpine](https://alpinelinux.org/) ["dockerizado"](https://www.docker.com/).

O arquivo `Dockerfile` contem uma instalação completa do ambiente grafico, java e jflap, contento todos os pacotes necessarios para executar o aplicativo.

Pagina de Downloads do jflap: [https://www.jflap.org/jflaptmp/](https://www.jflap.org/jflaptmp/)
URL Download: [https://www.jflap.org/jflaptmp/july27-18/JFLAP7.1.jar](https://www.jflap.org/jflaptmp/july27-18/JFLAP7.1.jar)

## Setup do projeto

### Localmente

Requisitos: [Git](https://git-scm.com/), [docker + docker-compose](https://docs.docker.com/compose/install/)

```console
git clone https://github.com/joaozenaro/jflap-vnc.git
cd jflap-vnc/
```

### [GitHub Codespaces](https://github.com/features/codespaces)

$\text{<> Code} \rightarrow \text{Codespaces} \rightarrow \text{Create codespace on}<\text{branch}>$

![{09AA50FA-F348-4E6C-A01F-18FCAAB0F49A}](https://github.com/user-attachments/assets/8f3262aa-d82a-49ec-8228-192e8b1e4580)

## Inicialização

1. Iniciar o container: `docker compose up`
2. Acessar a interface web servida na porta `6900`

Localmente: `http://localhost:6900/`

Codespaces:

![{986B6713-6991-4E90-BF08-1FDF5C328C0B}](https://github.com/user-attachments/assets/abcb4e43-e638-49fb-9599-e27b82aaabea)

O comando para iniciar o JFLAP é `java -jar JFLAP7.1.jar`.
