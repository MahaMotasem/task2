import 'package:flutter/material.dart';

import 'category_model.dart';

class CategoryItem extends StatelessWidget {
  CategoryModel categoryModel;
  CategoryItem({super.key, required this.categoryModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.grey[300]),
      child: Column(children: [
        // Image.asset(
        //   "${categoryModel.pic}",
        // ),
        Align(
          alignment: Alignment.center,
          child: Text("${categoryModel.name}",style: TextStyle(fontSize: 18),)),
        // Text("${categoryModel.price}"),
        Icon(Icons.favorite),
      ]),
    );
  }
}
