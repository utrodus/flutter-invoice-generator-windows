import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_invoice_generator_windows/src/services/printer/printer.dart';

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

  void onTapClearNoSpbu() {
    noSpbuController.clear();
    noSpbuValue = '';
    notifyListeners();
  }

  final TextEditingController alamatSpbuController = TextEditingController();
  String _alamatSpbuValue = '';
  String get alamatSpbuValue => _alamatSpbuValue;
  set alamatSpbuValue(String value) {
    _alamatSpbuValue = value;
    notifyListeners();
  }

  void onTapClearAlamatSpbu() {
    alamatSpbuController.clear();
    alamatSpbuValue = '';
    notifyListeners();
  }

  final TextEditingController noTelpController = TextEditingController();
  String _noTelpValue = '';
  String get noTelpValue => _noTelpValue;
  set noTelpValue(String value) {
    _noTelpValue = value;
    notifyListeners();
  }

  void onTapClearNoTelp() {
    noTelpController.clear();
    noTelpValue = '';
    notifyListeners();
  }

  final TextEditingController tglInvoiceController = TextEditingController();
  String _tglInvoiceValue = '';
  String get tglInvoiceValue => _tglInvoiceValue;
  set tglInvoiceValue(String value) {
    _tglInvoiceValue = value;
    notifyListeners();
  }

  void onTapClearTglInvoice() {
    tglInvoiceController.clear();
    tglInvoiceValue = '';
    notifyListeners();
  }

  final TextEditingController noInvoiceController = TextEditingController();
  String _noInvoiceValue = '';
  String get noInvoiceValue => _noInvoiceValue;
  set noInvoiceValue(String value) {
    _noInvoiceValue = value;
    notifyListeners();
  }

  void onTapClearNoInvoice() {
    noInvoiceController.clear();
    noInvoiceValue = '';
    notifyListeners();
  }

  final TextEditingController jenisBbmController = TextEditingController();
  String _jenisBbmValue = '';
  String get jenisBbmValue => _jenisBbmValue;
  set jenisBbmValue(String value) {
    _jenisBbmValue = value;
    notifyListeners();
  }

  void onTapClearJenisBbm() {
    jenisBbmController.clear();
    jenisBbmValue = '';
    notifyListeners();
  }

  final TextEditingController totalLiterController = TextEditingController();
  String _totalLiterValue = '';
  String get totalLiterValue => _totalLiterValue;
  set totalLiterValue(String value) {
    _totalLiterValue = value;
    notifyListeners();
  }

  void onTapClearTotalLiter() {
    totalLiterController.clear();
    totalLiterValue = '';
    notifyListeners();
  }

  final TextEditingController hargaPerliterController = TextEditingController();
  String _hargaPerliterValue = '';
  String get hargaPerliterValue => _hargaPerliterValue;
  set hargaPerliterValue(String value) {
    _hargaPerliterValue = value;
    notifyListeners();
  }

  void onTapClearHargaPerliter() {
    hargaPerliterController.clear();
    hargaPerliterValue = '';
    notifyListeners();
  }

  final TextEditingController totalHargaController = TextEditingController();
  String _totalHargaValue = '';
  String get totalHargaValue => _totalHargaValue;
  set totalHargaValue(String value) {
    _totalHargaValue = value;
    notifyListeners();
  }

  void onTapClearTotalHarga() {
    totalHargaController.clear();
    totalHargaValue = '';
    notifyListeners();
  }

  final TextEditingController totalBayarController = TextEditingController();
  String _totalBayarValue = '';
  String get totalBayarValue => _totalBayarValue;
  set totalBayarValue(String value) {
    _totalBayarValue = value;
    notifyListeners();
  }

  void onTapClearTotalBayar() {
    totalBayarController.clear();
    totalBayarValue = '';
    notifyListeners();
  }

  final TextEditingController nopolController = TextEditingController();
  String _nopolValue = '';
  String get nopolValue => _nopolValue;
  set nopolValue(String value) {
    _nopolValue = value;
    notifyListeners();
  }

  void onTapClearNopol() {
    nopolController.clear();
    nopolValue = '';
    notifyListeners();
  }

  final TextEditingController pelangganController = TextEditingController();
  String _pelangganValue = '';
  String get pelangganValue => _pelangganValue;
  set pelangganValue(String value) {
    _pelangganValue = value;
    notifyListeners();
  }

  void onTapClearPelanggan() {
    pelangganController.clear();
    pelangganValue = '';
    notifyListeners();
  }

  final TextEditingController operatorController = TextEditingController();
  String _operatorValue = '';
  String get operatorValue => _operatorValue;
  set operatorValue(String value) {
    _operatorValue = value;
    notifyListeners();
  }

  void onTapClearOperator() {
    operatorController.clear();
    operatorValue = '';
    notifyListeners();
  }

  /// clear all form field
  void onTapClearAll() {
    noSpbuValue = 'SPBU';
    noSpbuController.text = noSpbuValue;
    alamatSpbuValue = 'Jl.';
    alamatSpbuController.text = alamatSpbuValue;
    noTelpValue = 'Telp.';
    noTelpController.text = noTelpValue;
    tglInvoiceValue = 'Senin,';
    tglInvoiceController.text = tglInvoiceValue;
    noInvoiceController.clear();
    noInvoiceValue = '';
    jenisBbmController.clear();
    jenisBbmValue = '';
    totalLiterController.clear();
    totalLiterValue = '';
    hargaPerliterController.clear();
    hargaPerliterValue = '';
    totalHargaController.clear();
    totalHargaValue = '';
    totalBayarController.clear();
    totalBayarValue = '';
    nopolController.clear();
    nopolValue = '';
    pelangganController.clear();
    pelangganValue = '';
    operatorController.clear();
    operatorValue = '';
    notifyListeners();
  }

  /// print invoice
  PrinterServices printerService = PrinterServices();
  bool isPrintPreview = false;

  void onTapPrintPreview() {
    isPrintPreview = true;
    notifyListeners();
  }

  void onTapBackButton() {
    isPrintPreview = false;

    notifyListeners();
  }
}
