import 'package:fluent_ui/fluent_ui.dart';

class InvoiceSpbuViewModel extends ChangeNotifier {
  /// form key
  final formKey = GlobalKey<FormState>();

  final TextEditingController noSpbuController = TextEditingController();
  final TextEditingController alamatSpbuController = TextEditingController();
  final TextEditingController noTelpController = TextEditingController();
  final TextEditingController tglInvoiceController = TextEditingController();
  final TextEditingController noInvoiceController = TextEditingController();
  final TextEditingController jenisBbmController = TextEditingController();
  final TextEditingController totalLiterController = TextEditingController();
  final TextEditingController hargaPerliterController = TextEditingController();
  final TextEditingController totalHargaController = TextEditingController();
  final TextEditingController totalBayarController = TextEditingController();
  final TextEditingController nopolController = TextEditingController();
  final TextEditingController pelangganController = TextEditingController();
  final TextEditingController operatorController = TextEditingController();
}
