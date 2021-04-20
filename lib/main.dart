import 'package:flutter/material.dart';
import 'package:neumorphism/componenets/custom_listtile.dart';
//import 'package:neumorphism/models/article_model.dart';
import 'package:neumorphism/services/api_services.dart';

import 'models/article_model.dart';
// import 'package:neumorphism/services/api_services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title : 'NewsDaily',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  ApiService client = ApiService();


  @override
  Widget build(BuildContext context) {

    return Scaffold(
       appBar : AppBar(
         title : Text('NewsDaily',
           style : TextStyle(
             color : Colors.black,
           ),
         ),
         backgroundColor: Colors.white,
         elevation: 1,
       ),
       body : FutureBuilder(
            future: client.getArticle(),
            builder:(BuildContext context, AsyncSnapshot <List<Article>> snapshot){

                              if(snapshot.hasData){
                                List<Article> articles = snapshot.data;
                                return ListView.builder(
                                  itemCount:  8,
                                  itemBuilder: (context,index){
                                   return customListTile(articles[index],context);
                                  },
                                );
                                           }
                      return Center(
                        child : CircularProgressIndicator(),
                      );
                              },
       ),
    );
  }
}
