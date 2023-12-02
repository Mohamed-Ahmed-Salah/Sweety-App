import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sweety_app/core/constants/app_assets.dart';
import 'package:sweety_app/core/errors/failure.dart';
import 'package:sweety_app/data/models/food.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<FetchDataEvent>(_fetchData);
  }

  _fetchData(event, emit) async {
    await Future.delayed(const Duration(seconds: 2)).then((value) => null);
    emit(HomeLoaded(list: list));
  }
}

List<Food> list = [cake, cheeseCake, cookeies, snakeCake];
Food cake = Food(
    id: 1,
    price: 20,
    title: "Chocolate Cake",
    rating: 4.5,
    description: "Chocolate cake, with its fudgy-yet-fluffy layers ..... ",
    image: AppAssets.cupcake,
    reviews: 40,
    isFavourite: true);

Food cheeseCake = Food(
    id: 2,
    price: 22,
    title: "Bluberry Cheesecake",
    rating: 4.5,
    description: "rich, velvety, and luscious cheesecake is studded ....",
    image: AppAssets.cake,
    reviews: 30,
    isFavourite: true);
Food cookeies = Food(
    id: 3,
    price: 30,
    title: "Bluberry Cookies",
    rating: 4.1,
    description: "rich, velvety, and luscious cheesecake is studded ....",
    image: AppAssets.cookies,
    reviews: 50,
    isFavourite: false);
Food snakeCake = Food(
    id: 3,
    price: 25,
    title: "Chocolate Cupcake",
    rating: 4.3,
    description: "rich, velvety, and luscious cheesecake is studded ....",
    image: AppAssets.snakeCake,
    reviews: 50,
    isFavourite: false);
