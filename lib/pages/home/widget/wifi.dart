import 'package:flutter/material.dart';

class Wifi extends StatelessWidget {
  //const Wifi({super.key});
  final bool isConnected;
  final VoidCallback onTap;

  Wifi({required this.isConnected, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 30,
          ),
          child: Row(
            children: [
              Text(
                "WIFI",
                style: Theme.of(context).textTheme.displayLarge,
              ),
              IconButton(
                  onPressed: () {
                    showAlertDialog(context);
                  },
                  //onPressed: isConnected ? null : onTap,
                  icon: const Icon(
                    Icons.wifi,
                    size: 35,
                    color: Colors.blue,
                  ))
            ],
          ),
        ),
      ],
    );
  }

  void showAlertDialog(BuildContext context) {
    AlertDialog alert = AlertDialog(
      title: const Text("AtlantisUgarSoft"),
      content: const Text("Device not available"),
      actions: [
        TextButton(
          child: const Text("OK"),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}


 // @override
 // Widget build(BuildContext context) {
   // return ElevatedButton(
      //child: Text('Wifi'),
      //onPressed: isConnected ? onTap : null,
    //);
  
