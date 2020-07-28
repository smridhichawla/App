
import 'package:flutter/material.dart';
import 'Screens/category_screens.dart';
import 'Screens/movie_detail.dart';
import 'package:app/Screens/category_movies_screens.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "let's Read",
      theme: ThemeData(
        primarySwatch: Colors.green,
        accentColor: Colors.white,
        canvasColor: Colors.white,
        fontFamily: 'Roboto',
        textTheme: ThemeData.light().textTheme.copyWith(
            bodyText1: TextStyle(color: Colors.white70),
            headline6: TextStyle(
              fontSize: 24,
            )),
      ),
      // home: CategoriesScreen(),
      routes: {
        "/": (ctx) => CategoriesScreen(),
        MovieDetailScreeen.routeName: (ctx) => MovieDetailScreeen(),
        CategoryMoviesScreen.routeName: (ctx) => CategoryMoviesScreen()
      },
      onGenerateRoute: (settings) {
        print(settings.arguments);
        return MaterialPageRoute(
          builder: (ctx) => CategoryMoviesScreen(),
        );
      },
    );
  }
}


