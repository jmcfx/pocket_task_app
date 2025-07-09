import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import '../../../../core/theme/app_colors.dart';

class DueDateTimeField extends StatelessWidget {
  final DateTime? selectedDateTime;
  final void Function(DateTime) onDateChanged;
  final void Function(TimeOfDay) onTimeChanged;

  const DueDateTimeField({
    super.key,
    required this.selectedDateTime,
    required this.onDateChanged,
    required this.onTimeChanged,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final dateText = selectedDateTime != null
        ? DateFormat('dd/MM/yyyy').format(selectedDateTime!)
        : 'Pick a date';

    final timeText = selectedDateTime != null
        ? DateFormat('hh:mm').format(selectedDateTime!)
        : 'Pick time';

    final isAM = selectedDateTime != null && selectedDateTime!.hour < 12;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //  Date Section
        Text("Date", style: theme.textTheme.titleMedium),
        SizedBox(height: 8.h),
        GestureDetector(
          onTap: () async {
            final pickedDate = await showDatePicker(
              context: context,
              initialDate: selectedDateTime ?? DateTime.now(),
              firstDate: DateTime.now(),
              lastDate: DateTime(2100),
            );
            if (pickedDate != null) {
              final newDate = DateTime(
                pickedDate.year,
                pickedDate.month,
                pickedDate.day,
                selectedDateTime?.hour ?? 9,
                selectedDateTime?.minute ?? 0,
              );
              onDateChanged(newDate);
            }
          },
          child: TextFormField(
            enabled: false,
            decoration: InputDecoration(
              hintText: dateText ,
              hintStyle: theme.textTheme.titleSmall!.copyWith(
                fontSize: 14.sp,
                color: AppColors.surface200,
              ),
              suffixIcon: const Icon(Icons.calendar_today),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.r),
                borderSide: BorderSide(color: theme.dividerColor),
              ),
              contentPadding: EdgeInsets.symmetric(
                horizontal: 16.r,
                vertical: 18.r,
              ),
            ),
          ),
        ),
        SizedBox(height: 32.r),
        // Time Section
        Text("Time", style: theme.textTheme.titleMedium),
        SizedBox(height: 8.r),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 12.r, vertical: 11.r),
          decoration: BoxDecoration(
            border: Border.all(color: theme.dividerColor),
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: Row(
            children: [
              // Time display (taps open time picker)
              Expanded(
                child: GestureDetector(
                  onTap: () async {
                    final pickedTime = await showTimePicker(
                      context: context,
                      initialTime: selectedDateTime != null
                          ? TimeOfDay.fromDateTime(selectedDateTime!)
                          : const TimeOfDay(hour: 9, minute: 0),
                    );
                    if (pickedTime != null) {
                      onTimeChanged(pickedTime);
                    }
                  },
                  child: Text(
                    timeText,
                    style: theme.textTheme.titleSmall!.copyWith(
                      fontSize: 14.sp,
                      color: AppColors.surface200,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 12.r),
              // AM/PM Toggle
              Row(
                children: [
                  _TimeToggleButton(
                    label: "AM",
                    selected: isAM,
                    onTap: () {
                      if (selectedDateTime != null && !isAM) {
                        final hour = selectedDateTime!.hour % 12;
                        final updated = DateTime(
                          selectedDateTime!.year,
                          selectedDateTime!.month,
                          selectedDateTime!.day,
                          hour,
                          selectedDateTime!.minute,
                        );
                        onTimeChanged(TimeOfDay.fromDateTime(updated));
                      }
                    },
                  ),
                  SizedBox(width: 6.r),
                  _TimeToggleButton(
                    label: "PM",
                    selected: !isAM,
                    onTap: () {
                      if (selectedDateTime != null && isAM) {
                        final hour = selectedDateTime!.hour % 12 + 12;
                        final updated = DateTime(
                          selectedDateTime!.year,
                          selectedDateTime!.month,
                          selectedDateTime!.day,
                          hour,
                          selectedDateTime!.minute,
                        );
                        onTimeChanged(TimeOfDay.fromDateTime(updated));
                      }
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

//time Toggle Button ....
class _TimeToggleButton extends StatelessWidget {
  final String label;
  final bool selected;
  final VoidCallback onTap;

  const _TimeToggleButton({
    required this.label,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(8.r),
        decoration: BoxDecoration(
          color: selected ? theme.primaryColor : Colors.transparent,
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(color: theme.dividerColor),
        ),
        child: Text(
          label,
          style: theme.textTheme.titleMedium!.copyWith(
            fontSize: 15.sp,
            color: selected ? Colors.white : AppColors.surface300,
          ),
        ),
      ),
    );
  }
}
