import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      color: Colors.blue,
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  mySnackBar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MyApp"),
        titleSpacing: 10,
        toolbarHeight: 60,
        toolbarOpacity: 1,
        elevation: 10,
        backgroundColor: Colors.green,
        actions: [
          IconButton(
              onPressed: () {
                mySnackBar("Notification snackbar", context);
              },
              icon: Icon(Icons.notifications)),
          IconButton(
              onPressed: () {
                mySnackBar("Search snackbar", context);
              },
              icon: Icon(Icons.search)),
          IconButton(
              onPressed: () {
                mySnackBar("Setting snackbar", context);
              },
              icon: Icon(Icons.settings)),
          IconButton(
              onPressed: () {
                mySnackBar("Email snackbar", context);
              },
              icon: Icon(Icons.email))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          mySnackBar("Add Property", context);
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Contact"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Person")
        ],
        onTap: (int index) {
          if (index == 0) {
            mySnackBar("Home Bottom Navbar", context);
          }
          if (index == 1) {
            mySnackBar("Message Bottom Navbar", context);
          }
          if (index == 2) {
            mySnackBar("Profile Bottom Navbar", context);
          }
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.green),
                  accountName: Text("Md. Sabuz Khan"),
                  accountEmail: Text("mail.sabuzkhan@gmail."),
                  currentAccountPicture: Image.network(
                      "https://cdn-icons-png.flaticon.com/512/219/219970.png"),
                )),
            ListTile(leading: Icon(Icons.home), title: Text('Home')),
            ListTile(leading: Icon(Icons.abc), title: Text('About')),
            ListTile(leading: Icon(Icons.phone), title: Text('Phone')),
            ListTile(leading: Icon(Icons.email), title: Text('Email')),
            ListTile(leading: Icon(Icons.message), title: Text('Contact'))
          ],
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.green),
                  accountName: Text("Md. Sabuz Khan"),
                  accountEmail: Text("mail.sabuzkhan@gmail."),
                  currentAccountPicture: Image.network(
                      "https://cdn-icons-png.flaticon.com/512/219/219970.png"),
                )),
            ListTile(leading: Icon(Icons.home), title: Text('Home')),
            ListTile(leading: Icon(Icons.abc), title: Text('About')),
            ListTile(leading: Icon(Icons.phone), title: Text('Phone')),
            ListTile(leading: Icon(Icons.email), title: Text('Email')),
            ListTile(leading: Icon(Icons.message), title: Text('Contact'))
          ],
        ),
      ),
    );
  }
}
