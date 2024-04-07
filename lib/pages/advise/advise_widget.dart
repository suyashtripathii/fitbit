import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_youtube_player.dart';
import 'package:flutter/material.dart';
import 'advise_model.dart';
export 'advise_model.dart';

class AdviseWidget extends StatefulWidget {
  const AdviseWidget({super.key});

  @override
  State<AdviseWidget> createState() => _AdviseWidgetState();
}

class _AdviseWidgetState extends State<AdviseWidget> {
  late AdviseModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdviseModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubeFullScreenWrapper(
      child: GestureDetector(
        onTap: () => _model.unfocusNode.canRequestFocus
            ? FocusScope.of(context).requestFocus(_model.unfocusNode)
            : FocusScope.of(context).unfocus(),
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).secondary,
          body: SafeArea(
            top: true,
            child: Stack(
              children: [
                const Align(
                  alignment: AlignmentDirectional(0.0, -0.9),
                  child: FlutterFlowYoutubePlayer(
                    url: 'https://youtu.be/-_VhU5rqyko?si=nE8bZjiOa5Gf_ikQ',
                    autoPlay: false,
                    looping: true,
                    mute: false,
                    showControls: true,
                    showFullScreen: true,
                    strictRelatedVideos: false,
                  ),
                ),
                const Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: FlutterFlowYoutubePlayer(
                    url: 'https://youtu.be/OtpBE6-6hqw?si=7zSaxhIRN8hWs_Qp',
                    autoPlay: false,
                    looping: true,
                    mute: false,
                    showControls: true,
                    showFullScreen: true,
                    strictRelatedVideos: false,
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(-0.08, 0.66),
                  child: FlutterFlowIconButton(
                    borderColor: FlutterFlowTheme.of(context).primary,
                    borderRadius: 20.0,
                    borderWidth: 1.0,
                    buttonSize: 40.0,
                    fillColor: FlutterFlowTheme.of(context).accent1,
                    icon: Icon(
                      Icons.add,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 24.0,
                    ),
                    onPressed: () {
                      print('IconButton pressed ...');
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
