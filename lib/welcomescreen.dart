import 'package:flutter/material.dart';

class Welcomescreen extends StatelessWidget {
  const Welcomescreen ({super.key, required this.title});
  final String title;


  @override
  Widget build (BuildContext context) {
    return Container(
      child: SafeArea(
        child: Column(
          children: [
            ClipOval(
              child: Container(
                padding: const EdgeInsets.all(16),
                color: Colors.green.withAlpha(100),
                child:const Icon(
                 Icons.language_outlined,
                 size:24,
                ),
              ),
            ),
            Expanded(
              child: Container(
                width:MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.green.withAlpha(100),
                  borderRadius:BorderRadius.only(
                    bottomLeft: Radius.circular(
                      MediaQuery.of(context).size.width /2
                    ),
                    bottomRight: Radius.circular(
                      MediaQuery.of(context).size.width /2
                    )
                  )

                ),
                child: Image.asset("images/meditate.png"),
              )
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Help the Environment",
                style: TextStyle(
                   decoration: TextDecoration.none, 
                   color: Colors.white, 
                   fontSize:20
                )
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Incentivize your friends and family to do their part",
                style: TextStyle(
                   decoration: TextDecoration.none, 
                   color: Colors.grey, 
                   fontSize:14
                )
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green.withAlpha(80),
                      elevation: 0),
                  onPressed: () {
                    Navigator.of(context).pushNamed("/login");
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Icon(
                      Icons.arrow_forward,
                      color: Colors.green,
                    ),
                  )
              )
            ),
          ],
        ),
      )

    );
  }
}