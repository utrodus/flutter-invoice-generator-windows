import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_invoice_generator_windows/src/view_model/invoice_spbu/invoice_spbu.dart';
import 'package:flutter_invoice_generator_windows/src/widgets/text_box_with_label.dart';
import 'package:provider/provider.dart';

class InvoiceSpbuForms extends StatefulWidget {
  const InvoiceSpbuForms({super.key});

  @override
  State<InvoiceSpbuForms> createState() => _InvoiceSpbuFormsState();
}

class _InvoiceSpbuFormsState extends State<InvoiceSpbuForms> {
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
        child: Consumer<InvoiceSpbuViewModel>(
          builder: (context, viewModel, _) => Form(
              key: viewModel.formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextBoxWithLabel(
                    prefix: const Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Icon(
                        FluentIcons.account_activity,
                        size: 17,
                      ),
                    ),
                    controller: viewModel.noSpbuController,
                    label: "Nomor SPBU",
                    placeholder: "Masukkan Nomor SPBU",
                    onChanged: (value) {
                      viewModel.noSpbuValue = value;
                    },
                    suffix: viewModel.noSpbuValue.isEmpty
                        ? null
                        : IconButton(
                            icon: Icon(
                              CupertinoIcons.clear_circled_solid,
                              size: 20,
                              color: Colors.red.lighter,
                            ),
                            onPressed: viewModel.onTapClearNoSpbu,
                          ),
                  ),
                  const SizedBox(height: 14),
                  TextBoxWithLabel(
                    prefix: const Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Icon(
                        FluentIcons.input_address,
                        size: 17,
                      ),
                    ),
                    controller: viewModel.alamatSpbuController,
                    label: "Alamat SPBU",
                    placeholder: "Masukkan Alamat SPBU",
                    onChanged: (value) {
                      viewModel.alamatSpbuValue = value;
                    },
                    suffix: viewModel.alamatSpbuValue.isEmpty
                        ? null
                        : IconButton(
                            icon: Icon(
                              CupertinoIcons.clear_circled_solid,
                              size: 20,
                              color: Colors.red.lighter,
                            ),
                            onPressed: viewModel.onTapClearAlamatSpbu,
                          ),
                  ),
                  const SizedBox(height: 14),
                  TextBoxWithLabel(
                    prefix: const Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Icon(
                        FluentIcons.phone,
                        size: 17,
                      ),
                    ),
                    controller: viewModel.noTelpController,
                    label: "Nomor Telepon",
                    placeholder: "Masukkan Nomor Telepon",
                    onChanged: (value) {
                      viewModel.noTelpValue = value;
                    },
                    suffix: viewModel.noTelpValue.isEmpty
                        ? null
                        : IconButton(
                            icon: Icon(
                              CupertinoIcons.clear_circled_solid,
                              size: 20,
                              color: Colors.red.lighter,
                            ),
                            onPressed: viewModel.onTapClearNoTelp,
                          ),
                  ),
                  const SizedBox(height: 14),
                  TextBoxWithLabel(
                    prefix: const Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Icon(
                        FluentIcons.calendar,
                        size: 17,
                      ),
                    ),
                    controller: viewModel.tglInvoiceController,
                    label: "Tanggal Invoice",
                    placeholder: "Masukkan Tanggal Invoice",
                    onChanged: (value) {
                      viewModel.tglInvoiceValue = value;
                    },
                    suffix: viewModel.tglInvoiceValue.isEmpty
                        ? null
                        : IconButton(
                            icon: Icon(
                              CupertinoIcons.clear_circled_solid,
                              size: 20,
                              color: Colors.red.lighter,
                            ),
                            onPressed: viewModel.onTapClearTglInvoice,
                          ),
                  ),
                  const SizedBox(height: 18),
                  Container(
                    width: double.infinity,
                    color: Colors.grey,
                    height: 2,
                  ),
                  const SizedBox(height: 14),
                  TextBoxWithLabel(
                    prefix: const Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Icon(
                        FluentIcons.add_notes,
                        size: 17,
                      ),
                    ),
                    controller: viewModel.noInvoiceController,
                    label: "Nomor Invoice",
                    placeholder: "Masukkan Nomor Invoice",
                    onChanged: (value) {
                      viewModel.noInvoiceValue = value;
                    },
                    suffix: viewModel.noInvoiceValue.isEmpty
                        ? null
                        : IconButton(
                            icon: Icon(
                              CupertinoIcons.clear_circled_solid,
                              size: 20,
                              color: Colors.red.lighter,
                            ),
                            onPressed: viewModel.onTapClearNoInvoice,
                          ),
                  ),
                  const SizedBox(height: 14),
                  TextBoxWithLabel(
                    prefix: const Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Icon(
                        FluentIcons.category_classification,
                        size: 17,
                      ),
                    ),
                    controller: viewModel.jenisBbmController,
                    label: "Jenis BBM",
                    placeholder: "Masukkan Jenis BBM",
                    onChanged: (value) {
                      viewModel.jenisBbmValue = value;
                    },
                    suffix: viewModel.jenisBbmValue.isEmpty
                        ? null
                        : IconButton(
                            icon: Icon(
                              CupertinoIcons.clear_circled_solid,
                              size: 20,
                              color: Colors.red.lighter,
                            ),
                            onPressed: viewModel.onTapClearJenisBbm,
                          ),
                  ),
                  const SizedBox(height: 14),
                  TextBoxWithLabel(
                    prefix: const Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Icon(
                        FluentIcons.blob_storage,
                        size: 17,
                      ),
                    ),
                    controller: viewModel.totalLiterController,
                    label: "Total Liter",
                    placeholder: "Masukkan Total Liter",
                    onChanged: (value) {
                      viewModel.totalLiterValue = value;
                    },
                    suffix: viewModel.totalLiterValue.isEmpty
                        ? null
                        : IconButton(
                            icon: Icon(
                              CupertinoIcons.clear_circled_solid,
                              size: 20,
                              color: Colors.red.lighter,
                            ),
                            onPressed: viewModel.onTapClearTotalLiter,
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
                    controller: viewModel.hargaPerliterController,
                    label: "Harga Per Liter",
                    placeholder: "Masukkan Harga Per Liter",
                    onChanged: (value) {
                      viewModel.hargaPerliterValue = value;
                    },
                    suffix: viewModel.hargaPerliterValue.isEmpty
                        ? null
                        : IconButton(
                            icon: Icon(
                              CupertinoIcons.clear_circled_solid,
                              size: 20,
                              color: Colors.red.lighter,
                            ),
                            onPressed: viewModel.onTapClearHargaPerliter,
                          ),
                  ),
                  const SizedBox(height: 14),
                  TextBoxWithLabel(
                    prefix: const Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Icon(
                        FluentIcons.bill,
                        size: 17,
                      ),
                    ),
                    controller: viewModel.totalHargaController,
                    label: "Total Harga BBM",
                    placeholder: "Masukkan Total Harga BBM",
                    onChanged: (value) {
                      viewModel.totalHargaValue = value;
                    },
                    suffix: viewModel.totalHargaValue.isEmpty
                        ? null
                        : IconButton(
                            icon: Icon(
                              CupertinoIcons.clear_circled_solid,
                              size: 20,
                              color: Colors.red.lighter,
                            ),
                            onPressed: viewModel.onTapClearTotalHarga,
                          ),
                  ),
                  const SizedBox(height: 18),
                  Container(
                    width: double.infinity,
                    color: Colors.grey,
                    height: 2,
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
                    controller: viewModel.totalBayarController,
                    label: "Total Bayar BBM (TUNAI)",
                    placeholder: "Masukkan Total Bayar BBM (TUNAI)",
                    onChanged: (value) {
                      viewModel.totalBayarValue = value;
                    },
                    suffix: viewModel.totalBayarValue.isEmpty
                        ? null
                        : IconButton(
                            icon: Icon(
                              CupertinoIcons.clear_circled_solid,
                              size: 20,
                              color: Colors.red.lighter,
                            ),
                            onPressed: viewModel.onTapClearTotalBayar,
                          ),
                  ),
                  const SizedBox(height: 14),
                  TextBoxWithLabel(
                    prefix: const Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Icon(
                        FluentIcons.payment_card,
                        size: 17,
                      ),
                    ),
                    controller: viewModel.nopolController,
                    label: "Nomor Polisi",
                    placeholder: "Masukkan Nomor Polisi",
                    onChanged: (value) {
                      viewModel.nopolValue = value;
                    },
                    suffix: viewModel.nopolValue.isEmpty
                        ? null
                        : IconButton(
                            icon: Icon(
                              CupertinoIcons.clear_circled_solid,
                              size: 20,
                              color: Colors.red.lighter,
                            ),
                            onPressed: viewModel.onTapClearNopol,
                          ),
                  ),
                  const SizedBox(height: 14),
                  TextBoxWithLabel(
                    prefix: const Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Icon(
                        FluentIcons.user_gauge,
                        size: 17,
                      ),
                    ),
                    controller: viewModel.pelangganController,
                    label: "Nama Pelanggan",
                    placeholder: "Masukkan Nama Pelanggan",
                    onChanged: (value) {
                      viewModel.pelangganValue = value;
                    },
                    suffix: viewModel.pelangganValue.isEmpty
                        ? null
                        : IconButton(
                            icon: Icon(
                              CupertinoIcons.clear_circled_solid,
                              size: 20,
                              color: Colors.red.lighter,
                            ),
                            onPressed: viewModel
                                .onTapClearPelanggan, // onTapClearPelanggan,
                          ),
                  ),
                  const SizedBox(height: 14),
                  TextBoxWithLabel(
                    prefix: const Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Icon(
                        FluentIcons.user_window,
                        size: 17,
                      ),
                    ),
                    controller: viewModel.operatorController,
                    label: "Operator SPBU",
                    placeholder: "Masukkan Operator SPBU",
                    onChanged: (value) {
                      viewModel.operatorValue = value;
                    },
                    suffix: viewModel.operatorValue.isEmpty
                        ? null
                        : IconButton(
                            icon: Icon(
                              CupertinoIcons.clear_circled_solid,
                              size: 20,
                              color: Colors.red,
                            ),
                            onPressed: viewModel.onTapClearOperator,
                          ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
