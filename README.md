# pokedex

Project created and developed in purpose of learning Flutter. It's a mobile
application which allows users to search for pokemon.

## Project presentation
### App screens
| Home page | Pokemon Details Page | Favourites Page | 
| ------------- | ------------- | ------------- |
|<img width="294" alt="Screenshot 2023-06-13 at 15 28 31" src="https://github.com/justcier/pokedex/assets/71925819/09e0f65e-c651-48cc-8500-861aaff1b309">|<img width="290" alt="Screenshot 2023-06-13 at 15 35 41" src="https://github.com/justcier/pokedex/assets/71925819/f9dbde6a-d214-4793-9978-84e083380df1">|<img width="293" alt="Screenshot 2023-06-13 at 15 35 14" src="https://github.com/justcier/pokedex/assets/71925819/6dc019f1-fb6e-4033-a544-720394e0d1e7">|<img width="291" alt="Screenshot 2023-06-13 at 15 28 57" src="https://github.com/justcier/pokedex/assets/71925819/38a0d099-1bb6-4834-ab4f-c36370d79f3d">|<img width="288" alt="Screenshot 2023-06-13 at 15 29 13" src="https://github.com/justcier/pokedex/assets/71925819/33cc89ce-22b1-4719-8a44-d0b75b222e7f">|

| Search | Search view with wrong Pokemon name|
|------------- |------------- |
|<img width="291" alt="Screenshot 2023-06-13 at 15 28 57" src="https://github.com/justcier/pokedex/assets/71925819/38a0d099-1bb6-4834-ab4f-c36370d79f3d">|<img width="288" alt="Screenshot 2023-06-13 at 15 29 13" src="https://github.com/justcier/pokedex/assets/71925819/33cc89ce-22b1-4719-8a44-d0b75b222e7f">|

### App showcase

https://github.com/justcier/pokedex/assets/71925819/9aeff68f-d399-47e1-b493-33d829983184


## Technology stack and main dependencies
| Flutter  | v3.3.3  |
| ------------- | ------------- |
| Code generation  | freezed |
| State management | flutter_bloc |
| Dependency injection | get_it injectable |
| Navigation  | auto_route |
| Local storage | shared_preferences |


## App architecture and folder structure
Used architecture is based on clean architecture from: https://resocoder.com/2019/08/27/flutter-tdd-clean-architecture-course-1-explanation-project-structure/

### Folder structure

- common - folder containing common widgets used through the app
- core - folder containing common files used through the app (strings, extensions, endpoints)
- feature - main folder for the features in the app
  - data
      - data_sources - interfaces and implementations of data sources
      - repositories - repositories' implementations
  - domain
    - models - data models used in use cases and presentation layer
    - repositories - repositories' interfaces
    - use_cases - use case implementations
  - presentation
    - cubits - cubits related to the views
    - pages - feature pages
    - widgets - feature widgets
- services - folder containing injection and navigation services
- style - folder containing style tokens used in the app
- test - folder for unit/cubit tests

## How to run the project and tests

#### Get all dependencies by running command:

> flutter pub get

#### Run the project:

> flutter run 

#### To run all tests:

> flutter test
