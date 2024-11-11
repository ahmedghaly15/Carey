import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:image_picker/image_picker.dart';

import 'package:carey/src/core/di/dependency_injection.dart';
import 'package:carey/src/core/usecase/api_usecase.dart';

class PickCompressedImg implements BaseUseCase<XFile?, NoParams> {
  @override
  Future<XFile?> call(NoParams params) async {
    final pickedImg =
        await getIt.get<ImagePicker>().pickImage(source: ImageSource.gallery);
    if (pickedImg != null) {
      final compressedImg = await FlutterImageCompress.compressAndGetFile(
        pickedImg.path,
        '${pickedImg.path}_compressed.jpg',
        format: CompressFormat.jpeg,
        quality: 70,
      );
      return compressedImg;
    }
    return null;
  }
}
