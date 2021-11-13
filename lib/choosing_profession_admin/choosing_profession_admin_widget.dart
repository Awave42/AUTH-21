import '../choosing_instrukciy_operator_admin/choosing_instrukciy_operator_admin_widget.dart';
import '../choosing_profession/choosing_profession_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ChoosingProfessionAdminWidget extends StatefulWidget {
  ChoosingProfessionAdminWidget({Key key}) : super(key: key);

  @override
  _ChoosingProfessionAdminWidgetState createState() =>
      _ChoosingProfessionAdminWidgetState();
}

class _ChoosingProfessionAdminWidgetState
    extends State<ChoosingProfessionAdminWidget> {
  bool _loadingButton1 = false;
  bool _loadingButton2 = false;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF1E388E),
        automaticallyImplyLeading: true,
        title: Text(
          'Профессия',
          style: FlutterFlowTheme.bodyText1,
        ),
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: FlutterFlowTheme.darkBG,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 50),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Режим редактора',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.bodyText1.override(
                        fontFamily: 'Lexend Deca',
                        color: Color(0xFF1A81AF),
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        setState(() => _loadingButton1 = true);
                        try {
                          await Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.rightToLeft,
                              duration: Duration(milliseconds: 300),
                              reverseDuration: Duration(milliseconds: 300),
                              child: ChoosingInstrukciyOperatorAdminWidget(),
                            ),
                          );
                        } finally {
                          setState(() => _loadingButton1 = false);
                        }
                      },
                      text: 'Оператор по добыче нефти и газа',
                      options: FFButtonOptions(
                        width: 200,
                        height: 100,
                        color: Color(0xFF262D34),
                        textStyle: FlutterFlowTheme.subtitle1.override(
                          fontFamily: 'Lexend Deca',
                          color: FlutterFlowTheme.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                        elevation: 2,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: 8,
                      ),
                      loading: _loadingButton1,
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        setState(() => _loadingButton2 = true);
                        try {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ChoosingProfessionWidget(),
                            ),
                          );
                        } finally {
                          setState(() => _loadingButton2 = false);
                        }
                      },
                      text: 'Слесарь ТУ',
                      options: FFButtonOptions(
                        width: 200,
                        height: 100,
                        color: Color(0xFF262D34),
                        textStyle: FlutterFlowTheme.subtitle1.override(
                          fontFamily: 'Lexend Deca',
                          color: FlutterFlowTheme.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                        elevation: 2,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: 8,
                      ),
                      loading: _loadingButton2,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
