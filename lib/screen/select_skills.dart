import 'package:flutter/material.dart';
import 'package:november8/models/skill_model.dart';

class SelectSkills extends StatefulWidget {
  //const SelectSkills({Key? key}) : super(key: key);
  @override
  State<SelectSkills> createState() => _SelectSkillsState();
}

class _SelectSkillsState extends State<SelectSkills> {
  List<SkillModel> skills = [];

  _SelectSkillsState() {
    skills.add(SkillModel(title: "Accounting / Finance"));
    skills.add(SkillModel(title: "Media / Advertisement / Event Mgt."));
    skills.add(SkillModel(title: "Medical / Pharma"));
    skills.add(SkillModel(title: "NGO / Development"));
    skills.add(SkillModel(title: "Research / Consultancy"));
    skills.add(SkillModel(title: "Secretary / Receptionist"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.arrow_back,
              size: 32,
            ),
            Text("ProgressBar"),
            SizedBox(
              height: 15,
            ),
            Text(
              "Select Skills from the list",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: skills.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: ListTile(
                        onTap: () {},
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        title: Center(
                          child: Text(
                            "${skills[index].title}",
                            style: TextStyle(
                                color: Colors.blue[900], fontSize: 16),
                          ),
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.deepOrange[900],
        child: Icon(Icons.arrow_forward),
      ),
    );
  }
}
