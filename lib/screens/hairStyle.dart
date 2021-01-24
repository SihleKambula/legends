import 'package:flutter/material.dart';
import 'package:legends/data/hairstyles.dart';
import 'package:legends/screens/hairStylist.dart';

class HairStyleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Text(
              'Popular Styles',
              style: TextStyle(
                color: Colors.orange[800],
                fontSize: 25,
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: hairStyles.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HairStylistScreen(
                                    imgPath: hairStyles[index].imgPath,
                                    name: hairStyles[index].hairStyleName,
                                    duration: hairStyles[index].duration,
                                    price: hairStyles[index].price,
                                  )));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.orange[800], width: 1),
                          borderRadius: BorderRadius.circular(10.0)),
                      margin: EdgeInsets.symmetric(vertical: 8.0),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.transparent, width: 1),
                                borderRadius: BorderRadius.circular(10.0)),
                            height: 100,
                            width: 100,
                            child: Hero(
                              tag: 'hairstyle-${hairStyles[index].imgPath}',
                              child: Image(
                                image: AssetImage(hairStyles[index].imgPath),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 15.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  hairStyles[index].hairStyleName,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      hairStyles[index].duration,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w300),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      'R${hairStyles[index].price.toString()}',
                                      style: TextStyle(
                                        color: Colors.orange[800],
                                        fontSize: 20,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.check_circle,
                              color: hairStyles[index].selected
                                  ? Colors.orange[800]
                                  : Colors.grey,
                              size: 40,
                            ),
                            onPressed: () {},
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.orange[800],
        iconSize: 35,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline), label: 'favorite'),
          BottomNavigationBarItem(
              icon: Icon(Icons.location_on_outlined), label: 'location')
        ],
      ),
    );
  }
}
