import 'package:flutter/material.dart';
import 'package:flutter_application_note_dp/utils/router.dart';
import 'package:flutter_application_note_dp/utils/text_styles.dart';
import 'package:flutter_application_note_dp/widget/notes_todo_card.dart';
import 'package:flutter_application_note_dp/widget/progress_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("NoteSphere")),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            children: [
              SizedBox(height: 10),
              ProgressCard(completedTaskd: 2, totalTaks: 5),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      AppRouter.router.push("/notes");
                    },
                    child: NotesTodoCard(
                      title: "Notes",
                      description: "3 Notes",
                      icon: Icons.bookmark_add_outlined,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      AppRouter.router.push("/todos");
                    },
                    child: NotesTodoCard(
                      title: "To-Do List",
                      description: "8 TaskS",
                      icon: Icons.today_sharp,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text("Today 's Progress", style: AppTextStyles.appSubtitle),
                  Spacer(),
                  Text("See All", style: AppTextStyles.appButton),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
