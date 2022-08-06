import 'package:flutter/material.dart';
class Infosheet extends StatefulWidget {
  const Infosheet({Key? key}) : super(key: key);

  @override
  _InfosheetState createState() => _InfosheetState();
}

class _InfosheetState extends State<Infosheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: () {
                  Navigator.pop(context);

                }, icon: Icon(
                  Icons.clear,
                  color: Color.fromRGBO(59, 121, 55, 1),
                  size: 33,)),
                Text("للمساعدة",style: TextStyle(fontSize: 30,fontWeight:FontWeight.bold,color: Colors.black ))
              ],
            ),
            Text("هذا الابليكيشن لفعل الخير")
          ],
        ),
    );
  }
}
