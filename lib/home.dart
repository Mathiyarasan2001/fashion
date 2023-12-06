import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List reals = [
    ['assets/image/home/bag.png', 'Bag'],
    ['assets/image/home/chanel flap.jpg', 'Chanel Flap'],
    ['assets/image/home/jewels.webp', 'Jewels'],
    ['assets/image/home/Nerolac.jpg', 'Nerolac'],
    ['assets/image/home/watch.jpg', 'Watch'],
    ['assets/image/home/REEMTOO.jpg', 'Reemtoo'],
    ['assets/image/home/Shopping bag.jpg', 'Shopping Bag'],
    ['assets/image/home/small double flap.jpg', 'Small Flap']
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 238, 199, 199),
      appBar: PreferredSize(
        preferredSize: Size(50, 70),
        child: AppBar(
          backgroundColor: Color.fromARGB(255, 238, 199, 199),
          title: Text(
            'Bag More',
            style: TextStyle(
              fontFamily: 'PlayfairDisplay',
              fontSize: 40,
            ),
          ),
          centerTitle: true,
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            height: 700,
            child: Column(
              children: [
                Center(
                  child: Container(
                    height: 130,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        itemCount: reals.length,
                        itemBuilder: (context, index) {
                          return Row(
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: CircleAvatar(
                                      radius: 37,
                                      backgroundColor:
                                          Color.fromARGB(255, 193, 149, 3),
                                      child: Container(
                                        height: 68,
                                        width: 68,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            image: DecorationImage(
                                                image:
                                                    AssetImage(reals[index][0]),
                                                fit: BoxFit.cover)),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                    child: Text(reals[index][1],
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold)),
                                  )
                                ],
                              )
                            ],
                          );
                        }),
                  ),
                ),
                Center(
                  child: Divider(
                    color: Colors.grey,
                  ),
                ),
                Container(
                  height: 70,
                  width: 250,
                  child: Center(
                    child: Text(
                      'New Bags',
                      style: TextStyle(
                          fontFamily: 'PlayfairDisplay', fontSize: 50),
                    ),
                  ),
                ),
                Container(
                  height: 70,
                  width: 250,
                  child: Center(
                    child: Text(
                      'Collection',
                      style: TextStyle(
                          fontFamily: 'PlayfairDisplay', fontSize: 50),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 350,
                  width: 350,
                  child:
                      Image.asset('assets/image/homebag.png', fit: BoxFit.fill),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
