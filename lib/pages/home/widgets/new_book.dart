import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:amazon/constants.dart';
import 'package:amazon/models/book_model.dart';
import 'package:amazon/pages/book/book_page.dart';

class BuildNewBook extends StatelessWidget {

  final newBook = BookModel.newBook;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: const EdgeInsets.symmetric(
          horizontal: 2 * Constants.kPapding,
          vertical: Constants.kPapding,
        ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Hot New Releases",
                style: TextStyle(color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(Icons.keyboard_arrow_right),
            ],
          ),
        ),
         InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context)=> BookPage(
                  book: newBook,
                ),
              ),
            );
          },
          child: Column (children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: Constants.kPapding),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
              ),
                elevation: 4,
                child: ClipRRect(borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(
                    newBook.image,
                    height: 180,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 2 * Constants.kPapding,
             ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      newBook.title,
                      style: TextStyle(color: Colors.black, fontSize: 16,
                      ),
                    ),
                    Text(
                      newBook.subtitle,
                      style: TextStyle(color: Colors.blue, fontSize: 10,
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
                TextButton(onPressed: (){},
                  child:   Text("4.8"),
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      vertical: 2.0,
                      horizontal: Constants.kPapding,
                    ),
                    backgroundColor: Colors.deepOrange,
                    primary: Colors.white,
                    minimumSize: Size(5, 5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ],
              ),
            ),
          ],
          ),
        ),
        SizedBox(height: MediaQuery.of(context).padding.bottom,),
      ],
    );
  }
}
