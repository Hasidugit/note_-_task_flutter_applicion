import 'package:flutter/material.dart';
import 'package:flutter_application_note_dp/utils/colors.dart';
import 'package:flutter_application_note_dp/utils/router.dart';
import 'package:flutter_application_note_dp/utils/text_styles.dart';

class NotePage extends StatefulWidget {
  const NotePage({super.key});

  @override
  State<NotePage> createState() => _NotePageState();
}

class _NotePageState extends State<NotePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            return AppRouter.router.go("/");
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},

        shape: RoundedRectangleBorder(
          side: BorderSide(color: AppColors.kWhiteColor, width: 2),
          borderRadius: BorderRadius.circular(100),
        ),
        child: Icon(Icons.add, color: AppColors.kWhiteColor),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text("Notes", style: AppTextStyles.appTitle),
      ),
    );
  }
}
