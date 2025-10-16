import '../../domain/entities/supermarket.dart';

class SupermarketModel extends Supermarket {
  const SupermarketModel({
    super.id,
    required super.name,
    required super.address,
    required super.userId,
  });

  // Convert from Map (database) to Model
  factory SupermarketModel.fromMap(Map<String, dynamic> map) {
    return SupermarketModel(
      id: map['id'] as int?,
      name: map['name'] as String,
      address: map['address'] as String,
      userId: map['user_id'] as String,
    );
  }

  // Convert from Model to Map (for database)
  Map<String, dynamic> toMap() {
    return {'id': id, 'name': name, 'address': address, 'user_id': userId};
  }

  // Convert from Entity to Model
  factory SupermarketModel.fromEntity(Supermarket supermarket) {
    return SupermarketModel(
      id: supermarket.id,
      name: supermarket.name,
      address: supermarket.address,
      userId: supermarket.userId,
    );
  }
}
