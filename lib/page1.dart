import 'package:flutter/material.dart';

class Drop extends StatelessWidget {
  const Drop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          width: 350,
          height: 40,
          decoration: BoxDecoration(
            borderRadius:
             BorderRadius.circular(20),
             color: Color.fromARGB(255, 179, 190, 255),
             
             ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Icon(Icons.search),
              ),
              SizedBox(
                width: 250,
                height: 20,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'search..'
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}