import 'package:flutter/material.dart';
import 'package:amazon/pages/home/widgets/abb_bar.dart';
import 'package:amazon/pages/home/widgets/books_list.dart';
import 'package:amazon/pages/home/widgets/fab.dart';
import 'package:amazon/pages/home/widgets/header.dart';
import 'package:amazon/pages/home/widgets/icons_;ist.dart';
import 'package:amazon/pages/home/widgets/navigation_bar.dart';
import 'package:amazon/pages/home/widgets/new_book.dart';
import 'package:amazon/pages/home/widgets/search_bar.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      //Now we will build the body
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...buildHeader(),
            buildSearchBar(),
            buildIconslist(),
            BuildBookList(),
            BuildNewBook(),
          ],
        ),
      ),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: BuildFAB(),
      bottomNavigationBar: buildNavigationBar(),
    );
  }
}
