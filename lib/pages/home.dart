import "package:flutter/gestures.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:keno_app/index.dart";


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
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
                        title: Text('HOME', style: TextStyle(color: Theme.of(context).colorScheme.onBackground, fontFamily: "PilatExtended",fontSize: 20)),
                        centerTitle: true,
                        leading: IconButton(icon:  Icon(Icons.arrow_back_ios_sharp,color: Theme.of(context).colorScheme.onBackground,),onPressed: (){},),
                        actions: [IconButton(onPressed: (){}, icon:  Icon(Icons.settings,color : Theme.of(context).colorScheme.onBackground))],
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height / 2.7,
                          child: GridView.count(
                            scrollDirection: Axis.vertical,
                            padding: EdgeInsets.zero,
                            crossAxisCount: 5,
                            children: List.generate(20, (index) {
                              return Align(
                                alignment: Alignment.center,
                                child: Container(
                                  height: 52,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    color: Colors.black54,
                                    borderRadius: BorderRadius.circular(6),
                                    border: Border.all(color: Colors.white54),
                                  ),
                                  child: Center(
                                    child: Text((index + 1).toString(), style: TextStyle(color: Theme.of(context).colorScheme.onBackground, fontFamily: "PilatExtended", fontSize: 20)),
                                  ),
                                ),
                              );
                            }),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 15,
                        ),
                        Text("Enter Your Draw", style: TextStyle(color: Theme.of(context).colorScheme.onBackground, fontFamily: "PilatExtended", fontSize: 20)) ,
                        Row(
                          children: [
                            TextField(
                              
                            )
                          ],
                        )
                      
                    ],
                  ),
                ],
              
            ),
          
        
      
    );
  }
}
