import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../size_config.dart';
import 'dart:math' as math;

class background_with_logo extends StatefulWidget {
  const background_with_logo({
    Key key,
  }) : super(key: key);

  @override
  _background_with_logoState createState() => _background_with_logoState();
}

class _background_with_logoState extends State<background_with_logo>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    _controller.forward();
    // _controller.reverse();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 2.8,
          width: double.infinity,
          child: Image(
            image: AssetImage("assets/images/CaTD18H.jpg"),
            fit: BoxFit.none,
          ),
        ),
        Container(
          color: Colors.black87,
          height: MediaQuery.of(context).size.height / 2.8,
          width: double.infinity,
        ),
        AnimatedBuilder(
          animation: _controller,
          builder: (context, child) => Transform.rotate(
            angle: _controller.value * 2 * math.pi,
            child: SizedBox(
              height: getProportionateScreenHeight(130),
              width: getProportionateScreenWidth(130),
              child: SvgPicture.asset(
                "assets/icons/popcorn.svg",
              ),
            ),
          ),
        ),
      ],
    );
  }
}
