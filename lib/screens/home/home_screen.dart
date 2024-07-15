import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipe_app/screens/components/body.dart';
import 'package:recipe_app/size_config.dart';

import '../../components/bottom_nav.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: BottomNav(),
    );
  }





  AppBar buildAppBar() {
    return AppBar(
      leading: IconButton(
        onPressed: null,
        icon: SvgPicture.asset('assets/icons/menu.svg'),
      ),
      centerTitle: true,
      title: Image.asset('assets/images/logo.png'),
      actions: [
        IconButton(
            onPressed: null,
            icon: SvgPicture.asset('assets/icons/search.svg'),
        ),
        SizedBox(width: SizeConfig.defaultSize * 0.5,),
      ],
    );
  }
}
