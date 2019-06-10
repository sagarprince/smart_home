import 'package:flutter/material.dart';

class RoomBackgroundImage extends StatelessWidget {
  final int id;
  final String name;
  final String image;
  final Widget child;
  final VoidCallback onTap;

  const RoomBackgroundImage({
    Key key,
    @required this.id,
    @required this.name,
    @required this.image,
    @required this.child,
    this.onTap
  }):
        assert(id != null),
        assert(name != null),
        assert(image != null),
        assert(child != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Hero(
        tag: '${id}_${name}',
        child: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            if (onTap != null) {
              onTap();
            }
          },
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(image),
              ),
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}