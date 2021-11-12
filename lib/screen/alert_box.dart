import 'package:flutter/material.dart';

class AlertBox extends StatelessWidget {
  const AlertBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {
            showAlertDialog(context);
          },
          child: Container(
            width: 100,
            height: 45,
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Center(
              child: Text("Tab"),
            ),
          ),
        ),
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  Widget okButton = TextButton(
    onPressed: () {
      Navigator.of(context).pop();
    },
    child: Center(
      child: Container(
        width: 200,
        height: 45,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(
          "Next",
          style: TextStyle(color: Colors.white),
        ),
      ),
    ),
  );
  // Widget cancelButton = TextButton(onPressed: () {}, child: Text("Cancel"));
  // Widget dismissButton = TextButton(onPressed: () {}, child: Text("Dismiss"));

  AlertDialog alert = AlertDialog(
    backgroundColor: Colors.black,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
    title: Column(
      children: [
        CircleAvatar(
          radius: 28,
          backgroundImage: NetworkImage(
              "https://image.freepik.com/free-vector/person-avatar-design_24877-38137.jpg"),
        ),
        Text(
          "Congratulations!",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ],
    ),
    content: Text(
      "Parto team was created successfully, create your latest project so you can work with your team.",
      style: TextStyle(color: Colors.white),
    ),
    actions: [
      okButton,
    ],
  );

  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      });
}
