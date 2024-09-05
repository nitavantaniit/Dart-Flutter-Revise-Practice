class Category {
  int? id;
  String name = '';
  String description = '';

  Map<String, dynamic> categoryMap() {
    var mapping = <String, dynamic>{};
    mapping['id'] = id;
    mapping['name'] = name;
    mapping['description'] = description;

    return mapping;
  }
}
