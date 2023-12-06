import 'package:flutter/material.dart';

class Address extends StatefulWidget {
  const Address({super.key});

  @override
  State<Address> createState() => _AddressState();
}

class _AddressState extends State<Address> {
  List gride = [
    [
      "57 Naci Terrance, Hunidpis",
      "assets/image/address/1.jpg",
      'Francis Delgado - 755 707 1486',
    ],
    [
      "21 Prince,Singapore,AR 719",
      "assets/image/address/2.jpg",
      'Brain Griffin - 029 105 810',
    ],
    [
      "142 Reda View ,Lpobdad",
      "assets/image/address/3.jpg",
      'Roger Lyan - 424 232 1212',
    ],
    [
      "824 Kihoj Pike ,Laknow",
      "assets/image/address/4.jpg",
      'Ricardo Higgie - 332 32 3234',
    ],
    [
      "406 Mike Ridge,Barrer",
      "assets/image/address/1.jpg",
      'Nettie Gordon - 3123 12312 31',
    ],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 238, 199, 199),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 238, 199, 199),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_back,
                size: 30,
              )),
          SizedBox(
            width: 5,
          ),
          Container(
            height: 25,
            width: 200,
            child: Center(
              child: Text(
                'SHOPPING ADDRESS',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
          SizedBox(
            width: 50,
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add,
                size: 30,
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              color: Color.fromARGB(255, 238, 199, 199),
              height: 600,
              width: 500,
              child: ListView.builder(
                  itemCount: gride.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Container(
                      child: Center(
                        child: Card(
                          color: const Color.fromARGB(255, 237, 216, 216),
                          child: ListTile(
                            leading: CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage(gride[index][1]),
                            ),
                            title: Text(gride[index][0]),
                            subtitle: Text(gride[index][2]),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            Container(
              color: Colors.black,
              height: 50,
              width: 500,
              child: TextButton(
                onPressed: () {},
                child: Center(
                    child: Text(
                  'Done',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
