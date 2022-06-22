import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';

class PokemonInfoWidget extends StatefulWidget {
  const PokemonInfoWidget({
    Key key,
    this.pokemonUrlApi,
  }) : super(key: key);

  final dynamic pokemonUrlApi;

  @override
  _PokemonInfoWidgetState createState() => _PokemonInfoWidgetState();
}

class _PokemonInfoWidgetState extends State<PokemonInfoWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // On page load action.
    SchedulerBinding.instance?.addPostFrameCallback((_) async {
      setState(() => FFAppState().currPokeName = getJsonField(
            widget.pokemonUrlApi,
            r'''$.name''',
          ).toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(MediaQuery.of(context).size.height * 0.05),
        child: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryColor,
          iconTheme:
              IconThemeData(color: FlutterFlowTheme.of(context).secondaryColor),
          automaticallyImplyLeading: false,
          actions: [],
          elevation: 4,
        ),
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: FutureBuilder<ApiCallResponse>(
            future: GetSpeciesByNameCall.call(
              pokeName: FFAppState().currPokeName,
            ),
            builder: (context, snapshot) {
              // Customize what your widget looks like when it's loading.
              if (!snapshot.hasData) {
                return Center(
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: CircularProgressIndicator(
                      color: FlutterFlowTheme.of(context).primaryColor,
                    ),
                  ),
                );
              }
              final columnGetSpeciesByNameResponse = snapshot.data;
              return SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8, 8, 8, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Align(
                                        alignment: AlignmentDirectional(0, 0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8, 8, 8, 8),
                                          child: Text(
                                            FFAppState().currPokeName,
                                            style: FlutterFlowTheme.of(context)
                                                .title1
                                                .override(
                                                  fontFamily: 'pokemonFont',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .tertiaryColor,
                                                  fontSize: 32,
                                                  fontWeight: FontWeight.bold,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 24, 0, 24),
                                  child: FutureBuilder<ApiCallResponse>(
                                    future: GetPokemonByNameCall.call(
                                      pokeName: FFAppState().currPokeName,
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50,
                                            height: 50,
                                            child: CircularProgressIndicator(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryColor,
                                            ),
                                          ),
                                        );
                                      }
                                      final pictureGetPokemonByNameResponse =
                                          snapshot.data;
                                      return Image.network(
                                        getJsonField(
                                          (pictureGetPokemonByNameResponse
                                                  ?.jsonBody ??
                                              ''),
                                          r'''$.sprites.front_default''',
                                        ),
                                        width: 200,
                                        height: 200,
                                        fit: BoxFit.cover,
                                      );
                                    },
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12, 12, 12, 12),
                                    child: FutureBuilder<ApiCallResponse>(
                                      future: GetPokemonByNameCall.call(
                                        pokeName: FFAppState().currPokeName,
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50,
                                              height: 50,
                                              child: CircularProgressIndicator(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                              ),
                                            ),
                                          );
                                        }
                                        final physicalDetailsGetPokemonByNameResponse =
                                            snapshot.data;
                                        return Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                              )
                                            ],
                                            gradient: LinearGradient(
                                              colors: [
                                                FlutterFlowTheme.of(context)
                                                    .secondaryColor,
                                                FlutterFlowTheme.of(context)
                                                    .primaryColor
                                              ],
                                              stops: [0, 1],
                                              begin:
                                                  AlignmentDirectional(0, -1),
                                              end: AlignmentDirectional(0, 1),
                                            ),
                                          ),
                                          alignment: AlignmentDirectional(
                                              0.050000000000000044, 0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 8, 0, 8),
                                            child: SingleChildScrollView(
                                              scrollDirection: Axis.horizontal,
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -1, 0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(8,
                                                                      8, 8, 8),
                                                          child: Text(
                                                            'Height',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .title3
                                                                .override(
                                                                  fontFamily:
                                                                      'pokemonFont',
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                          ),
                                                        ),
                                                        Text(
                                                          functions
                                                              .heightFormatting(
                                                                  getJsonField(
                                                            (physicalDetailsGetPokemonByNameResponse
                                                                    ?.jsonBody ??
                                                                ''),
                                                            r'''$.height''',
                                                          )),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'pokemonFont',
                                                                useGoogleFonts:
                                                                    false,
                                                              ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0, 0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  4, 4, 4, 4),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8,
                                                                        8,
                                                                        8,
                                                                        8),
                                                            child: Text(
                                                              'Type',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .title3
                                                                  .override(
                                                                    fontFamily:
                                                                        'pokemonFont',
                                                                    useGoogleFonts:
                                                                        false,
                                                                  ),
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    1, 0),
                                                            child: Builder(
                                                              builder:
                                                                  (context) {
                                                                final typesList =
                                                                    getJsonField(
                                                                          (physicalDetailsGetPokemonByNameResponse?.jsonBody ??
                                                                              ''),
                                                                          r'''$.types''',
                                                                        )?.toList() ??
                                                                        [];
                                                                return Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: List.generate(
                                                                      typesList
                                                                          .length,
                                                                      (typesListIndex) {
                                                                    final typesListItem =
                                                                        typesList[
                                                                            typesListIndex];
                                                                    return Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              4,
                                                                              4,
                                                                              4,
                                                                              4),
                                                                      child:
                                                                          Text(
                                                                        getJsonField(
                                                                          typesListItem,
                                                                          r'''$.type.name''',
                                                                        ).toString(),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1,
                                                                      ),
                                                                    );
                                                                  }),
                                                                );
                                                              },
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    8, 8, 8, 8),
                                                        child: Text(
                                                          'Weight',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .title3
                                                              .override(
                                                                fontFamily:
                                                                    'pokemonFont',
                                                                useGoogleFonts:
                                                                    false,
                                                              ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 0, 0, 8),
                                                        child: Text(
                                                          getJsonField(
                                                            (physicalDetailsGetPokemonByNameResponse
                                                                    ?.jsonBody ??
                                                                ''),
                                                            r'''$.weight''',
                                                          ).toString(),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'pokemonFont',
                                                                useGoogleFonts:
                                                                    false,
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
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-0.85, 0),
                            child: Text(
                              'Evolutions',
                              style:
                                  FlutterFlowTheme.of(context).title1.override(
                                        fontFamily: 'pokemonFont',
                                        useGoogleFonts: false,
                                      ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.05, 0),
                            child: FutureBuilder<ApiCallResponse>(
                              future: OpenPokemonUrlCall.call(
                                pokeAPIUrl: getJsonField(
                                  (columnGetSpeciesByNameResponse?.jsonBody ??
                                      ''),
                                  r'''$.evolution_chain..url''',
                                ).toString(),
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50,
                                      height: 50,
                                      child: CircularProgressIndicator(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                      ),
                                    ),
                                  );
                                }
                                final columnOpenPokemonUrlResponse =
                                    snapshot.data;
                                return Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(0.05, 0),
                                      child: Builder(
                                        builder: (context) {
                                          final evolutionTree = getJsonField(
                                                (columnOpenPokemonUrlResponse
                                                        ?.jsonBody ??
                                                    ''),
                                                r'''$.chain..species''',
                                              )?.toList() ??
                                              [];
                                          return SingleChildScrollView(
                                            scrollDirection: Axis.horizontal,
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: List.generate(
                                                  evolutionTree.length,
                                                  (evolutionTreeIndex) {
                                                final evolutionTreeItem =
                                                    evolutionTree[
                                                        evolutionTreeIndex];
                                                return InkWell(
                                                  onTap: () async {
                                                    context.pushNamed(
                                                      'pokemonInfo',
                                                      queryParams: {
                                                        'pokemonUrlApi':
                                                            serializeParam(
                                                                evolutionTreeItem,
                                                                ParamType.JSON),
                                                      }.withoutNulls,
                                                    );
                                                  },
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    8, 8, 8, 8),
                                                        child: FutureBuilder<
                                                            ApiCallResponse>(
                                                          future:
                                                              GetPokemonByNameCall
                                                                  .call(
                                                            pokeName:
                                                                getJsonField(
                                                              evolutionTreeItem,
                                                              r'''$.name''',
                                                            ).toString(),
                                                          ),
                                                          builder: (context,
                                                              snapshot) {
                                                            // Customize what your widget looks like when it's loading.
                                                            if (!snapshot
                                                                .hasData) {
                                                              return Center(
                                                                child: SizedBox(
                                                                  width: 50,
                                                                  height: 50,
                                                                  child:
                                                                      CircularProgressIndicator(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryColor,
                                                                  ),
                                                                ),
                                                              );
                                                            }
                                                            final circleImageGetPokemonByNameResponse =
                                                                snapshot.data;
                                                            return Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  0.25,
                                                              height: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  0.25,
                                                              clipBehavior: Clip
                                                                  .antiAlias,
                                                              decoration:
                                                                  BoxDecoration(
                                                                shape: BoxShape
                                                                    .circle,
                                                              ),
                                                              child:
                                                                  Image.network(
                                                                getJsonField(
                                                                  (circleImageGetPokemonByNameResponse
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                  r'''$.sprites.front_default''',
                                                                ),
                                                                fit:
                                                                    BoxFit.fill,
                                                              ),
                                                            );
                                                          },
                                                        ),
                                                      ),
                                                      Text(
                                                        getJsonField(
                                                          evolutionTreeItem,
                                                          r'''$.name''',
                                                        ).toString(),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1,
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              }),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
