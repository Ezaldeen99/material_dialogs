import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_dialogs/material_dialogs.dart';
import 'package:material_dialogs/widgets/buttons/icon_button.dart';
import 'package:material_dialogs/widgets/buttons/icon_outline_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material design Dialogs',
        theme: ThemeData(
          textTheme: GoogleFonts.montserratTextTheme(
            Theme.of(context).textTheme,
          ),
          primarySwatch: Colors.blue,
        ),
        home: SafeArea(
          child: Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(
                title: Text("Material design Dialogs"),
              ),
              body: TestPage()),
        ));
  }
}

class TestPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TestState();
  }
}

class TestState extends State<TestPage> {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          btn1(context),
          btn2(context),
          btn3(context),
          btn4(context),
        ],
      ),
    );
  }

  Widget btn1(BuildContext context) {
    return MaterialButton(
      color: Colors.grey[300],
      minWidth: 300,
      onPressed: () => Dialogs.materialDialog(
          msg: 'Are you sure ? you can\'t undo this',
          title: "Delete",
          color: Colors.white,
          context: context,
          actions: [
            IconsOutlineButton(
              onPressed: () {

              },
              text: 'Cancel',
              iconData: Icons.cancel_outlined,
              textStyle: TextStyle(color: Colors.grey),
              iconColor: Colors.grey,
            ),
            IconsButton(
              onPressed: () {},
              text: "Delete",
              iconData: Icons.delete,
              color: Colors.red,
              textStyle: TextStyle(color: Colors.white),
              iconColor: Colors.white,
            ),
          ]),
      child: Text("Show Material Dialog"),
    );
  }

  Widget btn2(BuildContext context) {
    return MaterialButton(
      minWidth: 300,
      color: Colors.grey[300],
      onPressed: () => Dialogs.bottomMaterialDialog(
          msg: 'Are you sure? you can\'t undo this action',
          title: 'Delete',
          context: context,
          actions: [
            IconsOutlineButton(
              onPressed: () {},
              text: 'Cancel',
              iconData: Icons.cancel_outlined,
              textStyle: TextStyle(color: Colors.grey),
              iconColor: Colors.grey,
            ),
            IconsButton(
              onPressed: () {},
              text: 'Delete',
              iconData: Icons.delete,
              color: Colors.red,
              textStyle: TextStyle(color: Colors.white),
              iconColor: Colors.white,
            ),
          ]),
      child: Text("Show Bottom Material Dialog"),
    );
  }

  Widget btn3(BuildContext context) {
    return MaterialButton(
      minWidth: 300,
      color: Colors.grey[300],
      onPressed: () => Dialogs.materialDialog(
        color: Colors.white,
        msg: 'Congratulations, you won 500 points',
        title: 'Congratulations',
        animation: 'assets/cong_example.json',
        context: context,
        actions: [
          IconsButton(
            onPressed: () {},
            text: 'Claim',
            iconData: Icons.done,
            color: Colors.blue,
            textStyle: TextStyle(color: Colors.white),
            iconColor: Colors.white,
          ),
        ],
      ),
      child: Text("Show animations Material Dialog"),
    );
  }

  Widget btn4(BuildContext context) {
    return MaterialButton(
      color: Colors.grey[300],
      minWidth: 300,
      onPressed: () => Dialogs.bottomMaterialDialog(
        msg: 'Congratulations, you won 500 points',
        title: 'Congratulations',
        color: Colors.white,
        animation: 'assets/cong_example.json',
        context: context,
        actions: [
          IconsButton(
            onPressed: () {},
            text: 'Claim',
            iconData: Icons.done,
            color: Colors.blue,
            textStyle: TextStyle(color: Colors.white),
            iconColor: Colors.white,
          ),
        ],
      ),
      child: Text("Show animations Bottom Dialog"),
    );
  }
}
