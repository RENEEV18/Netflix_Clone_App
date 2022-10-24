import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_app/domain/hot_and_new_response/hot_and_new_services.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
 final  HotAndNewServices _homeService;
  HomeBloc(this._homeService) : super(_Initial()) {
    on<HomeEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
