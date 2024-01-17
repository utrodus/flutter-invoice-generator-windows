import 'package:fluent_ui/fluent_ui.dart';

class InvoiceSpbuViewModel extends ChangeNotifier {
  void initForm() {
    noSpbuValue = 'SPBU';
    noSpbuController.text = noSpbuValue;
    alamatSpbuValue = 'Jl.';
    alamatSpbuController.text = alamatSpbuValue;
    noTelpValue = 'Telp.';
    noTelpController.text = noTelpValue;
    tglInvoiceValue = 'Senin,';
    tglInvoiceController.text = tglInvoiceValue;
  }

  /// form key
  final formKey = GlobalKey<FormState>();

  final TextEditingController noSpbuController = TextEditingController();
  String _noSpbuValue = '';
  String get noSpbuValue => _noSpbuValue;
  set noSpbuValue(String value) {
    _noSpbuValue = value;
    notifyListeners();
  }

  final TextEditingController alamatSpbuController = TextEditingController();
  String _alamatSpbuValue = '';
  String get alamatSpbuValue => _alamatSpbuValue;
  set alamatSpbuValue(String value) {
    _alamatSpbuValue = value;
    notifyListeners();
  }

  final TextEditingController noTelpController = TextEditingController();
  String _noTelpValue = '';
  String get noTelpValue => _noTelpValue;
  set noTelpValue(String value) {
    _noTelpValue = value;
    notifyListeners();
  }

  final TextEditingController tglInvoiceController = TextEditingController();
  String _tglInvoiceValue = '';
  String get tglInvoiceValue => _tglInvoiceValue;
  set tglInvoiceValue(String value) {
    _tglInvoiceValue = value;
    notifyListeners();
  }

  final TextEditingController noInvoiceController = TextEditingController();
  String _noInvoiceValue = '';
  String get noInvoiceValue => _noInvoiceValue;
  set noInvoiceValue(String value) {
    _noInvoiceValue = value;
    notifyListeners();
  }

  final TextEditingController jenisBbmController = TextEditingController();
  String _jenisBbmValue = '';
  String get jenisBbmValue => _jenisBbmValue;
  set jenisBbmValue(String value) {
    _jenisBbmValue = value;
    notifyListeners();
  }

  final TextEditingController totalLiterController = TextEditingController();
  String _totalLiterValue = '';
  String get totalLiterValue => _totalLiterValue;
  set totalLiterValue(String value) {
    _totalLiterValue = value;
    notifyListeners();
  }

  final TextEditingController hargaPerliterController = TextEditingController();
  String _hargaPerliterValue = '';
  String get hargaPerliterValue => _hargaPerliterValue;
  set hargaPerliterValue(String value) {
    _hargaPerliterValue = value;
    notifyListeners();
  }

  final TextEditingController totalHargaController = TextEditingController();
  String _totalHargaValue = '';
  String get totalHargaValue => _totalHargaValue;
  set totalHargaValue(String value) {
    _totalHargaValue = value;
    notifyListeners();
  }

  final TextEditingController totalBayarController = TextEditingController();
  String _totalBayarValue = '';
  String get totalBayarValue => _totalBayarValue;
  set totalBayarValue(String value) {
    _totalBayarValue = value;
    notifyListeners();
  }

  final TextEditingController nopolController = TextEditingController();
  String _nopolValue = '';
  String get nopolValue => _nopolValue;
  set nopolValue(String value) {
    _nopolValue = value;
    notifyListeners();
  }

  final TextEditingController pelangganController = TextEditingController();
  String _pelangganValue = '';
  String get pelangganValue => _pelangganValue;
  set pelangganValue(String value) {
    _pelangganValue = value;
    notifyListeners();
  }

  final TextEditingController operatorController = TextEditingController();
  String _operatorValue = '';
  String get operatorValue => _operatorValue;
  set operatorValue(String value) {
    _operatorValue = value;
    notifyListeners();
  }
}
