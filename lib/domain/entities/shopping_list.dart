import 'package:equatable/equatable.dart';

class ShoppingList extends Equatable {
  final int? id;
  final String name;
  final String userId; // Foreign key to user
  final DateTime createdAt;
  final DateTime updatedAt;

  const ShoppingList({
    this.id,
    required this.name,
    required this.userId,
    required this.createdAt,
    required this.updatedAt,
  });

  ShoppingList copyWith({
    int? id,
    String? name,
    String? userId,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return ShoppingList(
      id: id ?? this.id,
      name: name ?? this.name,
      userId: userId ?? this.userId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  List<Object?> get props => [id, name, userId, createdAt, updatedAt];
}
