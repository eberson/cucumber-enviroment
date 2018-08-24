# Cucumber Enviroment

Ambiente de Desenvolvimento para Cucumber no Docker

```
version: '3.4'

services:
  cucumber:
    build:
      context: .
      dockerfile: Dockerfile
    volumes:
      - .:/opt/workspace
    command: >
        bash -c "bash"
    stdin_open: true
    tty: true
```    
