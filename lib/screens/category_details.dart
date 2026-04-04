import 'package:flutter/material.dart';

class CategoryDetails extends StatelessWidget {
  final String title;

  const CategoryDetails({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    /// 🔥 ليستة أفلام حسب الكاتيجوري
    List<String> movies = [];

    if (title == "Anime") {
      movies = [
        "assets/anime1.jpg",
        "assets/anime2.jpg",
        "assets/anime3.jpg",
      ];
    } else if (title == "Movies") {
      movies = [
        "assets/movie1.jpg",
        "assets/movie2.jpg",
      ];
    } else if (title == "Animation") {
      movies = [
        "assets/animation1.jpg",
        "assets/animation2.jpg",
      ];
    } else if (title == "Series") {
      movies = [
        "assets/series1.jpg",
        "assets/series2.jpg",
      ];
    }

    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.white,
      ),

      /// 🔥 عرض الأفلام
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.7,
        ),
        itemCount: movies.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: AssetImage(movies[index]),
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}