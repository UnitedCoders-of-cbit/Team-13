import 'package:flutter/material.dart';
import 'package:history/quiz3.dart';

class Quiz2 extends StatefulWidget {
  const Quiz2({Key? key}) : super(key: key);

  @override
  State<Quiz2> createState() => _QuizState();
}

class _QuizState extends State<Quiz2> {
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
              child: Center(child: Text("Which of these is not a western-capitalist group at the  time of COLD WAR?",style: TextStyle(fontSize:25 )),),
            ),
            SizedBox(height: 20,),
            Container(width: 200,height: 40,
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
                  'South Africa',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),SizedBox(height: 20,),
            Container(width: 200,height: 40,
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
                  'Vietnam.',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),SizedBox(height: 20,),
            Container(width: 200,height: 40,
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
                  'Thailand',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),SizedBox(height: 20,),
            Container(width: 200,height: 40,
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
                  'South Korea',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),Spacer(),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Quiz3()));
            },
                child: Text("Next Question"))
          ],
        ),
      ),
    );
  }
}
