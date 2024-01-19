import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_invoice_generator_windows/src/models/invoice_toko_produk_model.dart';
import 'package:flutter_invoice_generator_windows/src/widgets/widgets.dart';

class InvoiceTokoProdukForm extends StatefulWidget {
  const InvoiceTokoProdukForm({
    super.key,
    required this.index,
    required this.invoiceTokoProdukModel,
    required this.onPressedRemoveItem,
    required this.onChangedQty,
    required this.onChangedKeterangan,
    required this.onChangedDiscount,
    required this.onChangedTotal,
  });

  final int index;
  final InvoiceTokoProdukModel invoiceTokoProdukModel;
  final void Function()? onPressedRemoveItem;
  final Function(String)? onChangedQty;
  final Function(String)? onChangedKeterangan;
  final Function(String)? onChangedDiscount;
  final Function(String)? onChangedTotal;

  @override
  State<InvoiceTokoProdukForm> createState() => _InvoiceTokoProdukFormState();
}

class _InvoiceTokoProdukFormState extends State<InvoiceTokoProdukForm> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey[50],
                width: 1,
              ),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Produk ke - ${widget.index + 1}",
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Flexible(
                      child: TextBoxWithLabel(
                        label: "Qty",
                        placeholder: "Qty",
                        controller: widget.invoiceTokoProdukModel.qtyController,
                        onChanged: widget.onChangedQty,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Flexible(
                      flex: 3,
                      child: TextBoxWithLabel(
                        label: "Nama Produk",
                        placeholder: "Nama Produk",
                        controller:
                            widget.invoiceTokoProdukModel.keteranganController,
                        onChanged: widget.onChangedKeterangan,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Flexible(
                      child: TextBoxWithLabel(
                        label: "Discount",
                        placeholder: "Discount",
                        controller:
                            widget.invoiceTokoProdukModel.discountController,
                        onChanged: widget.onChangedDiscount,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Flexible(
                      flex: 2,
                      child: TextBoxWithLabel(
                        label: "Jumlah",
                        placeholder: "Jumlah",
                        controller:
                            widget.invoiceTokoProdukModel.totalController,
                        onChanged: widget.onChangedTotal,
                      ),
                    ),
                    const SizedBox(width: 10),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: FilledButton(
              style: ButtonStyle(
                backgroundColor: ButtonState.resolveWith((states) {
                  if (states.contains(ButtonStates.hovering)) {
                    return Colors.red.darker;
                  }
                  if (states.contains(ButtonStates.pressing)) {
                    return Colors.red.darkest;
                  }
                  if (states.contains(ButtonStates.disabled)) {
                    return Colors.red.withOpacity(0.4);
                  }
                  return Colors.red;
                }),
              ),
              onPressed: widget.index == 0 ? null : widget.onPressedRemoveItem,
              child: const Text('Hapus Produk'),
            ),
          ),
        ],
      ),
    );
  }
}
