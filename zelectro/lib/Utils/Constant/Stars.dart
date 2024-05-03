import 'package:flutter/material.dart';

class RatingStars extends StatefulWidget {
  const RatingStars({super.key});

  @override
  State<RatingStars> createState() => _RatingStarsState();
}

class _RatingStarsState extends State<RatingStars> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          child: Icon(Icons.star,size: 17,),
        ),
        Container(
          child: Icon(Icons.star,size: 17,),
        ),
        Container(
          child: Icon(Icons.star,size: 17,),
        ),
        Container(
          child: Icon(Icons.star,size: 17,),
        ),
        Container(
          child: Icon(Icons.star,size: 17,),
        )
      ],
    );
  }
}
