import 'package:fluent_ui/fluent_ui.dart';

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
              Button(
                style: ButtonStyle(
                  backgroundColor: ButtonState.resolveWith(
                    (states) {
                      if (states.contains(ButtonStates.hovering)) {
                        return Colors.blue.dark;
                      }
                      if (states.contains(ButtonStates.pressing)) {
                        return Colors.blue.darker;
                      }
                      return Colors.blue;
                    },
                  ),
                  shape: ButtonState.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  padding: ButtonState.all(const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 12,
                  )),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      FluentIcons.print,
                      size: 20,
                      color: Colors.white,
                    ),
                    SizedBox(width: 8),
                    Text(
                      'Cetak Struk',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                onPressed: () => debugPrint('pressed button'),
              )
            ],
          ),
        ),
        const InvoiceSpbuForms(),
      ],
    );
  }
}
