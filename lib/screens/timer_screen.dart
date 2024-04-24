

import 'package:flutter/material.dart';

class TimerScreen extends StatelessWidget {
  const TimerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('temporizador'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 200, height: 2000,
            child:  Stack(
              fit: StackFit.expand,
              children: [
                CircularProgressIndicator(
                  value: 10,
                  backgroundColor: Colors.amber,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
                ),
                Center(
                  child:  Text('contador',
                   style: const TextStyle(
                        fontSize: 48.0,
                        color: Colors.black,
                      ),
                  ),
                )
            ]),
            ),
             const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed:(){},
                  child: const Text('Pausar'),
                ),
                const SizedBox(width: 20.0),
                ElevatedButton(
                  onPressed: (){},
                  child: const Text('Reanudar'),
                ),
                const SizedBox(width: 20.0),
                ElevatedButton(
                  onPressed: (){},
                  child: const Text('Detener'),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}