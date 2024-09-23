import 'package:flutter/material.dart';
import 'package:flutter_application_2/home_page/category_model.dart';

class ProductDetails extends StatefulWidget {
  CategoryModel categoryModel;
   ProductDetails({super.key , required this.categoryModel});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
   int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset("${widget.categoryModel.pic}"),
          const SizedBox(height: 10,),
          Text("${widget.categoryModel.name}"),
          const SizedBox(height: 10,),
          Text("${widget.categoryModel.price}"),
          const SizedBox(height: 10,),
          Text("${widget.categoryModel.dis?? " "}"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(onPressed: (){
                setState(() {
                  counter++;
                });

              }, icon: Icon(Icons.add)),
              Text("$counter", style: TextStyle(fontSize: 19),),
              IconButton(onPressed: (){
                setState(() {
                  counter--;
                });

              }, icon: Icon(Icons.minimize))

            ],
          ),
          ElevatedButton(onPressed: (){
          }, child: Text("AddTOCart"))
        ],
      ),

    );
  }
}