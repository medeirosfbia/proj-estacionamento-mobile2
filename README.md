# Estacionamento

Monorepo com backend Node.js + Express + Sequelize e frontend Expo.

## Subir em desenvolvimento

Na raiz do projeto:

```bash
docker compose --profile dev up -d --build
```

Servicos expostos:

- Backend: `http://localhost:3000`
- Frontend Expo: `http://localhost:8081`

No Windows, use esse comando no Docker Desktop. Se quiser abrir o app no Android Emulator, ajuste o backend da interface para `http://10.0.2.2:3000`.

## Subir em produção

Na raiz do projeto:

```bash
docker compose --profile prod up -d --build
```

Servicos expostos:

- Backend: `http://localhost:3000`
- Frontend web: `http://localhost:8080`

## Banco de dados

O MySQL sobe junto com os dois perfis usando:

- banco: `estacionamento`
- usuario: `dev`
- senha: `dev123`
- porta: `3306`

## Observacoes

- O backend lê as variáveis do arquivo `.env`.
- O frontend tem `.env` e `.env.example` com a URL da API local.