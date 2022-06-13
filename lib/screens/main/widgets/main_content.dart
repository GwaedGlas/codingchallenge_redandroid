import 'package:codingchallenge_redandroid/navigation/routes.dart';
import 'package:codingchallenge_redandroid/repositories/house_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainContent extends StatelessWidget {
  const MainContent({super.key});

  @override
  Widget build(BuildContext context) {
    final houses = context.read<HouseRepository>().allHouses;
    return ListView.separated(
      itemBuilder: (context, index) => InkWell(
        onTap: () {
          Navigator.of(context).pushReplacementNamed(Routes.details.route,
              arguments: houses[index]);
        },
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              houses[index].name,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
        ),
      ),
      separatorBuilder: (_, __) => const Divider(),
      itemCount: houses.length,
    );
  }
}
