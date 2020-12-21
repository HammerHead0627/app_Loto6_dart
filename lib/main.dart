import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'ロト６'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  /*int _counter = 0;*/
  var rondom = new Random(); //乱数を生成
  List<int> lotNumber = [1,2,3,4,5,6]; //抽選結果
  List<int> savedLotNumber = []; //保存された抽選結果
  void _rondom() {
    setState(() {
      lotNumber = []; //抽選番号初期化
      for(var i = 0 ; i<6 ; i++) { //6回繰り返す
        lotNumber.add(rondom.nextInt(43)); //0-42の乱数を生成して配列に格納
      }
      /*savedLotNumber.add(lotNumber); //抽選結果を保存*/
      print(lotNumber[0]);
      print(lotNumber[1]);
      print(lotNumber[2]);
      print(lotNumber[3]);
      print(lotNumber[4]);
      print(lotNumber[5]);
      print(savedLotNumber);
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '抽選結果は・・・',
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Text(
                    lotNumber[0].toString(),
                    style: Theme.of(context).textTheme.headline4,
                  ),Text(
                    lotNumber[1].toString(),
                    style: Theme.of(context).textTheme.headline4,
                  ),Text(
                    lotNumber[2].toString(),
                    style: Theme.of(context).textTheme.headline4,
                  ),Text(
                    lotNumber[3].toString(),
                    style: Theme.of(context).textTheme.headline4,
                  ),Text(
                    lotNumber[4].toString(),
                    style: Theme.of(context).textTheme.headline4,
                  ),Text(
                    lotNumber[5].toString(),
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _rondom,
        child: Text('抽選')
        /*child: Icon(Icons.add),*/
      ),
    );
  }
}
