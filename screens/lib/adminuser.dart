import 'package:flutter/material.dart';

class AdminUsers extends StatefulWidget {
  const AdminUsers({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<AdminUsers> createState() => AdminUsersState();
}

class AdminUsersState extends State<AdminUsers> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController dateController = TextEditingController();


  

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
                  'Create User',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: userNameController,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.shade300,
                    border: InputBorder.none,
                    labelText: 'User Name',
                    labelStyle: const TextStyle(fontSize: 16)),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.shade300,
                    border: InputBorder.none,
                    labelText: 'Password',
                    labelStyle: const TextStyle(fontSize: 16)),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: InputDecoration(
                    suffixIcon: const Icon(Icons.arrow_drop_down_sharp,size: 40,),
                    filled: true,
                    fillColor: Colors.grey.shade300,
                    border: InputBorder.none,
                    labelText: 'Date of Birth: dd/mm/yyyy',
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
