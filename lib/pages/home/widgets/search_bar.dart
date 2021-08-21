import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:amazon/constants.dart';

Widget buildSearchBar()=> Padding(padding: const EdgeInsets.all(2*Constants.kPapding),
  child: TextField(
    decoration: InputDecoration(
      hintText: "Search a Book",
      fillColor: Colors.black.withOpacity(0.3),
      filled: true,
      prefixIcon: Icon(Icons.search),
      contentPadding: const EdgeInsets.symmetric(
        vertical: 0.0, horizontal: Constants.kPapding,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0),
        borderSide: BorderSide.none
      ),
    ),
  ),
);