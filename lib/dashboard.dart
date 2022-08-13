import 'package:flutter/material.dart';
import 'package:loginui/screens/MitchKokoLogin.dart';
import 'package:loginui/screens/coderLoginUI.dart';
import 'package:loginui/screens/todoLogin.dart';
import 'package:loginui/screens/verySimpleUI.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GridWidget(),
      ),
    );
  }
}

class GridWidget extends StatelessWidget {
  const GridWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: <Widget>[
          Card(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MitchKokoLoginPage()),
                );
              },
              child: Center(
                child: Text('MitchKoko\'s LoginUI'),
              ),
            ),
          ),
          Card(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => VerySimpleUI()),
                );
              },
              child: Center(
                child: Text('Very Simple UI'),
              ),
            ),
          ),
          Card(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TodoLoginUi()),
                );
              },
              child: Center(
                child: Text('Todo Login UI'),
              ),
            ),
          ),
          Card(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CoderSignInScreen()),
                );
              },
              child: Center(
                child: Text('Coder Login UI'),
              ),
            ),
          ),
        ]);
  }
}
