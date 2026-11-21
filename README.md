# 🛡️ Project H.E.I.T.O.R.

> **H.E.I.T.O.R.** — **H**ub de **E**studos, **I**deias, **T**arefas, **O**rganização e **R**otina.  
> Um assistente pessoal agêntico de código aberto integrado ao **Git**, **Markdown** e **Obsidian**.

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![GitHub stars](https://img.shields.io/github/stars/HeitorTrindade-dev/Project-Heitor?style=social)](https://github.com/HeitorTrindade-dev/Project-Heitor)

---

## 💡 Por que o H.E.I.T.O.R. existe?

Manter um sistema de organização pessoal (como o método P.A.R.A., Segundo Cérebro ou anotações diárias) costuma falhar por um único motivo: **fricção**. 

Abrir o aplicativo, navegar pelas pastas, criar o arquivo, colocar tags, mover cards de Kanban... tudo isso gera cansaço mental e acaba sendo abandonado na segunda semana.

O **H.E.I.T.O.R.** elimina essa fricção:
* Você **apenas conversa** com seu agente de IA em linguagem natural (pelo terminal, IDE ou chat).
* O H.E.I.T.O.R. **interpreta, categoriza e arquiva** automaticamente tudo em arquivos Markdown puros no seu computador.
* Ele mantém um **Dashboard visual** sempre atualizado.
* Ele faz **commit e push automático** para um repositório privado no GitHub, permitindo sincronização em tempo real com o app do **Obsidian no celular** ou visualização pelo app do GitHub.

---

## 🧩 O que o acrônimo representa?

| Letra | Significado | O que gerencia |
| :---: | :--- | :--- |
| **H** | **Hub** | O ponto central que conecta toda a sua vida em um único cofre. |
| **E** | **Estudos** | Disciplinas da faculdade, notas, controle de faltas, datas de provas e resumos. |
| **I** | **Ideias** | Brainstorms de novos produtos, features, arquiteturas e insights. |
| **T** | **Tarefas** | To-dos pontuais, pendências com prazos (`📅 YYYY-MM-DD`) e prioridades. |
| **O** | **Organização** | Metodologia P.A.R.A. estruturada, links bidirecionais (`[[...]]`) e tags. |
| **R** | **Rotina** | Daily notes (`Diario/YYYY-MM-DD.md`), hábitos, saúde e revisão semanal. |

---

## 🚀 Como Funciona na Prática

Você não precisa abrir pastas nem se preocupar com git:

```text
Você: "Anota que tenho prova de Compiladores dia 15/12 e preciso entregar o trabalho de Redes até sexta"
H.E.I.T.O.R.:
  - Identifica a disciplina de Compiladores e adiciona a prova em Estudos/Compiladores.md
  - Cria a tarefa com data limite em Tarefas e na matéria de Redes
  - Atualiza o Dashboard da semana
  - Executa: git commit -m "docs(estudos): agendar prova de compiladores e trabalho de redes" && git push
  - Responde: "Tudo anotado e sincronizado no GitHub!"
```

---

## 📂 Estrutura Padrão do Cofre (Vault)

O H.E.I.T.O.R. organiza o seu repositório de anotações com a seguinte hierarquia limpa:

```text
📁 Meu-Segundo-Cerebro/
├── 🏠 Dashboard.md          # Visão 360°: prioridades da semana, foco atual e avisos
├── 📥 Inbox.md              # Captura rápida de pensamentos que precisam de triagem
├── 🎓 Estudos/              # Faculdade / Cursos
│   ├── Semestre-Atual.md    # Grade, cálculo de médias e limites de faltas
│   └── <Materia>.md         # Ementa, anotações de aula, provas e trabalhos
├── 🚀 Ideias-e-Projetos/    # Projetos em andamento e backlog de novas ideias
│   ├── <Projeto>.md         # Roadmap, tarefas e decisões técnicas
│   └── Backlog-Ideias.md    # Lista de ideias para o futuro
├── 📅 Diario/               # Daily notes organizados por ano/mês (YYYY-MM-DD.md)
└── 👤 Rotina/               # Vida pessoal, saúde, finanças e metas do ano
```

---

## 🛠️ Instalação Rápida

### Como Skill do Antigravity

1. Clone este repositório no seu computador:
   ```bash
   git clone https://github.com/HeitorTrindade-dev/Project-Heitor.git ~/.gemini/config/skills/heitor
   ```
2. Ou execute o script de instalação incluído:
   ```bash
   git clone https://github.com/HeitorTrindade-dev/Project-Heitor.git ~/Project-Heitor
   cd ~/Project-Heitor
   chmod +x scripts/install.sh
   ./scripts/install.sh
   ```
3. Pronto! O Antigravity já reconhecerá o **H.E.I.T.O.R.** automaticamente em qualquer projeto ou terminal.

---

## 🔄 Auto-Atualização Semanal Inteligente

Você nunca precisa se preocupar em atualizar a skill manualmente:
* Toda **segunda-feira** (ou após 7 dias da última checagem), quando você rodar `/heitor`, ele verifica silenciosamente se há novidades no repositório oficial.
* Se houver, ele lista as melhorias e correções e pergunta se você deseja atualizar.
* Se você aceitar, ele atualiza na hora e executa sua tarefa. Se você recusar, ele só volta a lembrar na semana seguinte!

---

## 📱 Sincronização Mobile com o Obsidian (Gratuita)

Para acessar suas anotações no celular (Android ou iOS):
1. Instale o app do **Obsidian** no celular.
2. Crie ou clone o repositório privado das suas notas usando o plugin da comunidade **Obsidian Git** ou **Remotely Save**.
3. Toda vez que você conversar com o H.E.I.T.O.R., o agente faz o push. Quando você abrir o Obsidian no celular, ele baixa as novidades automaticamente!

---

## 👤 Autor

Criado por **[Heitor Trindade](https://github.com/HeitorTrindade-dev)**.  
Distribuído sob a licença [MIT](LICENSE).
