import "package:flutter/material.dart";
import "package:flutter/rendering.dart";
import "dart:math";
import "package:flutter/widgets.dart";

class BalancePage extends StatelessWidget {
  const BalancePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(child:Stack(
          children: [
            CustomPaint(
              size: Size.fromHeight(800),
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
                    padding: const EdgeInsets.fromLTRB(0,40,0,55),
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
                const SizedBox(height: 17,),
                Padding(
                  padding: const EdgeInsets.fromLTRB(32, 0, 0, 27),
                  child: SizedBox(
                    height: 127,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        // Selected Container
                        Container(
                          width: 167,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(6), color: const Color.fromRGBO(255, 75, 0, 1),),
                          child: Column(

                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  IconButton(
                                    onPressed: (){},
                                    icon: Icon(Icons.add_card,color: Colors.white,)),
                                  const SizedBox(width: 70,),
                                  IconButton(
                                    onPressed: (){}, 
                                    icon: Icon(Icons.star_rounded,size:30 ,color: Colors.white.withOpacity(0.5),))
                                    ],),
                                    const SizedBox(height: 20,),
                                   const Padding(padding: EdgeInsets.symmetric(horizontal: 15),
                                      child:Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                           Text("Bank card",style:TextStyle(fontSize: 14,fontWeight: FontWeight.bold,fontFamily: "PilatExtended",color: Colors.white,)),
                                           Text("Commission 5%",style: TextStyle(fontSize: 12,color: Colors.white),)]))
                                    ],),
                        ),
                        const SizedBox(width: 15,),
                        // Unselected Container
                        Container(
                          width: 167,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6), 
                            color: Theme.of(context).colorScheme.background,
                            boxShadow: [
                              BoxShadow(
                                color: Theme.of(context).colorScheme.onBackground.withOpacity(0.08),
                                spreadRadius: 1,
                                blurRadius: 6,
                                offset: const Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Column(

                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  IconButton(
                                    onPressed: (){},
                                    icon: Icon(Icons.apple,color: Theme.of(context).colorScheme.onBackground,)),
                                  const SizedBox(width: 70,),
                                  IconButton(
                                    onPressed: (){}, 
                                    icon: Icon(Icons.star_rounded,size:30 ,color: Theme.of(context).colorScheme.onBackground.withOpacity(0.5),))
                                    ],),
                                    const SizedBox(height: 20,),
                                    Padding(padding: const EdgeInsets.symmetric(horizontal: 15),
                                      child:Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                           Text("Apple ",style:TextStyle(fontSize: 14,fontWeight: FontWeight.bold,fontFamily: "PilatExtended",color:Theme.of(context).colorScheme.onBackground,)),
                                           Text("Commission 0%",style: TextStyle(fontSize: 12,color: Theme.of(context).colorScheme.onBackground),)]))
                                    ],),
                        ),
                      ],)
                      )
                      ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 17,horizontal: 32),
                  child: Column(
                    crossAxisAlignment:CrossAxisAlignment.start ,
                    children: [TextField(
                    style: TextStyle(fontFamily: "PilatExtended"),
                    cursorColor: Theme.of(context).colorScheme.onBackground,
                    decoration: InputDecoration(
                      hintText: "Credit card",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Theme.of(context).colorScheme.onBackground),
                        borderRadius: BorderRadius.circular(6)),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Theme.of(context).colorScheme.onBackground),
                        borderRadius: BorderRadius.circular(6)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Theme.of(context).colorScheme.onBackground),
                        borderRadius: BorderRadius.circular(6)),
                    ),
                  ),
                  SizedBox(height: 16,),
                  TextField(
                    style: const TextStyle(fontFamily: "PilatExtended",),
                    cursorColor: Theme.of(context).colorScheme.onBackground,
                    keyboardType: TextInputType.number, // Added to accept only numbers
                    
                    decoration: InputDecoration(
                      hintText: "Amount",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Theme.of(context).colorScheme.onBackground),
                        borderRadius: BorderRadius.circular(6)),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Theme.of(context).colorScheme.onBackground),
                        borderRadius: BorderRadius.circular(6)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Theme.of(context).colorScheme.onBackground),
                        borderRadius: BorderRadius.circular(6)),
                    ),
                  ),
                  SizedBox(height: 15,),
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Checkbox(value: true, onChanged: (bool? newValue) {},
                        fillColor: MaterialStatePropertyAll(Theme.of(context).colorScheme.onBackground),
                        checkColor: Theme.of(context).colorScheme.background,
                        ),
                      Flexible(
                        child: Text('I agree to the terms of use of the "One click pay" services', softWrap: true,)
                      )
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Container(
                    decoration: const BoxDecoration(color: Color.fromRGBO(255, 75, 0, 1), borderRadius: BorderRadius.all(Radius.circular(6))),
                    width: 311,
                    height: 48,
                    child: GestureDetector(child: Center(child: Text("Deposit ",style:TextStyle(fontSize: 14,fontWeight: FontWeight.bold,fontFamily: "PilatExtended",color:Colors.white)),),),
                  )
                  ],)
                )

              ],
            ),
          ],
        ),)
      );
  }
}///

class LinePainter extends CustomPainter {
  final Random random = Random();
  final BuildContext context;

  LinePainter(this.context);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color =  Theme.of(context).colorScheme.onBackground.withOpacity(0.08)
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

