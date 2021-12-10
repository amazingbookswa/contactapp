import 'package:contactapp/contact_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Contacts App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text('My Contacts',
            style: TextStyle(
                color: Colors.teal, fontSize: 20, fontWeight: FontWeight.bold)),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 16),
            child: const CircleAvatar(
              backgroundImage: AssetImage('images/woman.jpg'),
            ),
          )
        ],
      ),
      body: ListView.builder(
          itemCount: 8,
          itemBuilder: (BuildContext context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (index == 0)
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          hintText: 'search by name or number',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                  ),
                if (index == 0)
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Recents',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                if (index == 3)
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text('Contacts',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                  ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ContactPage()));
                  },
                  child: const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('images/lady.jpg'),
                    ),
                    title: Text(
                      'Jeems',
                      style: TextStyle(fontWeight: FontWeight.w800),
                    ),
                    subtitle: Text('+233 241276258'),
                    trailing: Icon(Icons.more_horiz),
                  ),
                ),
                const Divider(
                  height: 4,
                  color: Colors.grey,
                )
              ],
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.black,
        child: const Icon(
          Icons.add,
          size: 40,
        ),
      ),
    );
  }
}
