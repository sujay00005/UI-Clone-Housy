import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_housy/widgets/drawer.dart';
import 'package:ui_housy/widgets/RoundIconButton.dart';
import 'package:ui_housy/widgets/large_tile.dart';
import 'package:ui_housy/widgets/task_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.orange[200],
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            )),
            floating: true,
            expandedHeight: 150.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Padding(
                padding: EdgeInsets.fromLTRB(20, 80, 20, 30),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('image/profile.png'),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 19.0,
                        ),
                        Text(
                          'Sujay Biswas',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        SizedBox(height: 6.0),
                        Text(
                          'App Development',
                          style:
                              TextStyle(fontSize: 12.0, color: Colors.black38),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            leading: IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return MenuScreen();
                  }),
                );
              },
            ),
            actions: <Widget>[
              IconButton(
                onPressed: () {
                  //
                },
                icon: Icon(Icons.search, color: Colors.black),
              )
            ],
          ),
          SliverList(delegate: SliverChildBuilderDelegate((context, index) {
            //My Tasks

            return Padding(
              padding: const EdgeInsets.all(2.0),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 30),
                    child: Row(
                      children: [
                        Text(
                          'My Tasks',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 25.0,
                          ),
                        ),
                        Spacer(),
                        RoundIconButton(
                          icon: Icons.date_range,
                          color: Colors.teal,
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15.0),

                  TaskWidget(
                    title: 'To Do',
                    color: Colors.red,
                    icon: Icons.alarm,
                    nowTask: '5',
                    started: '1',
                    function: () {},
                  ),

                  TaskWidget(
                    title: 'In Progress',
                    color: Colors.orange[200] as Color,
                    icon: Icons.timelapse,
                    nowTask: '1',
                    started: '1',
                    function: () {},
                  ),
                  TaskWidget(
                    title: 'Done',
                    color: Colors.indigoAccent,
                    icon: Icons.block,
                    nowTask: '18',
                    started: '13',
                    function: () {},
                  ),

                  Text(
                    'Active Projects',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 25.0,
                    ),
                  ),

                  //Active Projects
                  Row(
                    children: [
                      LargeTile(
                        color: Colors.teal,
                        title: 'Medical App',
                        hours: '9',
                        percentage: 25.0,
                      ),
                      LargeTile(
                        color: Colors.red,
                        title: 'Making History Notes',
                        hours: '20',
                        percentage: 60.0,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      LargeTile(
                        color: Colors.orange[200] as Color,
                        title: 'Medical App',
                        hours: '9',
                        percentage: 25.0,
                      ),
                      LargeTile(
                        color: Colors.indigoAccent,
                        title: 'Making History Notes',
                        hours: '20',
                        percentage: 60.0,
                      ),
                    ],
                  ),
                ],
              ),
            );
          })),
        ],
      ),
    );
  }
}
