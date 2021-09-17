import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text('Tic Tac Toe'),
            backgroundColor: Colors.teal,
          ),
          body: MyApp(),
        ),
      ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var state = [
    [0, 0, 0],
    [0, 0, 0],
    [0, 0, 0]
  ];
  bool cnt = false;
  var winner = '';
  void changeState(int i , j){
    if (state[i][j]==0 && winner == ''){
      setState(() {
        cnt = !cnt;
        cnt?state[i][j]=1:state[i][j]=2;
        if (checkWin()==1){
          winner = 'X Wins!';
        }
        else if(checkWin()==2)  {
          winner = 'O Wins!';
        }
      });
    }
  }
  int checkWin(){
    int winner = 0;
    for(int i=0 ; i<3 ; i++){
      if (state[i][0]!=0 && state[i][0] == state[i][1] && state[i][0] == state[i][2]){
        winner = state[i][0];
      }
    }
    for(int i=0 ; i<3 ; i++){
      if (state[0][i]!=0 && state[0][i] == state[1][i] && state[0][i] == state[2][i]){
        winner = state[0][i];
      }
    }
    if (state[0][0] != 0 && state[0][0] == state[1][1] && state[0][0] == state[2][2]){
      winner = state[0][0];
    }
    if (state[0][2] != 0 && state[0][2] == state[1][1] && state[0][2] == state[2][0]){
      winner = state[0][2];
    }
    return winner;
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            winner,
            style: TextStyle(
                fontSize: 40.0
            ),
          ),
          Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IntrinsicHeight(
                    child: Row(
                      children: [
                        Expanded(
                          child: TextButton(
                            onPressed: (){
                              changeState(0, 0);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset('images/${state[0][0]}.png'),
                            ),
                            style: ButtonStyle(splashFactory: NoSplash.splashFactory,),
                          ),
                        ),
                        VerticalDivider(color: Colors.black45,
                          thickness: 5.0,
                        ),
                        Expanded(
                          child: TextButton(
                            onPressed: (){
                              changeState(0, 1);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset('images/${state[0][1]}.png'),
                            ),
                            style: ButtonStyle(splashFactory: NoSplash.splashFactory,),
                          ),
                        ),
                        VerticalDivider(color: Colors.black45,
                          thickness: 5.0,
                        ),
                        Expanded(
                          child: TextButton(
                            onPressed: (){
                              changeState(0, 2);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset('images/${state[0][2]}.png'),
                            ),
                            style: ButtonStyle(splashFactory: NoSplash.splashFactory,),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.black45,
                    thickness: 5.0,
                    height: 5,
                  ),
                  IntrinsicHeight(
                    child: Row(
                      children: [
                        Expanded(
                          child: TextButton(
                            onPressed: (){
                              changeState(1, 0);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset('images/${state[1][0]}.png'),
                            ),
                            style: ButtonStyle(splashFactory: NoSplash.splashFactory,),
                          ),
                        ),
                        VerticalDivider(color: Colors.black45,
                          thickness: 5.0,
                        ),
                        Expanded(
                          child: TextButton(
                            onPressed: (){
                              changeState(1, 1);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset('images/${state[1][1]}.png'),
                            ),
                            style: ButtonStyle(splashFactory: NoSplash.splashFactory,),
                          ),
                        ),
                        VerticalDivider(color: Colors.black45,
                          thickness: 5.0,
                        ),
                        Expanded(
                          child: TextButton(
                            onPressed: (){
                              changeState(1, 2);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset('images/${state[1][2]}.png'),
                            ),
                            style: ButtonStyle(splashFactory: NoSplash.splashFactory,),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.black45,
                    thickness: 5.0,
                    height: 5.0,
                  ),
                  IntrinsicHeight(
                    child: Row(
                      children: [
                        Expanded(
                          child: TextButton(
                            onPressed: (){
                              changeState(2, 0);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset('images/${state[2][0]}.png'),
                            ),
                            style: ButtonStyle(splashFactory: NoSplash.splashFactory,),
                          ),
                        ),
                        VerticalDivider(color: Colors.black45,
                          thickness: 5.0,
                        ),
                        Expanded(
                          child: TextButton(
                            onPressed: (){
                              changeState(2, 1);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset('images/${state[2][1]}.png'),
                            ),
                            style: ButtonStyle(splashFactory: NoSplash.splashFactory,),
                          ),
                        ),
                        VerticalDivider(color: Colors.black45,
                          thickness: 5.0,
                        ),
                        Expanded(
                          child: TextButton(
                            onPressed: (){
                              changeState(2, 2);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset('images/${state[2][2]}.png'),
                            ),
                            style: ButtonStyle(splashFactory: NoSplash.splashFactory,),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

          TextButton(
            style: TextButton.styleFrom(
              primary: Colors.white,
              backgroundColor: Colors.teal,
              textStyle: TextStyle(
                fontSize: 30.0,

              ),

            ),
            onPressed: (){
              setState(() {
                cnt = false;
                state = [
                  [0, 0, 0],
                  [0, 0, 0],
                  [0, 0, 0]
                ];
                winner = '';
              });
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Restart Game'),
            ),

          ),
        ],
      ),
    );
  }
}