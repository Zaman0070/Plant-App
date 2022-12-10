import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff658044),
      body:Column(
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
              padding: const EdgeInsets.all(40.0),
              child: Stack(
                children: [
                  Positioned(
                      left:0,
                      child: Image.asset('assets/images/plant1.png',height: 430,)),
                const  Positioned(
                    top: 80,
                    right: 15,
                    child: CircleAvatar(
                      radius: 18,
                      backgroundColor: Color(0xff658044),
                      child: Icon(Icons.favorite_border,color: Colors.white,),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(icon:Icon(Icons.arrow_back),onPressed: (){},),
                      Image.asset('assets/images/cart.png',height: 22,)
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
                            borderRadius: BorderRadius.circular(10)
                          ),
                        ),
                        SizedBox(height: 3,),
                        CircleAvatar(
                          backgroundColor: Color(0xff658044).withOpacity(0.4),
                          radius: 3.5,
                        ),
                        SizedBox(height: 3,),
                        CircleAvatar(
                          backgroundColor: Color(0xff658044).withOpacity(0.4),
                          radius: 3.5,
                        ),
                        SizedBox(height: 3,),
                        CircleAvatar(
                          backgroundColor: Color(0xff658044).withOpacity(0.4),
                          radius: 3.5,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                      top: 400,
                      left: 70,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                         const Text('Wall Mounted Plant\nGlass Pot',
                            style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900,letterSpacing: 1),),
                          SizedBox(height: 8,),
                          Text('Plant in glass bowl. It can be mounted\non a wall or celling (holders included)',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.grey.shade600),),
                          SizedBox(height: 40,),
                          Row(
                            children: [
                            const  Text('\$85.00',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w900),),
                              SizedBox(width: 30,),
                              Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow:const [
                                       BoxShadow(offset: Offset(0, 3),color: Colors.grey,blurRadius: 15),
                                    ]
                                ),
                                child: Icon(Icons.add,size: 15,),
                              ),
                            ],
                          ),

                        ],
                      )),
                ],
              ),
            ),
          ),
          SizedBox(height: 25,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Image.asset('assets/images/height.png',height: 55,color: Colors.white,),
                    SizedBox(height: 10,),
                   const Text('Height',
                      style: TextStyle(fontWeight: FontWeight.w700,color: Colors.white,fontSize: 18),),
                    SizedBox(height: 6,),
                    Text('40cm - 50cm',style: TextStyle(color: Colors.grey.shade300,fontSize: 10),)],),
                Column(
                  children: [
                    Image.asset('assets/images/meter.png',height: 50,color: Colors.white,),
                    SizedBox(height: 10,),
                  const  Text('Temperature ',
                    style: TextStyle(fontWeight: FontWeight.w700,color: Colors.white,fontSize: 18),),
                    SizedBox(height: 6,),
                    Text('18C to 25C - 50cm',style: TextStyle(color: Colors.grey.shade300,fontSize: 10),)],),
                Column(
                  children: [
                    Image.asset('assets/images/plants.png',height: 55,color: Colors.white,),
                    SizedBox(height: 10,),
                   const Text('Pot',style: TextStyle(fontWeight: FontWeight.w700,color: Colors.white,fontSize: 18),),
                    SizedBox(height: 6,),
                    Text('Self Watering Pot',style: TextStyle(color: Colors.grey.shade300,fontSize: 10),)],),
              ],
            ),
          ),
        ],
      )
    );
  }
}
