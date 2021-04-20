import 'package:flutter/material.dart';
import 'package:neumorphism/models/article_model.dart';


class ArticlePage extends StatelessWidget {
  final Article article ;

  const ArticlePage({Key key, this.article}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        backgroundColor: Colors.grey,
        title : Text(article.title),
      ),
      body : Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment:  MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Container(
              height : 200,
              width : double.infinity,
              decoration:  BoxDecoration(
                image :DecorationImage(
                  image : NetworkImage(article.urlToImage),
                  fit : BoxFit.cover,
                ),
                borderRadius:  BorderRadius.circular(8),
              ),
            ),
            SizedBox(height : 5),
            Container(
              padding : EdgeInsets.all(6),
              decoration: BoxDecoration(
                color : Colors.red ,
                borderRadius:  BorderRadius.circular(8),
              ),
              child : Text(article.source.name,
                  style : TextStyle(
                    color : Colors.white,
                  )),
            ),
            SizedBox(height : 8),
            Text( article.description,
              style : TextStyle(
                fontWeight:  FontWeight.bold,
                fontSize: 19,
              ),),
            SizedBox(height : 20),
            Text( article.content,
              softWrap: true,
              style : TextStyle(
              //  fontWeight:  FontWeight.bold,
                fontSize: 16,
              ),)

          ],
        ),
      ),
    );
  }
}
