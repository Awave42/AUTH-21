import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../pot_ugpu_gp9_operator_admin/pot_ugpu_gp9_operator_admin_widget.dart';
import '../ppi_ugpu_gp9_operator_admin/ppi_ugpu_gp9_operator_admin_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ChoosingInstrukciyOperatorAdminWidget extends StatefulWidget {
  ChoosingInstrukciyOperatorAdminWidget({Key key}) : super(key: key);

  @override
  _ChoosingInstrukciyOperatorAdminWidgetState createState() =>
      _ChoosingInstrukciyOperatorAdminWidgetState();
}

class _ChoosingInstrukciyOperatorAdminWidgetState
    extends State<ChoosingInstrukciyOperatorAdminWidget> {
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
          'Оператор по добыче нефти и газа',
          style: FlutterFlowTheme.bodyText1,
        ),
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: Color(0xFF1A1F24),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 40),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
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
                )
              ],
            ),
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
                            MaterialPageRoute(
                              builder: (context) =>
                                  PotUgpuGp9OperatorAdminWidget(),
                            ),
                          );
                        } finally {
                          setState(() => _loadingButton1 = false);
                        }
                      },
                      text: 'ПОТ-УГПУ-ГП9-02-2021',
                      options: FFButtonOptions(
                        width: 200,
                        height: 100,
                        color: Color(0xFF262D34),
                        textStyle: FlutterFlowTheme.subtitle1.override(
                          fontFamily: 'Lexend Deca',
                          color: FlutterFlowTheme.grayBG,
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
                              builder: (context) =>
                                  PpiUgpuGp9OperatorAdminWidget(),
                            ),
                          );
                        } finally {
                          setState(() => _loadingButton2 = false);
                        }
                      },
                      text: 'ППИ-УГПУ-ГП9-02-2021',
                      options: FFButtonOptions(
                        width: 200,
                        height: 100,
                        color: Color(0xFF262D34),
                        textStyle: FlutterFlowTheme.subtitle1.override(
                          fontFamily: 'Lexend Deca',
                          color: FlutterFlowTheme.grayBG,
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
