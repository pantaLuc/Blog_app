  import 'package:blog_app/models/blog_entry_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PopularArticle extends StatelessWidget {
  const PopularArticle({Key key}) : super(key: key);

  @override 
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children:<Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:<Widget>[
              Text(
                "Popular",
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
                ),
              GestureDetector(
                onTap: ()=>print("Show all"),
                  child: Text(
                  "Show All",
                  style: TextStyle(
                    color:Color(0xFFFF7647),
                  ),
                  ),
              ),
            ]
          ),
          Container(
            height:300,
            child: ListView.builder(
              itemCount: blogEntries.length,
              itemBuilder: (BuildContext context ,int index){
                EntryBlog listPopAr=blogEntries[index];
                return Stack(
                  children:<Widget>[
                    Container(
                      height:90.0,
                      width: MediaQuery.of(context).size.width,
                      child:Row(
                        children: <Widget>[
                           Container(
                             width: 60.0,
                             height: 60.0,
                             decoration: BoxDecoration(
                               color: Colors.red,
                               borderRadius:BorderRadius.circular(10.0),
                             ),
                             child: ClipRRect(
                                 borderRadius:BorderRadius.circular(5.0),
                                 child: Image(
                                 image: AssetImage(listPopAr.blogs[index].imageUrl),
                                 fit: BoxFit.cover,
                                 ),
                             ),
                           ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal:15.0,vertical:12.0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  listPopAr.blogs[index].type.toUpperCase(),
                                style: TextStyle(
                                  color:Color(0xFFB13730),
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.0
                                ),
                                ),
                                SizedBox(height:5.0),
                              Container(
                                width: 210.0,
                                child: Text(
                                  listPopAr.title,
                                  style: TextStyle(
                                    fontWeight:FontWeight.bold,
                                    letterSpacing: 1.0,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  ),
                              ),
                              Row(
                                children:<Widget>[
                                  Row(
                                    children:<Widget>[
                                      Icon(
                                        FontAwesomeIcons.clock,
                                        color: Colors.grey,
                                        size:10.0,
                                      ),
                                      SizedBox(width:5.0),
                                      Text(
                                        listPopAr.time,
                                          style: TextStyle(
                                            color:Colors.grey,
                                            fontSize:10.0
                                          ),
                                        )
                                    ]
                                  ),
                                  SizedBox(width:25.0),
                                  Row(
                                    children:<Widget>[
                                      Icon(
                                        FontAwesomeIcons.handPointRight,
                                        color: Colors.grey,
                                        size:10.0,
                                      ),
                                      SizedBox(width:5.0),
                                      Text(
                                        "${listPopAr.islike}",
                                          style: TextStyle(
                                            color:Colors.grey,
                                            fontSize:10.0
                                          ),
                                        )
                                    ]
                                  )
                                ]
                              )
                            ],
                            ),
                          ),
                        ],
                      )
                    ),
                    
                  ]
                );
              }
              ),
          )
        ]
      ),
    );
  }
}