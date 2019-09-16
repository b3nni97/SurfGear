// Copyright (c) 2019-present,  SurfStudio LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:name_generator/interactor/name_generator/name_generator_interactor.dart';
import 'package:name_generator/ui/screen/name_generator/name_generator_route.dart';
import 'package:name_generator/ui/screen/name_generator/name_generator_screen.dart';

/// Widget приложения
class App extends StatefulWidget {
  final NameGeneratorInteractor interactor;

  App(this.interactor);

  @override
  State createState() => new _AppState();
}

class _AppState extends State<App> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      home: Scaffold(
        key: scaffoldKey,
        body: Center(
          child: Icon(
            Icons.account_circle,
            size: 200,
            color: Colors.indigo,
          ),
        ),
      ),
      initialRoute: NameGeneratorScreen.routeName,
      onGenerateRoute: (_) => NameGeneratorScreenRoute(widget.interactor),
    );
  }
}
