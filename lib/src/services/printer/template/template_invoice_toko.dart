import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_invoice_generator_windows/src/models/invoice_toko_produk_model.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class TemplateInvoiceToko {
  pw.Widget get({
    required String namaTokoValue,
    required String alamatTokoValue,
    required String kodeInvoiceValue,
    required String namaInvoiceValue,
    required String namaMejaValue,
    required String jumlahValue,
    required String discountValue,
    required String voucherValue,
    required String serviceChargeValue,
    required String pajakValue,
    required String subTotalValue,
    required String chargeValue,
    required String pembulatanValue,
    required String grandTotalValue,
    required String bayarTunaiValue,
    required String cardValue,
    required String kembalianValue,
    required String namaKasirValue,
    required String namaToko2Value,
    required List<InvoiceTokoProdukModel> listInvoiceTokoProdukForm,
  }) {
    return pw.Container(
      padding: const pw.EdgeInsets.all(8),
      child: pw.Column(
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        children: [
          pw.Text(
            namaTokoValue,
            style: pw.TextStyle(
              fontSize: 15,
              fontWeight: pw.FontWeight.bold,
            ),
          ),
          pw.Text(
            alamatTokoValue,
            style: const pw.TextStyle(
              fontSize: 8,
            ),
          ),
          pw.Divider(),
          pw.Align(
            alignment: pw.Alignment.centerRight,
            child: pw.Text(
              kodeInvoiceValue,
              style: const pw.TextStyle(
                fontSize: 8,
                letterSpacing: 0.2,
                height: 1.2,
              ),
              textAlign: pw.TextAlign.right,
            ),
          ),
          pw.SizedBox(height: 5),
          pw.Align(
            alignment: pw.Alignment.center,
            child: pw.Text(
              namaInvoiceValue,
              style: const pw.TextStyle(
                fontSize: 10,
                letterSpacing: 0.2,
                height: 1.2,
              ),
              textAlign: pw.TextAlign.center,
            ),
          ),
          pw.SizedBox(height: 5),
          pw.Align(
            alignment: pw.Alignment.center,
            child: pw.Text(
              namaMejaValue,
              style: const pw.TextStyle(
                fontSize: 8,
                letterSpacing: 0.2,
                height: 1.2,
              ),
              textAlign: pw.TextAlign.center,
            ),
          ),
          pw.SizedBox(height: 10),
          pw.Row(
              crossAxisAlignment: pw.CrossAxisAlignment.center,
              mainAxisAlignment: pw.MainAxisAlignment.start,
              children: [
                pw.ConstrainedBox(
                  constraints: const pw.BoxConstraints(maxWidth: 23),
                  child: pw.Text(
                    'Qty',
                    style: const pw.TextStyle(
                      fontSize: 8,
                    ),
                  ),
                ),
                pw.SizedBox(width: 15),
                pw.Expanded(
                  flex: 7,
                  child: pw.ConstrainedBox(
                    constraints: const pw.BoxConstraints(maxWidth: 170),
                    child: pw.Text(
                      'Keterangan',
                      style: const pw.TextStyle(
                        fontSize: 8,
                      ),
                    ),
                  ),
                ),
                pw.Expanded(
                  flex: 2,
                  child: pw.ConstrainedBox(
                    constraints: const pw.BoxConstraints(maxWidth: 30),
                    child: pw.Text(
                      'Disc',
                      style: const pw.TextStyle(
                        fontSize: 8,
                      ),
                    ),
                  ),
                ),
                pw.Expanded(
                  flex: 3,
                  child: pw.ConstrainedBox(
                    constraints: const pw.BoxConstraints(maxWidth: 30),
                    child: pw.Text(
                      'Jumlah',
                      style: const pw.TextStyle(
                        fontSize: 8,
                      ),
                      textAlign: pw.TextAlign.right,
                    ),
                  ),
                ),
              ]),
          pw.Divider(),
          pw.Container(
            margin: const pw.EdgeInsets.symmetric(vertical: 3),
            height: 1.5,
          ),
          ...listInvoiceTokoProdukForm.map(
            (e) => pw.Row(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              mainAxisAlignment: pw.MainAxisAlignment.start,
              children: [
                pw.ConstrainedBox(
                  constraints:
                      const pw.BoxConstraints(maxWidth: 20, minWidth: 20),
                  child: pw.Text(
                    e.qty,
                    style: const pw.TextStyle(
                      fontSize: 8,
                    ),
                  ),
                ),
                pw.SizedBox(width: 15),
                pw.Expanded(
                  flex: 7,
                  child: pw.ConstrainedBox(
                    constraints: const pw.BoxConstraints(maxWidth: 170),
                    child: pw.Text(
                      e.keterangan.toUpperCase(),
                      style: const pw.TextStyle(
                        fontSize: 8,
                      ),
                    ),
                  ),
                ),
                pw.SizedBox(width: 5),
                pw.Expanded(
                  flex: 2,
                  child: pw.ConstrainedBox(
                    constraints: const pw.BoxConstraints(maxWidth: 40),
                    child: pw.Text(
                      "${e.discount}%",
                      style: const pw.TextStyle(
                        fontSize: 8,
                      ),
                    ),
                  ),
                ),
                pw.SizedBox(width: 15),
                pw.Expanded(
                  flex: 2,
                  child: pw.ConstrainedBox(
                    constraints: const pw.BoxConstraints(maxWidth: 30),
                    child: pw.Text(
                      e.total,
                      style: const pw.TextStyle(
                        fontSize: 8,
                      ),
                      textAlign: pw.TextAlign.right,
                    ),
                  ),
                ),
              ],
            ),
          ),

          pw.Divider(),
          pw.Table(
            columnWidths: const {
              0: pw.FixedColumnWidth(100),
              1: pw.FixedColumnWidth(95),
              2: pw.FixedColumnWidth(12),
              3: pw.FixedColumnWidth(75),
            },
            children: [
              pw.TableRow(
                children: [
                  pw.SizedBox(),
                  pw.Text(
                    "Jumlah",
                    style: const pw.TextStyle(
                      fontSize: 8,
                      height: 1.4,
                    ),
                    textAlign: pw.TextAlign.right,
                  ),
                  pw.Text(
                    ":",
                    style: const pw.TextStyle(
                      fontSize: 8,
                      height: 1.4,
                    ),
                  ),
                  pw.Text(
                    jumlahValue,
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
          pw.SizedBox(height: 8),
          pw.Table(
            columnWidths: const {
              0: pw.FixedColumnWidth(100),
              1: pw.FixedColumnWidth(95),
              2: pw.FixedColumnWidth(12),
              3: pw.FixedColumnWidth(75),
            },
            children: [
              pw.TableRow(
                children: [
                  pw.SizedBox(),
                  pw.Text(
                    "Discount (0%)",
                    style: const pw.TextStyle(
                      fontSize: 8,
                      height: 1.4,
                    ),
                    textAlign: pw.TextAlign.right,
                  ),
                  pw.Text(
                    ":",
                    style: const pw.TextStyle(
                      fontSize: 8,
                      height: 1.4,
                    ),
                  ),
                  pw.Text(
                    discountValue,
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
          pw.Table(
            columnWidths: const {
              0: pw.FixedColumnWidth(100),
              1: pw.FixedColumnWidth(95),
              2: pw.FixedColumnWidth(12),
              3: pw.FixedColumnWidth(75),
            },
            children: [
              pw.TableRow(
                children: [
                  pw.SizedBox(),
                  pw.Text(
                    "Voucher",
                    style: const pw.TextStyle(
                      fontSize: 8,
                      height: 1.4,
                    ),
                    textAlign: pw.TextAlign.right,
                  ),
                  pw.Text(
                    ":",
                    style: const pw.TextStyle(
                      fontSize: 8,
                      height: 1.4,
                    ),
                  ),
                  pw.Text(
                    voucherValue,
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
          pw.Table(
            columnWidths: const {
              0: pw.FixedColumnWidth(100),
              1: pw.FixedColumnWidth(95),
              2: pw.FixedColumnWidth(12),
              3: pw.FixedColumnWidth(75),
            },
            children: [
              pw.TableRow(
                children: [
                  pw.SizedBox(),
                  pw.Text(
                    "Service Charge",
                    style: const pw.TextStyle(
                      fontSize: 8,
                      height: 1.4,
                    ),
                    textAlign: pw.TextAlign.right,
                  ),
                  pw.Text(
                    ":",
                    style: const pw.TextStyle(
                      fontSize: 8,
                      height: 1.4,
                    ),
                  ),
                  pw.Text(
                    serviceChargeValue,
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
          pw.Table(
            columnWidths: const {
              0: pw.FixedColumnWidth(100),
              1: pw.FixedColumnWidth(95),
              2: pw.FixedColumnWidth(12),
              3: pw.FixedColumnWidth(75),
            },
            children: [
              pw.TableRow(
                children: [
                  pw.SizedBox(),
                  pw.Text(
                    "Tax 10%",
                    style: const pw.TextStyle(
                      fontSize: 8,
                      height: 1.4,
                    ),
                    textAlign: pw.TextAlign.right,
                  ),
                  pw.Text(
                    ":",
                    style: const pw.TextStyle(
                      fontSize: 8,
                      height: 1.4,
                    ),
                  ),
                  pw.Text(
                    pajakValue,
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
          pw.Table(
            columnWidths: const {
              0: pw.FixedColumnWidth(100),
              1: pw.FixedColumnWidth(95),
              2: pw.FixedColumnWidth(12),
              3: pw.FixedColumnWidth(75),
            },
            children: [
              pw.TableRow(
                children: [
                  pw.SizedBox(),
                  pw.Text(
                    "",
                    style: const pw.TextStyle(
                      fontSize: 8,
                      height: 1.4,
                    ),
                    textAlign: pw.TextAlign.right,
                  ),
                  pw.Text(
                    "",
                    style: const pw.TextStyle(
                      fontSize: 8,
                      height: 1.4,
                    ),
                  ),
                  pw.Text(
                    subTotalValue,
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
          pw.Table(
            columnWidths: const {
              0: pw.FixedColumnWidth(100),
              1: pw.FixedColumnWidth(95),
              2: pw.FixedColumnWidth(12),
              3: pw.FixedColumnWidth(75),
            },
            children: [
              pw.TableRow(
                children: [
                  pw.SizedBox(),
                  pw.Text(
                    "Charge",
                    style: const pw.TextStyle(
                      fontSize: 8,
                      height: 1.4,
                    ),
                    textAlign: pw.TextAlign.right,
                  ),
                  pw.Text(
                    ":",
                    style: const pw.TextStyle(
                      fontSize: 8,
                      height: 1.4,
                    ),
                  ),
                  pw.Text(
                    chargeValue,
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
          pw.Table(
            columnWidths: const {
              0: pw.FixedColumnWidth(100),
              1: pw.FixedColumnWidth(95),
              2: pw.FixedColumnWidth(12),
              3: pw.FixedColumnWidth(75),
            },
            children: [
              pw.TableRow(
                children: [
                  pw.SizedBox(),
                  pw.Text(
                    "Pembulatan",
                    style: const pw.TextStyle(
                      fontSize: 8,
                      height: 1.4,
                    ),
                    textAlign: pw.TextAlign.right,
                  ),
                  pw.Text(
                    ":",
                    style: const pw.TextStyle(
                      fontSize: 8,
                      height: 1.4,
                    ),
                  ),
                  pw.Text(
                    pembulatanValue,
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
          pw.SizedBox(height: 10),
          pw.Table(
            columnWidths: const {
              0: pw.FixedColumnWidth(100),
              1: pw.FixedColumnWidth(95),
              2: pw.FixedColumnWidth(12),
              3: pw.FixedColumnWidth(75),
            },
            children: [
              pw.TableRow(
                children: [
                  pw.SizedBox(),
                  pw.Text(
                    "Grand Total",
                    style: const pw.TextStyle(
                      fontSize: 8,
                      height: 1.4,
                    ),
                    textAlign: pw.TextAlign.right,
                  ),
                  pw.Text(
                    ":",
                    style: const pw.TextStyle(
                      fontSize: 8,
                      height: 1.4,
                    ),
                  ),
                  pw.Text(
                    grandTotalValue,
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
          pw.SizedBox(height: 10),
          pw.Table(
            columnWidths: const {
              0: pw.FixedColumnWidth(100),
              1: pw.FixedColumnWidth(95),
              2: pw.FixedColumnWidth(12),
              3: pw.FixedColumnWidth(75),
            },
            children: [
              pw.TableRow(
                children: [
                  pw.SizedBox(),
                  pw.Text(
                    "Bayar Tunai",
                    style: const pw.TextStyle(
                      fontSize: 8,
                      height: 1.4,
                    ),
                    textAlign: pw.TextAlign.right,
                  ),
                  pw.Text(
                    ":",
                    style: const pw.TextStyle(
                      fontSize: 8,
                      height: 1.4,
                    ),
                  ),
                  pw.Text(
                    bayarTunaiValue,
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
          pw.Table(
            columnWidths: const {
              0: pw.FixedColumnWidth(100),
              1: pw.FixedColumnWidth(95),
              2: pw.FixedColumnWidth(12),
              3: pw.FixedColumnWidth(75),
            },
            children: [
              pw.TableRow(
                children: [
                  pw.SizedBox(),
                  pw.Text(
                    "Card",
                    style: const pw.TextStyle(
                      fontSize: 8,
                      height: 1.4,
                    ),
                    textAlign: pw.TextAlign.right,
                  ),
                  pw.Text(
                    ":",
                    style: const pw.TextStyle(
                      fontSize: 8,
                      height: 1.4,
                    ),
                  ),
                  pw.Text(
                    cardValue,
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
          pw.Table(
            columnWidths: const {
              0: pw.FixedColumnWidth(100),
              1: pw.FixedColumnWidth(95),
              2: pw.FixedColumnWidth(12),
              3: pw.FixedColumnWidth(75),
            },
            children: [
              pw.TableRow(
                children: [
                  pw.SizedBox(),
                  pw.Text(
                    "Kembalian",
                    style: const pw.TextStyle(
                      fontSize: 8,
                      height: 1.4,
                    ),
                    textAlign: pw.TextAlign.right,
                  ),
                  pw.Text(
                    ":",
                    style: const pw.TextStyle(
                      fontSize: 8,
                      height: 1.4,
                    ),
                  ),
                  pw.Text(
                    kembalianValue,
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
          pw.Container(
            margin: const pw.EdgeInsets.symmetric(vertical: 3),
            height: 1.5,
            color: PdfColors.black,
          ),

          pw.Text(
            "Kasir : $namaKasirValue",
            style: const pw.TextStyle(
              fontSize: 8,
              height: 1.4,
            ),
          ),

          pw.Container(
            margin: const pw.EdgeInsets.only(top: 6, bottom: 10),
            height: 1.5,
            color: PdfColors.black,
          ),

          // Terimakasih
          pw.Center(
            child: pw.Text(
              "####   Terimakasih atas kunjungan anda   ####",
              style: const pw.TextStyle(
                fontSize: 8,
                height: 1.4,
              ),
            ),
          ),

          // Nama Toko 2
          pw.SizedBox(
            height: 10,
          ),
          pw.Center(
            child: pw.Text(
              namaToko2Value,
              style: const pw.TextStyle(
                fontSize: 8,
                color: PdfColors.black,
                height: 1.4,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
