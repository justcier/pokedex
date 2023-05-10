import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex_rest/features/favourites/presentation/cubits/favourites_cubit.dart';

import 'services/injection_service/injection_service.dart';

class GlobalProviders extends StatelessWidget {
  final Widget child;

  const GlobalProviders({
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<FavouritesCubit>(
      create: (_) => getIt<FavouritesCubit>(),
      child: child,
    );
  }
}
