import 'package:books/geolocation.dart';
import 'package:books/navigation_dialog.dart';
import 'package:books/navigation_first.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'dart:async';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
// import 'package:async/async.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mega',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const NavigationDialogScreen(),
    );
  }
}

class FuturePage extends StatefulWidget {
  const FuturePage({super.key});

  @override
  State<FuturePage> createState() => _FuturePageState();
}

class _FuturePageState extends State<FuturePage> {
  String result = '';

  

  void returnFG(){
   final futures = Future.wait<int>([
    returnOneAsync(),
    returnTwoAsync(),
    returnThreeAsync(),
    ]).then((List<int> value) {
      int total = 0;
      for (var element in value){
        total += element;
      }
      setState(() {
        result = total.toString();
      });
     }).catchError((e) {
      setState(() {
        result = 'An error occurred';
      });
    });
  }
  
  Future returnError() async{
    await Future.delayed(const Duration(seconds: 2));
    throw ('Something terrible happened!');
  }

  Future handleError() async{
    try{
      await returnError();
    }
    catch (error){
      setState(() {
        result = error.toString();
      });
    }
    finally {
      print('Complete');
    }
  }

late Completer completer;

Future getNumber() {
  completer = Completer<int>();
  calculate();
  return completer.future;
}

calculate() async{
  try {
    await new Future.delayed(const Duration(seconds: 5));
    completer.complete(42);
  }
  catch(_) {
    completer.completeError({});
  }
}

  Future<int> returnOneAsync() async {
  await Future.delayed(const Duration(seconds: 3));
  return 1;
}

Future<int> returnTwoAsync() async {
  await Future.delayed(const Duration(seconds: 3));
  return 2;
}

Future<int> returnThreeAsync() async {
  await Future.delayed(const Duration(seconds: 3));
  return 3;
}

Future count() async{
  int total = 0;
  total = await returnOneAsync();
  total += await returnTwoAsync();
  total += await returnThreeAsync();
  setState(() {
    result = total.toString();  
  });
}

  Future<Response> getData() async {
    const authority = 'www.googleapis.com';
    const path = '/books/v1/volumes/junbDwAAQBAJ';
    Uri url = Uri.https(authority, path);
    return http.get(url);
  }
  
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text('Back from the Future'),
      backgroundColor: Colors.blue,
      foregroundColor: Colors.white,
    ),
    body: Center(
      child: Column(
        children: [
          const Spacer(),
          ElevatedButton(
            child: const Text('GO!'),
            onPressed: () {
              handleError();
              // returnError()
              // .then((value){
              //   setState(() {
              //     result = 'Success';
              //   });
              // }).catchError((onError){
              //   setState(() {
              //     result = onError.toString();
              //   });
              // }).whenComplete(() => print('Complete'));
            
              // returnFG();
              // getNumber().then((value) {
              //   setState(() {
              //     result = value.toString();
              //   });
              // }).catchError((_) {
              //   setState(() {
              //     result = 'An error occurred';
              //   });
              // });
              // count();
            },
            // onPressed: () {
            //   setState(() {
            //     getData()
            //     .then((value){
            //       result = value.body.toString().substring(0, 450);
            //       setState(() {
                    
            //       });
            //     }).catchError((_){
            //       result = 'An error occured';
            //     });
            //   });
            // },

          ),
          const Spacer(),
          Text(result),
          const Spacer(),
          const CircularProgressIndicator(),
          const Spacer(),
        ],
       ),
     ),
    );
  }
}