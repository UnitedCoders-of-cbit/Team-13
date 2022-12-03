import 'package:flutter/material.dart';
import 'package:history/quiz4.dart';

class Quiz3 extends StatefulWidget {
  const Quiz3({Key? key}) : super(key: key);

  @override
  State<Quiz3> createState() => _QuizState();
}

class _QuizState extends State<Quiz3> {
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
              child: Center(child: Text("When did humans evolved?",style: TextStyle(fontSize:25 )),),
            ),
            SizedBox(height: 20,),
            Container(width: 220,height: 40,
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
                  '10 Million years',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),SizedBox(height: 20,),
            Container(width: 220,height: 40,
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
                  '16 Million years',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),SizedBox(height: 20,),
            Container(width: 220,height: 40,
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
                  '6 Million years',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),SizedBox(height: 20,),
            Container(width: 220,height: 40,
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
                  '8 Million years',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),Spacer(),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Quiz4()));
            },
                child: Text("Next Question"))
          ],
        ),
      ),
    );
  }
}
