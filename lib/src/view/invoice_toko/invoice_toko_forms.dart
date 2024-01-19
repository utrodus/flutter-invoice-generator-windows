import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_invoice_generator_windows/src/view_model/view_model.dart';
import 'package:flutter_invoice_generator_windows/src/widgets/widgets.dart';
import 'package:provider/provider.dart';

import 'invoice_toko_produk_form.dart';

class InvoiceTokoForms extends StatelessWidget {
  const InvoiceTokoForms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        padding: const EdgeInsets.only(
          top: 20,
          left: 30,
          right: 30,
          bottom: 30,
        ),
        child: Consumer<InvoiceTokoViewModel>(
          builder: (context, viewModel, _) => Form(
            key: viewModel.formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextBoxWithLabel(
                  prefix: const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Icon(
                      FluentIcons.shop_server,
                      size: 17,
                    ),
                  ),
                  controller: viewModel.namaTokoController,
                  label: "Nama Toko",
                  placeholder: "Masukkan Nama Toko",
                  onChanged: (value) {
                    viewModel.namaTokoValue = value;
                  },
                  suffix: viewModel.namaTokoValue.isEmpty
                      ? null
                      : IconButton(
                          icon: Icon(
                            CupertinoIcons.clear_circled_solid,
                            size: 20,
                            color: Colors.red.lighter,
                          ),
                          onPressed: () {},
                        ),
                ),
                const SizedBox(height: 14),
                TextBoxWithLabel(
                  prefix: const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Icon(
                      FluentIcons.map_pin,
                      size: 17,
                    ),
                  ),
                  controller: viewModel.alamatTokoController,
                  label: "Alamat Toko",
                  placeholder: "Masukkan Alamat Toko",
                  onChanged: (value) {
                    viewModel.alamatTokoValue = value;
                  },
                  suffix: viewModel.alamatTokoValue.isEmpty
                      ? null
                      : IconButton(
                          icon: Icon(
                            CupertinoIcons.clear_circled_solid,
                            size: 20,
                            color: Colors.red.lighter,
                          ),
                          onPressed: () {},
                        ),
                ),
                const SizedBox(height: 14),
                TextBoxWithLabel(
                  prefix: const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Icon(
                      FluentIcons.document_set,
                      size: 17,
                    ),
                  ),
                  controller: viewModel.kodeInvoiceController,
                  label: "Kode Invoice",
                  placeholder: "Masukkan Kode Invoice",
                  onChanged: (value) {
                    viewModel.kodeInvoiceValue = value;
                  },
                  suffix: viewModel.kodeInvoiceValue.isEmpty
                      ? null
                      : IconButton(
                          icon: Icon(
                            CupertinoIcons.clear_circled_solid,
                            size: 20,
                            color: Colors.red.lighter,
                          ),
                          onPressed: () {},
                        ),
                ),
                const SizedBox(height: 14),
                TextBoxWithLabel(
                  prefix: const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Icon(
                      FluentIcons.invoice,
                      size: 17,
                    ),
                  ),
                  controller: viewModel.namaInvoiceController,
                  label: "Nama Invoice",
                  placeholder: "Masukkan Nama Invoice",
                  onChanged: (value) {
                    viewModel.namaInvoiceValue = value;
                  },
                  suffix: viewModel.namaInvoiceValue.isEmpty
                      ? null
                      : IconButton(
                          icon: Icon(
                            CupertinoIcons.clear_circled_solid,
                            size: 20,
                            color: Colors.red.lighter,
                          ),
                          onPressed: () {},
                        ),
                ),
                const SizedBox(height: 14),
                TextBoxWithLabel(
                  prefix: const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Icon(
                      FluentIcons.reservation_orders,
                      size: 17,
                    ),
                  ),
                  controller: viewModel.namaMejaController,
                  label: "Nama Meja",
                  placeholder: "Masukkan Nama Meja",
                  onChanged: (value) {
                    viewModel.namaMejaValue = value;
                  },
                  suffix: viewModel.namaMejaValue.isEmpty
                      ? null
                      : IconButton(
                          icon: Icon(
                            CupertinoIcons.clear_circled_solid,
                            size: 20,
                            color: Colors.red.lighter,
                          ),
                          onPressed: () {},
                        ),
                ),
                const SizedBox(height: 18),

                /// Invoice Toko Produk Form
                ...viewModel.listInvoiceTokoProdukForm
                    .map((e) => InvoiceTokoProdukForm(
                          invoiceTokoProdukModel: e,
                          index: viewModel.listInvoiceTokoProdukForm.indexOf(e),
                          onPressedRemoveItem: () =>
                              viewModel.removeInvoiceTokoProdukModel(
                            viewModel.listInvoiceTokoProdukForm.indexOf(e),
                          ),
                        ))
                    .toList(),
                const SizedBox(height: 6),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    FilledButton(
                      onPressed: () => viewModel.addInvoiceTokoProdukModel(),
                      child: const Row(
                        children: [
                          Icon(
                            CupertinoIcons.add_circled_solid,
                            size: 20,
                          ),
                          SizedBox(width: 5),
                          Text(
                            "Tambah Produk",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 14),
                TextBoxWithLabel(
                  prefix: const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Icon(
                      FluentIcons.money,
                      size: 17,
                    ),
                  ),
                  controller: viewModel.jumlahController,
                  label: "Jumlah",
                  placeholder: "Masukkan Jumlah",
                  onChanged: (value) {
                    viewModel.jumlahValue = value;
                  },
                  suffix: viewModel.jumlahValue.isEmpty
                      ? null
                      : IconButton(
                          icon: Icon(
                            CupertinoIcons.clear_circled_solid,
                            size: 20,
                            color: Colors.red.lighter,
                          ),
                          onPressed: () {},
                        ),
                ),

                const SizedBox(height: 14),

                TextBoxWithLabel(
                  prefix: const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Icon(
                      FluentIcons.waffle,
                      size: 17,
                    ),
                  ),
                  controller: viewModel.discountController,
                  label: "Discount",
                  placeholder: "Masukkan Discount",
                  onChanged: (value) {
                    viewModel.discountValue = value;
                  },
                  suffix: viewModel.discountValue.isEmpty
                      ? null
                      : IconButton(
                          icon: Icon(
                            CupertinoIcons.clear_circled_solid,
                            size: 20,
                            color: Colors.red.lighter,
                          ),
                          onPressed: () {},
                        ),
                ),

                const SizedBox(height: 14),

                TextBoxWithLabel(
                  prefix: const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Icon(
                      FluentIcons.ticket,
                      size: 17,
                    ),
                  ),
                  controller: viewModel.voucherController,
                  label: "Voucher",
                  placeholder: "Masukkan Voucher",
                  onChanged: (value) {
                    viewModel.voucherValue = value;
                  },
                  suffix: viewModel.voucherValue.isEmpty
                      ? null
                      : IconButton(
                          icon: Icon(
                            CupertinoIcons.clear_circled_solid,
                            size: 20,
                            color: Colors.red.lighter,
                          ),
                          onPressed: () {},
                        ),
                ),

                const SizedBox(height: 14),

                TextBoxWithLabel(
                  prefix: const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Icon(
                      FluentIcons.money,
                      size: 17,
                    ),
                  ),
                  controller: viewModel.serviceChargeController,
                  label: "Service Charge",
                  placeholder: "Masukkan Service Charge",
                  onChanged: (value) {
                    viewModel.serviceChargeValue = value;
                  },
                  suffix: viewModel.serviceChargeValue.isEmpty
                      ? null
                      : IconButton(
                          icon: Icon(
                            CupertinoIcons.clear_circled_solid,
                            size: 20,
                            color: Colors.red.lighter,
                          ),
                          onPressed: () {},
                        ),
                ),

                const SizedBox(height: 14),

                TextBoxWithLabel(
                  prefix: const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Icon(
                      FluentIcons.money,
                      size: 17,
                    ),
                  ),
                  controller: viewModel.pajakController,
                  label: "Pajak",
                  placeholder: "Masukkan Pajak",
                  onChanged: (value) {
                    viewModel.pajakValue = value;
                  },
                  suffix: viewModel.pajakValue.isEmpty
                      ? null
                      : IconButton(
                          icon: Icon(
                            CupertinoIcons.clear_circled_solid,
                            size: 20,
                            color: Colors.red.lighter,
                          ),
                          onPressed: () {},
                        ),
                ),

                const SizedBox(height: 14),

                TextBoxWithLabel(
                  prefix: const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Icon(
                      FluentIcons.money,
                      size: 17,
                    ),
                  ),
                  controller: viewModel.chargeController,
                  label: "Charge",
                  placeholder: "Masukkan Charge",
                  onChanged: (value) {
                    viewModel.chargeValue = value;
                  },
                  suffix: viewModel.chargeValue.isEmpty
                      ? null
                      : IconButton(
                          icon: Icon(
                            CupertinoIcons.clear_circled_solid,
                            size: 20,
                            color: Colors.red.lighter,
                          ),
                          onPressed: () {},
                        ),
                ),

                const SizedBox(height: 14),

                TextBoxWithLabel(
                  prefix: const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Icon(
                      FluentIcons.money,
                      size: 17,
                    ),
                  ),
                  controller: viewModel.pembulatanController,
                  label: "Pembulatan",
                  placeholder: "Masukkan Pembulatan",
                  onChanged: (value) {
                    viewModel.pembulatanValue = value;
                  },
                  suffix: viewModel.pembulatanValue.isEmpty
                      ? null
                      : IconButton(
                          icon: Icon(
                            CupertinoIcons.clear_circled_solid,
                            size: 20,
                            color: Colors.red.lighter,
                          ),
                          onPressed: () {},
                        ),
                ),

                const SizedBox(height: 14),

                TextBoxWithLabel(
                  prefix: const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Icon(
                      FluentIcons.money,
                      size: 17,
                    ),
                  ),
                  controller: viewModel.grandTotalController,
                  label: "Grand Total",
                  placeholder: "Masukkan Grand Total",
                  onChanged: (value) {
                    viewModel.grandTotalValue = value;
                  },
                  suffix: viewModel.grandTotalValue.isEmpty
                      ? null
                      : IconButton(
                          icon: Icon(
                            CupertinoIcons.clear_circled_solid,
                            size: 20,
                            color: Colors.red.lighter,
                          ),
                          onPressed: () {},
                        ),
                ),

                const SizedBox(height: 14),
                TextBoxWithLabel(
                  prefix: const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Icon(
                      FluentIcons.money,
                      size: 17,
                    ),
                  ),
                  controller: viewModel.bayarTunaiController,
                  label: "Bayar Tunai",
                  placeholder: "Masukkan Bayar Tunai",
                  onChanged: (value) {
                    viewModel.bayarTunaiValue = value;
                  },
                  suffix: viewModel.bayarTunaiValue.isEmpty
                      ? null
                      : IconButton(
                          icon: Icon(
                            CupertinoIcons.clear_circled_solid,
                            size: 20,
                            color: Colors.red.lighter,
                          ),
                          onPressed: () {},
                        ),
                ),

                const SizedBox(height: 14),

                TextBoxWithLabel(
                  prefix: const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Icon(
                      FluentIcons.credit_card_bill,
                      size: 17,
                    ),
                  ),
                  controller: viewModel.cardController,
                  label: "Card",
                  placeholder: "Masukkan Card",
                  onChanged: (value) {
                    viewModel.cardValue = value;
                  },
                  suffix: viewModel.cardValue.isEmpty
                      ? null
                      : IconButton(
                          icon: Icon(
                            CupertinoIcons.clear_circled_solid,
                            size: 20,
                            color: Colors.red.lighter,
                          ),
                          onPressed: () {},
                        ),
                ),

                const SizedBox(height: 14),

                /// kembalian
                TextBoxWithLabel(
                  prefix: const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Icon(
                      FluentIcons.money,
                      size: 17,
                    ),
                  ),
                  controller: viewModel.kembalianController,
                  label: "Kembalian",
                  placeholder: "Masukkan Kembalian",
                  onChanged: (value) {
                    viewModel.kembalianValue = value;
                  },
                  suffix: viewModel.kembalianValue.isEmpty
                      ? null
                      : IconButton(
                          icon: Icon(
                            CupertinoIcons.clear_circled_solid,
                            size: 20,
                            color: Colors.red.lighter,
                          ),
                          onPressed: () {},
                        ),
                ),

                const SizedBox(height: 14),

                /// nama kasir
                TextBoxWithLabel(
                  prefix: const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Icon(
                      FluentIcons.user_followed,
                      size: 17,
                    ),
                  ),
                  controller: viewModel.namaKasirController,
                  label: "Nama Kasir",
                  placeholder: "Masukkan Nama Kasir",
                  onChanged: (value) {
                    viewModel.namaKasirValue = value;
                  },
                  suffix: viewModel.namaKasirValue.isEmpty
                      ? null
                      : IconButton(
                          icon: const Icon(
                            CupertinoIcons.clear_circled_solid,
                            size: 20,
                          ),
                          onPressed: () {},
                        ),
                ),

                const SizedBox(height: 14),

                /// nama toko 2
                TextBoxWithLabel(
                  prefix: const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Icon(
                      FluentIcons.shop_server,
                      size: 17,
                    ),
                  ),
                  controller: viewModel.namaToko2Controller,
                  label: "Nama Toko 2",
                  placeholder: "Masukkan Nama Toko 2",
                  onChanged: (value) {
                    viewModel.namaToko2Value = value;
                  },
                  suffix: viewModel.namaToko2Value.isEmpty
                      ? null
                      : IconButton(
                          icon: const Icon(
                            CupertinoIcons.clear_circled_solid,
                            size: 20,
                          ),
                          onPressed: () {},
                        ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
