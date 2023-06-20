import 'package:flutter/material.dart';
import 'package:sumapp/style.dart';
import 'package:sumapp/style.dart';
import 'package:sumapp/style.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {

 Map<String, double> formValue = {'num1':0,'num2':0,'num3':0};
 double total = 0;

  @override
  Widget build(BuildContext context) {

    MyinputOnChanged(storevar, inputValue){
      formValue.update(storevar, (value) => double.parse(inputValue));
    }

    AddAllNum(){
      ///Implement the method to get the output !!
      total = formValue['num1']!+formValue['num2']!+formValue['num3']!;
      print(total);
    }

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Sum App'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Text('Total : $total', style: resultTextStyle(),),
              const SizedBox(height: 40),

              TextField(
                  keyboardType: TextInputType.number,onChanged:(value){
                MyinputOnChanged('num1', value);
              },decoration: appInputDecoration("First Number")),
              const SizedBox(height: 20),

              TextField(
                keyboardType: TextInputType.number,
                  onChanged:(value){
                MyinputOnChanged('num2', value);
              },decoration: appInputDecoration("Second Number")),
              const SizedBox(height: 20),

              TextField(keyboardType: TextInputType.number,onChanged:(value){
                MyinputOnChanged('num3', value);
              },decoration: appInputDecoration("Third Number")),
              const SizedBox(height: 20),
              Container(
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){
                    setState(() {
                      AddAllNum();
                    });
                  },style: elevatedButtonStyle(),child: Text('Add',style: buttonTextStyle(),),))
            ],
          ),
        ),
      ),
    );
  }
}
