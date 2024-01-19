import 'package:fluent_ui/fluent_ui.dart';
import 'package:window_manager/window_manager.dart';
import 'package:provider/provider.dart';
import 'src/view/splash/splash_view.dart';
import 'src/view_model/view_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await windowManager.ensureInitialized();
  WindowOptions windowOptions = const WindowOptions(
    title: 'Invoice Generator',
    minimumSize: Size(1200, 768),
    size: Size(1200, 768),
    center: true,
    maximumSize: Size(1200, 900),
    backgroundColor: Color(0xff03284c),
  );
  windowManager.waitUntilReadyToShow(windowOptions, () async {
    await windowManager.show();
    await windowManager.focus();
  });
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SizeNavPaneViewModel()),
        ChangeNotifierProvider(
            create: (_) => InvoiceSpbuViewModel()..initForm()),
        ChangeNotifierProvider(
            create: (_) => InvoiceTokoViewModel()..initForm()),
      ],
      child: const FluentApp(
        title: 'Invoice Generator',
        themeMode: ThemeMode.system,
        debugShowCheckedModeBanner: false,
        home: SplashView(),
      ),
    );
  }
}
