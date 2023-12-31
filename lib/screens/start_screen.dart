import 'package:flutter/material.dart';
import 'package:kc_tv_app/widgets/suggestion_card.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(1.0),
          child: Image.asset(
            "assets/images/logofim.jpg",
          ),
        ),
        title: Text(
          'TUDN',
          style: Theme.of(context).textTheme.headlineLarge,
          ),
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
             Text(
              'Recomendado para ti',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(height: 20,),
            const SuggestionCard(),
          ],
        ),
      ), 
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.sports_football,
              color: Colors.red,),
            label: 'Juegos Completos',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_road,
              color: Colors.red,
              ),
            label: 'Camino al Super Bowl',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.video_camera_back,
              color: Colors.red,
            ),
            label: 'The Franchise',
          ),
        ],
        backgroundColor: Colors.amber,
        unselectedItemColor: Colors.red,
        unselectedLabelStyle: const TextStyle(color: Colors.red, fontSize: 14),
        fixedColor: Colors.red,
        onTap: null,
      ),
    );
  }
}