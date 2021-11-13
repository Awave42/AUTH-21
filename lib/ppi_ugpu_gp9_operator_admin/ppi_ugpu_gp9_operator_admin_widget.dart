import '../backend/backend.dart';
import '../create_pdfspisok_ppi_admin/create_pdfspisok_ppi_admin_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../webview_pot_ugpu_operator/webview_pot_ugpu_operator_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class PpiUgpuGp9OperatorAdminWidget extends StatefulWidget {
  PpiUgpuGp9OperatorAdminWidget({
    Key key,
    this.pluspdfppi,
  }) : super(key: key);

  final DocumentReference pluspdfppi;

  @override
  _PpiUgpuGp9OperatorAdminWidgetState createState() =>
      _PpiUgpuGp9OperatorAdminWidgetState();
}

class _PpiUgpuGp9OperatorAdminWidgetState
    extends State<PpiUgpuGp9OperatorAdminWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF1E388E),
        automaticallyImplyLeading: true,
        title: Text(
          'ППИ-УГПУ-ГП9-02-2021',
          style: FlutterFlowTheme.title3,
        ),
        actions: [],
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: FlutterFlowTheme.darkBG,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('FloatingActionButton pressed ...');
        },
        backgroundColor: FlutterFlowTheme.primaryColor,
        elevation: 8,
        child: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          buttonSize: 48,
          icon: Icon(
            Icons.add_rounded,
            color: FlutterFlowTheme.white,
            size: 30,
          ),
          onPressed: () async {
            await Navigator.push(
              context,
              PageTransition(
                type: PageTransitionType.bottomToTop,
                duration: Duration(milliseconds: 270),
                reverseDuration: Duration(milliseconds: 270),
                child: CreatePdfspisokPpiAdminWidget(),
              ),
            );
          },
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.05,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.darkBG,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: Image.asset(
                        'assets/images/__(42_x_42_cm)_(42_x_20_cm)_(375_x_150_px).png',
                      ).image,
                    ),
                  ),
                )
              ],
            ),
            Expanded(
              child: StreamBuilder<List<PpiUgpuGp9022021Record>>(
                stream: queryPpiUgpuGp9022021Record(
                  queryBuilder: (ppiUgpuGp9022021Record) =>
                      ppiUgpuGp9022021Record.orderBy('creat_add'),
                ),
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
                  List<PpiUgpuGp9022021Record>
                      listViewPpiUgpuGp9022021RecordList = snapshot.data;
                  return ListView.builder(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.vertical,
                    itemCount: listViewPpiUgpuGp9022021RecordList.length,
                    itemBuilder: (context, listViewIndex) {
                      final listViewPpiUgpuGp9022021Record =
                          listViewPpiUgpuGp9022021RecordList[listViewIndex];
                      return Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 2, 0, 4),
                        child: InkWell(
                          onTap: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    WebviewPotUgpuOperatorWidget(
                                  urlpdfppi:
                                      listViewPpiUgpuGp9022021Record.reference,
                                ),
                              ),
                            );
                          },
                          onDoubleTap: () async {
                            await listViewPpiUgpuGp9022021Record.reference
                                .delete();
                          },
                          child: Material(
                            color: Colors.transparent,
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 80,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.primaryBlack,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16, 0, 0, 0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              listViewPpiUgpuGp9022021Record
                                                  .namePdf,
                                              style: FlutterFlowTheme.subtitle1,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 0, 10, 0),
                                          child: Icon(
                                            Icons.keyboard_arrow_right,
                                            color: Colors.white,
                                            size: 24,
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
