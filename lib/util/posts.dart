import 'package:flutter/material.dart';

class post extends StatelessWidget {
  final String name;
  post({required this.name});


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // profile photo
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(
                width: 10,
              ),
               Text(name, style: TextStyle(fontWeight: FontWeight.bold),
              ),
                ],
              ),
              Icon(Icons.menu)
            ],
          ),
        ),
        Container(
          height: 400,
          color: Colors.grey,
        ),

        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Icon(Icons.chat_bubble_outline),
                  ),
                  Icon(Icons.share),
                ],
              ),
              Icon(Icons.bookmark),
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Text('Liked by '),
               Text(
                'naman__nayak',
              style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(' and '),
              Text(
                'others',
              style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),

        //caption   
        
      ],
    );
  }
}
