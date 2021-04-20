import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neumorphism/models/article_model.dart';
import 'package:neumorphism/pages/articles_details.dart';


Widget customListTile(Article article,BuildContext context){
  return InkWell(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context) => ArticlePage(article : article)));
    },
    child: Container(
      margin : EdgeInsets.all(12),
      padding: EdgeInsets.all(8),
      decoration:  BoxDecoration(
        color : Colors.white,
        borderRadius : BorderRadius.circular(12),
        boxShadow:  [
          BoxShadow(
            color : Colors.black12,
            blurRadius:  3,
          ),
        ],
      ),
      child : Column (
        mainAxisAlignment: MainAxisAlignment.start,
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
         Text( article.title,
         style : TextStyle(
           fontWeight:  FontWeight.bold,
           fontSize: 16,
         ),)
        ],
      ),

    ),
  );
}