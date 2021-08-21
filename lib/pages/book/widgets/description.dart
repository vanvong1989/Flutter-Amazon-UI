import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:amazon/constants.dart';

List<Widget> buildDescription()=> [
  Expanded(child: 
   Padding(
     padding: const EdgeInsets.all(Constants.kPapding),
     child: SingleChildScrollView(
       child: Text(
         "Từ xưa đến nay, sách hay luôn được biết đến như là một kho tàng kiến thức quý báu của nhân loại. "
             "Mỗi một quyển sách đều mang đến cho chúng ta "
             "những giá trị nhất định về tư duy trong công việc, về thái độ sống, ...."
             "Nếu bạn đang tìm kiếm những cuốn sách hay giúp thay đổi cuộc đời, "
             "thì đừng bỏ qua bài viết dưới đây của chúng tôi nhé!.",
         textAlign: TextAlign.justify,
       ),
     ),
   ),
  ),
  Padding(
      padding: const EdgeInsets.all(Constants.kPapding),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Share"),
        TextButton(
            onPressed: (){}, child: Text("One Click Purchase"),
          style: TextButton.styleFrom(
            padding: EdgeInsets.symmetric(
              vertical: 4.0,
              horizontal: Constants.kPapding,
            ),
            minimumSize: Size(5,5),
            backgroundColor: Colors.deepOrange,
            primary: Colors.white,
            shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(
                 20.0,
               ),
            ),
          ),
        ),
      ],
    ),
  ),
];