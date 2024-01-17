import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_invoice_generator_windows/src/widgets/widgets.dart';

import 'invoice_spbu.dart';

class InvoiceSpbuView extends StatelessWidget {
  const InvoiceSpbuView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          color: Colors.grey[30],
          padding: const EdgeInsets.all(20),
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
        Expanded(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(child: InvoiceSpbuForms()),
              Container(
                width: 10,
                height: double.infinity,
                color: Colors.grey[30],
              ),
              const Expanded(
                child: InvoiceSpbuPreview(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
