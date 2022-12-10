import 'package:flutter/material.dart';
import 'package:flutter_tutorial/about.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Row(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: 75,
                  color: Color(0xff658044),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 40,),
                      Image.asset('assets/images/menu.png',height: 20,color: Colors.white,),
                      Spacer(),
                     const RotatedBox(
                          quarterTurns: 3,
                          child:  Text("Green Plants",style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.white
                          ),)
                      ),
                      SizedBox(height: 30,),
                      const RotatedBox(
                          quarterTurns: 3,
                          child:  Text("Indoor Plants",style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.white
                          ),)
                      ),
                      SizedBox(height: 30,),
                      const RotatedBox(
                          quarterTurns: 3,
                          child:  Text("Shop Close",style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.white
                          ),)
                      ),
                      Spacer(),
                      Image.asset('assets/images/home.png',height: 25,color: Colors.white,),
                      SizedBox(height: 30,),
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width/1.3,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 60.0,right: 6),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 40,),
                      Align(
                          alignment: Alignment.topRight,
                          child: Image.asset('assets/images/search.png',height: 28,)),
                        Text('Green',style: TextStyle(color: Colors.grey.shade700),),
                        SizedBox(height: 6,),
                        Text('Plants',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 34),),
                        InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (_)=>const About()));
                            },
                            child: Image.asset('assets/images/plant2.png',height: 250,)),
                        Text('Turf pot plant',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),),
                        SizedBox(height: 8,),
                        Text('Big leaf plant in a truf pot for your\nhome or office decor.'
                          ,style: TextStyle(fontSize: 12,color: Colors.grey.shade700),),
                        SizedBox(height: 15,),
                        Row(
                          children: [
                            Text('\$45.00',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 18),),
                            SizedBox(width: 40,),
                            Container(
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  const BoxShadow(offset: Offset(0, 3),color: Colors.grey,blurRadius: 15),
                                ]
                              ),
                              child: Icon(Icons.add,size: 15,),
                            ),
                          ],
                        ),
                        Image.asset('assets/images/plant3.png',height: 250,),
                        Text('Scandinavian plant',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),),
                        SizedBox(height: 6,),
                        Text('Low maintenance flower in a white\nceramic pot.',
                          style: TextStyle(fontSize: 12,color: Colors.grey.shade700),),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
                top: 255,
                left: 49,
                child: InkWell(
                    onTap: (){
                      setState(() {
                        index = 0;
                      });
                    },
                    child: index == 0 ?Image.asset('assets/images/indicator.png',height: 75,)
                        :Image.asset('assets/images/indicator.png',height: 75,color: Color(0xff658044),))),
            Positioned(
                top: 370,
                left: 49,
                child: InkWell(
                    onTap: (){
                      setState(() {
                        index = 1;
                      });
                    },
                    child: index == 1 ?Image.asset('assets/images/indicator.png',height: 75,)
                        :Image.asset('assets/images/indicator.png',height: 75,color: Color(0xff658044),))),
            Positioned(
                top: 480,
                left: 49,
                child: InkWell(
                    onTap: (){
                      setState(() {
                        index = 2;
                      });
                    },
                    child: index == 2 ?Image.asset('assets/images/indicator.png',height: 75,)
                        :Image.asset('assets/images/indicator.png',height: 75,color: Color(0xff658044),))),

          ],
        ),
      )
    );
  }
}
