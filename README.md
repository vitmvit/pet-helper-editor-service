# pet-helper-service

[Точка входа в приложение](https://github.com/vitmvit/pet-helper-api-gateway-service)

Данный микросервис предоставляет функционал для работы со справочными таблицами комплекса.

## Swagger

http://localhost:8087/api/doc/swagger-ui/index.html#/

## StateTemplateController (8081/api/v1/stateTemplates)

Контроллер поддерживает следующие операции:

- поиск записи состояния по id
- просмотр всех записей состояния
- создание записи
- обновление записи
- удаление записи по id

### GET-запросы:

#### StateTemplateDto findById(@PathVariable("id") Long id)

Request:

```http request
http://localhost:8085/api/v1/stateTemplates/1
```

Response:

```json
{
  "id": 1,
  "name": "Температура",
  "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eget arcu nec mauris blandit convallis.",
  "uuidImage": "26b999fe-a099-4185-a203-840d3dc26eed"
}
```

Error:

```json
{
  "errorMessage": "Entity not found!",
  "errorCode": 404
}
```

#### List<StateTemplateDto> findAll()

Request:

```http request
http://localhost:8085/api/v1/stateTemplates
```

Response:

```json
[
  {
    "id": 1,
    "name": "Температура",
    "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eget arcu nec mauris blandit convallis.",
    "uuidImage": "26b999fe-a099-4185-a203-840d3dc26eed"
  },
  {
    "id": 2,
    "name": "Вес",
    "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eget arcu nec mauris blandit convallis.",
    "uuidImage": "ae89b38d-2953-4a57-9878-68361043e151"
  },
  {
    "id": 3,
    "name": "Рост",
    "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eget arcu nec mauris blandit convallis.",
    "uuidImage": "ec164f6c-2882-4e71-b9bf-95075e267c6a"
  }
]
```

### POST-запросы:

#### StateTemplateDto create(@RequestBody StateTemplateCreateDto stateCreateDto)

Request:

```http request
http://localhost:8085/api/v1/stateTemplates
```

Body:

```json
{
  "name": "Температура2",
  "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eget arcu nec mauris blandit convallis.",
  "uuidImage": "26b999fe-a099-4185-a203-840d3dc26eed"
}
```

Response:

```json
{
  "id": 4,
  "name": "Температура2",
  "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eget arcu nec mauris blandit convallis.",
  "uuidImage": "26b999fe-a099-4185-a203-840d3dc26eed"
}
```

### PUT-запросы:

#### StateDtoupdate(@RequestBody StateUpdateDto stateUpdateDto)

Request:

```http request
http://localhost:8085/api/v1/stateTemplates
```

Body:

```json
{
  "name": "string",
  "description": "string",
  "uuidImage": "string",
  "id": 4
}
```

Response:

```json
{
  "id": 4,
  "name": "string",
  "description": "string",
  "uuidImage": "string"
}
```

### DELETE-запросы:

Не возвращают ничего:

- delete(@PathVariable("id") Long id)

## AnimalTypeController

Контроллер поддерживает следующие операции:

- поиск записи по id
- просмотр всех записей
- создание записи
- обновление записи
- удаление записи по id

### GET-запросы:

#### AnimalTypeDto findById(@PathVariable("id") Long id)

Request:

```http request
http://localhost:8087/api/v1/animalTypes/1
```

Response:

```json
{
  "id": 1,
  "name": "Рептилия"
}
```

Error:

```json
{
  "errorMessage": "Entity not found!",
  "errorCode": 404
}
```

#### List<AnimalTypeDto> findAll()

Request:

```http request
http://localhost:8087/api/v1/animalTypes
```

Response:

```json
[
  {
    "id": 1,
    "name": "Рептилия"
  },
  {
    "id": 2,
    "name": "Млекопитающее"
  },
  ...
]
```

### POST-запросы:

#### AnimalTypeDto create(@RequestBody AnimalTypeCreateDto animalTypeCreateDto)

Request:

```http request
http://localhost:8087/api/v1/animalTypes
```

Body:

```json
{
  "name": "Жабенция"
}
```

Response:

```json
{
  "id": 187,
  "name": "Жабенция"
}
```

### PUT-запросы:

#### StateDtoUpdate(@RequestBody StateUpdateDto stateUpdateDto)

Request:

```http request
http://localhost:8085/api/v1/stateTemplates
```

Body:

```json
{
  "name": "string",
  "description": "string",
  "uuidImage": "string",
  "id": 4
}
```

Response:

```json
{
  "id": 4,
  "name": "string",
  "description": "string",
  "uuidImage": "string"
}
```

### DELETE-запросы:

Не возвращают ничего:

- delete(@PathVariable("id") Long id)

## StateTemplateController (8081/api/v1/stateTemplates)

Контроллер поддерживает следующие операции:

- поиск записи состояния по id
- просмотр всех записей состояния
- создание записи
- обновление записи
- удаление записи по id

### GET-запросы:

#### StateTemplateDto findById(@PathVariable("id") Long id)

Request:

```http request
http://localhost:8085/api/v1/stateTemplates/1
```

Response:

```json
{
  "id": 1,
  "name": "Температура",
  "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eget arcu nec mauris blandit convallis.",
  "uuidImage": "26b999fe-a099-4185-a203-840d3dc26eed"
}
```

Error:

```json
{
  "errorMessage": "Entity not found!",
  "errorCode": 404
}
```

#### List<StateTemplateDto> findAll()

Request:

```http request
http://localhost:8085/api/v1/stateTemplates
```

Response:

```json
[
  {
    "id": 1,
    "name": "Температура",
    "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eget arcu nec mauris blandit convallis.",
    "uuidImage": "26b999fe-a099-4185-a203-840d3dc26eed"
  },
  {
    "id": 2,
    "name": "Вес",
    "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eget arcu nec mauris blandit convallis.",
    "uuidImage": "ae89b38d-2953-4a57-9878-68361043e151"
  },
  {
    "id": 3,
    "name": "Рост",
    "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eget arcu nec mauris blandit convallis.",
    "uuidImage": "ec164f6c-2882-4e71-b9bf-95075e267c6a"
  }
]
```

### POST-запросы:

#### StateTemplateDto create(@RequestBody StateTemplateCreateDto stateCreateDto)

Request:

```http request
http://localhost:8085/api/v1/stateTemplates
```

Body:

```json
{
  "name": "Температура2",
  "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eget arcu nec mauris blandit convallis.",
  "uuidImage": "26b999fe-a099-4185-a203-840d3dc26eed"
}
```

Response:

```json
{
  "id": 4,
  "name": "Температура2",
  "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eget arcu nec mauris blandit convallis.",
  "uuidImage": "26b999fe-a099-4185-a203-840d3dc26eed"
}
```

### PUT-запросы:

#### StateDtoupdate(@RequestBody StateUpdateDto stateUpdateDto)

Request:

```http request
http://localhost:8085/api/v1/stateTemplates
```

Body:

```json
{
  "name": "string",
  "description": "string",
  "uuidImage": "string",
  "id": 4
}
```

Response:

```json
{
  "id": 4,
  "name": "string",
  "description": "string",
  "uuidImage": "string"
}
```

### DELETE-запросы:

Не возвращают ничего:

- delete(@PathVariable("id") Long id)

## StateTemplateController (8081/api/v1/stateTemplates)

Контроллер поддерживает следующие операции:

- поиск записи состояния по id
- просмотр всех записей состояния
- создание записи
- обновление записи
- удаление записи по id

### GET-запросы:

#### StateTemplateDto findById(@PathVariable("id") Long id)

Request:

```http request
http://localhost:8085/api/v1/stateTemplates/1
```

Response:

```json
{
  "id": 1,
  "name": "Температура",
  "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eget arcu nec mauris blandit convallis.",
  "uuidImage": "26b999fe-a099-4185-a203-840d3dc26eed"
}
```

Error:

```json
{
  "errorMessage": "Entity not found!",
  "errorCode": 404
}
```

#### List<StateTemplateDto> findAll()

Request:

```http request
http://localhost:8085/api/v1/stateTemplates
```

Response:

```json
[
  {
    "id": 1,
    "name": "Температура",
    "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eget arcu nec mauris blandit convallis.",
    "uuidImage": "26b999fe-a099-4185-a203-840d3dc26eed"
  },
  {
    "id": 2,
    "name": "Вес",
    "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eget arcu nec mauris blandit convallis.",
    "uuidImage": "ae89b38d-2953-4a57-9878-68361043e151"
  },
  {
    "id": 3,
    "name": "Рост",
    "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eget arcu nec mauris blandit convallis.",
    "uuidImage": "ec164f6c-2882-4e71-b9bf-95075e267c6a"
  }
]
```

### POST-запросы:

#### StateTemplateDto create(@RequestBody StateTemplateCreateDto stateCreateDto)

Request:

```http request
http://localhost:8085/api/v1/stateTemplates
```

Body:

```json
{
  "name": "Температура2",
  "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eget arcu nec mauris blandit convallis.",
  "uuidImage": "26b999fe-a099-4185-a203-840d3dc26eed"
}
```

Response:

```json
{
  "id": 4,
  "name": "Температура2",
  "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eget arcu nec mauris blandit convallis.",
  "uuidImage": "26b999fe-a099-4185-a203-840d3dc26eed"
}
```

### PUT-запросы:

#### StateDtoupdate(@RequestBody StateUpdateDto stateUpdateDto)

Request:

```http request
http://localhost:8085/api/v1/stateTemplates
```

Body:

```json
{
  "name": "string",
  "description": "string",
  "uuidImage": "string",
  "id": 4
}
```

Response:

```json
{
  "id": 4,
  "name": "string",
  "description": "string",
  "uuidImage": "string"
}
```

### DELETE-запросы:

Не возвращают ничего:

- delete(@PathVariable("id") Long id)

## StateTemplateController (8081/api/v1/stateTemplates)

Контроллер поддерживает следующие операции:

- поиск записи состояния по id
- просмотр всех записей состояния
- создание записи
- обновление записи
- удаление записи по id

### GET-запросы:

#### StateTemplateDto findById(@PathVariable("id") Long id)

Request:

```http request
http://localhost:8085/api/v1/stateTemplates/1
```

Response:

```json
{
  "id": 1,
  "name": "Температура",
  "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eget arcu nec mauris blandit convallis.",
  "uuidImage": "26b999fe-a099-4185-a203-840d3dc26eed"
}
```

Error:

```json
{
  "errorMessage": "Entity not found!",
  "errorCode": 404
}
```

#### List<StateTemplateDto> findAll()

Request:

```http request
http://localhost:8085/api/v1/stateTemplates
```

Response:

```json
[
  {
    "id": 1,
    "name": "Температура",
    "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eget arcu nec mauris blandit convallis.",
    "uuidImage": "26b999fe-a099-4185-a203-840d3dc26eed"
  },
  {
    "id": 2,
    "name": "Вес",
    "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eget arcu nec mauris blandit convallis.",
    "uuidImage": "ae89b38d-2953-4a57-9878-68361043e151"
  },
  {
    "id": 3,
    "name": "Рост",
    "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eget arcu nec mauris blandit convallis.",
    "uuidImage": "ec164f6c-2882-4e71-b9bf-95075e267c6a"
  }
]
```

### POST-запросы:

#### StateTemplateDto create(@RequestBody StateTemplateCreateDto stateCreateDto)

Request:

```http request
http://localhost:8085/api/v1/stateTemplates
```

Body:

```json
{
  "name": "Температура2",
  "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eget arcu nec mauris blandit convallis.",
  "uuidImage": "26b999fe-a099-4185-a203-840d3dc26eed"
}
```

Response:

```json
{
  "id": 4,
  "name": "Температура2",
  "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eget arcu nec mauris blandit convallis.",
  "uuidImage": "26b999fe-a099-4185-a203-840d3dc26eed"
}
```

### PUT-запросы:

#### StateDtoupdate(@RequestBody StateUpdateDto stateUpdateDto)

Request:

```http request
http://localhost:8085/api/v1/stateTemplates
```

Body:

```json
{
  "name": "string",
  "description": "string",
  "uuidImage": "string",
  "id": 4
}
```

Response:

```json
{
  "id": 4,
  "name": "string",
  "description": "string",
  "uuidImage": "string"
}
```

### DELETE-запросы:

Не возвращают ничего:

- delete(@PathVariable("id") Long id)

## StateTemplateController (8081/api/v1/stateTemplates)

Контроллер поддерживает следующие операции:

- поиск записи состояния по id
- просмотр всех записей состояния
- создание записи
- обновление записи
- удаление записи по id

### GET-запросы:

#### StateTemplateDto findById(@PathVariable("id") Long id)

Request:

```http request
http://localhost:8085/api/v1/stateTemplates/1
```

Response:

```json
{
  "id": 1,
  "name": "Температура",
  "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eget arcu nec mauris blandit convallis.",
  "uuidImage": "26b999fe-a099-4185-a203-840d3dc26eed"
}
```

Error:

```json
{
  "errorMessage": "Entity not found!",
  "errorCode": 404
}
```

#### List<StateTemplateDto> findAll()

Request:

```http request
http://localhost:8085/api/v1/stateTemplates
```

Response:

```json
[
  {
    "id": 1,
    "name": "Температура",
    "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eget arcu nec mauris blandit convallis.",
    "uuidImage": "26b999fe-a099-4185-a203-840d3dc26eed"
  },
  {
    "id": 2,
    "name": "Вес",
    "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eget arcu nec mauris blandit convallis.",
    "uuidImage": "ae89b38d-2953-4a57-9878-68361043e151"
  },
  {
    "id": 3,
    "name": "Рост",
    "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eget arcu nec mauris blandit convallis.",
    "uuidImage": "ec164f6c-2882-4e71-b9bf-95075e267c6a"
  }
]
```

### POST-запросы:

#### StateTemplateDto create(@RequestBody StateTemplateCreateDto stateCreateDto)

Request:

```http request
http://localhost:8085/api/v1/stateTemplates
```

Body:

```json
{
  "name": "Температура2",
  "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eget arcu nec mauris blandit convallis.",
  "uuidImage": "26b999fe-a099-4185-a203-840d3dc26eed"
}
```

Response:

```json
{
  "id": 4,
  "name": "Температура2",
  "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eget arcu nec mauris blandit convallis.",
  "uuidImage": "26b999fe-a099-4185-a203-840d3dc26eed"
}
```

### PUT-запросы:

#### StateDtoupdate(@RequestBody StateUpdateDto stateUpdateDto)

Request:

```http request
http://localhost:8085/api/v1/stateTemplates
```

Body:

```json
{
  "name": "string",
  "description": "string",
  "uuidImage": "string",
  "id": 4
}
```

Response:

```json
{
  "id": 4,
  "name": "string",
  "description": "string",
  "uuidImage": "string"
}
```

### DELETE-запросы:

Не возвращают ничего:

- delete(@PathVariable("id") Long id)