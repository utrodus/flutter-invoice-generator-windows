import "package:fluent_ui/fluent_ui.dart";
import "package:flutter_invoice_generator_windows/src/constant/constant_fonts.dart";
import "package:flutter_invoice_generator_windows/src/view_model/invoice_spbu/invoice_spbu.dart";
import "package:provider/provider.dart";

class InvoiceSpbuPreview extends StatelessWidget {
  const InvoiceSpbuPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<InvoiceSpbuViewModel>(
      builder: (context, viewModel, _) {
        return Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
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
                    "Preview Hasil Invoice SPBU",
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
                  minHeight: 380,
                  maxWidth: 300,
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      viewModel.noSpbuValue,
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        fontFamily: Font.snareDrum,
                        color: Colors.blue.darkest,
                      ),
                    ),
                    Text(
                      viewModel.alamatSpbuValue,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        fontFamily: Font.telidonHvRegular,
                        color: Colors.blue.darkest,
                        height: 1.2,
                      ),
                    ),
                    Text(
                      viewModel.noTelpValue,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        fontFamily: Font.telidonHvRegular,
                        color: Colors.blue.darkest,
                        height: 1.2,
                      ),
                    ),
                    Text(
                      viewModel.tglInvoiceValue,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        fontFamily: Font.telidonHvRegular,
                        color: Colors.blue.darkest,
                        height: 1.2,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 12),
                      height: 1.5,
                      color: Colors.blue.darkest,
                    ),
                    Table(
                      columnWidths: const {
                        0: FixedColumnWidth(100),
                        1: FixedColumnWidth(10),
                        2: FixedColumnWidth(150),
                      },
                      children: [
                        TableRow(
                          children: [
                            Text(
                              "No. Nota",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                fontFamily: Font.telidonHvRegular,
                                color: Colors.blue.darkest,
                              ),
                            ),
                            Text(
                              ":",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                fontFamily: Font.telidonHvRegular,
                                color: Colors.blue.darkest,
                              ),
                            ),
                            Text(
                              viewModel.noInvoiceValue,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                fontFamily: Font.telidonHvRegular,
                                color: Colors.blue.darkest,
                              ),
                            ),
                          ],
                        ),
                        TableRow(
                          children: [
                            Text(
                              "Jenis BBM",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                fontFamily: Font.telidonHvRegular,
                                color: Colors.blue.darkest,
                                height: 1.4,
                              ),
                            ),
                            Text(
                              ":",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                fontFamily: Font.telidonHvRegular,
                                color: Colors.blue.darkest,
                                height: 1.4,
                              ),
                            ),
                            Text(
                              viewModel.jenisBbmValue,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                fontFamily: Font.telidonHvRegular,
                                color: Colors.blue.darkest,
                                height: 1.4,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Table(
                      columnWidths: const {
                        0: FixedColumnWidth(100),
                        1: FixedColumnWidth(15),
                        2: FixedColumnWidth(30),
                        3: FixedColumnWidth(100),
                      },
                      children: [
                        TableRow(
                          children: [
                            Text(
                              "Total Liter",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                fontFamily: Font.telidonHvRegular,
                                color: Colors.blue.darkest,
                                height: 1.4,
                              ),
                            ),
                            Text(
                              ":",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                fontFamily: Font.telidonHvRegular,
                                color: Colors.blue.darkest,
                                height: 1.4,
                              ),
                            ),
                            Text(
                              "",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                fontFamily: Font.telidonHvRegular,
                                color: Colors.blue.darkest,
                                height: 1.5,
                              ),
                            ),
                            Text(
                              viewModel.totalLiterValue,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                fontFamily: Font.telidonHvRegular,
                                color: Colors.blue.darkest,
                                height: 1.4,
                              ),
                              textAlign: TextAlign.right,
                            ),
                          ],
                        ),
                        TableRow(
                          children: [
                            Text(
                              "Harga/liter",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                fontFamily: Font.telidonHvRegular,
                                color: Colors.blue.darkest,
                                height: 1.4,
                              ),
                            ),
                            Text(
                              ":",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                fontFamily: Font.telidonHvRegular,
                                color: Colors.blue.darkest,
                                height: 1.4,
                              ),
                            ),
                            Text(
                              "Rp.",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                fontFamily: Font.telidonHvRegular,
                                color: Colors.blue.darkest,
                                height: 1.5,
                              ),
                            ),
                            Text(
                              viewModel.hargaPerliterValue,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                fontFamily: Font.telidonHvRegular,
                                color: Colors.blue.darkest,
                                height: 1.4,
                              ),
                              textAlign: TextAlign.right,
                            ),
                          ],
                        ),
                        TableRow(
                          children: [
                            Text(
                              "Total",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                fontFamily: Font.telidonHvRegular,
                                color: Colors.blue.darkest,
                                height: 1.5,
                              ),
                            ),
                            Text(
                              ":",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                fontFamily: Font.telidonHvRegular,
                                color: Colors.blue.darkest,
                                height: 1.5,
                              ),
                            ),
                            Text(
                              "Rp.",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                fontFamily: Font.telidonHvRegular,
                                color: Colors.blue.darkest,
                                height: 1.5,
                              ),
                            ),
                            Text(
                              viewModel.totalHargaValue,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                fontFamily: Font.telidonHvRegular,
                                color: Colors.blue.darkest,
                                height: 1.5,
                              ),
                              textAlign: TextAlign.right,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 12, bottom: 5),
                      height: 2.5,
                      color: Colors.blue.darkest,
                    ),
                    Table(
                      columnWidths: const {
                        0: FixedColumnWidth(100),
                        1: FixedColumnWidth(15),
                        2: FixedColumnWidth(30),
                        3: FixedColumnWidth(100),
                      },
                      children: [
                        TableRow(
                          children: [
                            Text(
                              "Tunai",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                fontFamily: Font.telidonHvRegular,
                                color: Colors.blue.darkest,
                                height: 1.4,
                              ),
                            ),
                            Text(
                              ":",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                fontFamily: Font.telidonHvRegular,
                                color: Colors.blue.darkest,
                                height: 1.4,
                              ),
                            ),
                            Text(
                              "Rp.",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                fontFamily: Font.telidonHvRegular,
                                color: Colors.blue.darkest,
                                height: 1.4,
                              ),
                            ),
                            Text(
                              viewModel.totalBayarValue,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                fontFamily: Font.telidonHvRegular,
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
                      height: 20,
                    ),
                    Table(
                      columnWidths: const {
                        0: FixedColumnWidth(100),
                        1: FixedColumnWidth(15),
                        2: FixedColumnWidth(140),
                      },
                      children: [
                        TableRow(
                          children: [
                            Text(
                              "Nopol",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                fontFamily: Font.telidonHvRegular,
                                color: Colors.blue.darkest,
                                height: 1.4,
                              ),
                            ),
                            Text(
                              ":",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                fontFamily: Font.telidonHvRegular,
                                color: Colors.blue.darkest,
                                height: 1.4,
                              ),
                            ),
                            Text(
                              viewModel.nopolValue,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                fontFamily: Font.telidonHvRegular,
                                color: Colors.blue.darkest,
                                height: 1.4,
                              ),
                            ),
                          ],
                        ),
                        TableRow(
                          children: [
                            Text(
                              "Pelanggan",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                fontFamily: Font.telidonHvRegular,
                                color: Colors.blue.darkest,
                                height: 1.4,
                              ),
                            ),
                            Text(
                              ":",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                fontFamily: Font.telidonHvRegular,
                                color: Colors.blue.darkest,
                                height: 1.4,
                              ),
                            ),
                            Text(
                              viewModel.pelangganValue,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                fontFamily: Font.telidonHvRegular,
                                color: Colors.blue.darkest,
                                height: 1.4,
                              ),
                            ),
                          ],
                        ),
                        TableRow(
                          children: [
                            Text(
                              "Operator",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                fontFamily: Font.telidonHvRegular,
                                color: Colors.blue.darkest,
                                height: 1.4,
                              ),
                            ),
                            Text(
                              ":",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                fontFamily: Font.telidonHvRegular,
                                color: Colors.blue.darkest,
                                height: 1.4,
                              ),
                            ),
                            Text(
                              viewModel.operatorValue,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                fontFamily: Font.telidonHvRegular,
                                color: Colors.blue.darkest,
                                height: 1.4,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Text(
                      "Terimakasih & Selamat Jalan",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        fontFamily: Font.telidonHvRegular,
                        color: Colors.blue.darkest,
                        height: 1.4,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
