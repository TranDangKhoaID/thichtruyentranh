import 'package:event_bus/event_bus.dart';

final eventBus = EventBus();

/* MAIN */
class ChangeTabEvent {
  final int index;
  ChangeTabEvent({required this.index});
}
/* END MAIN */

/* USER */
class GetUserInfoEvent {
  GetUserInfoEvent();
}
/* END USER */