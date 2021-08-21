import 'dart:html';

import 'package:flutter/material.dart';
import 'package:amazon/constants.dart';
import 'package:amazon/models/book_model.dart';
import 'package:amazon/pages/book/widgets/book_display.dart';
import 'package:amazon/pages/book/widgets/description.dart';

class BookPage extends StatefulWidget {
  BookPage({required this.book});
  final BookModel book;
  //const BookPage({Key? key}) : super(key: key);

  @override
  _BookPageState createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
          icon: Icon(
              Icons.keyboard_arrow_right_outlined,
              color: Colors.black87,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(Constants.kPapding),
            child: IconButton(
              onPressed: (){
               setState(() {
                 widget.book.favorite = !widget.book.favorite;
               });
              },
              icon: Icon(
                widget.book.favorite ? Icons.favorite : Icons.favorite_border,
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(child:
       Container(
         height: double.infinity,
         child: Padding(
             padding: const EdgeInsets.symmetric(
               horizontal: Constants.kPapding * 4,
             ),
           child: Column(
             children: [
              ...buildBookDisplay(book: widget.book),
               ...buildDescription(),
             ],
           ),
         ),
       ),
      ),
    );
  }
}
