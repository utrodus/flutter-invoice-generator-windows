import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_invoice_generator_windows/src/widgets/widgets.dart';

import 'invoice_spbu_view.forms.dart';

class InvoiceSpbuView extends StatelessWidget {
  const InvoiceSpbuView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 16,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Cetak Struk SPBU",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              PrimaryButton(
                tooltipMessage: "Cetak Struk SPBU",
                onPressed: () {},
              )
            ],
          ),
        ),
        const InvoiceSpbuForms(),
      ],
    );
  }
}
