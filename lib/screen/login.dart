import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  //Login({Key? key, required this.username}) : super(key: key);

  TextEditingController username = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_back,
                      size: 32,
                    ),
                    padding: EdgeInsets.all(0.0),
                    alignment: Alignment.centerLeft,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "Sign In",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  TextField(
                    controller: username,
                    decoration: InputDecoration(
                      hintText: "UserName, Email or PhoneNumber",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "Forget username ?",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Sign In with Social",
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {},
                  child: CircleAvatar(
                    child: Image.network(
                        "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/Google_Plus_logo_%282015-2019%29.svg/2048px-Google_Plus_logo_%282015-2019%29.svg.png"),
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                InkWell(
                  onTap: () {},
                  child: CircleAvatar(
                    child: Image.network(
                        "https://www.pngrepo.com/png/81119/512/whatsapp.png"),
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                InkWell(
                  onTap: () {},
                  child: CircleAvatar(
                    child: Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUd0VF3dwwy_zJulL2WOBj62M0Hy8D3HR5CCwDmWi_Mh8HWobCoKZJ4mbYQIr1-GtvnFA&usqp=CAU",
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            InkWell(
              onTap: () {},
              child: Text(
                "Don't have any account ?",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            InkWell(
              onTap: () {},
              child: Text(
                "Create Account",
                style: TextStyle(color: Colors.blue),
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
