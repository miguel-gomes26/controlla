// Automatic FlutterFlow imports
import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!
import "dart:convert" show base64Encode, jsonEncode, utf8;
import 'dart:html' as html;
import 'package:flutter/foundation.dart';

Future sendTvCommand(
  String tvIp,
  String command,
) async {
  if (tvIp.isEmpty || command.isEmpty) return;

  Map<String, String> samsungKeys = {
    'POWER': 'KEY_POWER',
    'VOL_UP': 'KEY_VOLUP',
    'VOL_DOWN': 'KEY_VOLDOWN',
    'MUTE': 'KEY_MUTE',
    'HOME': 'KEY_HOME',
    'BACK': 'KEY_RETURN',
    'UP': 'KEY_UP',
    'DOWN': 'KEY_DOWN',
    'LEFT': 'KEY_LEFT',
    'RIGHT': 'KEY_RIGHT',
    'OK': 'KEY_ENTER',
    'NETFLIX': 'KEY_NETFLIX',
    'YOUTUBE': 'KEY_YOUTUBE',
    'MIDI': 'KEY_SOURCE',
  };

  final keyToCall = samsungKeys[command] ?? command;
  final appNameBase64 = base64Encode(utf8.encode('ControllaApp'));
  final wsUrl =
      'ws://$tvIp:8001/api/v2/channels/samsung.remote.control?name=$appNameBase64';

  try {
    final socket = html.WebSocket(wsUrl);

    socket.onOpen.listen((_) {
      final payload = jsonEncode({
        "method": "ms.remote.control",
        "params": {
          "Cmd": "Click",
          "DataOfCmd": keyToCall,
          "Option": "false",
          "TypeOfRemote": "SendRemoteKey"
        }
      });
      socket.send(payload);

      Future.delayed(const Duration(milliseconds: 300), () {
        socket.close();
      });
    });
  } catch (e) {
    debugPrint("Erro ao enviar comando para a TV Samsung ($tvIp): $e");
  }
}

