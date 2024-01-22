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
    required String nopolValue,
    required String pelangganValue,
    required String operatorValue,
  }) {
    return pw.Padding(
        padding: const pw.EdgeInsets.symmetric(
          horizontal: 8,
        ),
        child: pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            pw.Text(
              noSpbuValue,
              style: pw.TextStyle(
                fontSize: 15,
                fontWeight: pw.FontWeight.bold,
              ),
            ),
            pw.Text(
              alamatSpbuValue,
              style: const pw.TextStyle(
                fontSize: 8,
                height: 1.2,
              ),
            ),
            pw.Text(
              noTelpValue,
              style: const pw.TextStyle(
                fontSize: 8,
                height: 1.2,
              ),
            ),
            pw.Text(
              tglInvoiceValue,
              style: const pw.TextStyle(
                fontSize: 8,
                height: 1.2,
              ),
            ),
            pw.Container(
              margin: const pw.EdgeInsets.symmetric(vertical: 12),
              height: 1.5,
            ),
            pw.Table(
              columnWidths: const {
                0: pw.FixedColumnWidth(110),
                1: pw.FixedColumnWidth(10),
                2: pw.FixedColumnWidth(150),
              },
              children: [
                pw.TableRow(
                  children: [
                    pw.Text(
                      "No. Nota",
                      style: const pw.TextStyle(
                        fontSize: 8,
                      ),
                    ),
                    pw.Text(
                      ":",
                      style: const pw.TextStyle(
                        fontSize: 8,
                      ),
                    ),
                    pw.Text(
                      noInvoiceValue,
                      style: const pw.TextStyle(
                        fontSize: 8,
                      ),
                    ),
                  ],
                ),
                pw.TableRow(children: [pw.SizedBox(height: 1)]),
                pw.TableRow(
                  children: [
                    pw.Text(
                      "Jenis BBM",
                      style: const pw.TextStyle(
                        fontSize: 8,
                        height: 1.4,
                      ),
                    ),
                    pw.Text(
                      ":",
                      style: const pw.TextStyle(
                        fontSize: 8,
                        height: 1.4,
                      ),
                    ),
                    pw.Text(
                      jenisBbmValue,
                      style: const pw.TextStyle(
                        fontSize: 8,
                        height: 1.4,
                      ),
                    ),
                  ],
                ),
                pw.TableRow(children: [pw.SizedBox(height: 1)]),
              ],
            ),
            pw.Table(
              columnWidths: const {
                0: pw.FixedColumnWidth(100),
                1: pw.FixedColumnWidth(15),
                2: pw.FixedColumnWidth(30),
                3: pw.FixedColumnWidth(100),
              },
              children: [
                pw.TableRow(
                  children: [
                    pw.Text(
                      "Total Liter",
                      style: const pw.TextStyle(
                        fontSize: 8,
                        height: 1.4,
                      ),
                    ),
                    pw.Text(
                      ":",
                      style: const pw.TextStyle(
                        fontSize: 8,
                        height: 1.4,
                      ),
                    ),
                    pw.Text(
                      "",
                      style: const pw.TextStyle(
                        fontSize: 8,
                        height: 1.5,
                      ),
                    ),
                    pw.Text(
                      totalLiterValue,
                      style: const pw.TextStyle(
                        fontSize: 8,
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
                      "Harga/liter",
                      style: const pw.TextStyle(
                        fontSize: 8,
                        height: 1.4,
                      ),
                    ),
                    pw.Text(
                      ":",
                      style: const pw.TextStyle(
                        fontSize: 8,
                        height: 1.4,
                      ),
                    ),
                    pw.Text(
                      "Rp.",
                      style: const pw.TextStyle(
                        fontSize: 8,
                        height: 1.5,
                      ),
                    ),
                    pw.Text(
                      hargaPerliterValue,
                      style: const pw.TextStyle(
                        fontSize: 8,
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
                      style: const pw.TextStyle(
                        fontSize: 12,
                        height: 1.5,
                      ),
                    ),
                    pw.Text(
                      ":",
                      style: const pw.TextStyle(
                        fontSize: 12,
                        height: 1.5,
                      ),
                    ),
                    pw.Text(
                      "Rp.",
                      style: const pw.TextStyle(
                        fontSize: 12,
                        height: 1.5,
                      ),
                    ),
                    pw.Text(
                      totalHargaValue,
                      style: const pw.TextStyle(
                        fontSize: 12,
                        height: 1.5,
                      ),
                      textAlign: pw.TextAlign.right,
                    ),
                  ],
                ),
                pw.TableRow(children: [pw.SizedBox(height: 1)]),
              ],
            ),
            pw.Container(
              margin: const pw.EdgeInsets.only(top: 12, bottom: 5),
              height: 2.5,
            ),
            pw.Table(
              columnWidths: const {
                0: pw.FixedColumnWidth(100),
                1: pw.FixedColumnWidth(15),
                2: pw.FixedColumnWidth(30),
                3: pw.FixedColumnWidth(100),
              },
              children: [
                pw.TableRow(
                  children: [
                    pw.Text(
                      "Tunai",
                      style: const pw.TextStyle(
                        fontSize: 8,
                        height: 1.4,
                      ),
                    ),
                    pw.Text(
                      ":",
                      style: const pw.TextStyle(
                        fontSize: 8,
                        height: 1.4,
                      ),
                    ),
                    pw.Text(
                      "Rp.",
                      style: const pw.TextStyle(
                        fontSize: 8,
                        height: 1.4,
                      ),
                    ),
                    pw.Text(
                      totalBayarValue,
                      style: const pw.TextStyle(
                        fontSize: 8,
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
              columnWidths: const {
                0: pw.FixedColumnWidth(110),
                1: pw.FixedColumnWidth(15),
                2: pw.FixedColumnWidth(140),
              },
              children: [
                pw.TableRow(
                  children: [
                    pw.Text(
                      "Nopol",
                      style: const pw.TextStyle(
                        fontSize: 8,
                        height: 1.4,
                      ),
                    ),
                    pw.Text(
                      ":",
                      style: const pw.TextStyle(
                        fontSize: 8,
                        height: 1.4,
                      ),
                    ),
                    pw.Text(
                      nopolValue,
                      style: const pw.TextStyle(
                        fontSize: 8,
                        height: 1.4,
                      ),
                    ),
                  ],
                ),
                pw.TableRow(children: [pw.SizedBox(height: 1)]),
                pw.TableRow(
                  children: [
                    pw.Text(
                      "Pelanggan",
                      style: const pw.TextStyle(
                        fontSize: 8,
                        height: 1.4,
                      ),
                    ),
                    pw.Text(
                      ":",
                      style: const pw.TextStyle(
                        fontSize: 8,
                        height: 1.4,
                      ),
                    ),
                    pw.Text(
                      pelangganValue,
                      style: const pw.TextStyle(
                        fontSize: 8,
                        height: 1.4,
                      ),
                    ),
                  ],
                ),
                pw.TableRow(children: [pw.SizedBox(height: 1)]),
                pw.TableRow(
                  children: [
                    pw.Text(
                      "Operator",
                      style: const pw.TextStyle(
                        fontSize: 8,
                        height: 1.4,
                      ),
                    ),
                    pw.Text(
                      ":",
                      style: const pw.TextStyle(
                        fontSize: 8,
                        height: 1.4,
                      ),
                    ),
                    pw.Text(
                      operatorValue,
                      style: const pw.TextStyle(
                        fontSize: 8,
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
                fontSize: 8,
                fontWeight: pw.FontWeight.bold,
                height: 1.4,
              ),
            )
          ],
        ));
  }
}
