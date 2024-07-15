import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipe_app/constants.dart';
import 'package:recipe_app/models/RecipeBundel.dart';
import 'package:recipe_app/screens/components/recipe_bundle_card.dart';
import 'package:recipe_app/size_config.dart';

import 'categories.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Categories(),
        SizedBox(
          height: 20,
        ),
        // RecipeBunldeCard(),
        RecipeBunldeCard(),
      ],
    );
  }
}
