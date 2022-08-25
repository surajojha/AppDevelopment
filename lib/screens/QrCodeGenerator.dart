import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'dart:math' as math;

class QrCodeGenerator extends StatefulWidget {
  const QrCodeGenerator({Key? key}) : super(key: key);

  @override
  State<QrCodeGenerator> createState() => _QrCodeGeneratorState();
}

class _QrCodeGeneratorState extends State<QrCodeGenerator> {
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF313131),
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: const Text(
          "QR Code Generator",
          style: TextStyle(fontFamily: "Sofia"),
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              QrImage(
                data: controller.text,
                size: (math.min(MediaQuery.of(context).size.width,
                        MediaQuery.of(context).size.height)) /
                    1.2,
                backgroundColor: Colors.white,
              ),
              const SizedBox(
                height: 40,
              ),
              buildTextField(context),
            ],
          ),
        ),
      ),
    );
  }

  buildTextField(BuildContext context) {
    Container(
      padding: const EdgeInsets.all(20),
      child: TextField(
        controller: controller,
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
        decoration: InputDecoration(
            hintText: 'Enter the data',
            hintStyle: const TextStyle(
              color: Colors.white,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(
                color: Color(0XFF5fa693),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(
                color: Color(0XFF5fa693),
              ),
            ),
            suffixIcon: (IconButton(
              color: const Color(0XFF5fa693),
              icon: const Icon(
                Icons.done,
                size: 30,
              ),
              onPressed: () {
                setState(() {});
              },
            ))),
      ),
    );
  }
}
