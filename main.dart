import 'package:flutter/material.dart';
import 'secondpage.dart';
void main() => runApp(const MyApp());
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
  static const String _title = 'Reyhan Anjani-6701213009';
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatefulWidget(),
      ),
    );
  }
}
 
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);
  
  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
    final firstController  = TextEditingController();
    final secondController = TextEditingController();
    final thirdController = TextEditingController();
    
 
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                style: const TextStyle(fontSize: 15),
                decoration: new InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 2, color: Colors.grey
                        )
                    ),
                  labelText: 'Nama Barang',
                ),
                controller: firstController,
                validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
              ),
            ),

            Container(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                maxLines: 5,
                style: const TextStyle(fontSize: 15),
                decoration: new InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 2, color: Colors.grey
                        )
                    ),
                  labelText: 'Deskripsi',
                ),
                controller: secondController,
                validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
              ),
            ),

            Container(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                style: const TextStyle(fontSize: 15),
                decoration: new InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 2, color: Colors.grey
                        )
                    ),
                  labelText: 'Harga',
                ),
                controller: thirdController,
                validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
              ),
            ),

            Container(
              padding: EdgeInsets.all(10),
              child: const Text('Pengiriman dalam kota saja'),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: const Text('Menerima retur'),
            ),

            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  onPressed: () {
                    List<String> formData = [];

                    String kirim1 = firstController.text;
                    String kirim2 = secondController.text;
                    String kirim3 = thirdController.text;

                    formData.add(kirim1);
                    formData.add(kirim2);
                    formData.add(kirim3);
                    // AlertDialog alert = AlertDialog(
                    //   title: Text("Coba get data"),
                    //   content: Text(kirim1+"-"+kirim2),
                    // );

                    // showDialog(
                    //   context: context,
                    //   builder: (BuildContext context){
                    //   return alert;
                    // });
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondPage(data: formData)),
                    );
                  },
                  child: const Text('PUBLIKASIKAN'),
                  
                  
                )
            ),
          ],
        ));
  }
}

