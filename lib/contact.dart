import 'package:mailto/mailto.dart';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactView extends StatefulWidget {
  ContactView({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _ContactViewState createState() => _ContactViewState();
}

class _ContactViewState extends State<ContactView> {

  _launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url, forceSafariVC: false, forceWebView: false);
    }
  }

  _launchMailto() async {
    final mailtoLink = Mailto(
      to: ['stonybean90@gmail.com'],
      subject: 'Hello stonybean!',
    );
    // Convert the Mailto instance into a string.
    // Use either Dart's string interpolation
    // or the toString() method.
    await launch('$mailtoLink');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('CONTACT'),
        ),
        body: Container(
            padding: EdgeInsets.only(top: 40.0, bottom: 15.0),
            color: Colors.white12,
            child: Column(children: [
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                  height: MediaQuery.of(context).size.width / 3,
                  width: MediaQuery.of(context).size.width / 3,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100),
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://raw.githubusercontent.com/stonybean/stonybean.github.io/master/assets/img/Bart%20Simpson.png'),
                          fit: BoxFit.cover)),
                )
              ]),
              Container(
                  margin: EdgeInsets.only(top: 20.0, bottom: 15.0),
                  child: Text('Contact Me!',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0))),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      child: IconButton(
                    iconSize: 40.0,
                    icon: Icon(Icons.email_rounded),
                    onPressed: _launchMailto,
                    color: Colors.black,
                  )),
                  Container(
                      width: 50.0,
                      height: 50.0,
                      child: IconButton(
                        icon: Image.asset(
                            'assets/images/GitHub-Mark-120px-plus.png',
                            fit: BoxFit.fill),
                        onPressed: () => setState(() {
                          _launchUrl('https://github.com/stonybean');
                        }),
                        color: Colors.black,
                      )),
                  Container(
                      width: 50.0,
                      height: 50.0,
                      child: IconButton(
                          icon: Image.asset('assets/images/blog-logo-icon.png',
                              fit: BoxFit.fill),
                          onPressed: () => setState(() {
                                _launchUrl('https://stonybean.github.io/');
                              }),
                          color: Colors.black)),
                ],
              )
            ])));
  }
}
