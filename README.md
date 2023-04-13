# pokedex

Project created and developed in purpose of learning Flutter. It's a mobile
application which allows users to search for pokemon.

## Project presentation
### App screens
| Home page  | Pokemon Details Page |
| ------------- | ------------- |
|<img width="237" alt="image" src="https://user-images.githubusercontent.com/71925819/228244394-0fb637bd-8522-4c32-8673-cede325e12e8.png"> | <img width="239" alt="Screenshot 2023-04-11 at 13 31 14" src="https://user-images.githubusercontent.com/71925819/231162927-b53b426b-7925-4d18-90f6-9e17e0402579.png">

### App showcase
https://user-images.githubusercontent.com/71925819/231162760-e69651c3-0426-469d-81f9-e106df9b9ae2.mov



## Technology stack and main dependencies
| Flutter  | v3.3.3  |
| ------------- | ------------- |
| Code generation  | freezed |
| State management | flutter_bloc |
| Dependency injection | get_it injectable |
| Navigation  | auto_route |


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
