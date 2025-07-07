import 'package:flutter/material.dart';

import '../enums/task_status.dart';

extension TaskStatusX on TaskStatus {
  MaterialColor get color => switch (this) {
    TaskStatus.due => Colors.red,
    TaskStatus.inProgress => Colors.yellow,
    TaskStatus.completed => Colors.green,
    TaskStatus.upcoming => Colors.blue,
  };

  Color get backgroundColor => switch (this) {
    TaskStatus.due => Colors.red.shade50,
    TaskStatus.inProgress => Colors.yellow.shade50,
    TaskStatus.completed => Colors.green.shade50,
    TaskStatus.upcoming => Colors.blue.shade50,
  };
}
