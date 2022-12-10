import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff658044),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height/1.25,
            width: MediaQuery.of(context).size.width,
            decoration:const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(140),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(40),
              child: Stack(
                children: [
                  Positioned(
                      left: 0,
                      child: Image.asset('assets/images/plant1.png',height: 430,)),
                  Positioned(
                      top: 80,
                      right: 15,
                      child: CircleAvatar(
                        radius: 18,
                        backgroundColor: Color(0xff658044),
                        child: Icon(Icons.favorite_border,color: Colors.white,)),
                      ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(onPressed: (){
                        Navigator.pop(context);
                      },
                          icon: Icon(Icons.arrow_back)),
                      Image.asset('assets/images/cart.png',height: 22,),
                    ],
                  ),
                  Positioned(
                    top: 405,
                    left: 40,
                    child: Column(
                      children: [
                        Container(
                          height: 15,
                          width: 6,
                          decoration: BoxDecoration(
                            color: Color(0xff658044),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        SizedBox(height: 3,),
                        CircleAvatar(
                          radius: 3.5,
                          backgroundColor: Color(0xff658044).withOpacity(0.4),
                        ),
                        SizedBox(height: 3,),
                        CircleAvatar(
                          radius: 3.5,
                          backgroundColor: Color(0xff658044).withOpacity(0.4),
                        ),
                        SizedBox(height: 3,),
                        CircleAvatar(
                          radius: 3.5,
                          backgroundColor: Color(0xff658044).withOpacity(0.4),
                        ),
                      ],
                    )
                  ),
                  Positioned(
                      top: 400,
                      left: 70,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Well Mounted Plants\nGlass Pot.',style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 1
                      ),),
                      SizedBox(height: 8,),
                      Text('Plant in glass bowl. It can be mounted\non a wall or celling (holders include).',style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          letterSpacing: 1
                      ),),
                      SizedBox(height: 40,),
                      Row(
                        children: [
                          Text('\$85.00',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w900),),
                          SizedBox(width: 30,),
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: const [
                                BoxShadow(
                                  offset: Offset(0, 3),
                                  blurRadius: 15,
                                  color: Colors.grey
                                ),
                              ]
                            ),
                            child: Icon(Icons.add,size: 15,),

                          ),
                        ],
                      )
                    ],
                  ))
                ],
              ),
            ),
          ),
          SizedBox(height: 25,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Image.asset('assets/images/height.png',height: 55,color: Colors.white,),
                    SizedBox(height: 10,),
                    const Text('Height',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 18),),
                     SizedBox(height: 6,),
                     Text('40cm - 50cm',style: TextStyle(color: Colors.grey.shade300,fontWeight: FontWeight.w300,fontSize: 10),),

                  ],
                ),
                Column(
                  children: [
                    Image.asset('assets/images/meter.png',height: 50,color: Colors.white,),
                    SizedBox(height: 10,),
                    const Text('Temperature',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 18),),
                    SizedBox(height: 6,),
                    Text('18C to 25C',style: TextStyle(color: Colors.grey.shade300,fontWeight: FontWeight.w300,fontSize: 10),),

                  ],
                ),
                Column(
                  children: [
                    Image.asset('assets/images/plants.png',height: 55,color: Colors.white,),
                    SizedBox(height: 10,),
                    const Text('Pot',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 18),),
                    SizedBox(height: 6,),
                    Text('Self Watering Pot',style: TextStyle(color: Colors.grey.shade300,fontWeight: FontWeight.w300,fontSize: 10),),

                  ],
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
