
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject/Pages/NoteDetailsPage.dart';

import 'AddNotePage.dart';

class HomeNote extends StatefulWidget {
  const HomeNote({Key? key}) : super(key: key);

  @override
  State<HomeNote> createState() => _HomeNoteState();
}

class _HomeNoteState extends State<HomeNote> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   title: Text('Note App',style: TextStyle(color: Colors.white)), // Set text colorfontWeight: FontWeight.bold,),
      // centerTitle: true,
      // backgroundColor: Colors.blue[800],),
      // drawer: Drawer(
      //       child: ListView(
      //         padding: EdgeInsets.zero,
      //         children: <Widget>[
      //           DrawerHeader(
      //             decoration: BoxDecoration(
      //               color: Colors.blue,
      //             ),
      //             child: Column(
      //               mainAxisAlignment: MainAxisAlignment.center,
      //               children: [
      //                 CircleAvatar(
      //                   radius: 40.0,
      //                 ),
      //                 SizedBox(height: 10),
      //                 Text(
      //                   'accountName',
      //                   style: TextStyle(
      //                     color: Colors.white,
      //                     fontSize: 18.0,
      //                     fontWeight: FontWeight.bold,
      //                   ),
      //                 ),
      //               ],
      //             ),
      //           ),
      //           ListTile(
      //             leading: Icon(Icons.home),
      //             title: Text('Home'),
      //             onTap: () {
      //               //TODO: navigate to home screen
      //             },
      //           ),
      //           ListTile(
      //             leading: Icon(Icons.person),
      //             title: Text('Profile'),
      //             onTap: () {
      //
      //               //TODO: navigate to profile screen
      //             },
      //           ),
      //           ListTile(
      //             leading: Icon(Icons.settings),
      //             title: Text('Settings'),
      //             onTap: () {
      //               //TODO: navigate to settings screen
      //             },
      //           ),
      //         ],
      //       ),
      // ),
      //
      //

      body:

      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(child: GridView(children: [
          GestureDetector(onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context) => NoteDetailsPage()) );},
          child: Container(
            height:300.0,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20) ,color: Colors.blue[500],),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text("5/4/2023  3:17",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.normal )),Text("Today",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold ),)],
          ),)),
          Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.yellow),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("5/4/2023  3:17",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.normal )),Text("quiz at 5:00 pm",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold ),)],
            ),),
          Container(height:300,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.green),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("5/4/2023  3:17",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.normal )),Text("Dog walk",style: TextStyle(color: Colors.white,fontSize: 28,fontWeight: FontWeight.bold ),)],
            ),),
          Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.purple),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("5/4/2023  3:17",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.normal )),Text("must READ",style: TextStyle(color: Colors.white,fontSize: 28,fontWeight: FontWeight.bold ),)],
            ),),

        ],
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 10),),),
      ),
       floatingActionButton: FloatingActionButton
        (onPressed: (){ Navigator.push(context,MaterialPageRoute(builder: (context) => AddNotePage()) );  },
          child: Icon(Icons.add),
          backgroundColor: Colors.blue[800],
          elevation: 4.0,),
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: _currentIndex,
      //   onTap: onTabTapped,
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person),
      //
      //     ),
      //   ],
      // ),
    );

  }
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
