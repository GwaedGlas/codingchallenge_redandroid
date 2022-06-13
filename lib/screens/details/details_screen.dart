import 'package:codingchallenge_redandroid/screens/details/widgets/details_content.dart';
import 'package:flutter/material.dart';

import '../../service/houses/data/house.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final house = ModalRoute.of(context)?.settings.arguments;
    if(house is! House) throw ArgumentError("Invalid argument. Argument needs to be a House object.");

    return Scaffold(
      appBar: AppBar(title: Text(house.name),),
      body: DetailsContent(house: house),
    );
  }
}
