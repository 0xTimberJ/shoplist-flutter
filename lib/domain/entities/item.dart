import 'package:equatable/equatable.dart';

class Item extends Equatable {
  final int? id;
  final String name;
  final bool isChecked;
  final int listId; // Foreign key to shopping_list
  final DateTime createdAt;

  const Item({
    this.id,
    required this.name,
    required this.isChecked,
    required this.listId,
    required this.createdAt,
  });

  Item copyWith({
    int? id,
    String? name,
    bool? isChecked,
    int? listId,
    DateTime? createdAt,
  }) {
    return Item(
      id: id ?? this.id,
      name: name ?? this.name,
      isChecked: isChecked ?? this.isChecked,
      listId: listId ?? this.listId,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  List<Object?> get props => [id, name, isChecked, listId, createdAt];
}
