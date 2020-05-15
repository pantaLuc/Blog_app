import 'package:blog_app/models/blog_entry_model.dart';
import 'package:blog_app/pages/article_Page.dart';
import 'package:flutter/material.dart';

class ArticleBlog extends StatelessWidget {
  const ArticleBlog({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height:250,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: blogEntries.length,
        itemBuilder: (BuildContext context ,int index){
          EntryBlog blogEntry=blogEntries[index];
          return GestureDetector(
                onTap: ()=>Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:(_)=>ArticlePage(
                      article:blogEntry)
                      )
                      ),
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left:25.0,right:5.0),
                  child: Container(
                    height: 300.0,
                    width:250.0,
                    decoration:BoxDecoration(
                      borderRadius:BorderRadius.circular(25.0),
                      boxShadow:[
                        BoxShadow(
                          color: Colors.black45,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 6.0,
                      ),
                      ],
                    ),
                    child: ClipRRect(
                        borderRadius:BorderRadius.circular(25.0),
                         child: Image(
                          image: AssetImage(blogEntry.imageUrl1),
                          fit: BoxFit.cover,
                        ),
                    ),
                  ),
                ),
                Positioned(
                   top: 10.0,
                   right: 10.0,
                    child: Row(
                      children:<Widget>[
                        IconButton(
                          icon:Icon(Icons.bookmark_border), 
                          color: Colors.white,
                        onPressed: (){},
                        ),
                    ]
                  ),
                ),
                Positioned(
                    bottom: 2.0,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:<Widget>[
                          Container(
                            width: 200,
                            child: Text(
                              blogEntry.title,
                              style: TextStyle(
                                color:Colors.white,
                                fontSize:16.0,
                                fontWeight:FontWeight.bold,
                                letterSpacing: 1.0
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              ),
                          ),
                         Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                           children:<Widget>[
                              Container(
                                height:30.0,
                                width:30.0,
                                decoration:BoxDecoration(
                                  borderRadius:BorderRadius.circular(5.0) 
                                  ),
                                  child: ClipRRect(
                                        borderRadius:BorderRadius.circular(5.0), 
                                        child: Image(
                                        image:AssetImage(blogEntry.users[index].imageUrl), 
                                        fit: BoxFit.cover,
                                      ),
                                  ),
                              ),
                              SizedBox(width:5.0),
                              Padding(
                                padding: EdgeInsets.only(top: 5.0),
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      blogEntry.users[index].name,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      ),
                                      Row(
                                        children:<Widget>[
                                          Icon(
                                            Icons.timer,
                                            size: 15.0,
                                            color: Colors.white70,
                                          ),
                                          Text(
                                            blogEntry.time,
                                            style: TextStyle(
                                              color:Colors.white70,
                                            ),    
                                        ),
                                      ],
                                      ),
                                      SizedBox(height:5.0),
                                  ],
                                ),
                              )
                           ]
                         ) 
                      ],
                  ),
                    ),
                ),
              ],
            ),
          );
        }
     ),
    );
  }
}