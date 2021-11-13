import '../choosing_profession/choosing_profession_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../login_new/login_new_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class StartToWidget extends StatefulWidget {
  StartToWidget({Key key}) : super(key: key);

  @override
  _StartToWidgetState createState() => _StartToWidgetState();
}

class _StartToWidgetState extends State<StartToWidget> {
  bool _loadingButton1 = false;
  bool _loadingButton2 = false;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
      body: Stack(
        children: [
          Image.asset(
            'assets/images/__(1).gif',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 1,
            fit: BoxFit.cover,
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 200, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 2, 0, 20),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    setState(() => _loadingButton1 = true);
                                    try {
                                      await Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              ChoosingProfessionWidget(),
                                        ),
                                      );
                                    } finally {
                                      setState(() => _loadingButton1 = false);
                                    }
                                  },
                                  text: 'Начать ',
                                  options: FFButtonOptions(
                                    width: 200,
                                    height: 50,
                                    color: Color(0xFF000E44),
                                    textStyle:
                                        FlutterFlowTheme.subtitle2.override(
                                      fontFamily: 'Lexend Deca',
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    elevation: 3,
                                    borderSide: BorderSide(
                                      color: Color(0x00FFFFFF),
                                      width: 0,
                                    ),
                                    borderRadius: 3,
                                  ),
                                  loading: _loadingButton1,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                            child: FFButtonWidget(
                              onPressed: () async {
                                setState(() => _loadingButton2 = true);
                                try {
                                  await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => LoginNewWidget(),
                                    ),
                                  );
                                } finally {
                                  setState(() => _loadingButton2 = false);
                                }
                              },
                              text: 'Админ',
                              options: FFButtonOptions(
                                width: 200,
                                height: 30,
                                color: Color(0x00FFFFFF),
                                textStyle: FlutterFlowTheme.bodyText2.override(
                                  fontFamily: 'Lexend Deca',
                                  color: FlutterFlowTheme.white,
                                ),
                                elevation: 3,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1,
                                ),
                                borderRadius: 8,
                              ),
                              loading: _loadingButton2,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
