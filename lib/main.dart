// remeber whole flutter works on widget
// we have row widget for allignmnet of horizontally
// we have collumn widget for allignment vertically

//  import material widget
import 'package:flutter/material.dart';

void main() {
  // run App rquires a class as an argument
  // widget is a class
  runApp(MaterialApp(
    home: Home(),

    debugShowCheckedModeBanner: false, // banner debug to remove
  ));
}

// creating a stateless widget
// statless widget is a widget which state does not change when displayin to the user
// short cut stless
// padding is also widget

class Home extends StatelessWidget {
  // This method is responsible for constructing and returning the widget's user interface based on the input parameters (also known as properties or arguments) passed to the widget. The build method is called automatically by the Flutter framework when the widget needs to be displayed or updated.
  Widget build(BuildContext context) {
    return Scaffold(
      //  creating container for whole body
      body: Container(
        // background setting in the area where you want to to put background
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("image/black.jpg"), fit: BoxFit.cover)),

        child: Padding(
          // here we have given the padding
          padding: const EdgeInsets.only(
              top: 100.0, left: 20), // .all give all side padding
          child: Column(children: <Widget>[
            Row(
              children: <Widget>[
                const CircleAvatar(
                  radius: 40,
                  // to add image first create a folder image in the project directory and then uncomment the assets path in pubspec.yaml
                  // save file then use below line to add image
                  backgroundImage: AssetImage("image/photo.jpg"),
                ),
                // size box  is an imaginary box here it is placed between the avatar and the name , designation column
                const SizedBox(
                  width: 50,
                ),
                Column(
                  // for any editing in the text respective you have to do it in style then textstyle section including size and font family too
                  // in column basically we have cross axis as x axis and y axis as main axis
                  // in row we have main axis as x axis and y axis as cross axis
                  // so here we want alignment such that all elemnts comes to the star of x axis hence we use crossAxisAlgnment
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    Text("Dhruv Sharma",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            // font change add ttf file in the folder then add the directory in the pubspec file and give font familt there and now use that font family anywhere
                            fontFamily: "Roboto Custom")),
                    Text(
                      "SD Engineer",
                      style: TextStyle(fontSize: 15, color: Colors.white,fontFamily: "Roboto Custom"),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Column(
                children: <Widget>[
                  Row(
                    // to add icon in the project Use Icon and Icon.name give
                    children: const [
                      Icon(
                        Icons.school,
                        size: 40,
                        color: Colors.white,
                        // commting changes for git hub
                      ),
                      SizedBox(width: 25),
                      Text(
                        "Vit Vellore ",
                        style: TextStyle(fontSize: 30, color: Colors.white,fontFamily: "Roboto Custom"),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.computer_rounded,
                        size: 40,
                        color: Colors.white,
                      ),
                      SizedBox(width: 25),
                      Text(
                        "Insatgram clone",
                        style: TextStyle(fontSize: 30, color: Colors.white,fontFamily: "Roboto Custom"),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.location_pin,
                        size: 40,
                        color: Colors.white,
                      ),
                      SizedBox(width: 25),
                      Text(
                        "udupi Karnataka",
                        style: TextStyle(fontSize: 30, color: Colors.white,fontFamily: "Roboto Custom"),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.email,
                        size: 40,
                        color: Colors.white,
                      ),
                      SizedBox(width: 25),
                      Text(
                        "dhruv@gmail.com",
                        style: TextStyle(fontSize: 30, color: Colors.white,fontFamily: "Roboto Custom"),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.phone,
                        size: 40,
                        color: Colors.white,
                      ),
                      SizedBox(width: 25),
                      Text(
                        "8707066110",
                        style: TextStyle(fontSize: 30, color: Colors.white,fontFamily: "Roboto Custom"),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                "I'm thrilled to announce the successful completion of my internship at Euphelty Private Limited as an App Developer! 📱✨ ",
                style: TextStyle(fontSize: 22, color: Colors.white,fontFamily: "Roboto Custom"),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              "Created By Dhruv Sharma",
              style: TextStyle(fontSize: 22, color: Colors.white,fontFamily: "Roboto Custom"),
            )
          ]),
        ),
      ), // <Widget> gives that childern will be of widget type
    );
  }
}


