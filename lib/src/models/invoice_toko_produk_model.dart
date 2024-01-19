import 'package:flutter/material.dart';

class InvoiceTokoProdukModel {
  String qty;
  String keterangan;
  String discount;
  String total;

  final TextEditingController qtyController = TextEditingController();
  final TextEditingController keteranganController = TextEditingController();
  final TextEditingController discountController = TextEditingController();
  final TextEditingController totalController = TextEditingController();

  InvoiceTokoProdukModel({
    this.qty = "1",
    this.keterangan = "Nama Produk",
    this.discount = "0",
    this.total = "1",
  });
}
