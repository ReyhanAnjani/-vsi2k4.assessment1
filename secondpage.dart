import 'package:flutter/material.dart';

// void main() => runApp(const SecondPage());

class SecondPage extends StatelessWidget {
  final List<String> data;
  const SecondPage({super.key, required this.data});
  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: Column(
          children: [
            Column(
              children:[
                Container(
                  child: Text("Nama Barang: " +data[0])
                )
              ],
            ),
            Column(
              children: [
                Container(
                  child: Text("Deskripsi: " +data[1]),
                )
              ],
            ),
            Column(
              children: [
                Container(
                  child: Text("Harga: " +data[2]),
                )
              ],
            )
          ],
        ),
    );
  }
}