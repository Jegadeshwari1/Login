import 'package:flutter/material.dart';
import 'package:screens/adminproject.dart';
import 'package:screens/adminuser.dart';

class Admin extends StatefulWidget {
  const Admin({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<Admin> createState() => AdminState();
}

class AdminState extends State<Admin> {
  String create = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
              Padding(
                  padding: const EdgeInsets.only(left: 70, right: 70),
                  child: RadioListTile(
                    title: Container(
                        height: 40,
                        padding: const EdgeInsets.all(10),
                        color: Colors.grey.shade300,
                        child: const Text(
                          "Create User",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        )),
                    value: "createuser",
                    groupValue: create,
                    onChanged: (value) {
                      setState(() {
                        create = value.toString();
                      });
                    },
                  )),
              Padding(
                  padding: const EdgeInsets.only(left: 70, right: 70),
                  child: RadioListTile(
                    title: Container(
                        height: 40,
                        padding: const EdgeInsets.all(10),
                        color: Colors.grey.shade300,
                        child: const Text("Create Project",
                            style: TextStyle(fontSize: 22))),
                    value: "createproject",
                    groupValue: create,
                    onChanged: (value) {
                      setState(() {
                        create = value.toString();
                      });
                    },
                  )),
              Container(
                  height: 40,
                  width: 250,
                  margin: const EdgeInsets.only(top: 20),
                  // padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                    ),
                    child: const Text('Sumbit',
                        style: TextStyle(color: Colors.white, fontSize: 20)),
                    onPressed: () {
                      if (create == 'createuser') {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                                const AdminUsers(title: 'Admin Create User')));
                      }
                      if (create == 'createproject') {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const AdminProject(
                                title: 'Admin Create Project')));
                      }
                    },
                  )),
            ])));
  }
}
