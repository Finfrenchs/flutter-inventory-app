class VariationModel {
  final String variationName;
  final List<String> variationValues;

  VariationModel({
    required this.variationName,
    required this.variationValues,
  });

  String get variationValue => variationValues.join(', ');
}

final variations = [
  VariationModel(
    variationName: 'Storage',
    variationValues: ['256GB'],
  ),
  VariationModel(
    variationName: 'Size',
    variationValues: ['M', 'L', 'XL'],
  ),
];
