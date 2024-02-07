import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:floppy_bird/game/game_manager.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Flame.device.fullScreen();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Floppy bird',
      debugShowCheckedModeBanner: false,
      home: GameWidget(
        game: GameManager(),
      ),
    );
  }
}
