import 'package:blog_app/models/blog_entry_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ArticlePage extends StatefulWidget {
   final EntryBlog article;
  ArticlePage({
    this.article
  });
  @override
  _ArticlePageState createState() => _ArticlePageState();
}

class _ArticlePageState extends State<ArticlePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:SafeArea(
          child: SingleChildScrollView(
            child: Stack(
              children: <Widget>[
                 Container(
                   height: MediaQuery.of(context).size.height,
                   width:MediaQuery.of(context).size.width,
                   decoration: BoxDecoration(
                     image:DecorationImage(
                       image:AssetImage(widget.article.imageUrl2),
                       fit: BoxFit.cover 
                       ),
                   ),
                   child: Column(
                     children:<Widget>[
                       Padding(
                         padding: EdgeInsets.all(10.0),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children:<Widget>[
                             IconButton(
                               icon:Icon(Icons.arrow_back_ios),
                               color:Colors.white, 
                               onPressed: ()=>Navigator.pop(context),
                               ),
                               Icon(
                                 Icons.bookmark_border,
                                 color:Colors.white
                               ),
                              
                           ]
                         ),
                       ),
                       SizedBox(height: 180.0,),
                       Expanded(                              
                          child: Container(
                          height:500,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:BorderRadius.only(
                              topLeft:Radius.circular(30),
                            topRight:Radius.circular(30),
                          )
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Container(
                            height: MediaQuery.of(context).size.width,
                            width: MediaQuery.of(context).size.width,
                            child: Padding(
                              padding: EdgeInsets.all(3.0),
                              child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                children:<Widget>[
                                  Text(
                                    widget.article.blogs[0].type.toUpperCase(),
                                    style: TextStyle(
                                    color:Color(0xFFB13730),
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1.0
                                  ),   
                                ),
                                SizedBox(height:10.0),
                                Text(
                                  widget.article.title,
                                  style: TextStyle(
                                      fontWeight:FontWeight.bold,
                                      letterSpacing: 1.0,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                    ),
                                    SizedBox(height:10.0),
                                    Row(
                                      children:<Widget>[
                                        Icon(
                                          Icons.timer,
                                          size: 15.0,
                                          color: Colors.grey,
                                        ),
                                        Text(
                                          widget.article.time,
                                          style: TextStyle(
                                            color:Colors.grey,
                                          ),    
                                      ),
                                      SizedBox(width:10.0),
                                      Icon(
                                          FontAwesomeIcons.handPointRight,
                                          color: Colors.grey,
                                          size:10.0,
                                        ),
                                        SizedBox(width:5.0),
                                       Text(
                                          "${widget.article.islike}",
                                            style: TextStyle(
                                              color:Colors.grey,
                                              fontSize:10.0
                                            ),
                                          ),      
                                    ],
                                   ),
                                   SizedBox(height:10.0),
                                  Row(
                                    children: <Widget>[
                                      Container(
                                      height:25.0,
                                      width:25.0,
                                      decoration:BoxDecoration(
                                        borderRadius:BorderRadius.circular(5.0) 
                                        ),
                                        child: ClipRRect(
                                              borderRadius:BorderRadius.circular(5.0), 
                                              child: Image(
                                              image:AssetImage(widget.article.users[0].imageUrl), 
                                              fit: BoxFit.cover,
                                          ),
                                         ),
                                         ),
                                         SizedBox(width:10.0),
                                          Text(
                                              widget.article.users[0].name,
                                              style: TextStyle(
                                              color: Colors.grey,
                                            ),
                                         ),
                                    ],
                                  ),
                                  SizedBox(height:10.0),
                                  Text(
                                    widget.article.text,
                                    style: TextStyle(
                                      color:Colors.grey,
                                      fontSize: 14.0,
                                      letterSpacing: 1.2,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 7,
                                    ),
                                ]
                              ),
                            ),
                          ),
                        ),
                    ),
                  )
                     ]
                   ),
                 )
              ],
            ),
          )
        )
    );
  }
}