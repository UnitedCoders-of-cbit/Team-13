import 'package:flutter/material.dart';
import 'package:history/menu.dart';
import 'package:history/timeline.dart';

class Quiz5 extends StatefulWidget {
  const Quiz5({Key? key}) : super(key: key);

  @override
  State<Quiz5> createState() => _QuizState();
}

class _QuizState extends State<Quiz5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Quiz"),),
      body:  Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(15),
              color: Colors.white,
              width: 400,
              height: 100,
              child: Center(child: Text("when did life of earth evolved ?",style: TextStyle(fontSize:25 )),),
            ),
            SizedBox(height: 20,),
            Container(width: 250,height: 40,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.pressed))
                        return Colors.green; //<-- SEE HERE
                      return null; // Defer to the widget's default.
                    },
                  ),
                ),
                child: const Text(
                  '4 Billion years ago',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),SizedBox(height: 20,),
            Container(width: 250,height: 40,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.pressed))
                        return Colors.redAccent; //<-- SEE HERE
                      return null; // Defer to the widget's default.
                    },
                  ),
                ),
                child: const Text(
                  '8 Billion years ago',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),SizedBox(height: 20,),
            Container(width: 250,height:40,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.pressed))
                        return Colors.green; //<-- SEE HERE
                      return null; // Defer to the widget's default.
                    },
                  ),
                ),
                child: const Text(
                  '10 Billion years ago',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),SizedBox(height: 20,),
            Container(width: 250,height: 40,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.pressed))
                        return Colors.redAccent; //<-- SEE HERE
                      return null; // Defer to the widget's default.
                    },
                  ),
                ),
                child: const Text(
                  '1 Billion year ago',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),Spacer(),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Menu()));
            },
                child: Text("Back to menu"))
          ],
        ),
      ),
    );
  }
}
