part of 'brand_bloc.dart';

@freezed
class BrandEvent with _$BrandEvent {
  const factory BrandEvent.started() = _Started;
  const factory BrandEvent.addBrand({
    required String name,
    required XFile image,
  }) = _AddBrand;
  const factory BrandEvent.getBrands() = _GetBrands;

  //delete brand
  const factory BrandEvent.deleteBrand(int id) = _DeleteBrand;

  //update brand
  const factory BrandEvent.updateBrand({
    required int id,
    required String name,
    required XFile? image,
  }) = _UpdateBrand;
}