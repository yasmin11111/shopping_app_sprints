import 'package:flutter/material.dart';

class cardWid extends StatelessWidget {
  String name;
  String Price;
  String img;
  cardWid({required this.name, required this.Price, required this.img});
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Card(
        elevation: 10,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('$img'),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                textAlign: TextAlign.start,
                "$name",
                style: TextStyle(
                    color: Color.fromARGB(255, 67, 18, 102),
                    fontFamily: "Suwannaphum",
                    fontSize: 10,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "$Price \$",
                style: TextStyle(
                    color: Color.fromARGB(255, 67, 18, 102),
                    fontFamily: "Suwannaphum",
                    fontSize: 10,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
      Positioned(
          top: 2,
          right: 1,
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 67, 18, 102),
              borderRadius: BorderRadius.circular(50),
            ),
            child: IconButton(
              iconSize: 25,
              icon: Icon(
                Icons.shopping_cart,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Item Added to Cart"),
                      Text("$name has been added to your cart"),
                    ],
                  ),
                  backgroundColor: Color.fromARGB(255, 67, 18, 102),
                  duration: Duration(seconds: 3),
                  action: SnackBarAction(
                    label: 'Undo',
                    textColor: Color.fromARGB(255, 255, 255, 255),
                    onPressed: () {},
                  ),
                ));
              },
            ),
          ))
    ]);
  }
}
