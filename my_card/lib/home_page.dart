import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            CircleAvatar(
              radius: 110,
              backgroundImage: ExactAssetImage('assets/images/chokis.jpg'),
            ),
            Text('Alan Muro',
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Rubik')),
            Text(
              'Flutter DEV',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
            ),
            Divider(
              color: Colors.black,
              thickness: 1,
              indent: 100,
              endIndent: 100,
            ),
            SizedBox(
              width: 375,
              child: Card(
                color: Colors.white,
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.black,
                  ),
                  title: Text(
                    '+52 646 126 87 07',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 375,
              child: Card(
                color: Colors.white,
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.black,
                  ),
                  title: Text(
                    'al19760602@ite.edu.mx',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
