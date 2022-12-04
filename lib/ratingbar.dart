import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Ratingbar(),
  ));
}

class Ratingbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RatingBar.builder(
                  initialRating: 0,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemPadding: EdgeInsets.all(8.0),
                  itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.red,
                      ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  })
            ],
          ),
        ),
      ),
    );
  }
}
