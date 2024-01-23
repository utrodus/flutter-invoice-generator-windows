import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_invoice_generator_windows/src/services/printer/template/template_invoice_toko.dart';
import 'package:flutter_invoice_generator_windows/src/view_model/invoice_toko/invoice_toko_view_model.dart';
import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';
import 'package:provider/provider.dart';

class InvoiceTokoPrintPreview extends StatelessWidget {
  const InvoiceTokoPrintPreview({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<InvoiceTokoViewModel>();
    return ConstrainedBox(
      /// max height for 80mm paper
      constraints: BoxConstraints(
        maxHeight: PdfPageFormat.roll80.availableHeight,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () => viewModel.onTapBackButton(),
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 0,
                      ),
                      constraints: const BoxConstraints(
                        minWidth: 44,
                      ),
                      height: 44,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: Colors.grey[50],
                          width: 1,
                        ),
                      ),
                      child: const Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 2.0),
                            child: Icon(
                              FluentIcons.back,
                              size: 16,
                            ),
                          ),
                          SizedBox(width: 8),
                          Text(
                            "Kembali",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: PdfPreview(
              maxPageWidth: 500,
              canDebug: false,
              canChangeOrientation: false,
              canChangePageFormat: true,
              initialPageFormat: PdfPageFormat.roll80,
              build: (format) => viewModel.printerService.generateSinglePagePdf(
                format: PdfPageFormat.roll80,
                build: (context) => TemplateInvoiceToko().get(
                  namaTokoValue: viewModel.namaTokoValue,
                  alamatTokoValue: viewModel.alamatTokoValue,
                  kodeInvoiceValue: viewModel.kodeInvoiceValue,
                  namaInvoiceValue: viewModel.namaInvoiceValue,
                  namaMejaValue: viewModel.namaMejaValue,
                  jumlahValue: viewModel.jumlahValue,
                  discountValue: viewModel.discountValue,
                  voucherValue: viewModel.voucherValue,
                  serviceChargeValue: viewModel.serviceChargeValue,
                  pajakValue: viewModel.pajakValue,
                  subTotalValue: viewModel.subTotalValue,
                  chargeValue: viewModel.chargeValue,
                  pembulatanValue: viewModel.pembulatanValue,
                  grandTotalValue: viewModel.grandTotalValue,
                  bayarTunaiValue: viewModel.bayarTunaiValue,
                  cardValue: viewModel.cardValue,
                  kembalianValue: viewModel.kembalianValue,
                  namaKasirValue: viewModel.namaKasirValue,
                  namaToko2Value: viewModel.namaToko2Value,
                  listInvoiceTokoProdukForm:
                      viewModel.listInvoiceTokoProdukForm,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
