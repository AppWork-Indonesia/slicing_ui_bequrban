import 'package:flutter/material.dart';
import 'package:bequrban_slincing/core.dart';

class SplashscreenView extends StatefulWidget {
  const SplashscreenView({Key? key}) : super(key: key);

  Widget build(context, SplashscreenController controller) {
    controller.view = this;

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(0.0),
          child: Stack(
            children: [
              Image.network(
                "https://cdn.pixabay.com/photo/2016/11/19/12/50/cow-1839118_1280.jpg",
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                fit: BoxFit.cover,
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  color: Colors.black,
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.black,
                      Colors.black.withOpacity(0.0),
                      Colors.black.withOpacity(0.0),
                    ],
                  ),
                ),
              ),
              const Positioned(
                bottom: 200,
                left: 50,
                child: Center(
                  child: Text(
                    "Find Your Perfect\n Qurban with Bequrban.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 20,
                left: 180,
                child: Image.asset(
                  "assets/icon/logo.png",
                  width: 30.0,
                  height: 30.0,
                  color: Colors.white,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                bottom: 20,
                left: 160,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DashboardView(),
                      ),
                    );
                  },
                  child: const Text(
                    "Log in",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 130,
                left: 10,
                right: 10,
                child: SizedBox(
                  height: 50.0,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        elevation: 0,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(50.0),
                          ),
                        )),
                    onPressed: () {},
                    child: const Text("Sign up free"),
                  ),
                ),
              ),
              Positioned(
                bottom: 70,
                left: 10,
                right: 10,
                child: SizedBox(
                  height: 50.0,
                  width: MediaQuery.of(context).size.width,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(
                        color: Colors.white,
                      ),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50.0),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/icon/google.png",
                          width: 25.0,
                          height: 25.0,
                          fit: BoxFit.fill,
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        const Text(
                          "Continue with Google",
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<SplashscreenView> createState() => SplashscreenController();
}
