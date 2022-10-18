import 'package:flutter/material.dart';

class AdminProject extends StatefulWidget {
  const AdminProject({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<AdminProject> createState() => AdminProjectState();
}

class AdminProjectState extends State<AdminProject> {
  TextEditingController projectNameController = TextEditingController();
  TextEditingController projectDateController = TextEditingController();
  TextEditingController companyDetailsController = TextEditingController();
  TextEditingController websiteController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController assignUserController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Create Project',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
            Container(
              padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
              child: TextField(
                controller: projectNameController,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.shade300,
                    border: InputBorder.none,
                    labelText: 'Project Name',
                    labelStyle: const TextStyle(fontSize: 16)),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
              child: TextField(
                obscureText: true,
                controller: companyDetailsController,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.shade300,
                    border: InputBorder.none,
                    labelText: 'Project Date',
                    labelStyle: const TextStyle(fontSize: 16)),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
              child: TextField(
                obscureText: true,
                controller: projectDateController,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.shade300,
                    border: InputBorder.none,
                    labelText: 'Company Details (Name, Carch Phrase)',
                    labelStyle: const TextStyle(fontSize: 16)),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
              child: TextField(
                obscureText: true,
                controller: websiteController,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.shade300,
                    border: InputBorder.none,
                    labelText: 'Website',
                    labelStyle: const TextStyle(fontSize: 16)),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
              child: TextField(
                obscureText: true,
                controller: locationController,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.shade300,
                    border: InputBorder.none,
                    labelText: 'Location',
                    labelStyle: const TextStyle(fontSize: 16)),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
              child: TextField(
                obscureText: true,
                controller: assignUserController,
                decoration: InputDecoration(
                    suffixIcon: const Icon(
                      Icons.arrow_drop_down_sharp,
                      size: 40,
                    ),
                    filled: true,
                    fillColor: Colors.grey.shade300,
                    border: InputBorder.none,
                    labelText: 'Assigns user',
                    labelStyle: const TextStyle(fontSize: 16)),
              ),
            ),
            Container(
                height: 70,
                width: 120,
                padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                  ),
                  child: const Text('Sumbit',
                      style: TextStyle(color: Colors.white)),
                  onPressed: () {
                   
                  },
                )),
          ],
        )));
  }
}
