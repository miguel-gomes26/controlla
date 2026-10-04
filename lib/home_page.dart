import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  static String routeName = 'HomePage';
  static String routePath = '/homePage';

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: (FFMainAxisAlignment.center).flutterValue,
          children: [
            Expanded(
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width,
                    height: MediaQuery.sizeOf(context).height,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFF060212),
                          Color(0xFF06092B),
                          Color(0xFFF7F5FC)
                        ],
                        stops: [0, 1, 1],
                        begin: AlignmentDirectional(0, -1),
                        end: AlignmentDirectional(0, 1),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-1, -1),
                    child: Stack(
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 50, 0, 0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.15,
                            height: MediaQuery.sizeOf(context).height * 0.07,
                            decoration: BoxDecoration(
                              color: Color(0x02051427),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(300),
                                topRight: Radius.circular(300),
                                bottomLeft: Radius.circular(300),
                                bottomRight: Radius.circular(300),
                              ),
                              border: Border.all(
                                color: Color(0xFF646262),
                                width: 2,
                              ),
                            ),
                            child: FlutterFlowIconButton(
                              borderRadius: 8,
                              fillColor: Color(0x00051427),
                              icon: Icon(
                                Icons.power_settings_new,
                                color: Color(0xFFFF2E2E),
                                size: 30,
                              ),
                              onPressed: () async {
                                await actions.sendTvCommand(
                                  FFAppState().tvIp,
                                  'POWER',
                                );
                              },
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(1, -1),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 50, 20, 0),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 0.15,
                              height: MediaQuery.sizeOf(context).height * 0.07,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(300),
                                  topRight: Radius.circular(300),
                                  bottomLeft: Radius.circular(300),
                                  bottomRight: Radius.circular(300),
                                ),
                                border: Border.all(
                                  color: Color(0xFF646262),
                                  width: 2,
                                ),
                              ),
                              child: FlutterFlowIconButton(
                                borderRadius: 8,
                                fillColor: Color(0x004B39EF),
                                icon: Icon(
                                  Icons.volume_off,
                                  color: Color(0xFFC4C0C0),
                                  size: 24,
                                ),
                                onPressed: () async {
                                  await actions.sendTvCommand(
                                    FFAppState().tvIp,
                                    'MUTE',
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Stack(
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.3,
                            height: MediaQuery.sizeOf(context).height * 0.07,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50),
                                topRight: Radius.circular(50),
                                bottomLeft: Radius.circular(50),
                                bottomRight: Radius.circular(50),
                              ),
                              border: Border.all(
                                color: Color(0xFF646262),
                                width: 2,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(1, 0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.15,
                            height: MediaQuery.sizeOf(context).height * 0.07,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(300),
                                topRight: Radius.circular(300),
                                bottomLeft: Radius.circular(300),
                                bottomRight: Radius.circular(300),
                              ),
                              border: Border.all(
                                color: Color(0xFF646262),
                                width: 2,
                              ),
                            ),
                            child: FlutterFlowIconButton(
                              borderRadius: 8,
                              icon: Icon(
                                Icons.home,
                                color: FlutterFlowTheme.of(context).info,
                                size: 30,
                              ),
                              onPressed: () async {
                                await actions.sendTvCommand(
                                  FFAppState().tvIp,
                                  'HOME',
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-1, 0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.15,
                            height: MediaQuery.sizeOf(context).height * 0.07,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(300),
                                topRight: Radius.circular(300),
                                bottomLeft: Radius.circular(300),
                                bottomRight: Radius.circular(300),
                              ),
                              border: Border.all(
                                color: Color(0xFF646262),
                                width: 2,
                              ),
                            ),
                            child: FlutterFlowIconButton(
                              borderRadius: 8,
                              fillColor: Color(0x004B39EF),
                              icon: Icon(
                                Icons.reply_rounded,
                                color: FlutterFlowTheme.of(context).info,
                                size: 30,
                              ),
                              onPressed: () async {
                                await actions.sendTvCommand(
                                  FFAppState().tvIp,
                                  'BACK',
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Align(
                        alignment: AlignmentDirectional(1, -1),
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(0, 150, 60, 0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.18,
                            height: MediaQuery.sizeOf(context).height * 0.25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50),
                                topRight: Radius.circular(50),
                                bottomLeft: Radius.circular(50),
                                bottomRight: Radius.circular(50),
                              ),
                              border: Border.all(
                                color: Color(0xFF646262),
                                width: 2,
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment:
                                  (FFMainAxisAlignment.spaceBetween)
                                      .flutterValue,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 10, 0, 0),
                                  child: FlutterFlowIconButton(
                                    borderRadius: 8,
                                    icon: Icon(
                                      Icons.keyboard_arrow_up,
                                      color: FlutterFlowTheme.of(context).info,
                                      size: 50,
                                    ),
                                    onPressed: () async {
                                      await actions.sendTvCommand(
                                        FFAppState().tvIp,
                                        'MIDI',
                                      );
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 20),
                                  child: FlutterFlowIconButton(
                                    borderRadius: 8,
                                    icon: Icon(
                                      Icons.expand_more,
                                      color: FlutterFlowTheme.of(context).info,
                                      size: 50,
                                    ),
                                    onPressed: () async {
                                      await actions.sendTvCommand(
                                        FFAppState().tvIp,
                                        'DOWN',
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-1, -1),
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(60, 150, 0, 0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.18,
                            height: MediaQuery.sizeOf(context).height * 0.25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50),
                                topRight: Radius.circular(50),
                                bottomLeft: Radius.circular(50),
                                bottomRight: Radius.circular(50),
                              ),
                              border: Border.all(
                                color: Color(0xFF646262),
                                width: 2,
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment:
                                  (FFMainAxisAlignment.spaceBetween)
                                      .flutterValue,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 20, 0, 0),
                                  child: FlutterFlowIconButton(
                                    borderRadius: 8,
                                    icon: Icon(
                                      Icons.add,
                                      color: FlutterFlowTheme.of(context).info,
                                      size: 50,
                                    ),
                                    onPressed: () async {
                                      await actions.sendTvCommand(
                                        FFAppState().tvIp,
                                        'VOL_UP',
                                      );
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 30),
                                  child: FlutterFlowIconButton(
                                    borderRadius: 8,
                                    icon: Icon(
                                      Icons.minimize_rounded,
                                      color: FlutterFlowTheme.of(context).info,
                                      size: 50,
                                    ),
                                    onPressed: () async {
                                      await actions.sendTvCommand(
                                        FFAppState().tvIp,
                                        'VOL_DOWN',
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(10, 375, 10, 0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.6,
                            height: MediaQuery.sizeOf(context).height * 0.28,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(300),
                                topRight: Radius.circular(300),
                                bottomLeft: Radius.circular(300),
                                bottomRight: Radius.circular(300),
                              ),
                              border: Border.all(
                                color: Color(0xFF646262),
                                width: 2,
                              ),
                            ),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-1, 0),
                                  child: FlutterFlowIconButton(
                                    borderRadius: 8,
                                    icon: Icon(
                                      Icons.keyboard_arrow_left,
                                      color: FlutterFlowTheme.of(context).info,
                                      size: 45,
                                    ),
                                    onPressed: () async {
                                      await actions.sendTvCommand(
                                        FFAppState().tvIp,
                                        'LEFT',
                                      );
                                    },
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(1, 0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 27, 0, 0),
                                    child: FlutterFlowIconButton(
                                      borderRadius: 8,
                                      icon: Icon(
                                        Icons.keyboard_arrow_right,
                                        color:
                                            FlutterFlowTheme.of(context).info,
                                        size: 45,
                                      ),
                                      onPressed: () async {
                                        await actions.sendTvCommand(
                                          FFAppState().tvIp,
                                          'RIGHT',
                                        );
                                      },
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0, -1),
                                  child: FlutterFlowIconButton(
                                    borderRadius: 8,
                                    icon: Icon(
                                      Icons.keyboard_arrow_up,
                                      color: FlutterFlowTheme.of(context).info,
                                      size: 45,
                                    ),
                                    onPressed: () async {
                                      await actions.sendTvCommand(
                                        FFAppState().tvIp,
                                        'UP',
                                      );
                                    },
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0, 1),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 120, 0, 0),
                                    child: FlutterFlowIconButton(
                                      borderRadius: 8,
                                      icon: Icon(
                                        Icons.expand_more,
                                        color:
                                            FlutterFlowTheme.of(context).info,
                                        size: 45,
                                      ),
                                      onPressed: () async {
                                        await actions.sendTvCommand(
                                          FFAppState().tvIp,
                                          'DOWN',
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(10, 375, 10, 0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.32,
                            height: MediaQuery.sizeOf(context).height * 0.15,
                            decoration: BoxDecoration(
                              color: Color(0xFF051427),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(300),
                                topRight: Radius.circular(300),
                                bottomLeft: Radius.circular(300),
                                bottomRight: Radius.circular(300),
                              ),
                              border: Border.all(
                                color: Color(0xFF646262),
                                width: 2,
                              ),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  await actions.sendTvCommand(
                                    FFAppState().tvIp,
                                    'OK',
                                  );
                                },
                                child: Text(
                                  'OK',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .displayMedium
                                      .override(
                                        font: GoogleFonts.interTight(
                                          fontWeight: FontWeight.w300,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .displayMedium
                                                  .fontStyle,
                                        ),
                                        color: Color(0xFFC5E3F7),
                                        fontSize: 40,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w300,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .displayMedium
                                            .fontStyle,
                                      ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

