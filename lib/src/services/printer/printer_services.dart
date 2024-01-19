import 'dart:typed_data';
import 'package:pdf/pdf.dart';

import 'package:pdf/widgets.dart' as pw;
import 'package:pdf/widgets.dart';

class PrinterServices {
  /// generate pdf with multi page for long content data, like invoice with table
  Future<Uint8List> generateMultiPagePdf({
    required PdfPageFormat format,
    required List<Widget> Function(Context) build,
  }) async {
    final doc = pw.Document(
      version: PdfVersion.pdf_1_5,
      compress: true,
    );

    doc.addPage(
      pw.MultiPage(
        pageFormat: format,
        build: build,
      ),
    );

    return doc.save();
  }
}
