SmartShoppingList API Documentation

Mock Server URL

`https://dbf18990-cb37-485c-992b-9fde7dec8540.mock.pstmn.io`

SmartShoppingList API

Документация к учебному API для приложения **«Умный список покупок»**, используемому в ЛР6.

Базовый URL (Mock server)

Все примеры ниже используют Postman Mock Server.

{{base_url}} = https://dbf18990-cb37-485c-992b-9fde7dec8540.mock.pstmn.io

Переменная окружения в Postman:

- `base_url` = этот URL

Endpoints

Authentication

- `POST /auth/login` – авторизация пользователя и получение токена

Tasks

- `GET /tasks` – получить список товаров в списке покупок
- `POST /tasks` – создать новый товар
- `PUT /tasks/:id` – обновить существующий товар
- `DELETE /tasks/:id` – удалить товар

Categories

- `GET /categories` – получить список категорий
- `POST /categories` – создать новую категорию

Examples (Postman)

Коллекция и окружение лежат в папке `postman/` репозитория:

- `SmartShoppingList_API_Collection.json`
- `SmartShoppingList_Local_Environment.json`

Login

Используется запрос **POST Login** из коллекции.

- Успешный вход: возвращает `token`, `user_id` и сообщение об успешной авторизации.

Get All Tasks

Используется запрос **GET All Tasks**.

- Успешный ответ: статус `200 OK`, в теле – список задач (товаров).

Create Task

Используется запрос **POST Create Task**.

- Успешный ответ: статус `200 OK`, в теле – данные созданного товара.

Get All Categories

Используется запрос **GET All Categories**.

- Успешный ответ: статус `200 OK`, в теле – список категорий товаров.
