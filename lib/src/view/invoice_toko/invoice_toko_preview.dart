import "package:fluent_ui/fluent_ui.dart";
import "package:flutter_invoice_generator_windows/src/constant/constant_fonts.dart";
import "package:flutter_invoice_generator_windows/src/view_model/view_model.dart";
import "package:provider/provider.dart";

class InvoiceTokoPreview extends StatelessWidget {
  const InvoiceTokoPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<InvoiceTokoViewModel>(
      builder: (context, viewModel, _) {
        return Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 3.0),
                      child: Icon(
                        FluentIcons.preview,
                        size: 24,
                      ),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      "Preview Hasil Invoice Toko",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  constraints: const BoxConstraints(
                    minWidth: 300,
                    minHeight: 500,
                    maxWidth: 350,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.grey[30],
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(6),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.all(20),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                viewModel.namaTokoValue,
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.blue.darkest,
                                  letterSpacing: 0.2,
                                  height: 1.2,
                                ),
                              ),
                              Text(
                                viewModel.alamatTokoValue,
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.blue.darkest,
                                  letterSpacing: 0.2,
                                  height: 1.2,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            top: 12,
                            bottom: 0.67,
                          ),
                          height: 1,
                          color: Colors.blue.darkest,
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 2),
                          height: 1,
                          color: Colors.blue.darkest,
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            viewModel.kodeInvoiceValue,
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: Colors.blue.darkest,
                              letterSpacing: 0.2,
                              height: 1.2,
                            ),
                            textAlign: TextAlign.right,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            viewModel.namaInvoiceValue,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue.darkest,
                              letterSpacing: 0.2,
                              height: 1.2,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            viewModel.namaMejaValue,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.blue.darkest,
                              letterSpacing: 0.2,
                              height: 1.2,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            ConstrainedBox(
                              constraints: const BoxConstraints(
                                maxWidth: 23,
                              ),
                              child: Text(
                                "Qty",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.blue.darkest,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              flex: 7,
                              child: ConstrainedBox(
                                constraints: const BoxConstraints(
                                  maxWidth: 170,
                                ),
                                child: Text(
                                  "Keterangan",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.blue.darkest,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: ConstrainedBox(
                                constraints: const BoxConstraints(
                                  maxWidth: 30,
                                ),
                                child: Text(
                                  "Disc",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.blue.darkest,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: ConstrainedBox(
                                constraints: const BoxConstraints(
                                  maxWidth: 30,
                                ),
                                child: Text(
                                  "Jumlah",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.blue.darkest,
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 3),
                          height: 1.5,
                          color: Colors.blue.darkest,
                        ),
                        ...viewModel.listInvoiceTokoProdukForm.map(
                          (e) {
                            return Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Flexible(
                                  child: ConstrainedBox(
                                    constraints: const BoxConstraints(
                                      minWidth: 20,
                                      maxWidth: 20,
                                    ),
                                    child: Text(
                                      e.qty,
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.blue.darkest,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 7,
                                ),
                                Expanded(
                                  flex: 5,
                                  child: ConstrainedBox(
                                    constraints: const BoxConstraints(
                                      maxWidth: 170,
                                    ),
                                    child: Text(
                                      e.keterangan.toUpperCase(),
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.blue.darkest,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Expanded(
                                  child: ConstrainedBox(
                                    constraints: const BoxConstraints(
                                      maxWidth: 40,
                                    ),
                                    child: Text(
                                      "${e.discount}%",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.blue.darkest,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Expanded(
                                  flex: 2,
                                  child: ConstrainedBox(
                                    constraints: const BoxConstraints(
                                      maxWidth: 30,
                                    ),
                                    child: Text(
                                      e.total,
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.blue.darkest,
                                      ),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 3),
                          height: 1.5,
                          color: Colors.blue.darkest,
                        ),
                        Table(
                          columnWidths: const {
                            0: FixedColumnWidth(100),
                            1: FixedColumnWidth(95),
                            2: FixedColumnWidth(12),
                            3: FixedColumnWidth(75),
                          },
                          children: [
                            TableRow(
                              children: [
                                const SizedBox(),
                                Text(
                                  "Jumlah",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.blue.darkest,
                                    height: 1.4,
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                                Text(
                                  ":",
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontFamily: Font.telidonHvRegular,
                                    color: Colors.blue.darkest,
                                    height: 1.4,
                                  ),
                                ),
                                Text(
                                  viewModel.jumlahValue,
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.blue.darkest,
                                    height: 1.4,
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Table(
                          columnWidths: const {
                            0: FixedColumnWidth(100),
                            1: FixedColumnWidth(95),
                            2: FixedColumnWidth(12),
                            3: FixedColumnWidth(75),
                          },
                          children: [
                            TableRow(
                              children: [
                                const SizedBox(),
                                Text(
                                  "Discount (0%)",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.blue.darkest,
                                    height: 1.4,
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                                Text(
                                  ":",
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontFamily: Font.telidonHvRegular,
                                    color: Colors.blue.darkest,
                                    height: 1.4,
                                  ),
                                ),
                                Text(
                                  viewModel.discountValue,
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.blue.darkest,
                                    height: 1.4,
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Table(
                          columnWidths: const {
                            0: FixedColumnWidth(100),
                            1: FixedColumnWidth(95),
                            2: FixedColumnWidth(12),
                            3: FixedColumnWidth(75),
                          },
                          children: [
                            TableRow(
                              children: [
                                const SizedBox(),
                                Text(
                                  "Voucher",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.blue.darkest,
                                    height: 1.4,
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                                Text(
                                  ":",
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontFamily: Font.telidonHvRegular,
                                    color: Colors.blue.darkest,
                                    height: 1.4,
                                  ),
                                ),
                                Text(
                                  viewModel.voucherValue,
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.blue.darkest,
                                    height: 1.4,
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Table(
                          columnWidths: const {
                            0: FixedColumnWidth(100),
                            1: FixedColumnWidth(95),
                            2: FixedColumnWidth(12),
                            3: FixedColumnWidth(75),
                          },
                          children: [
                            TableRow(
                              children: [
                                const SizedBox(),
                                Text(
                                  "Service Charge",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.blue.darkest,
                                    height: 1.4,
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                                Text(
                                  ":",
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontFamily: Font.telidonHvRegular,
                                    color: Colors.blue.darkest,
                                    height: 1.4,
                                  ),
                                ),
                                Text(
                                  viewModel.serviceChargeValue,
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.blue.darkest,
                                    height: 1.4,
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Table(
                          columnWidths: const {
                            0: FixedColumnWidth(100),
                            1: FixedColumnWidth(95),
                            2: FixedColumnWidth(12),
                            3: FixedColumnWidth(75),
                          },
                          children: [
                            TableRow(
                              children: [
                                const SizedBox(),
                                Text(
                                  "Tax 10%",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.blue.darkest,
                                    height: 1.4,
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                                Text(
                                  ":",
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontFamily: Font.telidonHvRegular,
                                    color: Colors.blue.darkest,
                                    height: 1.4,
                                  ),
                                ),
                                Text(
                                  viewModel.pajakValue,
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.blue.darkest,
                                    height: 1.4,
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Table(
                          columnWidths: const {
                            0: FixedColumnWidth(100),
                            1: FixedColumnWidth(95),
                            2: FixedColumnWidth(12),
                            3: FixedColumnWidth(75),
                          },
                          children: [
                            TableRow(
                              children: [
                                const SizedBox(),
                                Text(
                                  "",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.blue.darkest,
                                    height: 1.4,
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                                Text(
                                  "",
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontFamily: Font.telidonHvRegular,
                                    color: Colors.blue.darkest,
                                    height: 1.4,
                                  ),
                                ),
                                Text(
                                  viewModel.subTotalValue,
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.blue.darkest,
                                    height: 1.4,
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Table(
                          columnWidths: const {
                            0: FixedColumnWidth(100),
                            1: FixedColumnWidth(95),
                            2: FixedColumnWidth(12),
                            3: FixedColumnWidth(75),
                          },
                          children: [
                            TableRow(
                              children: [
                                const SizedBox(),
                                Text(
                                  "Charge",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.blue.darkest,
                                    height: 1.4,
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                                Text(
                                  ":",
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontFamily: Font.telidonHvRegular,
                                    color: Colors.blue.darkest,
                                    height: 1.4,
                                  ),
                                ),
                                Text(
                                  viewModel.chargeValue,
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.blue.darkest,
                                    height: 1.4,
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Table(
                          columnWidths: const {
                            0: FixedColumnWidth(100),
                            1: FixedColumnWidth(95),
                            2: FixedColumnWidth(12),
                            3: FixedColumnWidth(75),
                          },
                          children: [
                            TableRow(
                              children: [
                                const SizedBox(),
                                Text(
                                  "Pembulatan",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.blue.darkest,
                                    height: 1.4,
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                                Text(
                                  ":",
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontFamily: Font.telidonHvRegular,
                                    color: Colors.blue.darkest,
                                    height: 1.4,
                                  ),
                                ),
                                Text(
                                  viewModel.pembulatanValue,
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.blue.darkest,
                                    height: 1.4,
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Table(
                          columnWidths: const {
                            0: FixedColumnWidth(100),
                            1: FixedColumnWidth(95),
                            2: FixedColumnWidth(12),
                            3: FixedColumnWidth(75),
                          },
                          children: [
                            TableRow(
                              children: [
                                const SizedBox(),
                                Text(
                                  "Grand Total",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.blue.darkest,
                                    height: 1.4,
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                                Text(
                                  ":",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.blue.darkest,
                                    height: 1.4,
                                  ),
                                ),
                                Text(
                                  viewModel.grandTotalValue,
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.blue.darkest,
                                    height: 1.4,
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Table(
                          columnWidths: const {
                            0: FixedColumnWidth(100),
                            1: FixedColumnWidth(95),
                            2: FixedColumnWidth(12),
                            3: FixedColumnWidth(75),
                          },
                          children: [
                            TableRow(
                              children: [
                                const SizedBox(),
                                Text(
                                  "Bayar Tunai",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.blue.darkest,
                                    height: 1.4,
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                                Text(
                                  ":",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.blue.darkest,
                                    height: 1.4,
                                  ),
                                ),
                                Text(
                                  viewModel.bayarTunaiValue,
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.blue.darkest,
                                    height: 1.4,
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Table(
                          columnWidths: const {
                            0: FixedColumnWidth(100),
                            1: FixedColumnWidth(95),
                            2: FixedColumnWidth(12),
                            3: FixedColumnWidth(75),
                          },
                          children: [
                            TableRow(
                              children: [
                                const SizedBox(),
                                Text(
                                  "Card",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.blue.darkest,
                                    height: 1.4,
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                                Text(
                                  ":",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.blue.darkest,
                                    height: 1.4,
                                  ),
                                ),
                                Text(
                                  viewModel.cardValue,
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.blue.darkest,
                                    height: 1.4,
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Table(
                          columnWidths: const {
                            0: FixedColumnWidth(100),
                            1: FixedColumnWidth(95),
                            2: FixedColumnWidth(12),
                            3: FixedColumnWidth(75),
                          },
                          children: [
                            TableRow(
                              children: [
                                const SizedBox(),
                                Text(
                                  "Kembalian",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.blue.darkest,
                                    height: 1.4,
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                                Text(
                                  ":",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.blue.darkest,
                                    height: 1.4,
                                  ),
                                ),
                                Text(
                                  viewModel.kembalianValue,
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.blue.darkest,
                                    height: 1.4,
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            top: 6,
                            bottom: 10,
                          ),
                          height: 1.5,
                          color: Colors.blue.darkest,
                        ),
                        Text(
                          "Kasir : ${viewModel.namaKasirValue}",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: Colors.blue.darkest,
                            height: 1.4,
                          ),
                        ),

                        /// terimakasih
                        const SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: Text(
                            "####   Terimakasih atas kunjungan anda   ####",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: Colors.blue.darkest,
                              height: 1.4,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: Text(
                            viewModel.namaToko2Value,
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: Colors.blue.darkest,
                              height: 1.4,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
