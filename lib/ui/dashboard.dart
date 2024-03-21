// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key}); // Penyesuaian disini

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Commerce'),
      ),
      body: Center(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraints) {
            return const SingleChildScrollView(
              scrollDirection: Axis.vertical,
              physics: BouncingScrollPhysics(),
              child: IntrinsicHeight(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 500,
                        height: 200,
                        child: Image(image: NetworkImage('https://i.pinimg.com/564x/4c/a7/9d/4ca79d6e0ae0577aed4d0862eeae495c.jpg')),
                      ),
                    ),
                    ListProducts(),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 500,
                        height: 200,
                        child: Image(
                          image: NetworkImage('https://i.pinimg.com/564x/87/70/10/877010c96ceebdfe145376b16f1c06c7.jpg'),
                          fit: BoxFit.cover, // Opsional, untuk mengatur bagaimana gambar ditampilkan
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class ListProducts extends StatelessWidget {
  const ListProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 20),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            ProductImage(
              key: UniqueKey(),
              rndSeed: 1,
              nama: "1. Vans Old Skool",
              harga: 599.000,
              imageUrls: const [
                'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcS2vcXVPvdu7zxOPzAesADVspKGA_YawaF9C5fN8JdIKafbqHrp',
                'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcS2vcXVPvdu7zxOPzAesADVspKGA_YawaF9C5fN8JdIKafbqHrp',
                'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcS2vcXVPvdu7zxOPzAesADVspKGA_YawaF9C5fN8JdIKafbqHrp',
              ],
            ),
            ProductImage(
              key: UniqueKey(),
              rndSeed: 2,
              nama: "2. Convers Chuck Taylor HI Black",
              harga: 699.000,
              imageUrls: const [
                 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGcGo1OJz0jHdO2eZai75Ij8jC11uHArGh2FKQIoOIQGJMiLEV',
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGcGo1OJz0jHdO2eZai75Ij8jC11uHArGh2FKQIoOIQGJMiLEV',
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGcGo1OJz0jHdO2eZai75Ij8jC11uHArGh2FKQIoOIQGJMiLEV',
              ],
            ),
            ProductImage(
              key: UniqueKey(),
              rndSeed: 3,
              nama: "3. Nike Court Vision Low White",
              harga: 799.000,
              imageUrls: const [
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4FZXqXrv5wJ5JTR6a3_ipYlLryi_VsjkzprjPUp7VyutxGd-b',
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4FZXqXrv5wJ5JTR6a3_ipYlLryi_VsjkzprjPUp7VyutxGd-b',
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4FZXqXrv5wJ5JTR6a3_ipYlLryi_VsjkzprjPUp7VyutxGd-b',
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ProductImage extends StatelessWidget {
  final int rndSeed;
  final String nama;
  final double harga;
  final List<String> imageUrls;

  const ProductImage({
    required Key key,
    this.rndSeed = 2,
    this.nama = "Adidas Samba OG White Gum ",
    this.harga = 2.399000,
    required this.imageUrls,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Column(
        children: [
          Image(
            image: NetworkImage(imageUrls[rndSeed - 1]), // Memilih tautan gambar sesuai dengan indeks rndSeed
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(nama, style: const TextStyle(fontWeight: FontWeight.bold)),
          ),
          Text("Rp. ${harga.toStringAsFixed(3)}"),
        ],
      ),
    );
  }
}