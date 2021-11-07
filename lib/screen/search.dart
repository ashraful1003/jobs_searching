import 'package:flutter/material.dart';

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
            child: InkWell(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.fromLTRB(20.0, 0, 0, 0),
                height: 50.0,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.indigo[900],
                    borderRadius: BorderRadius.circular(10.0)),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Search",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
            child: InkWell(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.fromLTRB(20.0, 0, 0, 0),
                height: 40.0,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.indigo, width: 2.0),
                    borderRadius: BorderRadius.circular(10.0)),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Icon(
                        Icons.shopping_bag,
                        color: Colors.deepOrange[900],
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "View New Jobs",
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      ),
                    )
                  ],
                ),
              ),
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
