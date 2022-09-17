import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:material_widget_venira/main.dart';

class listPage extends StatelessWidget {
  const listPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: CupertinoButton(
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => MyApp(),
                ),
              );
            }),
        actions: <Widget>[Icon(Icons.home)],
        title: new Center(
          child: Text("Category"),
        ),
        titleSpacing: 0,
      ),
      body: ListView(
        children: [
          ListTile(
            trailing: Icon(Icons.navigate_next),
            title: Text(" FASHION ",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),
            tileColor: Color.fromARGB(255, 60, 58, 66),
            leading: CircleAvatar(
              backgroundImage:
                  NetworkImage("https://picsum.photos/id/237/200/300"),
            ),
            onTap: () {},
          ),
          Divider(
            color: Colors.blue,
          ),
          ListTile(
            trailing: Icon(Icons.navigate_next),
            title: Text(" BEAUTY ",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),
            tileColor: Color.fromARGB(255, 60, 58, 66),
            leading: CircleAvatar(
              backgroundImage:
                  NetworkImage("https://picsum.photos/200/300/?blur=2"),
            ),
            onTap: () {},
          ),
          Divider(
            color: Colors.blue,
          ),
          ListTile(
            trailing: Icon(Icons.navigate_next),
            title: Text(
              " ACCESSORIES ",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            tileColor: Color.fromARGB(255, 60, 58, 66),
            leading: CircleAvatar(
              backgroundImage:
                  NetworkImage("https://picsum.photos/seed/picsum/200/300"),
            ),
            onTap: () {},
          ),
          Divider(
            color: Colors.blue,
          ),
          ListTile(
            trailing: Icon(Icons.navigate_next),
            title: Text(" KIDS ",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),
            tileColor: Color.fromARGB(255, 60, 58, 66),
            leading: CircleAvatar(
              backgroundImage:
                  NetworkImage("https://picsum.photos/200/300/?blur=2"),
            ),
            onTap: () {},
          ),
          Divider(
            color: Colors.blue,
          ),
          ListTile(
            trailing: Icon(Icons.navigate_next),
            title: Text(" BODY ",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),
            tileColor: Color.fromARGB(255, 60, 58, 66),
            leading: CircleAvatar(
              backgroundImage:
                  NetworkImage("https://picsum.photos/id/237/200/300"),
            ),
            onTap: () {},
          ),
          Divider(
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}

class cupertinoView extends StatelessWidget {
  const cupertinoView({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        leading: Icon(
          CupertinoIcons.profile_circled,
          color: Colors.white,
        ),
        backgroundColor: Colors.black,
        middle: Text(
          'Ven Shop',
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const SizedBox(height: 30),
            CupertinoButton.filled(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => listPage(),
                  ),
                );
              },
              child: const Text('Category'),
            ),
          ],
        ),
      ),
    );
  }
}
