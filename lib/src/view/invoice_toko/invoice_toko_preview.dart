import "package:fluent_ui/fluent_ui.dart";
import "package:flutter_invoice_generator_windows/src/constant/constant_fonts.dart";
import "package:flutter_invoice_generator_windows/src/view_model/invoice_spbu/invoice_spbu.dart";
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
                  minHeight: 400,
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
                    Table(
                      columnWidths: const {
                        0: FixedColumnWidth(28),
                        1: FixedColumnWidth(145),
                        2: FixedColumnWidth(30),
                        4: FixedColumnWidth(130),
                      },
                      children: [
                        TableRow(
                          children: [
                            Text(
                              "Qty",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.blue.darkest,
                              ),
                            ),
                            Text(
                              "Keterangan",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.blue.darkest,
                              ),
                            ),
                            Text(
                              "Disc",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.blue.darkest,
                              ),
                            ),
                            Text(
                              "Jumlah",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.blue.darkest,
                              ),
                              textAlign: TextAlign.right,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 3),
                      height: 1.5,
                      color: Colors.blue.darkest,
                    ),
                    Table(
                      columnWidths: const {
                        0: FixedColumnWidth(28),
                        1: FixedColumnWidth(145),
                        2: FixedColumnWidth(30),
                        3: FixedColumnWidth(85),
                      },
                      children: [
                        ...viewModel.listInvoiceTokoProdukForm.map(
                          (e) {
                            return TableRow(
                              children: [
                                Text(
                                  e.qty,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.blue.darkest,
                                  ),
                                ),
                                Text(
                                  e.keterangan.toUpperCase(),
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.blue.darkest,
                                  ),
                                ),
                                Text(
                                  "${e.discount}%",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.blue.darkest,
                                  ),
                                ),
                                Text(
                                  e.total,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.blue.darkest,
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                              ],
                            );
                          },
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 3),
                      height: 1.5,
                      color: Colors.blue.darkest,
                    ),
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
