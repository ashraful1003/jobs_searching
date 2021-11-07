import 'package:flutter/material.dart';

class BdJobs extends StatelessWidget {
  const BdJobs({Key? key}) : super(key: key);

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
              "Create your Free BDJobs Account",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            )),
            SizedBox(
              height: 25,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.grey),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      child: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUd0VF3dwwy_zJulL2WOBj62M0Hy8D3HR5CCwDmWi_Mh8HWobCoKZJ4mbYQIr1-GtvnFA&usqp=CAU"),
                      radius: 15,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Import From Instagram",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.grey),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      child: Icon(
                        Icons.phone,
                        color: Colors.white,
                        size: 20,
                      ),
                      backgroundColor: Colors.green,
                      radius: 15,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Import From WhatsApp",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Divider(
              endIndent: 50,
              indent: 50,
              color: Colors.black,
            ),
            Center(child: Text("OR")),
            Divider(
              endIndent: 100,
              indent: 100,
              color: Colors.black,
            ),
            SizedBox(
              height: 35,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: 50,
                padding: EdgeInsets.only(left: 20.0),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Icon(
                        Icons.person_sharp,
                        color: Colors.white,
                      ),
                    ),
                    Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Enter your Information",
                          style: TextStyle(color: Colors.white),
                        )),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
