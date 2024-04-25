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
             Column(
              children: [
                AppBar(  
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  title: Text('BALANCE', style: TextStyle(color: Theme.of(context).colorScheme.onBackground, fontFamily: "PilatExtended",fontSize: 20)),
                  centerTitle: true,
                  leading: IconButton(icon:  Icon(Icons.arrow_back_ios_sharp,color: Theme.of(context).colorScheme.onBackground,),onPressed: (){},),
                  actions: [IconButton(onPressed: (){}, icon:  Icon(Icons.settings,color : Theme.of(context).colorScheme.onBackground))],
                ),
              ],
            )]),)
    ,);
  }
}