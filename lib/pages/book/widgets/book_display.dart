import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:amazon/constants.dart';
import 'package:amazon/models/book_model.dart';

List<Widget> buildBookDisplay({required BookModel book})=> [
  Card(
   shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10.0),
   ),
   elevation: 4,
   child: ClipRRect(
    borderRadius: BorderRadius.circular(10.0),
    child: Image.asset(
     book.secondImage,
     height: 150,
     fit: BoxFit.cover,
    ),
   ),
  ),
 Padding(padding: const EdgeInsets.all(Constants.kPapding),
  child: Text(
   book.title,
   style: TextStyle(
     fontWeight: FontWeight.bold,
    fontSize: 16,
   ),
   ),
  ),
];