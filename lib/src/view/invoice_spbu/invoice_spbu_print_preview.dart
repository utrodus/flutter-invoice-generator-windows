import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_invoice_generator_windows/src/services/printer/template/template_invoice_spbu.dart';
import 'package:flutter_invoice_generator_windows/src/view_model/invoice_spbu/invoice_spbu_view_model.dart';
import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';
import 'package:provider/provider.dart';

class InvoiceSpbuPrintPreview extends StatelessWidget {
  const InvoiceSpbuPrintPreview({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<InvoiceSpbuViewModel>();
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
              maxPageWidth: 700,
              canDebug: false,
              canChangeOrientation: false,
              canChangePageFormat: true,
              initialPageFormat: PdfPageFormat.roll80,
              build: (format) => viewModel.printerService.generateSinglePagePdf(
                format: PdfPageFormat.roll80,
                build: (context) => TemplateInvoiceSpbu().get(
                  noSpbuValue: viewModel.noSpbuValue,
                  alamatSpbuValue: viewModel.alamatSpbuValue,
                  noTelpValue: viewModel.noTelpValue,
                  tglInvoiceValue: viewModel.tglInvoiceValue,
                  hargaPerliterValue: viewModel.hargaPerliterValue,
                  jenisBbmValue: viewModel.jenisBbmValue,
                  noInvoiceValue: viewModel.noInvoiceValue,
                  nopolValue: viewModel.nopolValue,
                  operatorValue: viewModel.operatorValue,
                  totalLiterValue: viewModel.totalLiterValue,
                  pelangganValue: viewModel.pelangganValue,
                  totalHargaValue: viewModel.totalHargaValue,
                  totalBayarValue: viewModel.totalBayarValue,
                  fontSnaredrum: viewModel.fontSnareDrum!,
                  fontTelidonHvRegular: viewModel.fontTelidonHvRegular!,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
