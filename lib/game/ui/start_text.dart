import 'package:flame/components.dart';
import 'package:floppy_bird/game/game_manager.dart';

class StartText extends SpriteComponent with HasGameRef<GameManager> {
  @override
  Future<void> onLoad() async {
    sprite = await Sprite.load('message.png');
    position = Vector2(
      (gameRef.size.x / 2),
      (gameRef.size.y / 2),
    );
    size = Vector2(
      gameRef.size.x / 1.5,
      gameRef.size.y / 2,
    );
    anchor = Anchor.center;
  }
}
