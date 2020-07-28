import 'package:app/Models/movie.dart';
import 'package:app/Screens/movie_detail.dart';
import 'package:flutter/material.dart';
import '../Models/movie.dart';

class MovieItem extends StatelessWidget {
  final String title;
  final String id;
  final String imageUrl;
  final Size size;
  final Language language;
  final Affordability affordability;

  MovieItem({
    @required this.id,
    @required this.affordability,
    @required this.language,
    @required this.size,
    @required this.imageUrl,
    @required this.title,
  });

  String get languageText {
    switch (language) {
      case Language.Simple:
        return "Simple";
        break;
      case Language.Challenging:
        return "Moderate";
        break;
      case Language.Hard:
        return "Hard";
        break;
      default:
        return 'Unknown';
    }
  }

  String get affordabilityText {
    switch (affordability) {
      case Affordability.Affordable:
        return "Affordable";
        break;
      case Affordability.Pricey:
        return "Pricey";
        break;
      case Affordability.Luxurious:
        return "Luxurious";
        break;
      default:
       return 'Unknown';
    }
  }
String get sizeText {
    switch (size) {
      case Size.Small:
        return "Less than 200 pages";
        break;
      case Size.Large:
        return "More than 200 pages";
        break;
      default:
       return 'Unknown';
    }
}
  void selectBook(BuildContext context) {
    Navigator.of(context).pushNamed(
      MovieDetailScreeen.routeName,
      arguments: id,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectBook(context),
      child: Card(
        elevation: 8,
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[

            Stack(
              children: <Widget>[
                ClipRRect(
                  child: Image.network(
                    imageUrl,
                    height: 350,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(
                        150,
                      )),
                ),
                Positioned(
                  bottom: 20,
                  right: 10,
                  child: Container(
                    width: 300,
                    color: Colors.black54,
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                    child: Text(
                      title,
                      overflow: TextOverflow.fade,
                      softWrap: true,
                      style: TextStyle(fontSize: 26, color: Colors.white),
                    ),
                  ),
                ),
              
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(Icons.pages),
                      SizedBox(
                        width: 6,
                      ),
                      Text('$size '),
                    ],
                  ),
                  Row(children: <Widget>[
                    Icon(Icons.language),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                     '$languageText language',
                    )
                  ]),
                  Row(
                    children: <Widget>[
                      Icon(Icons.attach_money),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        affordabilityText,
                      ),
                    ],
                  )
                ],
              ),
            ),
            
          ],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
