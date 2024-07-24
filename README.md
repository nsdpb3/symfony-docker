# Symfony Project Deployment

## Описание

Этот проект представляет собой Symfony приложение, развёрнутое с использованием Docker и Docker Compose. В качестве базы
данных используется Postgres, а в качестве веб-сервера — Nginx.

## Структура проекта

```
/app
|-- /bin
|   |-- console
|-- /config
|-- /public
|-- /src
|-- /var
|-- /vendor
|-- composer.json
|-- composer.lock
|-- symfony.lock
/docker
|-- /nginx
|-- /php
|   |-- Dockerfile
|   |-- xdebug.ini
.gitignore
docker-compose.yml
Makefile
```

## Инструкция по развёртке

### Предварительные требования

- Установленный Docker
- Установленный Docker Compose

### Шаги для развёртки

1. **Соберите Docker-образы:**

   ```sh
   docker-compose build
   ```

2. **Запустите контейнеры:**

   ```sh
   docker-compose up -d
   ```

3. **Инициализация проекта:**

   Выполните команду `make init`, чтобы установить зависимости и подготовить проект к работе.

   ```sh
   make init
   ```

4. **Проверка работы проекта:**

   После выполнения всех команд ваш Symfony проект будет доступен по
   адресу [http://localhost:8080](http://localhost:8080).

### Команды Makefile

- **Инициализация окружения:**

  ```sh
  make init
  ```

- **Сборка сервисов:**

  ```sh
  make build
  ```

- **Запуск сервисов:**

  ```sh
  make up
  ```

- **Остановка сервисов:**

  ```sh
  make stop
  ```

- **Перезапуск сервисов:**

  ```sh
  make restart
  ```

- **Удаление контейнеров и томов:**

  ```sh
  make down
  ```

- **Вход в консоль контейнера:**

  ```sh
  make console
  ```

