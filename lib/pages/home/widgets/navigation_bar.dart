import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

Widget buildNavigationBar()=> BottomAppBar(
  shape: CircularNotchedRectangle(),
  notchMargin: 0.0,
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 50),
        child: IconButton(onPressed: (){},
          icon: Icon(Icons.message_outlined),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 50),
        child: IconButton(onPressed: (){},
          icon: Icon(Icons.add_shopping_cart),
        ),
      ),
    ],
  ),
);