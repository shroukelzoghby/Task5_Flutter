import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? grade ;
  bool cplusplus = false ;
  bool python = false ;
  bool Dart = false ;
  bool Java = false ;




  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Center(
          child: Text(
            'Task',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
        ),

      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Text(
              'What is your grade?',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20

              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Row(
                  children: [
                    Radio(
                        value: 'FirstYear', groupValue: grade, onChanged: (String? val){
                      setState(() {
                        grade = val;
                        var snackbar = SnackBar(content: Text("you choose $val"),
                        duration: Duration(seconds: 3),);
                        ScaffoldMessenger.of(context).showSnackBar(snackbar);
                      });
                    }),
                    Text('First Year'),
                  ],
                ),
                SizedBox(
                  width: 30,
                ),
                Row(
                  children: [
                    Radio(value: 'SecondYear', groupValue: grade, onChanged: (String? val){
                      setState(() {
                        grade = val;
                        var snackbar = SnackBar(content: Text("you choose $val"),
                          duration: Duration(seconds: 3),);
                        ScaffoldMessenger.of(context).showSnackBar(snackbar);
                      });
                    }),
                    Text('Second Year'),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Row(
                  children: [
                    Radio(value: 'Third Year', groupValue: grade, onChanged: (String? val){
                      setState(() {
                        grade = val;
                        var snackbar = SnackBar(content: Text("you choose $val"),
                          duration: Duration(seconds: 3),);
                        ScaffoldMessenger.of(context).showSnackBar(snackbar);
                      });
                    }),
                    Text('Third Year'),
                  ],
                ),
                SizedBox(
                  width: 30,
                ),
                Row(
                  children: [
                    Radio(value: 'Fourth Year', groupValue: grade, onChanged: (String? val){
                      setState(() {
                        grade = val;
                        var snackbar = SnackBar(content: Text("you choose $val"),
                          duration: Duration(seconds: 3),);
                        ScaffoldMessenger.of(context).showSnackBar(snackbar);
                      });
                    }),
                    Text('Fourth Year'),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.blue,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Which programming language do you use?',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20

              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Row(
                  children: [
                    Checkbox(value: cplusplus, onChanged: (bool?val){
                      setState(() {
                        cplusplus=val!;



                      });
                    }),
                    Text('C++'),
                  ],
                ),
                SizedBox(width: 30,),
                Row(
                  children: [
                    Checkbox(value: python, onChanged: (bool?val){
                      setState(() {
                        python=val!;
                      });
                    }),
                    Text('Python'),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Row(
                  children: [
                    Checkbox(value: Dart, onChanged: (bool?val){
                      setState(() {
                        Dart=val!;
                      });
                    }),
                    Text('Dart'),
                  ],
                ),
                SizedBox(width: 30,),
                Row(
                  children: [
                    Checkbox(value: Java, onChanged: (bool?val){
                      setState(() {
                        Java=val!;
                      });
                    }),
                    Text('Java'),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            

            width: 300,
            height: 150,
            color: Colors.blue,
            child: Column(
              children: [
                Padding(
                      padding: const EdgeInsets.only(top: 8,left: 8),
                      child: Text('This shows what you chose:',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                Text('c++ : $cplusplus'),
                Text('Python : $python'),
                Text('Dart : $Dart'),
                Text('Java : $Java'),
              ],
            ),





          )


        ],
      ),

    );
  }
}