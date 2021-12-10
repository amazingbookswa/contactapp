import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          'Contact',
          style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
        ),
        actions: const [Icon(Icons.more_vert)],
      ),
      body: ListView(
        children: [
          Card(
            margin: const EdgeInsets.all(0),
            child: Column(
              children: const [
                SizedBox(
                  height: 20,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('images/female.jpg'),
                  radius: 50,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Amy Herman',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                Text('Wa, Ghana',
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.w400)),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
