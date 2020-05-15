import 'package:blog_app/widgets/article.dart';
import 'package:blog_app/widgets/popular_article.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentTab=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SafeArea(
         child:ListView(
           children: <Widget>[
             Padding(
               padding:EdgeInsets.only(top: 20.0,bottom: 10.0),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: <Widget>[
                   Padding(
                     padding: EdgeInsets.only(
                       left: 20.0,  
                     ),
                     child: Text(
                       "SUNDAY 4 AUGUST ",
                        style: TextStyle(
                          color:Color(0xFFFF7647),
                          fontSize:15.0,
                          fontWeight: FontWeight.bold,
                        ),
                     ),
                   ),
                   Padding(
                     padding: EdgeInsets.all(15.0),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children:<Widget>[
                         Text(
                           "Blog",
                           style: TextStyle(
                             fontSize:40.0,
                             fontWeight:FontWeight.bold,
                           ),
                         ),
                         Container(
                           height: 60.0,
                           width:60.0,
                           decoration:BoxDecoration(
                             borderRadius: BorderRadius.circular(20.0),
                             image: DecorationImage(
                               image: AssetImage('assets/images/profil.jpg'),
                               fit: BoxFit.cover,
                               )
                           ),
                         ),
                       ],
                     ),
                   )
                 ],
               ),
             ),
            ArticleBlog(),
            SizedBox(height:5.0),
            PopularArticle(),
           ],
         ),
         ),
         bottomNavigationBar: BottomNavigationBar(
           currentIndex: _currentTab,
           onTap: (int value){
             setState(() {
               _currentTab=value;
             });
           },
           items:[
             BottomNavigationBarItem(
               icon:Icon(
                 FontAwesomeIcons.home,
                  size:20.0,
                 color: Colors.grey,
               ), 
              title: SizedBox.shrink(),
             ),
             BottomNavigationBarItem(
               icon:Icon(
                 Icons.search,
                 size:20.0,
                 color: Colors.grey,
                 ), 
               title: SizedBox.shrink(),
             ),
             BottomNavigationBarItem(
               icon:Icon(
                 Icons.bookmark_border,
                 size:20.0,
                 color: Colors.grey,
                ), 
              title: SizedBox.shrink(),
             ),
             BottomNavigationBarItem(
               icon:Icon(
                 Icons.person_outline,
                 size:20.0,
                 color: Colors.grey,
                 ), 
               title: SizedBox.shrink(),
             ),
           ]
           ),
    );
  }
}