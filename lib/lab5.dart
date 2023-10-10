import 'package:flutter/material.dart';
import 'colore.dart';
import 'main.dart';

class lab5 extends StatelessWidget {
  const lab5({super.key});
  bool chek(String s) {
    if (s.isEmpty)
      return true;
    else
      return false;
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController n = TextEditingController();
    TextEditingController n2 = TextEditingController();
    TextEditingController r = TextEditingController();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        drawer: Drawer(
          child: ListView(),
        ),
        body: ListView(
          children: [
            cal(false, "Name", "Enter Your Name", Icon(Icons.visibility), d, n),
            cal(false, "Name2", "Enter Your Name", Icon(Icons.visibility), b,
                n2),
            cal(true, "Result", "Result", Icon(Icons.calculate_outlined), a, r),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                op(() {
                  if (chek(n.text)) ;
                  r.text = (int.parse(n.text) + int.parse(n2.text)).toString();
                }, r, n, n2, "Sum"),
                op(() {
                  r.text = (int.parse(n.text) - int.parse(n2.text)).toString();
                }, r, n, n2, "Sub"),
                op(() {
                  r.text = (int.parse(n.text) * int.parse(n2.text)).toString();
                }, r, n, n2, "mul"),
                op(() {
                  r.text = (int.parse(n.text) / int.parse(n2.text)).toString();
                }, r, n, n2, "div"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Padding op(fun, TextEditingController r, TextEditingController n,
      TextEditingController n2, String txt) {
    return Padding(
      padding: const EdgeInsets.all(3),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: c),
          onPressed: fun,
          child: Text(txt)),
    );
  }

  Padding cal(bool bb, String n, String hint, Icon ic, Color co,
      TextEditingController tc) {
    return Padding(
      padding: EdgeInsets.all(4),
      child: TextField(
        readOnly: bb,
        controller: tc,
        // maxLines: 2,
        // maxLength: 10,
        decoration: InputDecoration(
            label: Text(n),
            hintText: hint,
            prefixIcon: ic,
            suffixIcon: Icon(Icons.near_me),
            // enabled: false,
            hoverColor: e,
            labelStyle: TextStyle(fontWeight: FontWeight.bold),
            fillColor: co,
            filled: true,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
      ),
    );
  }
}
