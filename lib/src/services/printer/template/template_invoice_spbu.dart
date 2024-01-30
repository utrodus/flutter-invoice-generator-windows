import 'dart:typed_data';

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class TemplateInvoiceSpbu {
  /// NOTE: Get Template
  pw.Widget get({
    required String noSpbuValue,
    required String alamatSpbuValue,
    required String noTelpValue,
    required String tglInvoiceValue,
    required String noInvoiceValue,
    required String jenisBbmValue,
    required String totalLiterValue,
    required String hargaPerliterValue,
    required String totalHargaValue,
    required String totalBayarValue,
    required String totalKembalianValue,
    required String nopolValue,
    required String pelangganValue,
    required String operatorValue,
    required ByteData fontSnaredrum,
    required ByteData fontTelidonHvRegular,
  }) {
    return pw.Padding(
        padding: const pw.EdgeInsets.symmetric(
          horizontal: 15,
        ),
        child: pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            pw.Text(
              noSpbuValue,
              style: pw.TextStyle(
                fontSize: 25,
                fontWeight: pw.FontWeight.bold,
                font: pw.Font.ttf(fontSnaredrum),
              ),
            ),
            pw.Text(
              alamatSpbuValue,
              style: pw.TextStyle(
                fontSize: 11,
                font: pw.Font.ttf(fontTelidonHvRegular),
                height: 1.2,
              ),
            ),
            pw.Text(
              noTelpValue,
              style: pw.TextStyle(
                fontSize: 11,
                font: pw.Font.ttf(fontTelidonHvRegular),
                height: 1.2,
              ),
            ),
            pw.Text(
              tglInvoiceValue,
              style: pw.TextStyle(
                fontSize: 10,
                font: pw.Font.ttf(fontTelidonHvRegular),
                height: 1.2,
              ),
            ),
            pw.Container(
              margin: const pw.EdgeInsets.symmetric(vertical: 12),
              height: 1,
              color: PdfColors.black,
            ),
            pw.Table(
              columnWidths: {
                0: const pw.FixedColumnWidth(110),
                1: const pw.FixedColumnWidth(15),
                2: const pw.FixedColumnWidth(150),
              },
              children: [
                pw.TableRow(
                  children: [
                    pw.Text(
                      "No. Nota",
                      style: pw.TextStyle(
                        fontSize: 11,
                        font: pw.Font.ttf(fontTelidonHvRegular),
                      ),
                    ),
                    pw.Text(
                      ":",
                      style: pw.TextStyle(
                        fontSize: 11,
                        font: pw.Font.ttf(fontTelidonHvRegular),
                      ),
                    ),
                    pw.Text(
                      noInvoiceValue,
                      style: pw.TextStyle(
                        fontSize: 11,
                        font: pw.Font.ttf(fontTelidonHvRegular),
                      ),
                    ),
                  ],
                ),
                pw.TableRow(children: [pw.SizedBox(height: 1)]),
                pw.TableRow(
                  children: [
                    pw.Text(
                      "Jenis BBM",
                      style: pw.TextStyle(
                        fontSize: 11,
                        font: pw.Font.ttf(fontTelidonHvRegular),
                        height: 1.4,
                      ),
                    ),
                    pw.Text(
                      ":",
                      style: pw.TextStyle(
                        fontSize: 11,
                        font: pw.Font.ttf(fontTelidonHvRegular),
                        height: 1.4,
                      ),
                    ),
                    pw.Text(
                      jenisBbmValue,
                      style: pw.TextStyle(
                        fontSize: 11,
                        font: pw.Font.ttf(fontTelidonHvRegular),
                        height: 1.4,
                      ),
                    ),
                  ],
                ),
                pw.TableRow(children: [pw.SizedBox(height: 1)]),
              ],
            ),
            pw.Table(
              columnWidths: {
                0: const pw.FixedColumnWidth(100),
                1: const pw.FixedColumnWidth(15),
                2: const pw.FixedColumnWidth(30),
                3: const pw.FixedColumnWidth(100),
              },
              children: [
                pw.TableRow(
                  children: [
                    pw.Text(
                      "Harga/liter",
                      style: pw.TextStyle(
                        fontSize: 11,
                        font: pw.Font.ttf(fontTelidonHvRegular),
                        height: 1.4,
                      ),
                    ),
                    pw.Text(
                      ":",
                      style: pw.TextStyle(
                        fontSize: 11,
                        font: pw.Font.ttf(fontTelidonHvRegular),
                        height: 1.4,
                      ),
                    ),
                    pw.Text(
                      "Rp.",
                      style: pw.TextStyle(
                        fontSize: 11,
                        font: pw.Font.ttf(fontTelidonHvRegular),
                        height: 1.5,
                      ),
                    ),
                    pw.Text(
                      hargaPerliterValue,
                      style: pw.TextStyle(
                        fontSize: 11,
                        font: pw.Font.ttf(fontTelidonHvRegular),
                        height: 1.4,
                      ),
                      textAlign: pw.TextAlign.right,
                    ),
                  ],
                ),
                pw.TableRow(children: [pw.SizedBox(height: 1)]),
                pw.TableRow(
                  children: [
                    pw.Text(
                      "Liter",
                      style: pw.TextStyle(
                        fontSize: 11,
                        font: pw.Font.ttf(fontTelidonHvRegular),
                        height: 1.4,
                      ),
                    ),
                    pw.Text(
                      ":",
                      style: pw.TextStyle(
                        fontSize: 11,
                        font: pw.Font.ttf(fontTelidonHvRegular),
                        height: 1.4,
                      ),
                    ),
                    pw.Text(
                      "",
                      style: pw.TextStyle(
                        fontSize: 11,
                        font: pw.Font.ttf(fontTelidonHvRegular),
                        height: 1.5,
                      ),
                    ),
                    pw.Text(
                      totalLiterValue,
                      style: pw.TextStyle(
                        fontSize: 11,
                        font: pw.Font.ttf(fontTelidonHvRegular),
                        height: 1.4,
                      ),
                      textAlign: pw.TextAlign.right,
                    ),
                  ],
                ),
                pw.TableRow(children: [pw.SizedBox(height: 1)]),
                pw.TableRow(
                  children: [
                    pw.Text(
                      "Total",
                      style: pw.TextStyle(
                          fontSize: 15,
                          height: 1.5,
                          fontWeight: pw.FontWeight.bold,
                          font: pw.Font.ttf(fontTelidonHvRegular)),
                    ),
                    pw.Text(
                      ":",
                      style: pw.TextStyle(
                        fontSize: 14,
                        font: pw.Font.ttf(fontTelidonHvRegular),
                        height: 1.5,
                        fontWeight: pw.FontWeight.bold,
                      ),
                    ),
                    pw.Text(
                      "Rp.",
                      style: pw.TextStyle(
                        fontSize: 14,
                        font: pw.Font.ttf(fontTelidonHvRegular),
                        height: 1.5,
                        fontWeight: pw.FontWeight.bold,
                      ),
                    ),
                    pw.Text(
                      totalHargaValue,
                      style: pw.TextStyle(
                        fontSize: 14,
                        font: pw.Font.ttf(fontTelidonHvRegular),
                        height: 1.5,
                        fontWeight: pw.FontWeight.bold,
                      ),
                      textAlign: pw.TextAlign.right,
                    ),
                  ],
                ),
                pw.TableRow(children: [pw.SizedBox(height: 1)]),
              ],
            ),
            pw.SizedBox(
              height: 5,
            ),
            pw.Container(
              height: 1,
              color: PdfColors.black,
            ),
            pw.SizedBox(
              height: 0.8,
            ),
            pw.Container(
              height: 1,
              color: PdfColors.black,
            ),
            pw.SizedBox(
              height: 5,
            ),
            pw.Table(
              columnWidths: {
                0: const pw.FixedColumnWidth(100),
                1: const pw.FixedColumnWidth(15),
                2: const pw.FixedColumnWidth(30),
                3: const pw.FixedColumnWidth(100),
              },
              children: [
                pw.TableRow(
                  children: [
                    pw.Text(
                      "Tunai",
                      style: pw.TextStyle(
                        fontSize: 11,
                        font: pw.Font.ttf(fontTelidonHvRegular),
                        height: 1.4,
                      ),
                    ),
                    pw.Text(
                      ":",
                      style: pw.TextStyle(
                        fontSize: 11,
                        font: pw.Font.ttf(fontTelidonHvRegular),
                        height: 1.4,
                      ),
                    ),
                    pw.Text(
                      "Rp.",
                      style: pw.TextStyle(
                        fontSize: 11,
                        font: pw.Font.ttf(fontTelidonHvRegular),
                        height: 1.4,
                      ),
                    ),
                    pw.Text(
                      totalBayarValue,
                      style: pw.TextStyle(
                        fontSize: 11,
                        font: pw.Font.ttf(fontTelidonHvRegular),
                        height: 1.4,
                      ),
                      textAlign: pw.TextAlign.right,
                    ),
                  ],
                ),
              ],
            ),
            pw.Table(
              columnWidths: {
                0: const pw.FixedColumnWidth(100),
                1: const pw.FixedColumnWidth(15),
                2: const pw.FixedColumnWidth(30),
                3: const pw.FixedColumnWidth(100),
              },
              children: [
                pw.TableRow(
                  children: [
                    pw.Text(
                      "Kembalian",
                      style: pw.TextStyle(
                        fontSize: 11,
                        font: pw.Font.ttf(fontTelidonHvRegular),
                        height: 1.4,
                      ),
                    ),
                    pw.Text(
                      ":",
                      style: pw.TextStyle(
                        fontSize: 11,
                        font: pw.Font.ttf(fontTelidonHvRegular),
                        height: 1.4,
                      ),
                    ),
                    pw.Text(
                      "Rp.",
                      style: pw.TextStyle(
                        fontSize: 11,
                        font: pw.Font.ttf(fontTelidonHvRegular),
                        height: 1.4,
                      ),
                    ),
                    pw.Text(
                      totalKembalianValue,
                      style: pw.TextStyle(
                        fontSize: 11,
                        font: pw.Font.ttf(fontTelidonHvRegular),
                        height: 1.4,
                      ),
                      textAlign: pw.TextAlign.right,
                    ),
                  ],
                ),
              ],
            ),
            pw.SizedBox(
              height: 20,
            ),
            pw.Table(
              columnWidths: {
                0: const pw.FixedColumnWidth(110),
                1: const pw.FixedColumnWidth(15),
                2: const pw.FixedColumnWidth(140),
              },
              children: [
                pw.TableRow(
                  children: [
                    pw.Text(
                      "ID Kendaraan",
                      style: pw.TextStyle(
                        fontSize: 11,
                        font: pw.Font.ttf(fontTelidonHvRegular),
                        height: 1.4,
                      ),
                    ),
                    pw.Text(
                      ":",
                      style: pw.TextStyle(
                        fontSize: 11,
                        font: pw.Font.ttf(fontTelidonHvRegular),
                        height: 1.4,
                      ),
                    ),
                    pw.Text(
                      nopolValue,
                      style: pw.TextStyle(
                        fontSize: 11,
                        font: pw.Font.ttf(fontTelidonHvRegular),
                        height: 1.4,
                      ),
                    ),
                  ],
                ),
                // pw.TableRow(children: [pw.SizedBox(height: 1)]),
                // pw.TableRow(
                //   children: [
                //     pw.Text(
                //       "Pelanggan",
                //       style: pw.TextStyle(
                //         fontSize: 11,
                //         font: pw.Font.ttf(fontTelidonHvRegular),
                //         height: 1.4,
                //       ),
                //     ),
                //     pw.Text(
                //       ":",
                //       style: pw.TextStyle(
                //         fontSize: 11,
                //         font: pw.Font.ttf(fontTelidonHvRegular),
                //         height: 1.4,
                //       ),
                //     ),
                //     pw.Text(
                //       pelangganValue,
                //       style: pw.TextStyle(
                //         fontSize: 11,
                //         font: pw.Font.ttf(fontTelidonHvRegular),
                //         height: 1.4,
                //       ),
                //     ),
                //   ],
                // ),
                pw.TableRow(children: [pw.SizedBox(height: 1)]),
                pw.TableRow(
                  children: [
                    pw.Text(
                      "Odometer",
                      style: pw.TextStyle(
                        fontSize: 11,
                        font: pw.Font.ttf(fontTelidonHvRegular),
                        height: 1.4,
                      ),
                    ),
                    pw.Text(
                      ":",
                      style: pw.TextStyle(
                        fontSize: 11,
                        font: pw.Font.ttf(fontTelidonHvRegular),
                        height: 1.4,
                      ),
                    ),
                    pw.Text(
                      operatorValue,
                      style: pw.TextStyle(
                        fontSize: 11,
                        font: pw.Font.ttf(fontTelidonHvRegular),
                        height: 1.4,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            pw.SizedBox(
              height: 3,
            ),
            pw.Text(
              "Terimakasih & Selamat Jalan",
              style: pw.TextStyle(
                fontSize: 11,
                font: pw.Font.ttf(fontTelidonHvRegular),
                fontWeight: pw.FontWeight.bold,
                height: 1.4,
              ),
            )
          ],
        ));
  }
}
