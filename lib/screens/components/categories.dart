import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../size_config.dart';


class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {

  List<String> categories = ['All', 'Italian', 'Indian', 'Mexican', 'Chinese'];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.defaultSize * 3.5,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => buildCategoryItem(index),
      ),
    );
  }

  Widget buildCategoryItem(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(left: 14),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 4),
        decoration: BoxDecoration(
            color: selectedIndex  == index ?  Color(0xFFEFF3EE) : Colors.transparent,
            borderRadius: BorderRadius.circular(12)
        ),
        child: Text(
          categories[index],
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: selectedIndex == index ? kPrimaryColor : Colors.grey,
          ),
        ),
      ),
    );
  }
}


