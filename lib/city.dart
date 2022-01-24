import 'package:flutter/material.dart';

class CardCity extends StatelessWidget {
  final String name;
  final String image;
  final bool checked;
  final Function updatedChecked;

  CardCity({ required this.name, required this.image, required this.checked, required this.updatedChecked });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.all(15),
        child: Container(
          height: 150,
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
               Ink.image(
                 fit: BoxFit.cover,
                 image: AssetImage(image),
                 child: InkWell(
                  onTap: () {
                    updatedChecked();
                  },
               ),),
              Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Icon(
                          checked ? Icons.star : Icons.star_border,
                              size: 45, color: Colors.white
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Text(name,
                            style: TextStyle(
                                color: Colors.white, fontSize: 30))
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
    );
  }
}
