import 'package:flutter/material.dart';
import 'package:flutter_invoice_generator_windows/src/models/models.dart';

class InvoiceTokoViewModel extends ChangeNotifier {
  /// form key
  final formKey = GlobalKey<FormState>();
  void initForm() {
    namaTokoValue = 'Nama Toko';
    namaTokoController.text = namaTokoValue;
    alamatTokoValue = 'Jl.';
    alamatTokoController.text = alamatTokoValue;
    kodeInvoiceValue = 'Kode Invoice';
    kodeInvoiceController.text = kodeInvoiceValue;
    namaInvoiceValue = 'Nama Invoice';
    namaInvoiceController.text = namaInvoiceValue;
    namaMejaValue = 'Nama Meja';
    namaMejaController.text = namaMejaValue;

    listInvoiceTokoProdukForm.add(InvoiceTokoProdukModel());
    listInvoiceTokoProdukForm[0].qtyController.text = '1';
    listInvoiceTokoProdukForm[0].keteranganController.text = 'Produk 1';
    listInvoiceTokoProdukForm[0].discountController.text = '0%';
    listInvoiceTokoProdukForm[0].totalController.text = '0';
  }

  /// clear all form field
  void onTapClearAll() {}

  final TextEditingController namaTokoController = TextEditingController();
  String _namaTokoValue = '';
  String get namaTokoValue => _namaTokoValue;
  set namaTokoValue(String value) {
    _namaTokoValue = value;
    notifyListeners();
  }

  void onTapClearNamaToko() {
    namaTokoController.clear();
    namaTokoValue = '';
    notifyListeners();
  }

  final TextEditingController alamatTokoController = TextEditingController();
  String _alamatTokoValue = '';
  String get alamatTokoValue => _alamatTokoValue;
  set alamatTokoValue(String value) {
    _alamatTokoValue = value;
    notifyListeners();
  }

  void onTapClearAlamatToko() {
    alamatTokoController.clear();
    alamatTokoValue = '';
    notifyListeners();
  }

  final TextEditingController kodeInvoiceController = TextEditingController();
  String _noInvoiceValue = '';
  String get kodeInvoiceValue => _noInvoiceValue;
  set kodeInvoiceValue(String value) {
    _noInvoiceValue = value;
    notifyListeners();
  }

  void onTapClearNoInvoice() {
    kodeInvoiceController.clear();
    kodeInvoiceValue = '';
    notifyListeners();
  }

  final TextEditingController namaInvoiceController = TextEditingController();
  String _namaInvoiceValue = '';
  String get namaInvoiceValue => _namaInvoiceValue;
  set namaInvoiceValue(String value) {
    _namaInvoiceValue = value;
    notifyListeners();
  }

  void onTapClearNamaInvoice() {
    namaInvoiceController.clear();
    namaInvoiceValue = '';
    notifyListeners();
  }

  final TextEditingController namaMejaController = TextEditingController();
  String _namaMejaValue = '';
  String get namaMejaValue => _namaMejaValue;
  set namaMejaValue(String value) {
    _namaMejaValue = value;
    notifyListeners();
  }

  void onTapClearNamaMeja() {
    namaMejaController.clear();
    namaMejaValue = '';
    notifyListeners();
  }

  /// NOTE: Invoice Toko Produk Form
  List<InvoiceTokoProdukModel> listInvoiceTokoProdukForm = [];

  /// NOTE: Add Invoice Toko Produk Form
  void addInvoiceTokoProdukModel() {
    listInvoiceTokoProdukForm.add(InvoiceTokoProdukModel());
    notifyListeners();
  }

  /// NOTE: Remove Invoice Toko Produk Form
  void removeInvoiceTokoProdukModel(int index) {
    listInvoiceTokoProdukForm.removeAt(index);
    notifyListeners();
  }

  final TextEditingController jumlahController = TextEditingController();
  String _jumlahValue = '';
  String get jumlahValue => _jumlahValue;
  set jumlahValue(String value) {
    _jumlahValue = value;
    notifyListeners();
  }

  void onTapClearJumlah() {
    jumlahController.clear();
    jumlahValue = '';
    notifyListeners();
  }

  final TextEditingController discountController = TextEditingController();
  String _discountValue = '';
  String get discountValue => _discountValue;
  set discountValue(String value) {
    _discountValue = value;
    notifyListeners();
  }

  void onTapClearDiscount() {
    discountController.clear();
    discountValue = '';
    notifyListeners();
  }

  final TextEditingController voucherController = TextEditingController();
  String _voucherValue = '';
  String get voucherValue => _voucherValue;
  set voucherValue(String value) {
    _voucherValue = value;
    notifyListeners();
  }

  void onTapClearVoucher() {
    voucherController.clear();
    voucherValue = '';
    notifyListeners();
  }

  final TextEditingController serviceChargeController = TextEditingController();
  String _serviceChargeValue = '';
  String get serviceChargeValue => _serviceChargeValue;
  set serviceChargeValue(String value) {
    _serviceChargeValue = value;
    notifyListeners();
  }

  void onTapClearServiceCharge() {
    serviceChargeController.clear();
    serviceChargeValue = '';
    notifyListeners();
  }

  final TextEditingController pajakController = TextEditingController();
  String _pajakValue = '';
  String get pajakValue => _pajakValue;
  set pajakValue(String value) {
    _pajakValue = value;
    notifyListeners();
  }

  void onTapClearPajak() {
    pajakController.clear();
    pajakValue = '';
    notifyListeners();
  }

  final TextEditingController chargeController = TextEditingController();
  String _chargeValue = '';
  String get chargeValue => _chargeValue;
  set chargeValue(String value) {
    _chargeValue = value;
    notifyListeners();
  }

  void onTapClearCharge() {
    chargeController.clear();
    chargeValue = '';
    notifyListeners();
  }

  final TextEditingController pembulatanController = TextEditingController();
  String _pembulatanValue = '';
  String get pembulatanValue => _pembulatanValue;
  set pembulatanValue(String value) {
    _pembulatanValue = value;
    notifyListeners();
  }

  void onTapClearPembulatan() {
    pembulatanController.clear();
    pembulatanValue = '';
    notifyListeners();
  }

  final TextEditingController grandTotalController = TextEditingController();
  String _grandTotalValue = '';
  String get grandTotalValue => _grandTotalValue;
  set grandTotalValue(String value) {
    _grandTotalValue = value;
    notifyListeners();
  }

  void onTapClearGrandTotal() {
    grandTotalController.clear();
    grandTotalValue = '';
    notifyListeners();
  }

  final TextEditingController bayarTunaiController = TextEditingController();
  String _bayarTunaiValue = '';
  String get bayarTunaiValue => _bayarTunaiValue;
  set bayarTunaiValue(String value) {
    _bayarTunaiValue = value;
    notifyListeners();
  }

  void onTapClearBayarTunai() {
    bayarTunaiController.clear();
    bayarTunaiValue = '';
    notifyListeners();
  }

  final TextEditingController cardController = TextEditingController();
  String _cardValue = '';
  String get cardValue => _cardValue;
  set cardValue(String value) {
    _cardValue = value;
    notifyListeners();
  }

  void onTapClearCard() {
    cardController.clear();
    cardValue = '';
    notifyListeners();
  }

  final TextEditingController kembalianController = TextEditingController();
  String _kembalianValue = '';
  String get kembalianValue => _kembalianValue;
  set kembalianValue(String value) {
    _kembalianValue = value;
    notifyListeners();
  }

  void onTapClearKembalian() {
    kembalianController.clear();
    kembalianValue = '';
    notifyListeners();
  }

  final TextEditingController namaKasirController = TextEditingController();
  String _namaKasirValue = '';
  String get namaKasirValue => _namaKasirValue;
  set namaKasirValue(String value) {
    _namaKasirValue = value;
    notifyListeners();
  }

  void onTapClearNamaKasir() {
    namaKasirController.clear();
    namaKasirValue = '';
    notifyListeners();
  }

  final TextEditingController namaToko2Controller = TextEditingController();
  String _namaToko2Value = '';
  String get namaToko2Value => _namaToko2Value;
  set namaToko2Value(String value) {
    _namaToko2Value = value;
    notifyListeners();
  }

  void onTapClearNamaToko2() {
    namaToko2Controller.clear();
    namaToko2Value = '';
    notifyListeners();
  }
}
