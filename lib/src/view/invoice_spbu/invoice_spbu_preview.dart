import "package:fluent_ui/fluent_ui.dart";
import "package:flutter_invoice_generator_windows/src/view_model/invoice_spbu/invoice_spbu.dart";
import "package:provider/provider.dart";

class InvoiceSpbuPreview extends StatelessWidget {
  const InvoiceSpbuPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<InvoiceSpbuViewModel>(
      builder: (context, viewModel, _) {
        return const Column(
          children: <Widget>[
            Text("Preview Hasil Invoice SPBU"),
          ],
        );
      },
    );
  }
}
