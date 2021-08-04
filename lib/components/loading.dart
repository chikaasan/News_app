import 'package:flutter/material.dart';

class Loading extends StatelessWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Center(
          child: CircularProgressIndicator(
            backgroundColor: Colors.black,
          ),
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}
