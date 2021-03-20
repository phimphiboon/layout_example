import 'package:flutter/material.dart';

import '../page.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  void onIndexChanged(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            // UserAccountsDrawerHeader(
            //   currentAccountPicture: CircleAvatar(
            //     backgroundImage: NetworkImage(
            //         "https://www.sciencemag.org/sites/default/files/styles/article_main_large/public/dog_16x9_3.jpg?itok=9sPIyJUi"),
            //   ),
            //   accountName: Text("phimphiboon Wongpan"),
            //   accountEmail: Text("Gwang202@hotmail.com"),
            // ),
            DrawerHeader(
              margin: EdgeInsets.zero,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRModNW-WybOAPbyLTCi_cJzeqbtmr2_DhWsQ&usqp=CAU",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://ed.edtfiles-media.com/static-cache/resize-cache/790x528/ud/images/1/112/334505/DSC_0394_Cover.jpg"),
                    ),
                    Text("วัดชัยมงคล"),
                  ],
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, '/history');
              },
              leading: Icon(Icons.people),
              title: Text("Profile"),
            ),
            ListTile(
              leading: Icon(Icons.auto_awesome_mosaic),
              title: Text("Profile"),
            ),
            ListTile(
              leading: Icon(Icons.accessibility_new_sharp),
              title: Text("Profile"),
            ),
            ListTile(
              leading: Icon(Icons.add_a_photo_outlined),
              title: Text("Profile"),
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(pages[currentIndex].title),
      ),
      body: pages[currentIndex].page,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: onIndexChanged,
        items: pages
            .map(
              (page) =>
                  BottomNavigationBarItem(icon: page.icon, label: page.label),
            )
            .toList(),
      ),
    );
  }
}
