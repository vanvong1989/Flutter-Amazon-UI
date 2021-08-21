import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:amazon/constants.dart';

List<Widget> buildHeader()=> [
    Padding(padding: const EdgeInsets.only(
      left : 2 * Constants.kPapding,
      top: Constants.kPapding,
    ),
      child: Text("Bookshelf", style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 25,
       ),
      ),
    ),
    Padding(padding: const EdgeInsets.symmetric(
    horizontal : 2 * Constants.kPapding,
    vertical: Constants.kPapding,
  ),
    child: Text(
      "Well Flutter Mappers",
      style: TextStyle(
      color: Colors.black54,
    ),
    ),
  ),
]; 