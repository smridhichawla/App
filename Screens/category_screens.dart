import 'package:app/dummy_data.dart';
import "package:flutter/material.dart";
import '../widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(onPressed: (){}, label: Text("more"),
      icon:Icon(Icons.more), backgroundColor: Colors.purpleAccent[100]),
      appBar: AppBar( backgroundColor: Colors.purpleAccent[100],
        centerTitle: true,
        title: Text("Let's Read ", style: Theme.of(context).textTheme.headline6),
        actions:<Widget>
        [
          IconButton(icon: Icon(Icons.search),onPressed:(){}, alignment: Alignment.topLeft ,color:Colors.black),
          IconButton(icon: Icon(Icons.menu),onPressed:(){}, alignment:Alignment.center, color:Colors.black),
        ]
      ),
      body: GridView(
        padding: EdgeInsets.all(40),
        children: DUMMY_CATEGORIES
            .map(
              (catData) => CategoryItem(
                catData.title,
                catData.id,
                catData.color,
              ),
            )
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 500,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
      ),
    );
  }
}
