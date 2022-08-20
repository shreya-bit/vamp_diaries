import 'package:get/get.dart';

import 'http_service.dart';

class CharacterController extends GetxController {
  var isLoading = true.obs;
  var productList = [].obs;

  void onInit() {
    fetchCharacters();
    super.onInit();
  }

  void fetchCharacters() async {
    try{
      isLoading(true);
      var characters = await HttpService.fetchCharacters();
      if (characters != null) {
        charactersList.value = characters;
      }
    }
    finally{
      isLoading(false);
    }


  }

}

