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
      home: const HomeActivity(),
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
        title: const Text("MyApp"),
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
              icon: const Icon(Icons.notifications)),
          IconButton(
              onPressed: () {
                mySnackBar("Search snackbar", context);
              },
              icon: const Icon(Icons.search)),
          IconButton(
              onPressed: () {
                mySnackBar("Setting snackbar", context);
              },
              icon: const Icon(Icons.settings)),
          IconButton(
              onPressed: () {
                mySnackBar("Email snackbar", context);
              },
              icon: const Icon(Icons.email))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          mySnackBar("Add Property", context);
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        items: const [
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
                padding: const EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                  decoration: const BoxDecoration(color: Colors.green),
                  accountName: const Text("Md. Sabuz Khan"),
                  accountEmail: const Text("mail.sabuzkhan@gmail.com"),
                  currentAccountPicture: Image.network(
                      "https://cdn-icons-png.flaticon.com/512/219/219970.png"),
                )),
            const ListTile(leading: Icon(Icons.home), title: Text('Home')),
            const ListTile(leading: Icon(Icons.abc), title: Text('About')),
            const ListTile(leading: Icon(Icons.phone), title: Text('Phone')),
            const ListTile(leading: Icon(Icons.email), title: Text('Email')),
            const ListTile(leading: Icon(Icons.message), title: Text('Contact'))
          ],
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                padding: const EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                  decoration: const BoxDecoration(color: Colors.green),
                  accountName: const Text("Md. Sabuz Khan"),
                  accountEmail: const Text("mail.sabuzkhan@gmail.com"),
                  currentAccountPicture: Image.network(
                      "https://cdn-icons-png.flaticon.com/512/219/219970.png"),
                )),
            const ListTile(leading: Icon(Icons.home), title: Text('Home')),
            const ListTile(leading: Icon(Icons.abc), title: Text('About')),
            const ListTile(leading: Icon(Icons.phone), title: Text('Phone')),
            const ListTile(leading: Icon(Icons.email), title: Text('Email')),
            const ListTile(leading: Icon(Icons.message), title: Text('Contact'))
          ],
        ),
      ),
    );
  }
}
