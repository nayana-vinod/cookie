//import 'dart:js';

//import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
//import 'dart:math' as math;
import 'package:flutter/services.dart';
// import 'package:path/path.dart' show join;
import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart';
import 'package:vector_math/vector_math_64.dart' as vector;
//import 'screens/auto_detect_plane.dart';

void main() => runApp(MyApp());
var arCoreController;
//ArCorePlane plane;
var context;
ByteData textureBytes;

class MyApp extends StatelessWidget {
  //ArCoreController arCoreController;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ARCore Flutter Plugin Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Cookie'),
        ),
        body: ArCoreView(
          onArCoreViewCreated: _onArCoreViewCreated,
          enableTapRecognizer: true,
        ),
      ),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);
// }

void _onArCoreViewCreated(ArCoreController controller) {
  arCoreController = controller;
  arCoreController.onNodeTap = (name) => onTapHandler(name);
  arCoreController.onPlaneTap = (hits) => _onPlaneTapHandler(hits);
}

void onTapHandler(String name) {
  showDialog<void>(
    context: context,
    builder: (BuildContext context) =>
        AlertDialog(content: Text('onNodeTap on $name')),
  );
}

void _onPlaneTapHandler(List<ArCoreHitTestResult> hits) {
  //final hit = hits.first;

  loadmesh();
  // arCoreController.addArCoreNodeWithAnchor();
}

loadmesh() async {
  final ByteData textureBytes =
      await rootBundle.load('resources/images/cookie_texture2.png');

  arCoreController.loadMesh(
    textureBytes: textureBytes.buffer.asUint8List(),
    skin3DModelFilename: "cookie_small1.sfb",
    position: vector.Vector3(0.2, 0, 0),
    rotation: vector.Vector4(0, 0, 0, 0),
  );
}
