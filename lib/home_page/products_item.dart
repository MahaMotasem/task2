import 'package:flutter/material.dart';
import 'package:flutter_application_2/home_page/product_details.dart';

import 'category_model.dart';

class ProductItems extends StatelessWidget {
  CategoryModel categoryModel;
  ProductItems({super.key, required this.categoryModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetails(
              categoryModel: categoryModel,
            ),
          ),
        );
      },
      child: Container(
        height: 80,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey[300],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "${categoryModel.pic}",
              width: 150,
              fit: BoxFit.cover,
            ),
            Text(
              "${categoryModel.name ?? " "}",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "${categoryModel.price}",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
