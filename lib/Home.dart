import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Card widget'),
        backgroundColor: Colors.black,
      ),
      body: ListView(children: <Widget>[

        /// Goku Saiyan 1 card 
        Card(
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          child: Column(
            children: [
              Stack(
                children: [
                  Ink.image(
                    image: AssetImage(
                      'assets/images/Goku.jpg',
                    ),
                    height: 240,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    bottom: 16,
                    right: 16,
                    left: 16,
                    child: Text(
                      'Kakarot: Power level 30,000',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.cyan,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(16).copyWith(bottom: 0),
                child: Text(
                  'Son Goku, born Kakarot, is a male Saiyan and the main protagonist of the Dragon Ball metaseries created by Akira Toriyama',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.start,
                children: [
                  TextButton(
                    child: Text('Fight'),
                    onPressed: () {},
                  ),
                  TextButton(
                    child: Text('Support'),
                    onPressed: () {},
                  )
                ],
              )
            ],
          ),
        ),

        /// Vagita Saiyan 2 card 
        Card(
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          child: Column(
            children: [
              Stack(
                children: [
                  Ink.image(
                    image: AssetImage(
                      'assets/images/Vageta.jpg',
                    ),
                    height: 240,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    bottom: 16,
                    right: 16,
                    left: 16,
                    child: Text(
                      'Vageta: Power level 20,000',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.cyan,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(16).copyWith(bottom: 0),
                child: Text(
                  'Vegeta is the prince of the fallen Saiyan race. He is the eldest son of King Vegeta, the older brother of Tarble, the husband of Bulma, the father of Trunks and Bulla, and the ancestor of Vegeta Jr.',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.start,
                children: [
                  TextButton(
                    child: Text('Fight'),
                    onPressed: () {},
                  ),
                  TextButton(
                    child: Text('Support'),
                    onPressed: () {},
                  )
                ],
              )
            ],
          ),
        ),
       
      ]),
    );
  }
}
