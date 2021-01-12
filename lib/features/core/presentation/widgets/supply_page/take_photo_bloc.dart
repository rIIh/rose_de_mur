import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moor/moor.dart';

part 'take_photo_bloc.freezed.dart';

class TakePhotoBloc extends Bloc<TakePhotoEvent, TakePhotoState> {
  TakePhotoBloc(TakePhotoState initialState) : super(initialState);

  @override
  Stream<TakePhotoState> mapEventToState(TakePhotoEvent event) async* {}
}

@freezed
abstract class TakePhotoEvent with _$TakePhotoEvent {
  const factory TakePhotoEvent.takePhoto() = _TakePhoto;
}

@freezed
abstract class TakePhotoState with _$TakePhotoState {
  const factory TakePhotoState.photo(Uint8List photo) = _Photo;
}
