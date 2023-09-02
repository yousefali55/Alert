part of 'player_info_box_cubit.dart';

@immutable
sealed class GetInfoState {}

final class GetInfoInitial extends  GetInfoState{}
final class GetInfoLoading extends GetInfoState{}
final class GetInfoSuccess extends GetInfoState{
  final Player response;
  GetInfoSuccess({required this.response});
}
final class GetInfoError extends GetInfoState{}
