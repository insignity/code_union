
import 'package:equatable/equatable.dart';

class ScheduleEntity extends Equatable {
  final int id;
  final DateTime opening;
  final DateTime closing;

  const ScheduleEntity({
    required this.id,
    required this.opening,
    required this.closing,
  });

  @override
  List<Object?> get props => [id, opening, closing];
}
