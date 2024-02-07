import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal[200],
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: const Text(
            'My Profile',
            style: TextStyle(fontFamily: 'Roboto', fontWeight: FontWeight.bold),
          ),
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/photo.jpg'),
              ),
              const Text(
                'Kavin',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  //fontStyle: FontStyle.italic,
                ),
              ),
              Text(
                'FLUTTER DEVLOPER',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  color: Colors.teal.shade400,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 3.0,
                ),
              ),
              SizedBox(
                height: 30,
                width: 200,
                child: Divider(
                  color: Colors.teal.shade400,
                ),
              ),
              Card(
                margin:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal.shade900,
                  ),
                  title: const Text(
                    '+91 9500487450',
                    style: TextStyle(
                      fontSize: 20,
                      letterSpacing: 1.0,
                    ),
                  ),
                ),
              ),
              Card(
                  color: Colors.white,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  child: ListTile(
                      leading: Icon(
                        Icons.email,
                        color: Colors.teal.shade900,
                      ),
                      title: const Text(
                        'kavinzerosix@gmail.com',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w100),
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
