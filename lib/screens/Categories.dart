import 'package:flutter/material.dart';
import 'category_details.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                /// TITLE
                Center(
                  child: Column(
                    children: const [
                      Icon(Icons.category, color: Colors.red, size: 35),
                      SizedBox(height: 5),
                      Text(
                        "Categories",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                /// 🔥 ROW بدل Column
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      categoryItem(context, "Movies"),
                      categoryItem(context, "Anime"),
                      categoryItem(context, "Animation"),
                      categoryItem(context, "Series"),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                // /// ممكن تسيب السيكشنز زي ما هي
                categorySection(context, "Movies"),
                categorySection(context, "Anime"),
                categorySection(context, "Animation"),
                categorySection(context, "Series"),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// 🔥 عنصر في الـ Row
  Widget categoryItem(BuildContext context, String title) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => CategoryDetails(title: title),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.grey[900],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  /// CATEGORY SECTION (زي ما هو)
  Widget categorySection(BuildContext context, String title) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => CategoryDetails(title: title),
              ),
            );
          },
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        const SizedBox(height: 10),

        SizedBox(
          height: 180,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              movieCard(context, "assets/forrest.jpg", title),
              movieCard(context, "assets/forrest.jpg", title),
              movieCard(context, "assets/forrest.jpg", title),
              movieCard(context, "assets/forrest.jpg", title),
            ],
          ),
        ),

        const SizedBox(height: 20),
      ],
    );
  }

  /// MOVIE CARD
  Widget movieCard(BuildContext context, String image, String title) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => CategoryDetails(title: title),
          ),
        );
      },
      child: Container(
        width: 130,
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}