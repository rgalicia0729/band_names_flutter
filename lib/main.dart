import 'package:band_names_flutter/services/socket_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:band_names_flutter/screens/home_screen.dart';
import 'package:band_names_flutter/screens/status_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => SocketService())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'status',
        routes: {
          '/': (_) => HomeScreen(),
          'status': (_) => StatusScreen(),
        },
      ),
    );
  }
}
