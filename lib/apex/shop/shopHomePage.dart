import 'package:flutter/material.dart';
import './carousel.dart';

class shopHomePage extends StatelessWidget {
  shopHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Center(
          child: Text("商店",style: TextStyle(color: Colors.black)),
        ),
      ),
      body: Carousel(),
    );
  }
}
