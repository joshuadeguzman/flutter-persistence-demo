// Copyright 2019 Joshua de Guzman (https://jmdg.io). All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';

class SecuredStorageView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SecuredStorageViewState();
  }
}

class SecuredStorageViewState extends State<SecuredStorageView> {
  final String KEY_API_TOKEN = 'api_token';
  String _data = "";

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Secure storage of credential using\nflutter_secure_storage ^3.2.1+1',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
        Padding(padding: EdgeInsets.only(bottom: 5)),
        Text(
          'Stores data in Keychain (for iOS) and Keystore (for Android).',
          style: TextStyle(
            fontSize: 14,
          ),
        ),
        Padding(padding: EdgeInsets.only(bottom: 10)),
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            color: Colors.blue,
            height: 150,
            padding: EdgeInsets.all(10),
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'API TOKEN',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(padding: EdgeInsets.only(bottom: 5)),
                Text(
                  '$_data',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(padding: EdgeInsets.only(bottom: 10)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                      child: Text('Generate'),
                      onPressed: _generatePassword,
                    ),
                    Padding(padding: EdgeInsets.all(10)),
                    RaisedButton(
                      child: Text('Save'),
                      onPressed: _savePassword,
                    ),
                    Padding(padding: EdgeInsets.all(10)),
                    RaisedButton(
                      child: Text('Read'),
                      onPressed: _readPassword,
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  _generatePassword() async {}

  _savePassword() async {}

  _readPassword() async {}
}
