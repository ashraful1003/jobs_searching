import 'package:flutter/material.dart';
import 'package:november8/widgets/buttons.dart';

class Search extends StatefulWidget {
  Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 0.0),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.person),
                ),
              )
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              "Search Job",
              style: TextStyle(
                color: Colors.indigo[900],
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
            child: Column(
              children: [
                TextField(),
                SizedBox(
                  height: 10.0,
                ),
                TextField(),
                SizedBox(
                  height: 10.0,
                ),
                TextField(),
              ],
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
            child: Buttons(
              onTapp: () {},
              data: "Search",
              height: 50.0,
              color: Colors.indigo[900],
              size: 18,
              iconData: Icons.search,
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
            child: Buttons(
              onTapp: () {},
              height: 40.0,
              borderColor: Colors.indigo,
              iconData: Icons.shopping_bag,
              iconColor: Colors.deepOrange[900],
              textColor: Colors.grey,
              data: "View New Jobs",
              size: 18.0,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, "login");
        },
        backgroundColor: Colors.deepOrange[900],
        child: Icon(
          Icons.arrow_forward,
          color: Colors.white,
        ),
      ),
    );
  }
}
