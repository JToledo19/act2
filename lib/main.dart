import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'StackFila Jorge Toledo',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black,
          iconTheme: IconThemeData(color: Colors.white),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 120,
                width: 300,
                child: Stack(
                  children: List.generate(5, (index) {
                    List<IconData> icons = [
                      Icons.star,
                      Icons.favorite,
                      Icons.thumb_up,
                      Icons.check_circle,
                      Icons.lightbulb
                    ];
                    List<String> iconNames = [
                      "Star",
                      "Favorite",
                      "Like",
                      "Check",
                      "Lightbulb"
                    ];
                    return Positioned(
                      left: index * 50.0,
                      child: Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Colors.accents[index % Colors.accents.length],
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              blurRadius: 5,
                              spreadRadius: 2,
                              offset: Offset(3, 3),
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              icons[index],
                              color: Colors.white,
                              size: 30,
                            ),
                            SizedBox(height: 5),
                            Text(
                              iconNames[index],
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
