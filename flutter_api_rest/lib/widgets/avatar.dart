import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final double imageSize;

  Avatar({this.imageSize = 100});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  blurRadius: 20,
                  color: Colors.black,
                  offset: Offset(
                    0,
                    10,
                  ),
                ),
              ],
            ),
            child: ClipOval(
              child: Image.network(
                'https://cdn.iconscout.com/icon/free/png-512/avatar-370-456322.png',
                width: imageSize,
                height: imageSize,
              ),
            ),
          ),
          Positioned(
            bottom: 5,
            right: 0,
            child: CupertinoButton(
              padding: EdgeInsets.zero,
              borderRadius: BorderRadius.circular(30),
              child: Container(
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 2),
                  color: Colors.pink,
                  shape: BoxShape.circle,
                ),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          )
        ],
      ),
    );
  }
}
