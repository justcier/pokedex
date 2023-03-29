import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pokedex_rest/features/home/presentation/pages/home_page.dart';
import 'package:pokedex_rest/features/pokemon_details/presentation/pages/pokemon_details_page.dart';
part 'navigation_service.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: HomeRoute.page, path: '/'),
    AutoRoute(page: PokemonDetailsRoute.page, path: '/pokemon_details'),
  ];
}
