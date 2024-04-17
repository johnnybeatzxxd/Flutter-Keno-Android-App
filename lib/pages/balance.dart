import "package:flutter/material.dart";
import "dart:math";
import "package:flutter/widgets.dart";

class BalancePage extends StatelessWidget {
  const BalancePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            CustomPaint(
              size: Size.infinite,
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
                 Container(
                    padding: const EdgeInsets.fromLTRB(0,72,0,23),
                    child: Column(
                      children: [
                        Text('\$12,580', style: TextStyle(color:Theme.of(context).colorScheme.onBackground,fontSize: 37, fontWeight: FontWeight.bold,fontFamily: "PilatExtended")),
                      ],
                    ),
                  ),
                 Padding(padding: const EdgeInsets.fromLTRB(32, 0, 32, 27),
                  child:Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Container(
                      width: 151,
                      height: 40,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),color: Theme.of(context).colorScheme.onBackground,),
                    child: Center(child: Text("Input",style:TextStyle(fontWeight: FontWeight.bold,fontFamily: "PilatExtended",color: Theme.of(context).colorScheme.background))),
                    ),
                    const SizedBox(width: 15,),
                    Container(
                      width: 151,
                      height: 40,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),color: Theme.of(context).colorScheme.background,),
                    child: Center(child:Text("Output",style:TextStyle(fontWeight: FontWeight.bold,fontFamily: "PilatExtended",color: Theme.of(context).colorScheme.onBackground,))),
                    ),],
                )),
                
              ],
            ),
          ],
        ),
      );
  }
}

class LinePainter extends CustomPainter {
  final Random random = Random();
  final BuildContext context;

  LinePainter(this.context);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color =  Theme.of(context).colorScheme.onBackground.withOpacity(0.07)
      ..strokeWidth = 0.5;

    for (var i = 0; i < size.width; i += 5 + random.nextInt(5)) {
      canvas.drawLine(Offset(i.toDouble(), 0), Offset(i.toDouble(), size.height), paint);
    }

    for (var i = 0; i < size.height; i += 5 + random.nextInt(10)) {
      canvas.drawLine(Offset(0, i.toDouble()), Offset(size.width, i.toDouble()), paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
