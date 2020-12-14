import 'dart:math';

import 'package:flutter/material.dart';
import 'package:profile_app/app_data/app_data.dart';

import 'package:profile_app/model/project.dart';
import 'package:profile_app/details.dart';
import 'package:profile_app/contact.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Portfolio',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: MyProfilePage(),
    );
  }
}

class MyProfilePage extends StatefulWidget {
  @override
  _MyProfilePageState createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  double get randHeight => Random().nextInt(100).toDouble();
  List<Widget> _childHeader;

  List<Widget> headerView(BuildContext context) {
    _childHeader ??= List.generate(1, (index) {
      return Container(
          padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
          color: Colors.white12,
          child: Column(children: [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                margin: EdgeInsets.only(right: 20.0),
                height: MediaQuery.of(context).size.width / 4.5,
                width: MediaQuery.of(context).size.width / 4.5,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100),
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://raw.githubusercontent.com/stonybean/stonybean.github.io/master/assets/img/Bart%20Simpson.png'),
                        fit: BoxFit.cover)),
              ),
              Column(children: [
//                Text(AppData.profiles[0].totalProject,
                Text(AppData.projects.length.toString(),
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontWeight: FontWeight.w600, fontSize: 18)),
                Text('', style: TextStyle(fontSize: 5)),
                Text(
                  '프로젝트',
                  textAlign: TextAlign.center,
                )
              ])
            ]),
            SizedBox(height: 15),
            Text(AppData.profiles[0].title,
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text(AppData.profiles[0].subtitle),
          ]));
    });

    return _childHeader;
  }

  void goContact() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => ContactView()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Persistent AppBar that never scrolls
      appBar: AppBar(
        title: Text('PORTFOLIO'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.contacts),
            onPressed: goContact,
            color: Colors.black,
          )
        ],
        elevation: 0.0,
      ),
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          // allows you to build a list of elements that would be scrolled away till the body reached the top
          headerSliverBuilder: (context, _) {
            return [
              SliverList(
                delegate: SliverChildListDelegate(headerView(context)),
              ),
            ];
          },
          body: Column(
            children: <Widget>[
              TabBar(
                indicatorColor: Colors.black87,
                tabs: [
                  Tab(icon: Icon(Icons.stacked_bar_chart)),
                  Tab(icon: Icon(Icons.assignment_outlined))
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.only(
                                    left: 15.0, top: 15.0, bottom: 15.0),
                                child: Text('Programming languages',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                              ),
                              Image.asset(
                                  'assets/images/programming_languages.png',
                                  fit: BoxFit.fitWidth),
                              Container(
                                padding: EdgeInsets.only(
                                    left: 15.0, top: 15.0, bottom: 15.0),
                                child: Text('Tech skills',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                color: Colors.white,
                                margin: EdgeInsets.only(bottom: 50.0),
                                padding: EdgeInsets.only(
                                    left: 15.0, top: 15.0, bottom: 15.0),
                                child: Text('∙ Retrofit\n∙ OkHttp\n∙ Picasso\n∙ TCP/IP\n∙ FCM\n∙ RESTful API\n∙ Flutter\n∙ Dart',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ])),
                    getListView(context)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

GridView getGridView(BuildContext context) {
  return GridView.count(
    padding: EdgeInsets.all(5.0),
    crossAxisCount: 2,
    crossAxisSpacing: 5,
    children: AppData.projects.map((project) {
//      return ExpandCard(project: project);
      return GestureDetector(
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailListView(project: project))),
          child: Column(children: [
            Image.asset(project.thumbnailUrl, fit: BoxFit.cover),
//            Text(project.title),
//            Text(project.details)
          ]));
    }).toList(),
  );
}

ListView getListView(BuildContext context) {
  return ListView.separated(
      separatorBuilder: (context, index) => Divider(
            color: Colors.grey,
          ),
      itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(14.0),
            child: _buildRow(context, AppData.projects[index]),
          ),
      itemCount: AppData.projects.length);
}

Widget _buildRow(BuildContext context, Project project) {
  return ListTile(
    title: Text(
      project.title,
      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
    ),
//    trailing: Icon(
//      Icons.favorite_border,
//      color: Colors.red,
//    ),
    trailing: Text(
      '${project.startDate}\n~\n${project.endDate}',
      textAlign: TextAlign.center,
    ),
    onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => DetailListView(project: project))),
  );
}

void showAlertDialog(BuildContext context, Project project) async {
  await showDialog(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(project.title),
        content: Text("Select button you want"),
        actions: <Widget>[
          FlatButton(
            child: Text('OK'),
            onPressed: () {
              Navigator.pop(context, "OK");
            },
          ),
          FlatButton(
            child: Text('Cancel'),
            onPressed: () {
              Navigator.pop(context, "Cancel");
            },
          ),
        ],
      );
    },
  );
}
