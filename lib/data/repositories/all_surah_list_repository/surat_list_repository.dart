
import '../../models/qurat_surat_list_model/surat_list_model.dart';

abstract class SuratListRepository{
  Future<List<QuranSuratListModel>> fetchQuranSuratList();
}