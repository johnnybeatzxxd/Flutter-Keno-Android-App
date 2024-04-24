import "package:flutter/material.dart";
import "package:keno_app/index.dart";


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            CustomPaint(
              size: Size.fromHeight(MediaQuery.of(context).size.height),
              painter: LinePainter(context),
            ),
            const Column()]),)
    ,);
  }
}