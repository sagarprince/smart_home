import 'dart:async';
import 'package:smart_home/shared/models.dart';
import 'package:smart_home/shared/data.dart';

class RoomsStore {
  final int currentPage;
  final Room room;
  RoomsStore({this.currentPage, this.room});
}

class RoomStore {
  final int currentPage;
  final bool isExpanded;
  RoomStore({this.currentPage, this.isExpanded});
}

class AirConditionerStore {
  final int temprature;
  AirConditionerStore({this.temprature});
}

class Store {
  static final Store _singleton = Store._internal();

  final StreamController<RoomsStore> roomsController = StreamController<RoomsStore>();
  final StreamController<RoomStore> roomController = StreamController<RoomStore>.broadcast();
  final StreamController<AirConditionerStore> airConditionerController = StreamController<AirConditionerStore>.broadcast();

  final int temp = 30;

  factory Store() {
    return _singleton;
  }

  Store._internal() {
    roomsController.sink.add(RoomsStore(
        currentPage: 0,
        room: AppData.rooms[0]
    ));
    roomController.sink.add(RoomStore(
        currentPage: 0,
        isExpanded: false
    ));
    airConditionerController.sink.add(AirConditionerStore(
      temprature: temp,
    ));
  }

  onRoomChange(int page) {
    roomsController.sink.add(RoomsStore(
        currentPage: page,
        room: AppData.rooms[page]
    ));
    roomController.sink.add(RoomStore(
        currentPage: page,
        isExpanded: false
    ));
  }

  onRoomExpanded(int page, bool isExpanded) {
    roomController.sink.add(RoomStore(
        currentPage: page,
        isExpanded: isExpanded
    ));
  }

  onTempratureChange(int temp) {
    airConditionerController.sink.add(AirConditionerStore(
        temprature: temp,
    ));
  }
}
