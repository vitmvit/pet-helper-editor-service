# pet-helper-service

[Точка входа в приложение](https://github.com/vitmvit/pet-helper-api-gateway-service)

Данный микросервис предоставляет функционал для работы со справочными таблицами комплекса.

Сюда входят:

- виды животных;
- породы животных;
- статьи;
- шаблоны состояний;
- тэги статей;
- прививки.

При каждом запросе необходимо передавать токен в заголовках.

## Swagger

http://localhost:8087/api/doc/swagger-ui/index.html#/

## Порт

```text
8087
```

## StateTemplateController

Контроллер поддерживает следующие операции:

- поиск шаблона состояния по id
- просмотр всех шаблов состояния
- создание шаблона
- обновление шаблона
- удаление шаблона по id

### GET-запросы:

#### StateTemplateDto findById(@PathVariable("id") Long id)

Request:

```http request
http://localhost:8087/api/v1/stateTemplates/1
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
http://localhost:8087/api/v1/stateTemplates
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
http://localhost:8087/api/v1/stateTemplates
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

#### StateDtoUpdate(@RequestBody StateUpdateDto stateUpdateDto)

Request:

```http request
http://localhost:8087/api/v1/stateTemplates
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

- поиск типа животного по id
- просмотр всех типов животных
- создание типа животного
- обновление типа животного
- удаление типа животного по id

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

#### AnimalTypeDto update(@RequestBody AnimalTypeUpdateDto animalTypeUpdateDto)

Request:

```http request
http://localhost:8087/api/v1/animalTypes
```

Body:

```json
{
  "id": 187,
  "name": "Жабенция"
}
```

Response:

```json
{
  "id": 187,
  "name": "Жаб"
}
```

### DELETE-запросы:

Не возвращают ничего:

- delete(@PathVariable("id") Long id)

## ArticleController

Контроллер поддерживает следующие операции:

- поиск статьи по id
- поиск статьи по имени редактора
- поиск статьи по статусу статьи
- просмотр всех статей
- создание статьи
- обновление статьи
- удаление статьи по id

### GET-запросы:

#### ArticleDto findById(@PathVariable("id") Long id)

Request:

```http request
http://localhost:8087/api/v1/articles/1
```

Response:

```json
{
  "id": 1,
  "name": "Мурчащие друзья: все о кошках",
  "redactorName": "editor1@mail.com",
  "photoUuid": "95af939b-72bc-48e8-9298-573f04055e53",
  "content": "Кошки — очаровательные и независимые существа, которые веками были спутниками человека. Они известны своим утонченным чутьем, грациозными движениями и игривой натурой. В этой статье мы рассмотрим все, что вам нужно знать о кошках, от их истории и пород до уход",
  "status": "DRAFT",
  "createDate": "2024-05-27T18:12:32.664289",
  "updateDate": "2024-05-28T07:51:54.315542"
}
```

Error:

```json
{
  "errorMessage": "Entity not found!",
  "errorCode": 404
}
```

#### List<ArticleDto> findByEditorName(@PathVariable("name") String name)

Request:

```http request
http://localhost:8087/api/v1/articles/editor/editor1@mail.com
```

Response:

```json
[
  {
    "id": 2,
    "name": "Лучшие друзья человека: все о собаках",
    "redactorName": "editor1@mail.com",
    "photoUuid": "9c16cc74-0265-4918-984c-bcb29ea2bfee",
    "content": "Собаки — преданные и любящие животные, которые на протяжении тысячелетий были верными компаньонами человека. Они известны своей игривостью, защитными инстинктами и способностью обучаться. В этой статье мы рассмотрим все, что вам нужно знать о собаках, от их истории и пород до ухода и дрессировки.",
    "status": "FINISHED",
    "createDate": "2024-05-27T18:13:08.164214",
    "updateDate": "2024-05-27T18:13:08.16425"
  },
  {
    "id": 3,
    "name": "Говорящие пернатые: все о попугаях",
    "redactorName": "editor1@mail.com",
    "photoUuid": "be49704f-c40c-4d78-a5f5-6dab88024b31",
    "content": " Попугаи — яркие и умные птицы, известные своей способностью имитировать человеческую речь. Они бывают разных размеров, цветов и видов, каждый со своими уникальными особенностями и потребностями. В этой статье мы рассмотрим все, что вам нужно знать о попугаях, от их истории и видов до ухода и общения.",
    "status": "FINISHED",
    "createDate": "2024-05-27T20:17:11.858714",
    "updateDate": "2024-05-27T20:17:40.041928"
  },
  ...
]
```

Error:

```json
{
  "errorMessage": "Entity not found!",
  "errorCode": 404
}
```

#### List<ArticleDto> findAllByStatus(@PathVariable("status") ArticleStatus status)

Request:

```http request
http://localhost:8087/api/v1/articles/editor/status/DRAFT
```

Response:

```json
[
  {
    "id": 1,
    "name": "Мурчащие друзья: все о кошках",
    "redactorName": "editor1@mail.com",
    "photoUuid": "95af939b-72bc-48e8-9298-573f04055e53",
    "content": "Кошки — очаровательные и независимые существа, которые веками были спутниками человека. Они известны своим утонченным чутьем, грациозными движениями и игривой натурой. В этой статье мы рассмотрим все, что вам нужно знать о кошках, от их истории и пород до уход",
    "status": "DRAFT",
    "createDate": "2024-05-27T18:12:32.664289",
    "updateDate": "2024-05-28T07:51:54.315542"
  }
]
```

Error:

```json
{
  "errorMessage": "Entity not found!",
  "errorCode": 404
}
```

#### List<ArticleDto> findAll()

Request:

```http request
http://localhost:8087/api/v1/articles
```

Response:

```json
[
  {
    "id": 2,
    "name": "Лучшие друзья человека: все о собаках",
    "redactorName": "editor1@mail.com",
    "photoUuid": "9c16cc74-0265-4918-984c-bcb29ea2bfee",
    "content": "Собаки — преданные и любящие животные, которые на протяжении тысячелетий были верными компаньонами человека. Они известны своей игривостью, защитными инстинктами и способностью обучаться. В этой статье мы рассмотрим все, что вам нужно знать о собаках, от их истории и пород до ухода и дрессировки.",
    "status": "FINISHED",
    "createDate": "2024-05-27T18:13:08.164214",
    "updateDate": "2024-05-27T18:13:08.16425"
  },
  {
    "id": 3,
    "name": "Говорящие пернатые: все о попугаях",
    "redactorName": "editor1@mail.com",
    "photoUuid": "be49704f-c40c-4d78-a5f5-6dab88024b31",
    "content": " Попугаи — яркие и умные птицы, известные своей способностью имитировать человеческую речь. Они бывают разных размеров, цветов и видов, каждый со своими уникальными особенностями и потребностями. В этой статье мы рассмотрим все, что вам нужно знать о попугаях, от их истории и видов до ухода и общения.",
    "status": "FINISHED",
    "createDate": "2024-05-27T20:17:11.858714",
    "updateDate": "2024-05-27T20:17:40.041928"
  },
  {
    "id": 4,
    "name": " Маленькие пушистые комочки: все о хомяках",
    "redactorName": "editor1@mail.com",
    "photoUuid": "eb2567e6-34a5-452b-aab0-d0344510e591",
    "content": "Хомяки — очаровательные и неприхотливые грызуны, которые стали популярными домашними питомцами. Они известны своими пушистыми щечками, быстрой беготней и любовью к запасам еды. В этой статье мы рассмотрим все, что вам нужно знать о хомяках, от их истории и видов до ухода и кормления.",
    "status": "FINISHED",
    "createDate": "2024-05-27T20:18:15.615003",
    "updateDate": "2024-05-27T20:18:15.615024"
  },
  {
    "id": 5,
    "name": "Мурлыканье кошки: что оно означает?",
    "redactorName": "editor1@mail.com",
    "photoUuid": "947e35bc-ab31-48c4-b7b4-15ca38948ec1",
    "content": "Мурлыканье - это один из самых характерных звуков, издаваемых кошками. Оно может означать разные вещи в зависимости от контекста и тональности. В этой статье мы рассмотрим различные причины, по которым кошки мурлычут, и что это может означать для их владельцев.",
    "status": "FINISHED",
    "createDate": "2024-05-27T20:19:12.263385",
    "updateDate": "2024-05-27T20:19:12.263408"
  },
  ...
]
```

### POST-запросы:

#### ArticleDto create(@RequestBody ArticleCreateDto dto)

Request:

```http request
http://localhost:8087/api/v1/articles
```

Body:

```json
{
  "name": "Лучшие друзья человека: все о собаках",
  "redactorName": "editor1@mail.com",
  "photoUuid": "9c16cc74-0265-4918-984c-bcb29ea2bfee",
  "content": "Собаки",
  "status": "FINISHED"
}
```

Response:

```json
{
  "id": 11,
  "name": "Лучшие друзья человека: все о собаках",
  "redactorName": "editor1@mail.com",
  "photoUuid": "9c16cc74-0265-4918-984c-bcb29ea2bfee",
  "content": "Собаки",
  "status": "FINISHED",
  "createDate": "2024-07-14T14:35:58.809868",
  "updateDate": "2024-07-14T14:35:58.809887"
}
```

### PUT-запросы:

#### ArticleDto update(@RequestBody ArticleUpdateDto dto)

Request:

```http request
http://localhost:8087/api/v1/articles
```

Body:

```json
{
  "id": 11,
  "name": "Собаки",
  "redactorName": "editor1@mail.com",
  "photoUuid": "9c16cc74-0265-4918-984c-bcb29ea2bfee",
  "content": "Собаки",
  "status": "FINISHED"
}
```

Response:

```json
{
  "id": 11,
  "name": "Собаки",
  "redactorName": "editor1@mail.com",
  "photoUuid": "9c16cc74-0265-4918-984c-bcb29ea2bfee",
  "content": "Собаки",
  "status": "FINISHED",
  "createDate": "2024-07-14T14:35:58.809868",
  "updateDate": "2024-07-14T14:35:58.809887"
}
```

### DELETE-запросы:

Не возвращают ничего:

- delete(@PathVariable("id") Long id)

## BreedController

Контроллер поддерживает следующие операции:

- поиск породы по id
- поиск породы по id типа животного
- просмотр всех пород
- создание породы
- обновление породы
- удаление породы по id

### GET-запросы:

#### BreedDto findById(@PathVariable("id") Long id)

Request:

```http request
http://localhost:8087/api/v1/breeds/1
```

Response:

```json
{
  "id": 1,
  "name": "Зеленая игуана",
  "typeId": 1
}
```

Error:

```json
{
  "errorMessage": "Entity not found!",
  "errorCode": 404
}
```

#### List<BreedDto> findAll()

Request:

```http request
http://localhost:8087/api/v1/breeds
```

Response:

```json
[
  {
    "id": 5,
    "name": "Белоногий гекко",
    "typeId": null
  },
  {
    "id": 6,
    "name": "Кубинский удав",
    "typeId": null
  },
  {
    "id": 8,
    "name": "Шипохвост",
    "typeId": null
  },
  ...
]
```

#### List<BreedDto> findByTypeId(@PathVariable("id") Long id)

Request:

```http request
http://localhost:8087/api/v1/breeds/type/1
```

Response:

```json
[
  {
    "id": 5,
    "name": "Белоногий гекко",
    "typeId": 1
  },
  {
    "id": 6,
    "name": "Кубинский удав",
    "typeId": 1
  },
  {
    "id": 8,
    "name": "Шипохвост",
    "typeId": 1
  },
  ...
]
```

### POST-запросы:

#### BreedDto create(@RequestBody BreedCreateDto breedCreateDto)

Request:

```http request
http://localhost:8087/api/v1/breeds
```

Body:

```json
{
  "name": "Геккон белоногий",
  "typeId": 1
}
```

Response:

```json
{
  "id": 16,
  "name": "Геккон белоногий",
  "typeId": 1
}
```

### PUT-запросы:

#### BreedDto update(@RequestBody BreedUpdateDto breedUpdateDto)

Request:

```http request
http://localhost:8087/api/v1/breeds
```

Body:

```json
{
  "id": 16,
  "name": "Геккон Белоногий",
  "typeId": 1
}
```

Response:

```json
{
  "id": 16,
  "name": "Геккон Белоногий",
  "typeId": 1
}
```

### DELETE-запросы:

Не возвращают ничего:

- delete(@PathVariable("id") Long id)

## TagController

Контроллер поддерживает следующие операции:

- поиск тэга по id
- поиск тэга по id статьи
- просмотр всех тэгов
- создание тэга
- создание нескольких тэгов
- обновление тэга
- удаление тэга по id статьи
- удаление тэга по id

### GET-запросы:

#### TagDto findById(@PathVariable("id") Long id)

Request:

```http request
http://localhost:8087/api/v1/tags/7
```

Response:

```json
{
  "id": 7,
  "articleId": 2,
  "name": "домашние животные"
}
```

Error:

```json
{
  "errorMessage": "Entity not found!",
  "errorCode": 404
}
```

#### List<TagDto> findByArticleId(@PathVariable("id") Long id)

Request:

```http request
http://localhost:8087/api/v1/tags/article/1
```

Response:

```json
[
  {
    "id": 179,
    "articleId": 1,
    "name": "кошки"
  },
  {
    "id": 180,
    "articleId": 1,
    "name": "домашние животные"
  },
  {
    "id": 181,
    "articleId": 1,
    "name": "питомцы"
  },
  {
    "id": 182,
    "articleId": 1,
    "name": "пушистики"
  },
  {
    "id": 183,
    "articleId": 1,
    "name": "мурлыки"
  }
]
```

#### List<TagDto> findAll()

Request:

```http request
http://localhost:8087/api/v1/tags
```

Response:

```json
[
  {
    "id": 179,
    "articleId": 1,
    "name": "кошки"
  },
  {
    "id": 180,
    "articleId": 1,
    "name": "домашние животные"
  },
  ...
]
```

### POST-запросы:

#### List<TagDto> createAll(@RequestBody List<TagCreateDto> dtoList)

Request:

```http request
http://localhost:8087/api/v1/tags/all
```

Body:

```json
[
  {
    "articleId": 1,
    "name": "кошка"
  },
  {
    "articleId": 1,
    "name": "кошки"
  }
]
```

Response:

```json
[
  {
    "id": 190,
    "articleId": 1,
    "name": "кошка"
  },
  {
    "id": 191,
    "articleId": 1,
    "name": "кошки"
  }
]
```

#### TagDto create(@RequestBody TagCreateDto dto)

Request:

```http request
http://localhost:8087/api/v1/tags
```

Body:

```json
{
  "articleId": 1,
  "name": "кошка"
}
```

Response:

```json
{
  "id": 188,
  "articleId": 1,
  "name": "кошка"
}
```

### PUT-запросы:

#### TagDto update(@RequestBody TagUpdateDto dto)

Request:

```http request
http://localhost:8087/api/v1/tags
```

Body:

```json
{
  "id": 190,
  "articleId": 1,
  "name": "Кошка"
}
```

Response:

```json
{
  "id": 190,
  "articleId": 1,
  "name": "Кошка"
}
```

### DELETE-запросы:

Не возвращают ничего:

- delete(@PathVariable("id") Long id)
- deleteByArticleId(@PathVariable("id") Long id)

## VaccinationTypeController

Контроллер поддерживает следующие операции:

- поиск вакцины по id
- просмотр всех вакцин
- создание вакцины
- обновление вакцины
- удаление вакцины по id

### GET-запросы:

#### VaccinationTypeDto findById(@PathVariable("id") Long id)

Request:

```http request
http://localhost:8087/api/v1/vaccinationTypes/10
```

Response:

```json
{
  "id": 10,
  "name": "Прививка от лептоспироза"
}
```

Error:

```json
{
  "errorMessage": "Entity not found!",
  "errorCode": 404
}
```

#### List<VaccinationTypeDto> findAll()

Request:

```http request
http://localhost:8087/api/v1/vaccinationTypes
```

Response:

```json
[
  {
    "id": 5,
    "name": "Прививка от парагриппа"
  },
  {
    "id": 6,
    "name": "Прививка от аденовирус-2"
  },
  {
    "id": 7,
    "name": "Прививка от парвовирусного энтерита"
  },
  ...
]
```

### POST-запросы:

#### VaccinationTypeDto create(@RequestBody VaccinationTypeCreateDto vaccinationTypeCreateDto)

Request:

```http request
http://localhost:8087/api/v1/vaccinationTypes
```

Body:

```json
{
  "name": "Прививка от парагриппа 2"
}
```

Response:

```json
{
  "id": 21,
  "name": "Прививка от парагриппа 2"
}
```

### PUT-запросы:

#### VaccinationTypeDto update(@RequestBody VaccinationTypeUpdateDto vaccinationTypeUpdateDto)

Request:

```http request
http://localhost:8087/api/v1/vaccinationTypes
```

Body:

```json
{
  "id": 21,
  "name": "Прививка от парагриппа 3"
}
```

Response:

```json
{
  "id": 21,
  "name": "Прививка от парагриппа 3"
}
```

### DELETE-запросы:

Не возвращают ничего:

- delete(@PathVariable("id") Long id)