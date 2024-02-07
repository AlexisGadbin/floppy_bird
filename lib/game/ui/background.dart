import 'package:flame/components.dart';
import 'package:floppy_bird/game/game_manager.dart';

class Background extends SpriteComponent with HasGameRef<GameManager> {
  int speed = 50;

  @override
  Future<void> onLoad() async {
    sprite = await Sprite.load('background-day.png');
    size = Vector2(
      gameRef.size.x,
      gameRef.size.y,
    );
  }
}
