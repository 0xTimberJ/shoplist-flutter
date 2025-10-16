import '../../domain/entities/shopping_list.dart';

class ShoppingListModel extends ShoppingList {
  const ShoppingListModel({
    super.id,
    required super.name,
    required super.userId,
    required super.createdAt,
    required super.updatedAt,
  });

  // Convert from Map (database) to Model
  factory ShoppingListModel.fromMap(Map<String, dynamic> map) {
    return ShoppingListModel(
      id: map['id'] as int?,
      name: map['name'] as String,
      userId: map['user_id'] as String,
      createdAt: DateTime.fromMillisecondsSinceEpoch(map['created_at'] as int),
      updatedAt: DateTime.fromMillisecondsSinceEpoch(map['updated_at'] as int),
    );
  }

  // Convert from Model to Map (for database)
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'user_id': userId,
      'created_at': createdAt.millisecondsSinceEpoch,
      'updated_at': updatedAt.millisecondsSinceEpoch,
    };
  }

  // Convert from Entity to Model
  factory ShoppingListModel.fromEntity(ShoppingList shoppingList) {
    return ShoppingListModel(
      id: shoppingList.id,
      name: shoppingList.name,
      userId: shoppingList.userId,
      createdAt: shoppingList.createdAt,
      updatedAt: shoppingList.updatedAt,
    );
  }
}
