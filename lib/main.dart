import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _switch = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Day & Night'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(top: 30),
                child: _switch
                    ? const Text(
                        'Day',
                        style: TextStyle(fontSize: 40),
                      )
                    : const Text(
                        'Night',
                        style: TextStyle(fontSize: 40),
                      ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: _switch
                        ? const AssetImage("assets/images/day.jpg")
                        : const AssetImage("assets/images/night.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Switch(
                  value: _switch,
                  onChanged: (_newvalue) {
                    setState(() {
                      _switch = _newvalue;
                    });
                  })
            ],
          ),
        ),
      ),
    );
  }
}
