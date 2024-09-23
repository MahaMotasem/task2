import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/home_page/category_item.dart';
import 'package:flutter_application_2/home_page/category_model.dart';
import 'package:flutter_application_2/home_page/products_item.dart';
import 'package:flutter_application_2/profile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "assets/pic1.jpeg",
      "assets/pic2.jpeg",
      "assets/pic3.jpeg",
    ];
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Home Page'),
        centerTitle: true,
        automaticallyImplyLeading: true,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.purple[400],
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Profile'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfileScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 200,
                width: double.infinity,
                child: Swiper(
                  itemBuilder: (BuildContext context, int index) {
                    return Image.asset(
                      images[index],
                      fit: BoxFit.cover,
                    );
                  },
                  itemCount: images.length,
                  pagination: SwiperPagination(),
                  autoplay: true,
                  // control: SwiperControl(),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Category",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.07,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    separatorBuilder: (context, index) => const SizedBox(
                          width: 15,
                        ),
                    itemCount: categoryData.length,
                    itemBuilder: (context, index) {
                      return CategoryItem(
                        categoryModel: categoryData[index],
                      );
                    }),
              ),
              const Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Item",
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 400,
                width: MediaQuery.of(context).size.width,
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10,
                            childAspectRatio: .7,
                            ),
                    itemCount: productData.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return SizedBox(
                        height: 80,
                        child: ProductItems(
                          categoryModel: productData[index],
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
