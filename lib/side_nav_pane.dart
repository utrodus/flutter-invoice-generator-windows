import 'package:fluent_ui/fluent_ui.dart';

import 'print_invoice_spbu.dart';
import 'print_invoice_toko.dart';

class SideNavPane extends StatefulWidget {
  const SideNavPane({super.key});

  @override
  State<SideNavPane> createState() => _SideNavPaneState();
}

class _SideNavPaneState extends State<SideNavPane> {
  int _currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return NavigationView(
      pane: NavigationPane(
        size: const NavigationPaneSize(
          openMinWidth: 250.0,
          openMaxWidth: 320.0,
        ),
        header: Container(
          height: 60,
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          alignment: Alignment.centerLeft,
          child: const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('assets/ic_printer.png'),
                width: 26,
                height: 26,
              ),
              SizedBox(width: 12),
              Flexible(
                child: Text(
                  'Invoice Generator',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
        selected: _currentPageIndex,
        onChanged: (index) => setState(() => _currentPageIndex = index),
        items: [
          PaneItem(
            icon: const Icon(
              FluentIcons.print,
              size: 20,
            ),
            title: const Text(
              'Print Struk SPBU',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            body: const PrintInvoiceSpbu(),
          ),
          PaneItem(
            icon: const Icon(
              FluentIcons.printfax_printer_file,
              size: 20,
            ),
            title: const Text(
              'Print Struk Toko',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            body: const PrintInvoiceToko(),
          ),
        ],
      ),
    );
  }
}
