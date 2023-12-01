import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sweety_app/core/constants/app_icons.dart';
import 'package:sweety_app/data/models/side_menu.dart';

part 'menu_list_event.dart';

part 'menu_list_state.dart';

class MenuListBloc extends Bloc<MenuListEvent, MenuListState> {
  MenuListBloc()
      : super(MenuListInitial(list: const [
          address,
          payment,
          list,
          language,
          dark,
          notification,
          chat,
          security
        ])) {
    on<ChangeSwitchEvent>(_changeSwitch);
  }

  _changeSwitch(event, emit) async {
    List<Menu> list = state.list;
    Menu elementToUpdate = event.menu;

    List<Menu> updatedList = [];
    for (int i = 0; i < list.length; i++) {
      if (list[i].title == elementToUpdate.title) {
        print("index $i ${list[i].title} ${list[i].enabled}");
        print("not${!list[i].enabled}");
        elementToUpdate = elementToUpdate.copyWith(enabled: event.value);
        print("eeeee ${elementToUpdate.enabled}");
        updatedList.add(elementToUpdate);
      //  print(updatedList.toString());
        // print(elementToUpdate.toString());
      } else {
        print("normal add${list[i].title}");
        updatedList.add(list[i]);
      }
    }
    // print(updatedList);
    // updatedList[updatedList.indexWhere((element) => element.title == elementToUpdate.title)] =
    //     elementToUpdate.copyWith(enabled: !elementToUpdate.enabled);

    print(updatedList);
    emit(MenuListInitial(list: updatedList));
  }
}

const Menu address = Menu(
    title: "Addresses",
    subTitle: "Shipping addresses",
    icon: AppIcons.address,
    type: "MY SETTINGS");
const Menu payment = Menu(
    title: "Payment",
    subTitle: "Connected credit cards addresses",
    icon: AppIcons.payment,
    type: "MY SETTINGS");
const Menu list = Menu(
    title: "My Orders",
    subTitle: "Track and view your placed orders here",
    icon: AppIcons.list,
    type: "MY SETTINGS");

const Menu language = Menu(
    title: "Language",
    subTitle: "English (United Kingdom)",
    icon: AppIcons.language,
    type: "APP SETTINGS");
const Menu dark = Menu(
    title: "Dark Mode",
    subTitle: "",
    icon: AppIcons.moon,
    type: "APP SETTINGS",
    enabled: false,
    selectable: true);

const Menu notification = Menu(
    title: "Notification",
    subTitle: "Special offers & discounts",
    icon: AppIcons.notification,
    type: "APP SETTINGS",
    enabled: true,
    selectable: true);

const Menu chat = Menu(
  title: "Chat",
  subTitle: "Any questions? Talk to our team directly",
  icon: AppIcons.chat,
  type: "Contact",
);

const Menu security = Menu(
  title: "Privacy Policy",
  subTitle: "Promises your privacy",
  icon: AppIcons.security,
  type: "Contact",
);
