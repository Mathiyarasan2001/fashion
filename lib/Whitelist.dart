import 'package:flutter/material.dart';

class Whitelist extends StatefulWidget {
  const Whitelist({super.key});

  @override
  State<Whitelist> createState() => _WhitelistState();
}

class _WhitelistState extends State<Whitelist> {
  List gride = [
    ['assets/image/home/watch.jpg'],
    ['assets/image/home/Nerolac.jpg'],
    ['assets/image/home/jewels.webp'],
    ['assets/image/home/REEMTOO.jpg'],
    ['assets/image/home/bag.png'],
    ['assets/image/home/small double flap.jpg'],
    ['assets/image/home/Shopping bag.jpg'],
    ['assets/image/home/chanel flap.jpg'],
  ];

  List<String> price = ['230', '350', '500', '50', '230', '350', '500', '50'];
  List details = [
    'Wirst Watch in gold color metallic',
    'LOV Snap Closure Maroon Sling Clutch',
    'Rhodium Plated American Diamond Pendant ',
    'Belia Quilted Shoulder Bag ',
    'Wirst Watch in gold color metallic',
    'LOV Snap Closure Maroon Sling Clutch',
    'Rhodium Plated American Diamond Pendant ',
    'Belia Quilted Shoulder Bag '
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 238, 199, 199),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Container(
            height: 1000,
            width: 470,
            color: Color.fromARGB(255, 238, 199, 199),
            child: GridView.builder(
                itemCount: gride.length,
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    childAspectRatio: 1 / 2,
                    mainAxisSpacing: 10),
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 220,
                        width: 190,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          image: DecorationImage(
                              image: AssetImage(gride[index][0]),
                              fit: BoxFit.fill),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              height: 25,
                              width: 45,
                              child: Text('\$${price[index]}',
                                  style: TextStyle(
                                      fontFamily: 'PlayfairDisplay',
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                            ),
                            SizedBox(
                              width: 70,
                            ),
                            Container(
                              height: 25,
                              width: 30,
                              child: Center(
                                  child: Icon(
                                Icons.favorite,
                                color: Colors.red,
                              )),
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: Container(
                            height: 70,
                            width: 160,
                            child: Center(child: Text(details[index]))),
                      )
                    ],
                  );
                }),
          ),
        ),
      ),
    );
  }
}
