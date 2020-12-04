import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_dialogs/material_dialogs.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
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
                title: Text("Material design buttons"),
              ),
              body: TestPage()),
        ));
  }
}

class TestPage extends StatelessWidget {
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
        btn1Press: () {},
        btn1Text: "Delete",
        msg: 'Are you sure? you can\'t undo this',
        title: "Delete",
        btn2Text: "Cancel",
        btn2Press: () {
          Navigator.pop(context);
        },
        color: Colors.white,
        btn1Icon: Icons.delete,
        btn2Icon: Icons.cancel,
        context: context,
      ),
      child: Text("Show Material Dialog"),
    );
  }

  Widget btn2(BuildContext context) {
    return MaterialButton(
      minWidth: 300,
      color: Colors.grey[300],
      onPressed: () => Dialogs.bottomMaterialDialog(
        btn1Press: () {},
        btn1Text: 'Delete',
        msg: 'Are you sure? you can\'t undo this',
        title: 'Delete',
        btn2Text: 'Cancel',
        btn2Press: () {
          Navigator.pop(context);
        },
        btn1Icon: Icons.delete,
        btn2Icon: Icons.cancel,
        context: context,
      ),
      child: Text("Show Bottom Material Dialog"),
    );
  }

  Widget btn3(BuildContext context) {
    return MaterialButton(
      minWidth: 300,
      color: Colors.grey[300],
      onPressed: () => Dialogs.materialDialog(
        btn1Press: () {},
        btn1Text: 'Claim',
        btn1Bcg: Colors.blue,
        color: Colors.white,
        msg: 'Congratulations, you won 500 points',
        title: 'Congratulations',
        btn2Text: 'Cancel',
        btn2IconColor: Colors.grey,
        btn1Icon: Icons.done,
        btn2Icon: Icons.cancel,
        btn2Press: () {
          Navigator.pop(context);
        },
        animations: 'assets/icon_delete.json',
        context: context,
      ),
      child: Text("Show animations Material Dialog"),
    );
  }

  Widget btn4(BuildContext context) {
    return MaterialButton(
      color: Colors.grey[300],
      minWidth: 300,
      onPressed: () => Dialogs.bottomMaterialDialog(
        btn1Press: () {},
        btn1Text: 'Claim',
        msg: 'Congratulations, you won 500 points',
        title: 'Congratulations',
        btn2Text: 'Cancel',
        btn1Bcg: Colors.blue,
        btn2Bcg: Colors.white,
        btn2IconColor: Colors.grey,
        btn1Icon: Icons.done,
        btn2Icon: Icons.cancel,
        color: Colors.white,
        btn2Press: () {
          Navigator.pop(context);
        },
        animations: 'assets/icon_delete.json',
        context: context,
      ),
      child: Text("Show animations Bottom Dialog"),
    );
  }
}
