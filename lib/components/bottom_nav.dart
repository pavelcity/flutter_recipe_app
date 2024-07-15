import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
            child: Container(
              // width: 80,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.green
              ),
              child: IconButton(icon: Icon(Icons.home, color: Colors.white,), onPressed: null,),
            ),
          ),
          Expanded(
            child: Container(
              // width: 80,
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.cyan
              ),
              child: IconButton(icon: Icon(Icons.card_travel, color: Colors.white,), onPressed: null,),
            ),
          ),
          Expanded(
            child: Container(
              // width: 80,
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.deepPurpleAccent
              ),
              child: IconButton(icon: Icon(Icons.person, color: Colors.white,), onPressed: null,),
            ),
          ),
        ],
      ),
    );
  }
}

