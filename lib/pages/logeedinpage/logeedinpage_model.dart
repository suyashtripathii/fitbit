import '/flutter_flow/flutter_flow_util.dart';
import 'logeedinpage_widget.dart' show LogeedinpageWidget;
import 'package:flutter/material.dart';

class LogeedinpageModel extends FlutterFlowModel<LogeedinpageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
