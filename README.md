# pokedex

Project created and developed in purpose of learning Flutter. It's a mobile
application which allows users to search for pokemon.

## Project presentation

## Technology stack and main dependencies
| Flutter  | v3.3.3  |
| ------------- | ------------- |
| Code generation  | freezed |
| State management | flutter_bloc |
| Dependency injection | get_it injectable |


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
