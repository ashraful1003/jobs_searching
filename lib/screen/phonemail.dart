import 'package:flutter/material.dart';

class PhonEmail extends StatelessWidget {
  //const PhonEmail({Key? key}) : super(key: key);
  TextEditingController country = TextEditingController();
  TextEditingController mobile = TextEditingController();
  TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
                onPressed: () {},
                padding: EdgeInsets.zero,
                alignment: Alignment.centerLeft,
                icon: Icon(
                  Icons.arrow_back,
                  size: 32,
                )),
            SizedBox(
              height: 25,
            ),
            Text("ProgressBar"),
            SizedBox(
              height: 25,
            ),
            Center(
                child: Text(
              "Please Provie your Mobile No and Email Address (atleast one)",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            )),
            SizedBox(
              height: 25,
            ),
            TextField(
              controller: country,
              decoration: InputDecoration(
                hintText: "Country Code",
                hintStyle: TextStyle(color: Colors.black),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            TextField(
              controller: mobile,
              decoration: InputDecoration(
                hintText: "Mobile Number",
                hintStyle: TextStyle(color: Colors.black),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Divider(
              endIndent: 50,
              indent: 50,
              color: Colors.grey[900],
            ),
            Center(child: Text("OR")),
            Divider(
              endIndent: 100,
              indent: 100,
              color: Colors.grey[900],
            ),
            SizedBox(
              height: 35,
            ),
            TextField(
              controller: email,
              decoration: InputDecoration(
                hintText: "Email",
                hintStyle: TextStyle(color: Colors.black),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.deepOrange[900],
        child: Icon(
          Icons.arrow_forward,
          color: Colors.white,
        ),
      ),
    );
  }
}
