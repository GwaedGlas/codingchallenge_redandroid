import 'package:codingchallenge_redandroid/screens/splash/widgets/splash_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../repositories/house_repository.dart';
import 'cubit/splash_cubit.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final houseRepository = context.read<HouseRepository>();
    return Scaffold(
      body: BlocProvider<SplashCubit>(
        create: (_) => SplashCubit(houseRepository)..initialize(),
        lazy: false,
        child: const SplashContent(),
      ),
    );
  }
}
