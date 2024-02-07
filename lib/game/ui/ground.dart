import 'package:flame/components.dart';
import 'package:floppy_bird/game/game_manager.dart';

class Ground extends SpriteComponent with HasGameRef<GameManager> {
  final int _index;
  int speed = 100;
  static const double groundHeight = 120;

  Ground(this._index);

  @override
  Future<void> onLoad() async {
    sprite = await Sprite.load('base.png');
    width = gameRef.size.x;
    position = Vector2(0, gameRef.size.y - size.y);
    if (_index == 2) {
      x = gameRef.size.x;
    }

    height = groundHeight;
  }

  @override
  void update(double dt) {
    super.update(dt);

    x -= speed * dt;

    if (x <= -gameRef.size.x) {
      x = gameRef.size.x;
    }
  }
}
