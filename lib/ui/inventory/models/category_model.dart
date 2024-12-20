class CategoryModel {
  final String categoryName;
  final String categoryLogo;

  CategoryModel({
    required this.categoryName,
    required this.categoryLogo,
  });
}

final categories = [
  CategoryModel(
    categoryName: 'Mineral Water',
    categoryLogo:
        'https://images.tokopedia.net/img/cache/700/VqbcmM/2021/5/22/4d1120a8-075d-4c3c-82f6-b912fa57b5db.jpg',
  ),
  CategoryModel(
    categoryName: 'Computer',
    categoryLogo:
        'https://cdn.britannica.com/77/170477-050-1C747EE3/Laptop-computer.jpg',
  ),
];
