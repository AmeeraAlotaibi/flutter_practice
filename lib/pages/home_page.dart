import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var userInput = TextEditingController();
    return Scaffold(
      // app bar 
      appBar: AppBar(
              title: Center(
                child: Text("User Info", 
                       style: TextStyle(
                         fontSize: 24, 
                         fontWeight: FontWeight.bold),)
                ),
                backgroundColor: Colors.orange,
            ), 
     
     // rest of the page
      body: SafeArea(
        child: Container(
          width: 400,
          height: 450,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // user icon
                  Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/images/loki.jpg")
                      )
                    ),
                    ),
                    
                    // Sign in info
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center, 
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Text above the text field
                        Container(
                          margin: EdgeInsets.only(top: 35),
                          child: Text("Enter your full name", style: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            
                            ),
                            )
                          ),
                        
                        // text field
                        Center(
                          child: Container(
                            margin: EdgeInsets.only(top: 15),
                            width: 300,
                            child: TextField(
                              controller: userInput,
                              decoration: InputDecoration(
                                hintText: "e.g. Ellie Miller",
                                border: new OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Colors.red,
                                  ) ,
                                ),
                                focusedBorder: new OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.green,
                                    width: 2,
                                    ),
                                )
                              ),
                            ),
                          ),
                        ),
                      
                      // button
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        child: ElevatedButton(
                          onPressed: (){
                            ScaffoldMessenger.of(context)
                            .showSnackBar(SnackBar(content: Text("Hello ${userInput.text}!")));;
                            },
                          child: Text("Submit", 
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orange,
                            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10
                          ),
                        ),
                      )
                      ),
                      ],
                    )
                ],
              ),
            ]
            ),
        ),
        ),
    );
  }
}