import 'package:flutter/material.dart';

class headerImage extends StatelessWidget {
  const headerImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(
          "https://cdn.pixabay.com/photo/2020/10/22/10/28/cow-5675684_1280.jpg",
          width: MediaQuery.of(context).size.width,
          height: 200.0,
          fit: BoxFit.fill,
        ),
        Container(
          height: 200,
          decoration: BoxDecoration(
            color: Colors.black,
            gradient: LinearGradient(
              colors: [
                Colors.black,
                Colors.black.withOpacity(0.0),
              ],
            ),
          ),
        ),
        Positioned(
          top: 20,
          left: 20,
          child: Image.asset(
            "assets/icon/logo.png",
            width: 25.0,
            height: 25.0,
            fit: BoxFit.fill,
            color: Colors.white,
          ),
        ),
        const Positioned(
          top: 55.0,
          left: 16.0,
          child: Text(
            "Qurban Legal and Easy\nform home",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const Positioned(
          top: 100.0,
          left: 16.0,
          child: Text(
            "Start\nfrom",
            style: TextStyle(
              color: Colors.white,
              fontSize: 12.0,
            ),
          ),
        ),
        const Positioned(
          top: 102.0,
          left: 50.0,
          child: Text(
            "2.500K",
            style: TextStyle(
              color: Color.fromARGB(255, 255, 169, 40),
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Positioned(
          bottom: 20.0,
          left: 16.0,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
            ),
            onPressed: () {},
            child: const Text(
              "Search Now",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
