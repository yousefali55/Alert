import 'package:alert/Data/Model/GetInfoModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'player_info_box_state.dart';

class GetInfoCubit extends Cubit<GetInfoState> {
  GetInfoCubit() : super(GetInfoInitial());
  
  Player newsRepo = Player();

  getinfo() async{
    emit(GetInfoLoading());

    try{
      await newsRepo.getinfo().then((value){
        if (value != null){
          emit(GetInfoSuccess(response:value));
        }
        else{
          emit(GetInfoError());
        }
      });
    }
    catch(error){
      emit(GetInfoError());
    }
  }
}
