import 'dart:html';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:amazon/constants.dart';
import 'package:amazon/models/book_model.dart';
import 'package:amazon/pages/book/book_page.dart';

final List<BookModel> books =  BookModel.books;

class BuildBookList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.black.withOpacity(0.2),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical :Constants.kPapding, horizontal: Constants.kPapding * 2,
            ),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                    "Best Seller",
                  style: TextStyle(color: Colors.black, fontSize: 16,
                  fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                    onPressed: () {},
                  child: Text("See All"),
                  style: TextButton.styleFrom(
                     padding: const EdgeInsets.symmetric(
                         vertical: 2.0,
                         horizontal: Constants.kPapding,
                     ),
                    backgroundColor: Colors.deepOrange,
                    primary: Colors.white,
                    minimumSize: Size(5,5),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
       scrollDirection: Axis.horizontal,
            child: Row(crossAxisAlignment: CrossAxisAlignment.start,
             children: List.generate(
                books.length,
                  (index) => Padding(
                     padding: EdgeInsets.only(
                       bottom: Constants.kPapding * 2,
                         right: Constants.kPapding,
                          left:  index == 0 ? Constants.kPapding: 0,
               ),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=> BookPage(
                        book: books[index],
                      ),
                   ),
                  );
                },
                child: Column(children: [
                   Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0),
                   ),
                    elevation: 4,
                    child: ClipRRect(borderRadius: BorderRadius.circular(10.0),
                       child: Image.asset(books[index].image,
                         height: 180,
                         width: 120,
                         fit: BoxFit.cover,
                       ),
                     ),
                  ),
                  Container(
                    width: 120,
                    child: Text(
                        books[index].title,
                    ),
                  ),
                  Container(
                    width: 120,
                    child: Text(
                      books[index].subtitle,
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.blueGrey,
                      ),
                    ),
                  ),
                ],
               ),
              ),
             ),
            ),
           ),
          ),
        ],
      ),
    );
  }
}
