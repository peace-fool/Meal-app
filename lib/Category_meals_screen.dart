import 'package:flutter/material.dart';

class CategoryMealScreen extends StatelessWidget{
   // final String id;
   // final String title;
   // CategoryMealScreen(this.title, this.id);
  @override
  Widget build(BuildContext context){
    final routArgs = ModalRoute.of(context).settings.arguments as Map<String,String>;
    final categoryid = routArgs['id'];
    final categorytitle = routArgs['title'];
    return Scaffold(
      appBar: AppBar(title: Text(categorytitle),),
      body: Center(child: 
        Text('here you will find recipies')
      ),
    );
  }
}