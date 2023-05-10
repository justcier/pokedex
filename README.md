# pokedex

Project created and developed in purpose of learning Flutter. It's a mobile
application which allows users to search for pokemon.

## Project presentation
### App screens
| Home page  | Pokemon Details Page | Favourites Page |
| ------------- | ------------- | ------------- |
| <img width="273" alt="Screenshot 2023-05-09 at 12 40 59" src="https://github.com/justcier/pokedex/assets/71925819/ff7faf6b-17ba-40a1-8643-1e0760edfaa6">|<img width="274" alt="Screenshot 2023-05-09 at 12 41 14" src="https://github.com/justcier/pokedex/assets/71925819/21fc624a-91c1-4bf4-b119-d80f95a8f625">|<img width="276" alt="Screenshot 2023-05-09 at 12 40 40" src="https://github.com/justcier/pokedex/assets/71925819/afb4c94c-9df5-4d74-9e76-eab6f626735e">|

### App showcase
https://github.com/justcier/pokedex/assets/71925819/5763a9ba-4412-4848-82fb-1590ed186e90


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
