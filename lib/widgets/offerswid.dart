import 'package:flutter/material.dart';

class offersWid extends StatelessWidget {
  const offersWid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Card(
        elevation: 20,
        child: ListTile(
          title: Text("50% Off on all Clothes",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          subtitle: Text("Limited time offer Until 31/12/2022",
              style: TextStyle(fontSize: 15)),
          trailing: Container(
            child: Center(
                child: Text("50% off",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold))),
            height: 40,
            width: 70,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color.fromARGB(255, 140, 41, 210),
                    Color.fromARGB(255, 193, 28, 140),
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
