import 'package:flutter/material.dart';
import 'custom_code/actions/send_tv_command.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  // IP da sua TV Samsung
  final String tvIp = '192.168.1.100'; 

  void _sendCommand(String command) {
    sendTvCommand(tvIp, command);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF060212),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF060212),
              Color(0xFF06092B),
              Color(0xFF7F7F5FC),
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Botão Power
              IconButton(
                iconSize: 48,
                icon: const Icon(Icons.power_settings_new, color: Colors.redAccent),
                onPressed: () => _sendCommand('POWER'),
              ),
              const SizedBox(height: 40),

              // D-Pad Controlo
              SizedBox(
                width: 260,
                height: 260,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    // Círculo exterior decorativo
                    Container(
                      width: 240,
                      height: 240,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white24, width: 2),
                      ),
                    ),
                    // Seta Cima
                    Align(
                      alignment: const Alignment(0, -0.8),
                      child: IconButton(
                        icon: const Icon(Icons.keyboard_arrow_up, color: Colors.white, size: 36),
                        onPressed: () => _sendCommand('UP'),
                      ),
                    ),
                    // Seta Baixo
                    Align(
                      alignment: const Alignment(0, 0.8),
                      child: IconButton(
                        icon: const Icon(Icons.keyboard_arrow_down, color: Colors.white, size: 36),
                        onPressed: () => _sendCommand('DOWN'),
                      ),
                    ),
                    // Seta Esquerda
                    Align(
                      alignment: const Alignment(-0.8, 0),
                      child: IconButton(
                        icon: const Icon(Icons.keyboard_arrow_left, color: Colors.white, size: 36),
                        onPressed: () => _sendCommand('LEFT'),
                      ),
                    ),
                    // Seta Direita
                    Align(
                      alignment: const Alignment(0.8, 0),
                      child: IconButton(
                        icon: const Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 36),
                        onPressed: () => _sendCommand('RIGHT'),
                      ),
                    ),
                    // Botão OK Central
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                        padding: const EdgeInsets.all(24),
                        backgroundColor: const Color(0xFF0B192C),
                      ),
                      onPressed: () => _sendCommand('OK'),
                      child: const Text(
                        'OK',
                        style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
