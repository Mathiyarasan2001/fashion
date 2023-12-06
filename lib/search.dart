import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 238, 199, 199),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 238, 199, 199),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_back),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 100),
            child: Container(
              height: 30,
              width: 70,
              child: Center(
                child: TextField(
                    decoration: InputDecoration(
                  hintText: 'Women', border: InputBorder.none,
                  // Center hint text
                  contentPadding: EdgeInsets.symmetric(vertical: 10),
                )),
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.message),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Divider(
                color: Colors.grey,
              ),
            ),
            Center(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Icon(Icons.sort_sharp),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'SORT',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  Container(
                    height: 50,
                    child: VerticalDivider(
                      color: Colors.grey,
                      thickness: 2,
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Icon(Icons.filter_alt_outlined),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'FILTER',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Row(
                  children: [
                    Container(
                      height: 260,
                      width: 160,
                      child: Column(
                        children: [
                          Container(
                            height: 175,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/image/home/small double flap.jpg'),
                                    fit: BoxFit.fill)),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                child: Text('\$${200}'),
                              ),
                              SizedBox(
                                width: 90,
                              ),
                              Container(
                                child: Icon(Icons.favorite_border_outlined),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 40,
                              child: Center(
                                  child: Text(
                                      'Triple fallen should mini skater dress ')),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 260,
                      width: 160,
                      child: Column(
                        children: [
                          Container(
                            height: 175,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/image/home/bag.png'),
                                    fit: BoxFit.fill)),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                child: Text('\$${220}'),
                              ),
                              SizedBox(
                                width: 90,
                              ),
                              Container(
                                child: Icon(Icons.favorite_border_outlined),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 40,
                            width: 150,
                            child: Center(
                                child: Text(
                                    'Eva embellished cami midi wedding dress')),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Container(
                    height: 260,
                    width: 160,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              child: Text('\$${200}'),
                            ),
                            SizedBox(
                              width: 70,
                            ),
                            Container(
                              child: Icon(Icons.favorite_border_outlined),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 200,
                          child: Text(
                              'Portable timepiece intended to be carried or worn by a person,It is designed to keep a consistent movement despite the motions caused by the persons activities '),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 260,
                    width: 160,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/image/home/watch.jpg'),
                            fit: BoxFit.fill)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
