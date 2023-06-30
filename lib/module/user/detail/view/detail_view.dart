import 'package:flutter/material.dart';
import 'package:bequrban_slincing/core.dart';
import '../controller/detail_controller.dart';

class DetailView extends StatefulWidget {
  final Map item;
  const DetailView({Key? key, required this.item}) : super(key: key);

  Widget build(context, DetailController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.chevron_left),
          color: Colors.black,
          iconSize: 40,
          onPressed: () {
            // Tindakan yang ingin Anda lakukan saat tombol kembali ditekan
            // Misalnya, navigasi ke halaman sebelumnya
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Center(
          child: Text(
            item["product_name"],
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const ImageIcon(
              AssetImage(
                "assets/icon/saved.png",
              ),
              color: Colors.black,
              size: 24.0,
            ),
          ),
          const SizedBox(
            width: 15.0,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: const Column(
            children: [],
          ),
        ),
      ),
    );
  }

  @override
  State<DetailView> createState() => DetailController();
}
