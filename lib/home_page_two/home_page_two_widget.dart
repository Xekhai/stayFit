import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../onboard_one/onboard_one_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageTwoWidget extends StatefulWidget {
  const HomePageTwoWidget({Key key}) : super(key: key);

  @override
  _HomePageTwoWidgetState createState() => _HomePageTwoWidgetState();
}

class _HomePageTwoWidgetState extends State<HomePageTwoWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryColor,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 1,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF9BC4FF), Color(0xFF93A5FE)],
              stops: [0, 1],
              begin: AlignmentDirectional(0, 1),
              end: AlignmentDirectional(0, -1),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Spacer(),
              Image.asset(
                'assets/images/logo-tagline2.png',
                width: 185,
                height: 80,
                fit: BoxFit.contain,
              ),
              Spacer(),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                child: FFButtonWidget(
                  onPressed: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OnboardOneWidget(),
                      ),
                    );
                  },
                  text: 'Get Started',
                  options: FFButtonOptions(
                    width: 315,
                    height: 65,
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.of(context).primaryColor,
                        ),
                    elevation: 4,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: 99,
                  ),
                  showLoadingIndicator: false,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
