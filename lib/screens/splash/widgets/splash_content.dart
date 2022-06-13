import 'package:codingchallenge_redandroid/screens/splash/cubit/splash_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../navigation/routes.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashCubit, SplashState>(
      listener: (context, state) {
        if (state is SplashLoaded) {
          Navigator.of(context).pushReplacementNamed(Routes.main.route);
        }
      },
      child: Container(
        color: Theme.of(context).colorScheme.secondary,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset("assets/images/iron_throne.png"),
              const SizedBox(
                height: 16,
              ),
              Text("The Houses of Thrones",
                  style: Theme.of(context).textTheme.headline4),
              BlocBuilder<SplashCubit, SplashState>(
                builder: (context, state) {
                  return _getStateWidget(state);
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _getStateWidget(SplashState state) {
    if (state is SplashInitializing) {
      return const Text("API Service initializing");
    }
    if (state is SplashLoading) {
      return const Text("Loading House information");
    }
    if (state is SplashException) {
      return Text("Error: ${state.exception}");
    }

    return const SizedBox();
  }
}
