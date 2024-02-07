import 'package:flame/components.dart';
import 'package:floppy_bird/game/game_manager.dart';

class Pipe extends SpriteComponent with HasGameRef<GameManager> {
  final double pipeGap = 200;

  int speed = 100;
  bool reversed = false;

  Pipe({
    this.reversed = false,
  });

  @override
  Future<void> onLoad() async {
    sprite = await Sprite.load('pipe-green.png');
    x = gameRef.size.x / 1.5;
    y = sprite!.srcSize.y + pipeGap;
    anchor = Anchor.topCenter;
    if (reversed) {
      angle = 3.14;
      anchor = Anchor.bottomCenter;
      y = 0;
    }
  }

  @override
  void update(double dt) {
    super.update(dt);

    x -= speed * dt;

    if (x <= -sprite!.srcSize.x) {
      x = gameRef.size.x;
    }
  }
}
