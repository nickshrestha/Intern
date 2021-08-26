import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      
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
                      'Kakarot: Power level 3000000',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.orange.shade900,
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
                      'Vageta: Power level 2000000',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.orange.shade900,
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
       
       /// Black Goku Saiyan 3 card 
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
                      'assets/images/Goku-Black.jpg',
                    ),
                    height: 240,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    bottom: 16,
                    right: 16,
                    left: 16,
                    child: Text(
                      'Goku Black: Power level 2500000',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.orange.shade900,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(16).copyWith(bottom: 0),
                child: Text(
                  'So much so that he decided to capture all the Super Dragon Balls and wished for Gokus body. He became obsessed with the Saiyan ability to get stronger with every battle and in doing so, he turned into one of the evilest supervillains of the anime. His Super Saiyan Rose form was not easy to deal with for Goku and Vegeta.',
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

/// Nappa Saiyan 4 card 
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
                      'assets/images/nappa.jpg',
                    ),
                    height: 240,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    bottom: 16,
                    right: 16,
                    left: 16,
                    child: Text(
                      'Nappa: Power level 1000000',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.orange.shade900,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(16).copyWith(bottom: 0),
                child: Text(
                  "Nappa was Vegeta's partner when they decided to raid the Earth in a bid to search for the Dragon Balls. One of the only surviving Saiyans hailing from Planet Vegeta, Nappa was as sinister as people come. He didnt look fazed by the bloodshed he caused, instead, he absolutely loved every single minute of it, implying his crave for power.",
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

/// paragus Saiyan 5 card 
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
                      'assets/images/paragus.jpg',
                    ),
                    height: 240,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    bottom: 16,
                    right: 16,
                    left: 16,
                    child: Text(
                      'Paragus: Power level 1500000',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.orange.shade900,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(16).copyWith(bottom: 0),
                child: Text(
                  "Broly's father, Paragus, followed his son to exile and joined him on Vampa. There, he decided to train Broly how to survive and use his near-unlimited strength. But in doing so, he tried to contain Broly, stopped being a father and started acting like a ringmaster. Broly became an item for revenge for Paragus.",
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
