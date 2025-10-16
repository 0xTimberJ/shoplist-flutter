import '../../domain/entities/item.dart';

class ItemModel extends Item {
  const ItemModel({
    super.id,
    required super.name,
    required super.isChecked,
    required super.listId,
    required super.createdAt,
  });

  // Convert from Map (database) to Model
  factory ItemModel.fromMap(Map<String, dynamic> map) {
    return ItemModel(
      id: map['id'] as int?,
      name: map['name'] as String,
      isChecked: (map['is_checked'] as int) == 1,
      listId: map['list_id'] as int,
      createdAt: DateTime.fromMillisecondsSinceEpoch(map['created_at'] as int),
    );
  }

  // Convert from Model to Map (for database)
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'is_checked': isChecked ? 1 : 0,
      'list_id': listId,
      'created_at': createdAt.millisecondsSinceEpoch,
    };
  }

  // Convert from Entity to Model
  factory ItemModel.fromEntity(Item item) {
    return ItemModel(
      id: item.id,
      name: item.name,
      isChecked: item.isChecked,
      listId: item.listId,
      createdAt: item.createdAt,
    );
  }
}
