import 'package:auto_route/auto_route.dart';

import '../../features/tasks/presentation/pages/home_page.dart';
import '../../features/tasks/presentation/pages/new_task_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
  AutoRoute(page: HomeRoute.page, initial: true),
 AutoRoute(page: NewTaskRoute.page)
  ];
}
