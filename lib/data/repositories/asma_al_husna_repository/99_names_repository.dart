
import 'package:al_quran/data/models/asma_al_husna_model/asma_al_husna.dart';

abstract class AsmaAlHusnaRepository{
  Future<AsmaAlHusnaModel> fetchNames();
}