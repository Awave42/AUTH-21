import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_web_view.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class WebviewPotUgpuOperatorWidget extends StatefulWidget {
  WebviewPotUgpuOperatorWidget({
    Key key,
    this.urlpdf,
    this.urlpdfppi,
  }) : super(key: key);

  final DocumentReference urlpdf;
  final DocumentReference urlpdfppi;

  @override
  _WebviewPotUgpuOperatorWidgetState createState() =>
      _WebviewPotUgpuOperatorWidgetState();
}

class _WebviewPotUgpuOperatorWidgetState
    extends State<WebviewPotUgpuOperatorWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<PotUgpuGp022021Record>(
      stream: PotUgpuGp022021Record.getDocument(widget.urlpdf),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: SpinKitRing(
                color: Color(0xFF000E44),
                size: 50,
              ),
            ),
          );
        }
        final webviewPotUgpuOperatorPotUgpuGp022021Record = snapshot.data;
        return Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            backgroundColor: Color(0xFF1E388E),
            automaticallyImplyLeading: true,
            title: Text(
              webviewPotUgpuOperatorPotUgpuGp022021Record.namePdf,
              style: FlutterFlowTheme.bodyText1,
            ),
            actions: [],
            centerTitle: true,
            elevation: 4,
          ),
          backgroundColor: Colors.white,
          body: SafeArea(
            child: FlutterFlowWebView(
              url: webviewPotUgpuOperatorPotUgpuGp022021Record.urlPdf,
              bypass: false,
              verticalScroll: false,
              horizontalScroll: false,
            ),
          ),
        );
      },
    );
  }
}
