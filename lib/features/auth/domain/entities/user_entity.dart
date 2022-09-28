
import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final int id;
  final String email;
  final String nickname;

  const UserEntity({
    required this.id,
    required this.email,
    required this.nickname,
  });

  @override
  List<Object?> get props => [id, email, nickname];
}