import 'package:flutter/material.dart';

import 'model/project.dart';

class DetailListView extends StatelessWidget {
  final Project project;

  DetailListView({Key key, this.project}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('DETAIL'),
        ),
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
//              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    padding: EdgeInsets.all(30.0),
                    alignment: Alignment.center,
                    child: Image.asset(project.thumbnailUrl, fit: BoxFit.fill)),
                Container(
                    padding: EdgeInsets.only(left: 15.0, top: 20.0),
                    alignment: Alignment.centerLeft,
                    child: Text('<프로젝트명>',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22.0))),
                Container(
                    alignment: Alignment.centerLeft,
                    padding:
                        EdgeInsets.only(left: 20.0, top: 10.0, right: 20.0),
                    child: Text('- ${project.title}',
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 18.0))),
                Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 15.0, top: 30.0),
                    child: Text('<프로젝트 상세>',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22.0))),
                Container(
                    alignment: Alignment.centerLeft,
                    padding:
                        EdgeInsets.only(left: 20.0, top: 10.0, right: 20.0),
                    child: Text(project.details,
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 18.0))),
                Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 15.0, top: 30.0),
                    child: Text('<프로젝트 기간>',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22.0))),
                Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(
                        left: 20.0, top: 10.0, right: 20.0, bottom: 30.0),
                    child: Text('- ${project.startDate} ~ ${project.endDate}',
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 18.0)))
              ],
            )));
  }
}
