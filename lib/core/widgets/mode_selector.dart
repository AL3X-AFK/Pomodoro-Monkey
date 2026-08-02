import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pomodoro_app/core/theme/app_colors.dart';
import 'package:pomodoro_app/core/theme/text_styles.dart';

class ModeSelector extends StatelessWidget {

  final String selectedMode;
  final Function(String) onModeSelected;

  const ModeSelector({
    super.key, 
    required this.selectedMode, 
    required this.onModeSelected
  });

  @override
  Widget build(BuildContext context) {

    final bool isWork = selectedMode == "work";
    final bool isRest = selectedMode == "rest";

    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              onModeSelected("work");
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 8, top: 16, bottom: 16),
              child: Container(
                decoration: BoxDecoration(
                  color: isWork ? AppColors.primaryColor : Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    children: [
                      Text("Tiempo de trabajo".toUpperCase(), style: TextStyles.general, textAlign: TextAlign.center,),
                      SizedBox(height: 8),
                      SvgPicture.asset(
                        'assets/icons/focus.svg',
                        width: 24,
                        height: 24,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              onModeSelected("rest");
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 8, right: 16, top: 16, bottom: 16),
              child: Container(
                decoration: BoxDecoration(
                  color: isRest ? AppColors.primaryColor : Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    children: [
                      Text("Tiempo de descanso".toUpperCase(), style: TextStyles.general, textAlign: TextAlign.center,),
                      SizedBox(height: 8),
                      SvgPicture.asset(
                        'assets/icons/sofa.svg',
                        width: 24,
                        height: 24,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}