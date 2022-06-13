import 'package:flutter/material.dart';

import '../../../service/houses/data/house.dart';

class DetailsContent extends StatelessWidget {
  final House house;

  const DetailsContent({super.key, required this.house});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTextInformation(context, "Service URL", house.url),
          Divider(),
          _buildBooleanInformation(context, "Died out", house.diedOut.isNotEmpty),
          Divider(),
          _buildTextInformation(context, "Region", house.region),
          Divider(),
          _buildTextInformation(context, "Words", house.words),
          Divider(),
          _buildTextInformation(context, "Coat of arms", house.coatOfArms),
        ],
      ),
    );
  }

  Widget _buildTextInformation(
      BuildContext context, String title, String details) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "$title: ",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        Flexible(child: Text(details)),
      ],
    );
  }

  Widget _buildBooleanInformation(
      BuildContext context, String title, bool check) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "$title: ",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        Flexible(
          child: _getBooleanIcon(check),
        ),
      ],
    );
  }

  Icon _getBooleanIcon(bool check) {
    if (check) {
      return const Icon(
        Icons.check,
        color: Colors.green,
      );
    }
    return const Icon(
      Icons.close,
      color: Colors.red,
    );
  }
}
