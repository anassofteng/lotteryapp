import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(Mylottery());
}

class Mylottery extends StatefulWidget {
  const Mylottery({Key? key}) : super(key: key);

  @override
  State<Mylottery> createState() => _MylotteryState();
}

class _MylotteryState extends State<Mylottery> {
  Random random = Random();
  int x= 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(child: Scaffold(
        appBar: AppBar(
          title: Text('Lottery App'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Center(child: Text('lottery winning number is  5 ')),
            Text(x > 5 ? 'number is greater than 5':'$x'),
            Container(
              height: 250,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.amberAccent.withOpacity(.5),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: x==5?
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.done_all, color: Colors.green, size: 100,),
                    SizedBox(height: 10),
                    Text('Congratulations you won the lottery',textAlign: TextAlign.center,),
                  ],
                ):
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.error, color: Colors.red, size: 100,),
                    const SizedBox(height: 10),
                    Text('Better luck next time your number is $x \n try again',textAlign: TextAlign.center,),
                  ],
                ),
              )
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            print('tap');
            print(random.nextInt(10).toString());
            x=random.nextInt(6);
            print(x);
            setState(() {

            });
          },
          child: Icon(x>5? Icons.place:Icons.refresh),
        ),
      )),
    );
  }
}
