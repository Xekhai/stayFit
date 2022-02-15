import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../sign_up/sign_up_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardFourWidget extends StatefulWidget {
  const OnboardFourWidget({Key key}) : super(key: key);

  @override
  _OnboardFourWidgetState createState() => _OnboardFourWidgetState();
}

class _OnboardFourWidgetState extends State<OnboardFourWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SignUpWidget(),
            ),
          );
        },
        backgroundColor: Colors.white,
        elevation: 8,
        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: Color(0xFFEEEEEE),
            borderRadius: BorderRadius.circular(99),
            shape: BoxShape.rectangle,
            border: Border.all(
              color: FlutterFlowTheme.of(context).primaryColor,
              width: 3,
            ),
          ),
          child: Container(
            height: 100,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF96AEFE), Color(0xFFCDE0FF)],
                stops: [0, 1],
                begin: AlignmentDirectional(1, 1),
                end: AlignmentDirectional(-1, -1),
              ),
              borderRadius: BorderRadius.circular(99),
              border: Border.all(
                color: FlutterFlowTheme.of(context).primaryBackground,
                width: 5,
              ),
            ),
            child: Icon(
              Icons.chevron_right_rounded,
              color: Colors.white,
              size: 20,
            ),
          ),
        ),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 1,
          decoration: BoxDecoration(
            color: Color(0xFFEEEEEE),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Image.asset(
                'assets/images/four.png',
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.fitWidth,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 50, 20, 0),
                    child: Text(
                      'Improve Sleep \nQuality',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).title3,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Color(0xFFEEEEEE),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                      child: Text(
                        'Improve the quality of your sleep with us, good quality sleep can bring a good mood in the morning',
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
