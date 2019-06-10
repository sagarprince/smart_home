import 'package:flutter/material.dart';
import 'package:smart_home/shared/store.dart';
import 'package:smart_home/shared/data.dart';

class HomeBackground extends StatefulWidget {
  const HomeBackground({Key key}): super(key: key);

  _HomeBackgroundState createState() => _HomeBackgroundState();
}

class _HomeBackgroundState extends State<HomeBackground> with TickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _animation;

  Store _store = Store();

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
        duration: const Duration(milliseconds: 600), vsync: this);
    _animation = CurvedAnimation(parent: _controller, curve: Curves.linear);
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: _store.roomsController.stream,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        var room = (snapshot.data != null) ? snapshot.data.room : AppData.rooms[0];
        _controller
          ..reset()
          ..forward();
        return  FadeTransition(
          opacity: _animation,
          child: Image.asset(
              room.image,
              fit: BoxFit.cover,
              repeat: ImageRepeat.repeatX
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}