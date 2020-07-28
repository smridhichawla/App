import 'package:flutter/material.dart';
import './Models/category.dart';
import 'Models/movie.dart';

const DUMMY_CATEGORIES = const [
  Category(
    id: 'c1',
    title: 'Fantasy',
    color: Colors.blue,

  ),
  Category(
    id: 'c2',
    title: 'Sci-Fi',
    color: Colors.greenAccent,
  ),
  Category(
    id: 'c3',
    title: 'Mystry',
    color: Colors.yellow,
  ),
  Category(
    id: 'c4',
    title: 'Romance',
    color: Colors.red,
  ),
];
const DUMMY_BookS = const [
  Book(
    id: 'm1',
    categories: [
      'c1',
    ],
    title: 'Fantasy is hardly an escape from reality.It is a way of understanding it ',
    affordability: Affordability.Affordable,
    language: Language.Simple,
     size: Size.Small,
    imageUrl:'https://i1.wp.com/www.tor.com/wp-content/uploads/2019/07/RedditTop100.jpg?fit=1200%2C+9999&crop=0%2C0%2C100%2C1061px&ssl=1',
  ),
  Book(
    id: 'm2',
    categories: [
      'c2',
    ],
    title: 'In Science fiction we dream',
    affordability: Affordability.Affordable,
    language: Language.Simple,
    size:Size.Small,
    imageUrl:
        'https://i.pinimg.com/originals/63/10/c0/6310c01e606886a02b50d27e75e1f5fa.jpg',
     ),
  Book(
    id: 'm3',
    categories: [
      'c3',
    ],
    title: 'The best secrets are more twisted',
    affordability: Affordability.Pricey,
   language: Language.Simple,
   size: Size.Large,
    imageUrl:
             'https://toledolibrary.s3.amazonaws.com/uploads/images/blog/_large/women-spies-fiction-novels.jpg',   
  ),
  Book(
    id: 'm4',
    categories: [
      'c4',
    ],
    title: 'We loved with the love that was more than love',
    affordability: Affordability.Luxurious,
    language: Language.Challenging,
    size:Size.Large ,
    imageUrl:
        'https://ginaslibrary.com/wp-content/uploads/2017/12/Romance-910x1024.jpg',
   
  ),
];
