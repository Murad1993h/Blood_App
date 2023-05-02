import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Exampol extends StatefulWidget {

  const Exampol({Key? key}) : super(key: key);

  @override
  State<Exampol> createState() => _MyFormState();
}

class _MyFormState extends State<Exampol> {

  bool checked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Form"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Fill all the fields',
            ),
            const SizedBox(height: 10,),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Name",
              ),
            ),
            const SizedBox(height: 10,),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Email",
              ),
            ),
            const SizedBox(height: 10,),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Phone",
              ),
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Checkbox(
                    value: checked,
                    onChanged: (changedValue){
                      setState(() {
                        checked = changedValue!;
                      });
                    }
                ),
                
              ],
            ),
            const SizedBox(height: 10,),
            ElevatedButton(onPressed: (){},
                child: const Text("Submit"))
          ],
        ),
      ),
    );
  }
}