import 'dart:async';
import 'package:flutter/material.dart';
import 'main.dart';
class HomePage extends StatefulWidget {
  @override
  HomePageState createState()=>HomePageState();
}

class HomePageState extends State<HomePage> {
  bool isCross=true;
  String message="";
  int crosscount=0;
  int circlecount=0;
  List<String> gameState;
  String crossscore="";
  String circlescore="";
  bool isOn;
  Timer _timer;
  
  //linking the imgs
  AssetImage cross=AssetImage("imgassets/cross.png");
  AssetImage circle=AssetImage("imgassets/circle.png");
  AssetImage edit=AssetImage("imgassets/pen.png");

  //initialize states of all 9 boxes
  @override
  void initState()
  {
    super.initState();
    setState(() {
     this.gameState=[
       "empty",
       "empty",
       "empty",
       "empty",
       "empty",
       "empty",
       "empty",
       "empty",
       "empty"
     ];
     this.message=""; 
     this.crossscore="Cross=${crosscount}";
     this.circlescore="Circle=${circlecount}";
      this.isOn=false;
    });
  }

  //reset game
  void resetgame()
  {
    setState(() {
     this.gameState=[
       "empty",
       "empty",
       "empty",
       "empty",
       "empty",
       "empty",
       "empty",
       "empty",
       "empty"
     ];
     
      _timer = new Timer(const Duration(milliseconds: 1000), () {
      setState(() {
        this.message="";
      });
    });
    });
  }

    //getImage
    AssetImage getImage(String value)
    {
      switch(value)
      {
        case('empty'):
        return edit;
        break;

        case('cross'):
        return cross;
        break;

        case('circle'):
        return circle;
         break;
      }
    }

    //playgame
    void playGame(int index)
    {
      if(this.gameState[index]=='empty')
      {
        setState(() {
         if(this.isCross)
         {
           this.gameState[index]="cross";
           this.isCross=false;
         } 
         else{
           this.gameState[index]="circle";
           this.isCross=true;
         }
         this.checkWin();
        });
      }
    }
    
  
    //win logic
    void checkWin()
    {
      //horizontal
      if((gameState[0]!='empty') && (gameState[0]==gameState[1]) && (gameState[1]==gameState[2]))
      {
        setState(() {
         this.message="${this.gameState[0]} win the game"; 
         if(this.gameState[0]=="cross")
         {
           crosscount+=1;
           this.crossscore="Cross=${crosscount}";
         }
         else
         {
           circlecount+=1;
           this.circlescore="Circle=${circlecount}";
         }

        });
         _timer = new Timer(const Duration(milliseconds: 50), () {
      setState(() {
        resetgame();
      });
    });
      }
      else if((gameState[3]!='empty') && (gameState[3]==gameState[4]) && (gameState[4]==gameState[5]))
      {
        setState(() {
         this.message="${this.gameState[3]} win the game"; 
         if(this.gameState[3]=="cross")
         {
           crosscount+=1;
           this.crossscore="Cross=${crosscount}";
         }
         else
         {
           circlecount+=1;
           this.circlescore="Circle=${circlecount}";
         }
        });
         _timer = new Timer(const Duration(milliseconds: 50), () {
      setState(() {
        resetgame();
      });
    });
      }
      else if((gameState[6]!='empty') && (gameState[6]==gameState[7]) && (gameState[7]==gameState[8]))
      {
        setState(() {
         this.message="${this.gameState[6]} win the game"; 
         if(this.gameState[6]=="cross")
         {
           crosscount+=1;
           this.crossscore="Cross=${crosscount}";
         }
         else
         {
           circlecount+=1;
           this.circlescore="Circle=${circlecount}";
         }
        });
         _timer = new Timer(const Duration(milliseconds: 50), () {
      setState(() {
        resetgame();
      });
    });
      }
      //diagonal
      else if((gameState[0]!='empty') && (gameState[0]==gameState[4]) && (gameState[4]==gameState[8]))
      {
        setState(() {
         this.message="${this.gameState[0]} win the game"; 
         if(this.gameState[0]=="cross")
         {
           crosscount+=1;
           this.crossscore="Cross=${crosscount}";
         }
         else
         {
           circlecount+=1;
           this.circlescore="Circle=${circlecount}";
         }
        });
         _timer = new Timer(const Duration(milliseconds: 50), () {
      setState(() {
        resetgame();
      });
    });
      }
      else if((gameState[2]!='empty') && (gameState[2]==gameState[4]) && (gameState[4]==gameState[6]))
      {
        setState(() {
         this.message="${this.gameState[2]} win the game"; 
         if(this.gameState[2]=="cross")
         {
           crosscount+=1;
           this.crossscore="Cross=${crosscount}";
         }
         else
         {
           circlecount+=1;
           this.circlescore="Circle=${circlecount}";
         }
        });
         _timer = new Timer(const Duration(milliseconds:50), () {
      setState(() {
        resetgame();
      });
    });
      } 
      //vertical
      else if((gameState[0]!='empty') && (gameState[0]==gameState[3]) && (gameState[3]==gameState[6]))
      {
        setState(() {
         this.message="${this.gameState[0]} win the game"; 
         if(this.gameState[0]=="cross")
         {
           crosscount+=1;
           this.crossscore="Cross=${crosscount}";
         }
         else
         {
           circlecount+=1;
           this.circlescore="Circle=${circlecount}";
         }
        });
         _timer = new Timer(const Duration(milliseconds: 50), () {
      setState(() {
        resetgame();
      });
    });
      }
      else if((gameState[2]!='empty') && (gameState[2]==gameState[5]) && (gameState[5]==gameState[8]))
      {
        setState(() {
         this.message="${this.gameState[2]} win the game"; 
         if(this.gameState[2]=="cross")
         {
           crosscount+=1;
           this.crossscore="Cross=${crosscount}";
         }
         else
         {
           circlecount+=1;
           this.circlescore="Circle=${circlecount}";
         }
        });
         _timer = new Timer(const Duration(milliseconds:50), () {
      setState(() {
        resetgame();
      });
    });
      }
      else if((gameState[1]!='empty') && (gameState[1]==gameState[4]) && (gameState[4]==gameState[7]))
      {
        setState(() {
         this.message="${this.gameState[1]} win the game"; 
         if(this.gameState[1]=="cross")
         {
           crosscount+=1;
           this.crossscore="Cross=${crosscount}";
         }
         else
         {
           circlecount+=1;
           this.circlescore="Circle=${circlecount}";
         }
        });
         _timer = new Timer(const Duration(milliseconds: 50), () {
      setState(() {
        resetgame();
      });
    });
      }
      else if(!gameState.contains('empty'))
      {
        setState(() {
         this.message="Game Draw";
        });
       _timer = new Timer(const Duration(milliseconds: 50), () {
      setState(() {
        resetgame();
      });
    });
  }
    }




  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:isOn?ThemeData.dark():ThemeData.light(),
      home:Scaffold(
      drawer: Drawer(
        child:Container(
          margin: EdgeInsets.fromLTRB(50.0, 50.0, 0.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
            Text("Dark Mode",style: TextStyle(fontStyle: FontStyle.normal,fontSize: 15.0,fontWeight: FontWeight.bold)),
            Switch(
          value: isOn,
          onChanged:(value)
          {
            setState(() {
             isOn=value; 
             print("Value of On:${isOn}");
            });
          },
        ),
            ],)
            
          ],
        ),
        )
      ),
      appBar: AppBar(title: Text("TicTacToe By Kaival"),centerTitle: true,),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.all(20.0),
              gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1.0,
                  crossAxisSpacing: 5.0,
                  mainAxisSpacing: 5.0
              ),
              itemCount: 9,
              itemBuilder: (context,i)=>
              SizedBox(
               height: 90.0,width: 90.0,
              child:OutlineButton(
                borderSide: BorderSide(color: isOn?Colors.white:Colors.black),
                splashColor: isOn?Colors.black:Colors.white,
                onPressed: (){
                  this.playGame(i);
                  },
                child: Image
                (
                  image: this.getImage(this.gameState[i].toString()),
                )
              ) ,
              ),
            ),
          ),
          Padding(padding:EdgeInsets.only(bottom: 10.0)),
          Text(crossscore,style: TextStyle(color:isOn?Color(0xFF95E0E8):Colors.blue,fontSize: 20.0,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.normal,),),
          Text(circlescore,style: TextStyle(color:isOn?Color(0xFFFF6EFF):Colors.red,fontSize: 20.0,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.normal,)),
          Text(message,style: TextStyle(
            color:Colors.deepOrangeAccent,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.normal,
          ),),
          Padding(padding:EdgeInsets.all(10.0)),
          RaisedButton(
            onPressed: resetgame,
            child:Text("Reset Game!"),
           color:isOn?Colors.greenAccent:Colors.indigo[900],
            textColor: isOn?Colors.black:Colors.white,
            splashColor:isOn?Colors.indigo[400]:Colors.greenAccent,
            padding: EdgeInsets.fromLTRB(70.0, 5.0, 70.0, 5.0),
            shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          ),
          RaisedButton(
            onPressed: (){
              setState(() {
               crosscount=0;
               circlecount=0; 
               this.circlescore="Circle=${circlecount}";
              this.crossscore="Cross=${crosscount}";

              });
            },
            child:Text("Reset Score!"),
            color:isOn?Colors.greenAccent:Colors.indigo[900],
            textColor: isOn?Colors.black:Colors.white,
            splashColor:isOn?Colors.indigo[400]:Colors.greenAccent,
            padding: EdgeInsets.fromLTRB(70.0, 5.0, 70.0, 5.0),
            shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          ),
      
       

          
        ],
        ),
    ),
    );
  }
}