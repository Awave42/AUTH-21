import '../backend/backend.dart';
import '../create_pdfspisok_pot_admin/create_pdfspisok_pot_admin_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../webview_pot_ugpu_operator/webview_pot_ugpu_operator_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class PotUgpuGp9OperatorAdminWidget extends StatefulWidget {
  PotUgpuGp9OperatorAdminWidget({
    Key key,
    this.urlpdf,
    this.pluspdf,
  }) : super(key: key);

  final DocumentReference urlpdf;
  final DocumentReference pluspdf;

  @override
  _PotUgpuGp9OperatorAdminWidgetState createState() =>
      _PotUgpuGp9OperatorAdminWidgetState();
}

class _PotUgpuGp9OperatorAdminWidgetState
    extends State<PotUgpuGp9OperatorAdminWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF1E388E),
        automaticallyImplyLeading: true,
        title: Text(
          'ПОТ-УГПУ-ГП9-02-2021',
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
        backgroundColor: Color(0xFF1E388E),
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
                child: CreatePdfspisokPotAdminWidget(),
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
                    color: Color(0xFF1A1F24),
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
              child: StreamBuilder<List<PotUgpuGp022021Record>>(
                stream: queryPotUgpuGp022021Record(
                  queryBuilder: (potUgpuGp022021Record) =>
                      potUgpuGp022021Record.orderBy('creat_add'),
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
                  List<PotUgpuGp022021Record>
                      listViewPotUgpuGp022021RecordList = snapshot.data;
                  return ListView.builder(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.vertical,
                    itemCount: listViewPotUgpuGp022021RecordList.length,
                    itemBuilder: (context, listViewIndex) {
                      final listViewPotUgpuGp022021Record =
                          listViewPotUgpuGp022021RecordList[listViewIndex];
                      return Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 2, 0, 8),
                        child: InkWell(
                          onTap: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    WebviewPotUgpuOperatorWidget(
                                  urlpdf:
                                      listViewPotUgpuGp022021Record.reference,
                                ),
                              ),
                            );
                          },
                          onLongPress: () async {
                            await listViewPotUgpuGp022021Record.reference
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
                                              listViewPotUgpuGp022021Record
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
