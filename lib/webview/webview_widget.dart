import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_web_view.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class WebviewWidget extends StatefulWidget {
  WebviewWidget({
    Key key,
    this.urlpdf,
  }) : super(key: key);

  final DocumentReference urlpdf;

  @override
  _WebviewWidgetState createState() => _WebviewWidgetState();
}

class _WebviewWidgetState extends State<WebviewWidget> {
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
                color: FlutterFlowTheme.primaryColor,
                size: 50,
              ),
            ),
          );
        }
        final webviewPotUgpuGp022021Record = snapshot.data;
        return Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.primaryColor,
            automaticallyImplyLeading: true,
            title: Text(
              webviewPotUgpuGp022021Record.namePdf,
              style: FlutterFlowTheme.bodyText1,
            ),
            actions: [],
            centerTitle: true,
            elevation: 4,
          ),
          backgroundColor: Colors.white,
          body: SafeArea(
            child: StreamBuilder<List<PotUgpuGp022021Record>>(
              stream: queryPotUgpuGp022021Record(),
              builder: (context, snapshot) {
                // Customize what your widget looks like when it's loading.
                if (!snapshot.hasData) {
                  return Center(
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: SpinKitRing(
                        color: FlutterFlowTheme.primaryColor,
                        size: 50,
                      ),
                    ),
                  );
                }
                List<PotUgpuGp022021Record> webViewPotUgpuGp022021RecordList =
                    snapshot.data;
                return FlutterFlowWebView(
                  url: webviewPotUgpuGp022021Record.urlPdf.length,
                  bypass: false,
                  verticalScroll: false,
                  horizontalScroll: false,
                );
              },
            ),
          ),
        );
      },
    );
  }
}
