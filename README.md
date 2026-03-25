# 🔍 SQL para Análise de Dados

> Estruturando dados, criando regras e extraindo informações com SQL.

Este repositório reúne uma sequência de scripts SQL que simulam o funcionamento de um **banco de dados de um bistrô**, passando desde a criação das tabelas até consultas mais avançadas e controle de segurança.

A proposta é evoluir passo a passo, como em um projeto real.

---

## 🧠 Como este projeto foi pensado

Os arquivos seguem uma ordem lógica de construção de um banco de dados:

**estrutura → dados → consultas → regras → segurança**

Isso permite entender não só *como escrever SQL*, mas *como pensar um banco de dados*.

---

## 📂 Estrutura dos Scripts

### 🏗️ 01 — Criação da base

* `01_Criando_Tabelas.sql`
  Define a estrutura inicial do banco de dados.

---

### 📥 02 a 04 — Inserção de dados

* `02_Inserindo_dados_1.sql`
* `03_Inserindo_dados_2.sql`
* `04_Inserindo_dados_3.sql`

Populam o banco com dados para simulação.

---

### 🔍 05 a 08 — Consultas e exploração

* `05_Union.sql`
  Combinação de resultados com `UNION`.

* `06_Subconsultas.sql`
  Consultas aninhadas para análises mais complexas.

* `07_Junção_de_dados.sql`
  Uso de `JOIN` para relacionar tabelas.

* `08_Novas_Consultas.sql`
  Consultas adicionais para exploração dos dados.

---

### 🧩 09 e 10 — Recursos avançados

* `09_Views.sql`
  Criação de visões para simplificar consultas.

* `10_Trigger.sql`
  Automação de ações no banco de dados.

---

### 🔐 11 e 12 — Integridade e segurança

* `11_Validando_chaves_estrangeiras.sql`
  Garantia de integridade referencial.

* `12_Camada_De_Segurança.sql`
  Controle de acesso e proteção dos dados.

---

## 🧰 Tecnologias

* SQL
* Banco de Dados Relacional (MySQL, PostgreSQL ou similares)

---

## 🧪 Como executar

1. Crie um banco de dados no seu SGBD
2. Execute os scripts na ordem:

```id="x9z0k2"
01_Criando_Tabelas.sql
02_Inserindo_dados_1.sql
03_Inserindo_dados_2.sql
04_Inserindo_dados_3.sql
```

3. Explore as consultas:

```id="q1v7tp"
05_Union.sql
06_Subconsultas.sql
07_Junção_de_dados.sql
08_Novas_Consultas.sql
```

4. Finalize com os recursos avançados:

```id="3c9yra"
09_Views.sql
10_Trigger.sql
11_Validando_chaves_estrangeiras.sql
12_Camada_De_Segurança.sql
```

---

## 🎯 Objetivo

Este projeto foi desenvolvido para:

* Praticar SQL de forma progressiva
* Entender a estrutura de bancos relacionais
* Trabalhar com consultas simples e avançadas
* Aplicar conceitos de integridade e segurança

---

## 💡 Nota

Mais do que um conjunto de scripts, este projeto representa a construção completa de um pequeno sistema de dados — do zero até regras de negócio.
