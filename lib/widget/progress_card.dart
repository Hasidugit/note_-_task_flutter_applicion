import 'package:flutter/material.dart';
import 'package:flutter_application_note_dp/utils/colors.dart';
import 'package:flutter_application_note_dp/utils/text_styles.dart';

class ProgressCard extends StatefulWidget {
  final int completedTaskd;
  final int totalTaks;
  const ProgressCard({
    super.key,
    required this.completedTaskd,
    required this.totalTaks,
  });

  @override
  State<ProgressCard> createState() => _ProgressCardState();
}

class _ProgressCardState extends State<ProgressCard> {
  @override
  Widget build(BuildContext context) {
    double completedPercentage =
        widget.totalTaks != 0
            ? (widget.completedTaskd / widget.totalTaks) * 100
            : 0;
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: AppColors.kCardColor,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Today's Progress", style: AppTextStyles.appSubtitle),
              SizedBox(height: 10),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: Text(
                  "you hass completed ${widget.completedTaskd} out of ${widget.totalTaks} tasks, \nkeep up the progress!",
                  style: AppTextStyles.appDescriptionSmall.copyWith(
                    color: AppColors.kWhiteColor.withOpacity(0.5),
                  ),
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.18,
                height: MediaQuery.of(context).size.width * 0.18,
                decoration: BoxDecoration(
                  gradient: AppColors().kPrimaryGradient,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Center(
                  child: Text(
                    "${completedPercentage.toString()}%",
                    style: AppTextStyles.appTitle.copyWith(fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
