import 'package:fluent_ui/fluent_ui.dart';

class TextBoxWithLabel extends StatelessWidget {
  const TextBoxWithLabel({
    super.key,
    this.label,
    this.controller,
    this.placeholder,
    this.keyboardType,
    this.prefix,
    this.suffix,
    this.onChanged,
  });
  final String? label;
  final TextEditingController? controller;
  final String? placeholder;
  final TextInputType? keyboardType;
  final Widget? prefix;
  final Widget? suffix;
  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label ?? "",
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 350),
          child: TextBox(
            controller: controller,
            placeholder: placeholder,
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
            keyboardType: keyboardType,
            prefix: prefix,
            suffix: suffix,
            onChanged: onChanged,
          ),
        ),
      ],
    );
  }
}
