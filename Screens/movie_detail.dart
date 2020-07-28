import 'package:flutter/material.dart';
import '../dummy_data.dart';

class MovieDetailScreeen extends StatelessWidget {
  static const routeName = "/movie-detail";
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context).settings.arguments as String;
    final selectedBook = DUMMY_BookS.firstWhere((book) => book.id == args);
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(onPressed: (){}, label: Text("buy"),
      icon:Icon(Icons.shopping_cart, color: Colors.pink[200]), backgroundColor:Colors.blueGrey),
      appBar: AppBar(
        title: Text('${selectedBook.title}'),
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.width * 0.7,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                selectedBook.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Text("Let's read this now",
              style: TextStyle(
                color: Colors.white70,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ),
        ],
      )),
    );
  }
}
