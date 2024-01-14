import 'package:fluent_ui/fluent_ui.dart';

class PrintInvoiceSpbu extends StatefulWidget {
  const PrintInvoiceSpbu({super.key});

  @override
  State<PrintInvoiceSpbu> createState() => _PrintInvoiceSpbuState();
}

class _PrintInvoiceSpbuState extends State<PrintInvoiceSpbu> {
  final TextEditingController _noSpbuController = TextEditingController();
  final TextEditingController _alamatSpbuController = TextEditingController();
  final TextEditingController _noTelpController = TextEditingController();
  final TextEditingController _TglInvoiceController = TextEditingController();
  final TextEditingController _noInvoiceController = TextEditingController();
  final TextEditingController _jenisBbmController = TextEditingController();
  final TextEditingController _totalLiterController = TextEditingController();
  final TextEditingController _hargaPerliterController =
      TextEditingController();
  final TextEditingController _totalHargaController = TextEditingController();
  final TextEditingController _totalBayarController = TextEditingController();
  final TextEditingController _nopolController = TextEditingController();
  final TextEditingController _pelangganController = TextEditingController();
  final TextEditingController _operatorController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
        child: SingleChildScrollView(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Cetak Struk SPBU",
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "Nomor SPBU",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 400),
            child: TextBox(
              controller: _noSpbuController,
              placeholder: "Masukkan Nomor SPBU",
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
              placeholderStyle: TextStyle(
                fontSize: 16,
                color: Colors.grey[120],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(
                  color: Colors.grey[120],
                  width: 1,
                ),
              ),
            ),
          ),
          const SizedBox(height: 14),
          const Text(
            "Alamat SPBU",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 400),
            child: TextBox(
              controller: _alamatSpbuController,
              placeholder: "Masukkan Alamat SPBU",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[120],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(
                  color: Colors.grey[120],
                  width: 1,
                ),
              ),
            ),
          ),
          const SizedBox(height: 14),
          const Text(
            "Nomor Telepon",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 400),
            child: TextBox(
              controller: _noTelpController,
              placeholder: "Masukkan Nomor Telepon",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[120],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(
                  color: Colors.grey[120],
                  width: 1,
                ),
              ),
            ),
          ),
          const SizedBox(height: 14),
          const Text(
            "Tanggal Invoice",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 400),
            child: TextBox(
              controller: _TglInvoiceController,
              placeholder: "Masukkan Tanggal Invoice",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[120],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(
                  color: Colors.grey[120],
                  width: 1,
                ),
              ),
            ),
          ),
          const SizedBox(height: 18),
          Container(
            constraints: const BoxConstraints(maxWidth: 400),
            color: Colors.grey,
            height: 2,
          ),
          const SizedBox(height: 14),
          const Text(
            "Nomor Invoice",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 400),
            child: TextBox(
              controller: _noInvoiceController,
              placeholder: "Masukkan Nomor Invoice",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[120],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(
                  color: Colors.grey[120],
                  width: 1,
                ),
              ),
            ),
          ),
          const SizedBox(height: 14),
          const Text(
            "Jenis BBM",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 400),
            child: TextBox(
              controller: _jenisBbmController,
              placeholder: "Masukkan Jenis BBM",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[120],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(
                  color: Colors.grey[120],
                  width: 1,
                ),
              ),
            ),
          ),
          const SizedBox(height: 14),
          const Text(
            "Total Liter",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 400),
            child: TextBox(
              controller: _totalLiterController,
              placeholder: "Masukkan Total Liter",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[120],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(
                  color: Colors.grey[120],
                  width: 1,
                ),
              ),
            ),
          ),
          const SizedBox(height: 14),
          const Text(
            "Harga Per Liter",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 400),
            child: TextBox(
              controller: _hargaPerliterController,
              placeholder: "Masukkan Harga Per Liter",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[120],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(
                  color: Colors.grey[120],
                  width: 1,
                ),
              ),
            ),
          ),
          const SizedBox(height: 14),
          const Text(
            "Total Harga BBM",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 400),
            child: TextBox(
              controller: _totalHargaController,
              placeholder: "Masukkan Total Harga BBM",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[120],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(color: Colors.grey[120], width: 1),
              ),
            ),
          ),
          const SizedBox(height: 18),
          Container(
            constraints: const BoxConstraints(maxWidth: 400),
            color: Colors.grey,
            height: 2,
          ),
          const SizedBox(height: 14),
          const Text(
            "Total Bayar BBM (TUNAI)",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 400,
            ),
            child: TextBox(
              controller: _totalBayarController,
              placeholder: "Masukkan Total Bayar BBM (TUNAI)",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[120],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(color: Colors.grey[120], width: 1),
              ),
            ),
          ),
          const SizedBox(height: 14),
          const Text(
            "Nomor Polisi Kendaraan",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 400),
              child: TextBox(
                controller: _nopolController,
                placeholder: "Masukkan Nomor Polisi Kendaraan",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[120],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(color: Colors.grey[120], width: 1),
                ),
              )),
          const SizedBox(height: 14),
          const Text(
            "Nama Pelanggan",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 400),
              child: TextBox(
                controller: _pelangganController,
                placeholder: "Masukkan Nama Pelanggan",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[120],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(color: Colors.grey[120], width: 1),
                ),
              )),
          const SizedBox(height: 14),
          const Text(
            "Nama Operator SPBU",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 400),
              child: TextBox(
                controller: _operatorController,
                placeholder: "Masukkan Nama Operator SPBU",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[120],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(color: Colors.grey[120], width: 1),
                ),
              )),
        ],
      ),
    ));
  }
}
