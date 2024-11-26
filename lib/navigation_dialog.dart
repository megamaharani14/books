import 'package:flutter/material.dart';

class NavigationDialogScreen extends StatefulWidget {
  const NavigationDialogScreen({super.key});

  @override
  State<NavigationDialogScreen> createState() => _NavigationDialogScreenState();
}

class _NavigationDialogScreenState extends State<NavigationDialogScreen> {
  Color color = Colors.blue.shade700;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        title: const Text('Navigation First Screen - Mega '),
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,

      ),
      body: Center(
        child: ElevatedButton(child: const Text('Change Color'), 
        onPressed: (){
          _showColorDialog(context);
        } 
        ),
      )
    );
  }
  _showColorDialog(BuildContext context) async {
    await showDialog(
      barrierDismissible: false, 
      context: context, 
      builder: (_) {
        return AlertDialog(
          title: const Text('Very important question'),
          content: const Text('Please choose a color'),
          actions: [
            TextButton(child: Text('pink'),
            onPressed: (){
              color = Colors.pinkAccent.shade700;
              Navigator.pop(context, color);
            }),
            TextButton(child: Text('purple'),
            onPressed: (){
              color = Colors.purple.shade700;
              Navigator.pop(context, color);
            }),
            TextButton(child: Text('brown'),
            onPressed: (){
              color = Colors.brown.shade700;
              Navigator.pop(context, color);
            }),
          ],
        );
      },
    );
    setState(() {});
  }
}