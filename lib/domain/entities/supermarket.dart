import 'package:equatable/equatable.dart';

class Supermarket extends Equatable {
  final int? id;
  final String name;
  final String address;
  final String userId; // Foreign key to user

  const Supermarket({
    this.id,
    required this.name,
    required this.address,
    required this.userId,
  });

  Supermarket copyWith({
    int? id,
    String? name,
    String? address,
    String? userId,
  }) {
    return Supermarket(
      id: id ?? this.id,
      name: name ?? this.name,
      address: address ?? this.address,
      userId: userId ?? this.userId,
    );
  }

  @override
  List<Object?> get props => [id, name, address, userId];
}
