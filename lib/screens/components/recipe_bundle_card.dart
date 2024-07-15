import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../models/RecipeBundel.dart';

class RecipeBunldeCard extends StatelessWidget {
  const RecipeBunldeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.65,
      child: Container(
        decoration: BoxDecoration(
            color: recipeBundles[0].color,
            borderRadius: BorderRadius.circular(12)),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Spacer(),
                    Text(
                      recipeBundles[0].title,
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.w800),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      recipeBundles[0].description,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Spacer(),
                    Row(
                      children: [
                        SvgPicture.asset('assets/icons/pot.svg'),
                        SizedBox(width: 10,),
                        Text('95 Recipies', style: TextStyle(color: Colors.white),),
                      ],
                    ),
                    Row(
                      children: [
                        SvgPicture.asset('assets/icons/chef.svg'),
                        SizedBox(width: 10,),
                        Text('16 Chiefs', style: TextStyle(color: Colors.white),),
                      ],
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            AspectRatio(
              aspectRatio: 0.71,
              child: Image.asset(
                'assets/images/cook_new@2x.png',
                fit: BoxFit.cover,
                alignment: Alignment.centerLeft,
              ),
            ),
          ],
        ),
      ),


    );
  }
}
