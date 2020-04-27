import 'package:flutter/material.dart';
import './Category_meals_screen.dart';

class CategoryItems extends StatelessWidget{
  final String title;
  final Color color;
  final String id;
  CategoryItems(this.title, this.color, this.id);
  void selectCategory (BuildContext ctx){
    Navigator.of(ctx).pushNamed('/category-meal', arguments: {'id': id, 'title': title});
  }

  @override
  Widget build(BuildContext context){
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).accentColor,
      borderRadius: BorderRadius.circular(15),
          child: Container(
        padding:const EdgeInsets.all(15),
        child: Text(title, style: Theme.of(context).textTheme.title,),
        decoration: BoxDecoration(gradient: LinearGradient(colors: [color.withOpacity(0.7), color], begin: Alignment.topLeft, end: Alignment.bottomLeft),
          borderRadius: BorderRadius.circular(15)
        ),

      ),
    );
  }
}