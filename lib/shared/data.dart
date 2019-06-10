import 'package:smart_home/shared/models.dart';

class AppData {

  static List<Room> rooms = [
    Room(id: 1, name: 'Living Room', image: 'assets/images/living_room.jpg', devicesCount: 5),
    Room(id: 2, name: 'Bedroom', image: 'assets/images/bedroom.jpg', devicesCount: 3),
    Room(id: 3, name: 'Kitchen', image: 'assets/images/kitchen.jpg', devicesCount: 4),
    Room(id: 4, name: 'Bathroom', image: 'assets/images/bathroom.jpg', devicesCount: 2),
  ];

}