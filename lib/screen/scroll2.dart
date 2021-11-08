import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScrollTwo extends StatefulWidget {
  const ScrollTwo({Key? key}) : super(key: key);

  @override
  _ScrollTwoState createState() => _ScrollTwoState();
}

class _ScrollTwoState extends State<ScrollTwo> {
  ScrollController _controller = ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    int milliSeconds = 0;

    for (milliSeconds = 0; milliSeconds <= 30000; milliSeconds += 10000) {
      if (milliSeconds % 20000 == 0) {
        Future.delayed(Duration(milliseconds: milliSeconds), () async {
          _controller.animateTo(_controller.position.maxScrollExtent,
              duration: Duration(seconds: 10), curve: Curves.ease);
        });
      } else {
        Future.delayed(Duration(milliseconds: milliSeconds), () async {
          _controller.animateTo(_controller.position.minScrollExtent,
              duration: Duration(seconds: 10), curve: Curves.ease);
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: _controller,
        scrollDirection: Axis.horizontal,
        child: Container(
          width: MediaQuery.of(context).size.width * 2,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      "https://images.unsplash.com/photo-1634048319540-645535208dc9?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=871&q=80"))),
        ),
      ),
    );
  }
}
