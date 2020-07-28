
import 'package:flutter/material.dart';
import '../dummy_data.dart';
import '../widgets/movie_item.dart';

class CategoryMoviesScreen extends StatelessWidget {
  static const routeName = "category-movies";
   @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;

    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    final categoryBooks = DUMMY_BookS.where((book) {
      return book.categories.contains(categoryId);
    }).toList();
    return Scaffold(
       floatingActionButton: FloatingActionButton.extended(onPressed: (){}, label: Text("web search"),
      icon:Icon(Icons.public), backgroundColor: Colors.lightBlueAccent),
        appBar: AppBar(backgroundColor: Colors.green,
          centerTitle: true,
          title: Text(categoryTitle),
        ),
        body: ListView.builder(
            itemBuilder: (ctx, index) {
              return MovieItem(
                id: categoryBooks[index].id,
                title: categoryBooks[index].title,
                imageUrl: categoryBooks[index].imageUrl,
                affordability: categoryBooks[index].affordability,
                language: categoryBooks[index].language,
                size: categoryBooks[index].size
              );
            },
            itemCount: categoryBooks.length));
  }
}
