import 'package:flutter/material.dart';

class Womens_New extends StatefulWidget {
  const Womens_New({super.key});

  @override
  State<Womens_New> createState() => _Womens_NewState();
}

class _Womens_NewState extends State<Womens_New> {
  List gride = [
    ['assets/image/home/watch.jpg'],
    ['assets/image/home/Nerolac.jpg'],
    ['assets/image/home/jewels.webp'],
    ['assets/image/home/REEMTOO.jpg']
  ];

  List<String> price = ['230', '350', '500', '50'];
  List details = [
    'Wirst Watch in gold color metallic',
    'LOV Snap Closure Maroon Sling Clutch',
    'Rhodium Plated American Diamond Pendant ',
    'Belia Quilted Shoulder Bag '
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 238, 199, 199),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 238, 199, 199),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 180),
            child: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(onPressed: () {}, icon: Icon(Icons.message)),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                height: 70,
                width: 250,
                child: Center(
                  child: Text(
                    "Women's",
                    style:
                        TextStyle(fontFamily: 'PlayfairDisplay', fontSize: 50),
                  ),
                ),
              ),
            ),
            Container(
              height: 70,
              width: 400,
              child: Center(
                child: Text(
                  'New Araivals',
                  style: TextStyle(fontFamily: 'PlayfairDisplay', fontSize: 50),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                  style: ButtonStyle(
                      side: MaterialStatePropertyAll(
                          BorderSide(style: BorderStyle.solid)),
                      shape: MaterialStatePropertyAll(
                          ContinuousRectangleBorder())),
                  onPressed: () {},
                  child: Container(
                    height: 50,
                    width: 100,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Center(
                              child: Icon(
                            Icons.sort,
                            color: Colors.black,
                            size: 20,
                          )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Center(
                            child: Container(
                              child: Text(
                                'SORT',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    height: 50,
                    width: 175,
                    color: const Color.fromARGB(255, 1, 1, 0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: Center(
                              child: Icon(Icons.filter_alt_outlined,
                                  size: 20, color: Colors.white)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Center(
                            child: Text(
                              'FILTER',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Container(
                  height: 700,
                  width: 470,
                  color: Color.fromARGB(255, 238, 199, 199),
                  child: GridView.builder(
                      itemCount: gride.length,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
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
                              height: 200,
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
                                        child: Icon(Icons.favorite_border)),
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
            )
          ],
        ),
      ),
    );
  }
}
