import 'package:fluent_ui/fluent_ui.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.onPressed,
    this.tooltipMessage,
  });
  final void Function() onPressed;
  final String? tooltipMessage;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: Tooltip(
        message: tooltipMessage ?? 'Cetak Struk',
        child: Button(
          style: ButtonStyle(
            backgroundColor: ButtonState.resolveWith(
              (states) {
                if (states.contains(ButtonStates.hovering)) {
                  return Colors.blue.dark;
                }
                if (states.contains(ButtonStates.pressing)) {
                  return Colors.blue.darker;
                }
                return Colors.blue;
              },
            ),
            shape: ButtonState.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            padding: ButtonState.all(const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 12,
            )),
          ),
          onPressed: onPressed,
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                FluentIcons.print,
                size: 20,
                color: Colors.white,
              ),
              SizedBox(width: 8),
              Text(
                'Cetak Struk',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
