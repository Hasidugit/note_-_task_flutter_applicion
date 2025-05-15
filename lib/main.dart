import 'package:flutter/material.dart';
import 'package:flutter_application_note_dp/utils/router.dart';
import 'package:flutter_application_note_dp/utils/thrme_data.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      title: 'notesphere ',
      theme: ThemeClass.darkTheme.copyWith(
        textTheme: GoogleFonts.dmSansTextTheme(Theme.of(context).textTheme),
      ),
    );
  }
}
