import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_invoice_generator_windows/src/view/view.dart';
import 'package:flutter_invoice_generator_windows/src/view_model/view_model.dart';
import 'package:provider/provider.dart';

class SideNavPaneView extends StatelessWidget {
  const SideNavPaneView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<SizeNavPaneViewModel>();
    return NavigationView(
      pane: NavigationPane(
        size: const NavigationPaneSize(
          openMinWidth: 200.0,
          openMaxWidth: 250.0,
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
        selected: viewModel.currentPageIndex,
        onChanged: (index) => viewModel.currentPageIndex = index,
        items: [
          PaneItem(
            icon: const Image(
              image: AssetImage('assets/ic_spbu.png'),
              width: 20,
              height: 20,
            ),
            title: const Text(
              'Print Struk SPBU',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            body: const InvoiceSpbuView(),
          ),
          PaneItem(
            icon: const Image(
              image: AssetImage('assets/ic_shop.png'),
              width: 20,
              height: 20,
            ),
            title: const Text(
              'Print Struk Toko',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            body: const InvoiceTokoView(),
          ),
        ],
      ),
    );
  }
}
