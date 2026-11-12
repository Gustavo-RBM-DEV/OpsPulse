# OpsPulse
![CI](https://github.com/Gustavo-RBM-DEV/OpsPulse/actions/workflows/ci.yml/badge.svg)

Plataforma de inteligência operacional para e-commerce, integrando engenharia de dados,
analytics e engenharia de software.

O OpsPulse carrega dados brutos de pedidos, transforma-os em um modelo analítico testado
e os expõe por API REST e dashboards. O mesmo dado percorre o caminho inteiro, do CSV ao
indicador, com testes e documentação em cada etapa.

**Status:** Fase 0 — Fundação

## Arquitetura (planejada)

Três componentes que se integram apenas pelo PostgreSQL:

- **Carga (Python):** lê os CSVs e grava na camada `raw`
- **Transformação (dbt):** cria `staging` e `analytics` e roda os testes de qualidade
- **API (Spring Boot):** expõe indicadores, execuções e qualidade, somente leitura

Dashboards no Metabase. Ambiente com Docker Compose e integração contínua com GitHub Actions.

## Dados

Este projeto usa o [Brazilian E-Commerce Public Dataset by Olist](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce),
com cerca de 100 mil pedidos de 2016 a 2018, licenciado sob
[CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/).

- Os CSVs **não** fazem parte do repositório.
- O projeto não tem uso comercial.
- Os dados são históricos e não representam o mercado atual.

## Como executar

Pré-requisitos: Docker (com Docker Compose) e make. No Windows, use o WSL2.

```bash
cp .env.example .env   # depois troque a senha no .env
make up                # sobe o PostgreSQL
make psql              # abre o terminal do banco
make down              # para o ambiente
```

## Licença

O código está sob a licença MIT (veja [LICENSE](LICENSE)). Os dados seguem a licença própria indicada acima.