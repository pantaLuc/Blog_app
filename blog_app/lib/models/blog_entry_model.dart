
import 'blog_model.dart';
import 'user_model.dart';

class EntryBlog{
   String imageUrl1;
   String imageUrl2;
   String title;
   List<Blog> blogs;
   List<User>users;
   String time ;
   int islike;
   String text;
   EntryBlog({
      this.imageUrl1,
      this.title,
      this.blogs,
      this.users,
      this.time,
      this.islike,
      this.text,
      this.imageUrl2,
   });
}



//Users Example
List<User> users=[
   User(
      imageUrl: 'assets/images/profilAs.JPG',
      name: "Astride  La chinoise ",
   ),
   User(
      imageUrl: 'assets/images/luc.jpg',
      name: "Luc Panta",
   ),
   User(
      imageUrl: 'assets/images/eunice.JPG',
      name: "Eunice Parker",
   ),
   
];

//Example of Blog 

List<Blog> blogs=[
  Blog(
     imageUrl: 'assets/images/doctor.jpg',
     type: "Health",   
    ),
    Blog(
     imageUrl: 'assets/images/tech.JPG',
     type: "Tech",   
    ),
    Blog(
     imageUrl: 'assets/images/travel.jpg',
     type: "travel",   
    ),
];

//Example of Blog Entry

List<EntryBlog> blogEntries=[
   EntryBlog(
     imageUrl1:'assets/images/corona.jpg',
     imageUrl2:'assets/images/astride.jpg',
     title:'How Was My Two Months Lockdown in China ',
     blogs:blogs,
     users:users,
     time: '14 seconds ago ',
     islike: 5,
     text:'You can detect device orientation by calling MediaQuery.of(context).orientation , which returnseither a portrait or landscape value.  which returnseither a portrait or landscape value. which returnseither a portrait or landscape value.'     
   ),
   EntryBlog(
     imageUrl1:'assets/images/drone.JPG',
     imageUrl2:'assets/images/astride.jpg',
     title:'How William Elong Uses Drones For Africa Purpose',
     blogs:blogs,
     users:users,
     time: '14 seconds ago ',
     islike: 222,
     text:"You can detect device orientation by calling MediaQuery.of(context).orientation , which returnseither a portrait or landscape value."
   ),
   EntryBlog(
     imageUrl1:'assets/images/need.JPG',
     title:'How to fight hunger in The world by using AI ',
     imageUrl2:'assets/images/astride.jpg',
     blogs:blogs,
     users:users,
     time: '2 seconds ago ',
     islike: 150,
     text:"You can detect device orientation by calling MediaQuery.of(context).orientation , which returnseither a portrait or landscape value."
   ),
];