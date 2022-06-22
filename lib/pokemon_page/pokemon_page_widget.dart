import '../backend/api_requests/api_calls.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PokemonPageWidget extends StatefulWidget {
  const PokemonPageWidget({Key key}) : super(key: key);

  @override
  _PokemonPageWidgetState createState() => _PokemonPageWidgetState();
}

class _PokemonPageWidgetState extends State<PokemonPageWidget> {
  TextEditingController textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      FlutterFlowTheme.of(context).pokemonLogoYellowShadow,
                      Color(0xFFCC0000)
                    ],
                    stops: [0, 1],
                    begin: AlignmentDirectional(1, 0),
                    end: AlignmentDirectional(-1, 0),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Pokemon!',
                      style: FlutterFlowTheme.of(context).title1.override(
                            fontFamily: 'pokemonFont',
                            color: Colors.white,
                            fontSize: 36,
                            useGoogleFonts: false,
                          ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 3,
                                    color: Color(0x39000000),
                                    offset: Offset(0, 1),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(40),
                              ),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 4, 0, 4),
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  4, 0, 4, 0),
                                          child: TextFormField(
                                            controller: textController,
                                            onChanged: (_) =>
                                                EasyDebounce.debounce(
                                              'textController',
                                              Duration(milliseconds: 2000),
                                              () => setState(() {}),
                                            ),
                                            autofocus: true,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText: 'Search a Pokemon',
                                              labelStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'Lexend Deca',
                                                    color: Color(0xFF57636C),
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                  ),
                                              hintText: 'name',
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 2,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 2,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              prefixIcon: Icon(
                                                Icons.search_sharp,
                                                color: Color(0xFF57636C),
                                                size: 16,
                                              ),
                                              suffixIcon: textController
                                                      .text.isNotEmpty
                                                  ? InkWell(
                                                      onTap: () => setState(
                                                        () => textController
                                                            ?.clear(),
                                                      ),
                                                      child: Icon(
                                                        Icons.clear,
                                                        color:
                                                            Color(0xFF757575),
                                                        size: 22,
                                                      ),
                                                    )
                                                  : null,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Lexend Deca',
                                                  color: Color(0xFF262D34),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 8, 0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            if ((textController.text != null) &&
                                                (textController.text != '')) {
                                              setState(() => FFAppState()
                                                  .showFullList = false);
                                              setState(() =>
                                                  FFAppState().searchItem =
                                                      textController.text);
                                            } else {
                                              setState(() => FFAppState()
                                                  .showFullList = true);
                                            }
                                          },
                                          text: 'Search',
                                          options: FFButtonOptions(
                                            width: 100,
                                            height: 40,
                                            color: Color(0xFF4B39EF),
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .subtitle2
                                                    .override(
                                                      fontFamily: 'Lexend Deca',
                                                      color: Colors.white,
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                    ),
                                            elevation: 2,
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                              width: 1,
                                            ),
                                            borderRadius: 50,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                          child: FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30,
                            borderWidth: 1,
                            buttonSize: 40,
                            icon: Icon(
                              FFIcons.kswitch,
                              color: Colors.black,
                              size: 30,
                            ),
                            onPressed: () async {
                              setState(() => FFAppState().ascending =
                                  !(FFAppState().ascending));
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              if (FFAppState().showFullList ?? true)
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                    child: FutureBuilder<ApiCallResponse>(
                      future: GetPokemonListCall.call(
                        maxShown: 140,
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
                                    FlutterFlowTheme.of(context).primaryColor,
                              ),
                            ),
                          );
                        }
                        final gridViewGetPokemonListResponse = snapshot.data;
                        return Builder(
                          builder: (context) {
                            final pokemonList = getJsonField(
                                  (gridViewGetPokemonListResponse?.jsonBody ??
                                      ''),
                                  r'''$.results''',
                                )?.toList() ??
                                [];
                            return GridView.builder(
                              padding: EdgeInsets.zero,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 4,
                                mainAxisSpacing: 4,
                                childAspectRatio: 1,
                              ),
                              scrollDirection: Axis.vertical,
                              itemCount: pokemonList.length,
                              itemBuilder: (context, pokemonListIndex) {
                                final pokemonListItem =
                                    pokemonList[pokemonListIndex];
                                return InkWell(
                                  onTap: () async {
                                    context.pushNamed(
                                      'pokemonInfo',
                                      queryParams: {
                                        'pokemonUrlApi': serializeParam(
                                            pokemonListItem, ParamType.JSON),
                                      }.withoutNulls,
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.fade,
                                          duration: Duration(milliseconds: 300),
                                        ),
                                      },
                                    );
                                  },
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        functions.digitFormat(pokemonListIndex),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      ),
                                      FutureBuilder<ApiCallResponse>(
                                        future: GetPokemonCall.call(
                                          id: functions
                                              .plusOne(pokemonListIndex)
                                              .toString(),
                                        ),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
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
                                          final pokeImageGetPokemonResponse =
                                              snapshot.data;
                                          return Image.network(
                                            getJsonField(
                                              (pokeImageGetPokemonResponse
                                                      ?.jsonBody ??
                                                  ''),
                                              r'''$.sprites.front_default''',
                                            ),
                                            width: 100,
                                            height: 100,
                                            fit: BoxFit.cover,
                                          );
                                        },
                                      ),
                                      Text(
                                        getJsonField(
                                          pokemonListItem,
                                          r'''$.name''',
                                        ).toString(),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      ),
                                    ],
                                  ),
                                );
                              },
                            );
                          },
                        );
                      },
                    ),
                  ),
                ),
              if (!(FFAppState().showFullList) ?? true)
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                    child: FutureBuilder<List<PokemonRecord>>(
                      future: PokemonRecord.search(
                        term: textController.text,
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
                                    FlutterFlowTheme.of(context).primaryColor,
                              ),
                            ),
                          );
                        }
                        List<PokemonRecord> gridViewPokemonRecordList =
                            snapshot.data;
                        // Customize what your widget looks like with no search results.
                        if (snapshot.data.isEmpty) {
                          return Container(
                            height: 100,
                            child: Center(
                              child: Text('No results.'),
                            ),
                          );
                        }
                        return GridView.builder(
                          padding: EdgeInsets.zero,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 4,
                            mainAxisSpacing: 4,
                            childAspectRatio: 1,
                          ),
                          scrollDirection: Axis.vertical,
                          itemCount: gridViewPokemonRecordList.length,
                          itemBuilder: (context, gridViewIndex) {
                            final gridViewPokemonRecord =
                                gridViewPokemonRecordList[gridViewIndex];
                            return FutureBuilder<ApiCallResponse>(
                              future: GetPokemonCall.call(
                                id: gridViewPokemonRecord.id.toString(),
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
                                final columnGetPokemonResponse = snapshot.data;
                                return InkWell(
                                  onTap: () async {
                                    context.pushNamed(
                                      'pokemonInfo',
                                      queryParams: {
                                        'pokemonUrlApi': serializeParam(
                                            (columnGetPokemonResponse
                                                    ?.jsonBody ??
                                                ''),
                                            ParamType.JSON),
                                      }.withoutNulls,
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.fade,
                                          duration: Duration(milliseconds: 300),
                                        ),
                                      },
                                    );
                                  },
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        getJsonField(
                                          (columnGetPokemonResponse?.jsonBody ??
                                              ''),
                                          r'''$.id''',
                                        ).toString(),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      ),
                                      Image.network(
                                        getJsonField(
                                          (columnGetPokemonResponse?.jsonBody ??
                                              ''),
                                          r'''$.sprites.front_default''',
                                        ),
                                        width: 100,
                                        height: 100,
                                        fit: BoxFit.cover,
                                      ),
                                      Text(
                                        gridViewPokemonRecord.name,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      ),
                                    ],
                                  ),
                                );
                              },
                            );
                          },
                        );
                      },
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
