import 'package:flame/components.dart';
import 'package:floppy_bird/game/game_manager.dart';

class Bird extends SpriteAnimationComponent with HasGameRef<GameManager> {
  @override
  Future<void> onLoad() async {
    animation = SpriteAnimation.spriteList([
      await Sprite.load('redbird-upflap.png'),
      await Sprite.load('redbird-midflap.png'),
      await Sprite.load('redbird-downflap.png'),
    ], stepTime: 0.1);
    x = gameRef.size.x / 3;
    y = gameRef.size.y / 2;
    anchor = Anchor.center;
  }
}
