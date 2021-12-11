import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            // backgroundColor: const Color.fromRGBO(37, 43, 103, 1),
            centerTitle: false,
            title: const Text(
              'My tasks',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 21,
                //decoration: TextDecoration.underline,
                //color: Colors.black
                color: Color.fromRGBO(37, 43, 103, 1),
              ),
            ),
            leading: const Center(
              /*     child:FlutterLogo(
              size: 40,
           ) */
              child: Center(
                child: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('assets/avatar.png'),
                ),
              ),
            ),
            actions: [
          PopupMenuButton<String>(
              icon: const Icon(Icons.menu,
                color: Color.fromRGBO(37, 43, 103, 1),
              ),
              itemBuilder: (context) {
                return [
                  const PopupMenuItem(
                    child: Text(
                      'Todo',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 21,
                        //decoration: TextDecoration.underline,
                        //color: Colors.black
                        color: Color.fromRGBO(37, 43, 103, 1),
                      ),
                    ),
                    value: 'todo',
                  ),
                  const PopupMenuItem(
                    child: Text(
                      'Completed',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 21,
                        //decoration: TextDecoration.underline,
                        //color: Colors.black
                        color: Color.fromRGBO(37, 43, 103, 1),
                      ),
                    ),
                    value: 'completed',
                  )
                ];
              }),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Color.fromRGBO(37, 43, 103, 1),
              ))

        ]));
  }
}
