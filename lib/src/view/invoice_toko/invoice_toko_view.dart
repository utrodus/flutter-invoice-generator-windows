import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_invoice_generator_windows/src/view/invoice_toko/invoice_toko_forms.dart';
import 'package:flutter_invoice_generator_windows/src/view/invoice_toko/invoice_toko_preview.dart';
import 'package:flutter_invoice_generator_windows/src/view/invoice_toko/invoice_toko_print_preview.dart';
import 'package:flutter_invoice_generator_windows/src/view_model/invoice_toko/invoice_toko.dart';
import 'package:flutter_invoice_generator_windows/src/widgets/widgets.dart';
import 'package:provider/provider.dart';

class InvoiceTokoView extends StatelessWidget {
  const InvoiceTokoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<InvoiceTokoViewModel>();
    return viewModel.isPrintPreview
        ? const InvoiceTokoPrintPreview()
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                color: Colors.grey[30],
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Expanded(
                      child: Text(
                        "Cetak Struk Toko",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () => viewModel.onTapClearAll(),
                        child: Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 5,
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
                          child: const Text(
                            "Reset Form",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    PrimaryButton(
                      tooltipMessage: "Cetak Struk Toko",
                      onPressed: () {
                        viewModel.onTapPrintTokoPreview();
                      },
                    )
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const InvoiceTokoForms(),
                    Container(
                      width: 10,
                      height: double.infinity,
                      color: Colors.grey[30],
                    ),
                    const Flexible(
                      flex: 2,
                      child: InvoiceTokoPreview(),
                    ),
                  ],
                ),
              ),
            ],
          );
  }
}
