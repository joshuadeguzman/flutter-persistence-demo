// Copyright 2019 Joshua de Guzman (https://jmdg.io). All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DashboardScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DashboardScreenState();
  }
}

class DashboardScreenState extends State<DashboardScreen> {
  final String KEY_COUNTER = 'counter';
  int _counter = 0;

  @override
  void initState() {
    super.initState();

    // Update view with the initial value
    _retrievePersistedCounter();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Persistence Demo'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('Persisted Counter: $_counter'),
            RaisedButton(
              child: Text('Increment'),
              onPressed: _incrementCounter,
            ),
            RaisedButton(
              child: Text('Decrement'),
              onPressed: _decreaseCounter,
            ),
          ],
        ),
      ),
    );
  }

  _retrievePersistedCounter() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    int counter = (preferences.getInt(KEY_COUNTER) ?? 0) + 1;

    setState(() {
      _counter = counter;
    });
  }

  _incrementCounter() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    int counter = (preferences.getInt(KEY_COUNTER) ?? 0) + 1;
    await preferences.setInt(KEY_COUNTER, counter);

    setState(() {
      _counter = counter;
    });
  }

  _decreaseCounter() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    int counter = (preferences.getInt(KEY_COUNTER) ?? 0) - 1;
    await preferences.setInt(KEY_COUNTER, counter);

    setState(() {
      _counter = counter;
    });
  }
}
