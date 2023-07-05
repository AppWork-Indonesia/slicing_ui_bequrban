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
            gradient: LinearGradient(
              colors: [
                Colors.black,
                Colors.black.withOpacity(0.0),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "assets/icon/logo.png",
                height: MediaQuery.of(context).size.height * 0.03,
                fit: BoxFit.fill,
                color: Colors.white,
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                "Qurban Legal and Easy\nform home",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Row(
                children: [
                  Text(
                    "Start\nfrom",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.0,
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "2.500K",
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 169, 40),
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5.0,
              ),
              ElevatedButton(
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
            ],
          ),
        ),
      ],
    );
  }
}
