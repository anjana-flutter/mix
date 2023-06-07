import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class BottomQRScanner extends StatefulWidget {
  @override
  _BottomQRScannerState createState() => _BottomQRScannerState();
}

class _BottomQRScannerState extends State<BottomQRScanner> {
  QRViewController? controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom QR Scanner'),
      ),
      body: Stack(
        children: [
          QRView(
            key: qrKey,
            onQRViewCreated: _onQRViewCreated,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Scan QR Code'),
                  ElevatedButton(
                    onPressed: () {
                      // Perform any action on button press
                      // For example, navigate to a new screen or perform a specific task.
                      print('Button Pressed');
                    },
                    child: Text('Button'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      // Process the scanned data here
      print(scanData.code);
    });
  }
}
