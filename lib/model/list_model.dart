import 'package:parcel_fly_ui/model/product_list.dart';
import 'package:parcel_fly_ui/utilits/constant/color_list.dart';
import 'package:parcel_fly_ui/utilits/constant/image_list.dart';
import 'package:parcel_fly_ui/utilits/constant/text_list.dart';

List<ProductList> product = [
  ProductList(
      imagePath: RImages.pending,
      imagePaths: RImages.line,
      text: RTexts.parcel0,
      texts: RTexts.parcel4,
      color: RColors.colors),
  ProductList(
      imagePath: RImages.delivered,
      imagePaths: RImages.line1,
      text: RTexts.parcel1,
      texts: RTexts.parcel5,
      color: RColors.colors1),
  ProductList(
      imagePath: RImages.pending,
      imagePaths: RImages.line2,
      text: RTexts.parcel2,
      texts: RTexts.parcel6,
      color: RColors.colors2),
  ProductList(
      imagePath: RImages.pending,
      imagePaths: RImages.line3,
      text: RTexts.parcel3,
      texts: RTexts.parcel7,
      color: RColors.colors3),
];
