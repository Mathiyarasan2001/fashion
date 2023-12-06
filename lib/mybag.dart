import 'package:flutter/material.dart';

class Mybag extends StatefulWidget {
  const Mybag({super.key});

  @override
  State<Mybag> createState() => _MybagState();
}

class _MybagState extends State<Mybag> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 238, 199, 199),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 200,
                width: MediaQuery.of(context).size.width - 16,
                child: Row(
                  children: [
                    Container(
                      height: 180,
                      width: 130,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          image: DecorationImage(
                              image: AssetImage('assets/image/home/mybag.jpg'),
                              fit: BoxFit.fill)),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 50,
                                child: Center(
                                    child: Text(
                                  'Panic Beg X 1',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )),
                              ),
                              SizedBox(
                                width: 95,
                              ),
                              Container(
                                height: 50,
                                child: Center(
                                    child: Text(
                                  'X',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                )),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 150),
                            child: Container(
                              height: 50,
                              child: Center(
                                  child: Text(
                                'Size:L',
                                style: TextStyle(color: Colors.grey),
                              )),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 110),
                            child: Container(
                                height: 50,
                                child: Center(
                                  child: Text(
                                    'Color:Brown',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                )),
                          ),
                          Row(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                child: Center(
                                    child: Text('\$${'230'}',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold))),
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              Expanded(
                                child: OutlinedButton(
                                    style: ButtonStyle(
                                        side: MaterialStatePropertyAll(
                                            BorderSide(
                                                style: BorderStyle.solid)),
                                        shape: MaterialStatePropertyAll(
                                            BeveledRectangleBorder())),
                                    onPressed: () {},
                                    child: Center(
                                      child: Text(
                                        'Move Whitelist',
                                        style: TextStyle(
                                            fontSize: 13,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width - 16,
              child: Row(
                children: [
                  Container(
                    height: 180,
                    width: 130,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        image: DecorationImage(
                            image: AssetImage('assets/image/home/mywatch.jpeg'),
                            fit: BoxFit.fill)),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 50,
                              child: Center(
                                  child: Text(
                                'Bangle Watch X 1',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )),
                            ),
                            SizedBox(
                              width: 70,
                            ),
                            Container(
                              height: 50,
                              child: Center(
                                  child: Text(
                                'X',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              )),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 150),
                          child: Container(
                            height: 50,
                            child: Center(
                                child: Text(
                              'Size:L',
                              style: TextStyle(color: Colors.grey),
                            )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 125),
                          child: Container(
                              height: 50,
                              child: Center(
                                child: Text(
                                  'Color:Gold',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              )),
                        ),
                        Row(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              child: Center(
                                  child: Text('\$${'230'}',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold))),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Expanded(
                              child: OutlinedButton(
                                  style: ButtonStyle(
                                      side: MaterialStatePropertyAll(
                                          BorderSide(style: BorderStyle.solid)),
                                      shape: MaterialStatePropertyAll(
                                          BeveledRectangleBorder())),
                                  onPressed: () {},
                                  child: Center(
                                    child: Text(
                                      'Move Whitelist',
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 117,
            ),
            Container(
              height: 50,
              width: 500,
              color: Colors.black,
              child: TextButton(
                  onPressed: () {},
                  child: Center(
                      child: Text(
                    'CHECKOUT - \$${'430'}',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ))),
            )
          ],
        ),
      ),
    );
  }
}
