import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:floppy_bird/game/game_manager.dart';

class Bird extends SpriteAnimationComponent
    with HasGameRef<GameManager>, CollisionCallbacks {
  bool _isClicked = false;
  int _maxHeight = -1;

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

    add(RectangleHitbox());
  }

  void onPanStart(DragStartInfo info) {
    _isClicked = true;
    _maxHeight = (y - 100).toInt();
  }

  @override
  void update(double dt) {
    super.update(dt);
    if (_isClicked) {
      y -= 5;
      if (y <= _maxHeight) {
        _isClicked = false;
      }
    } else {
      y += 5;
    }
  }

  @override
  void onCollision(Set<Vector2> intersectionPoints, PositionComponent other) {
    super.onCollision(intersectionPoints, other);

    gameRef.gameOver();
  }
}
