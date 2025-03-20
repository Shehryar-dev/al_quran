// constant folder
export 'assets.dart';
export 'colors.dart';
export 'strings.dart';
export 'enum.dart';
export 'svg_strings.dart';
export 'app_url.dart';


///home screen
export 'package:al_quran/presentation/blocs/app_bloc/app_bloc.dart';
export 'package:al_quran/presentation/common/widgets/curved_header/primary_header_widget.dart';
export 'package:al_quran/presentation/screens/all_ayat_screen/surat_list_screen.dart';
export 'package:al_quran/presentation/screens/home_screen/widgets/screen_banner.dart';
export 'package:al_quran/presentation/screens/home_screen/widgets/tab_header.dart';
export 'package:al_quran/presentation/screens/home_screen/widgets/tab_section.dart';
export 'package:flutter/material.dart';
export 'package:hive_flutter/adapters.dart';
export 'package:light_dark_theme_toggle/light_dark_theme_toggle.dart';
export 'package:lottie/lottie.dart';


//-----------------------------------------
//di
export 'package:al_quran/di/service_locator.dart';
//------------------------------------------
//main
export 'package:al_quran/app.dart';
//------------------------------------------
//core directory
export 'package:al_quran/core/exceptions/app_exception.dart';
export 'package:al_quran/core/utils/helper_function.dart';
export 'package:al_quran/core/utils/flush_bar_helper.dart';


//------------------------------------------
//data directory
// export 'package:al_quran/core/exceptions/app_exception.dart';

//------------------------------------------
//config directory

//------------------------------------------
//config directory
export 'package:al_quran/config/routes/routes.dart';
export 'package:al_quran/config/routes/routes_name.dart';

//------------------------------------------
//------------------------------------------
//packages
export 'dart:async';
export 'package:al_quran/data/network/base_api_services.dart';
export 'package:dio/dio.dart';


///
export 'package:al_quran/core/resources/constants/sizes.dart';
export 'package:al_quran/core/resources/device/device_utility.dart';
export 'package:iconsax/iconsax.dart';
export 'package:flutter/foundation.dart';
export 'package:flutter/services.dart';
export 'package:url_launcher/url_launcher_string.dart';


export 'package:al_quran/core/resources/popups/snackbar_popups.dart';

export 'package:al_quran/core/resources/loader/animation_loader.dart';

///----------------

export 'package:al_quran/presentation/common/widgets/card_box/card_box.dart';
export 'package:al_quran/presentation/screens/asma_al_husna_screen/asma_al_husna_view.dart';
export 'package:al_quran/presentation/screens/prayer_counter/prayer_counter.dart';
export 'package:al_quran/presentation/screens/qibla_direction/qibla_direction_screen.dart';
export 'package:al_quran/presentation/screens/salah_time_screen/salah_time_screen.dart';

export 'package:al_quran/presentation/screens/home_screen/widgets/tab_screens/Features_screen.dart';
export 'package:al_quran/presentation/screens/quran_pak_screen/quran_pak_screen.dart';

export 'package:al_quran/core/resources/theme/theme.dart';

export 'package:al_quran/core/resources/popups/custom_dialog.dart';
export 'package:al_quran/presentation/blocs/quran_pak_view_bloc/allsurah_bloc.dart';
export 'package:flutter_bloc/flutter_bloc.dart';


export 'package:al_quran/presentation/blocs/quran_pak_surat_bloc/quran_pak_surat_bloc.dart';
export 'package:simple_gradient_text/simple_gradient_text.dart';


export 'package:al_quran/data/models/qurat_surat_list_model/surat_list_model.dart';
export 'package:al_quran/core/storage/surat_list_storage/surat_list_storage.dart';
export 'package:al_quran/data/repositories/all_surah_list_repository/surat_list_repository.dart';

//*--------------------------------------------------------------------------
export 'package:al_quran/presentation/blocs/bookmark_bloc/bookmark_bloc.dart';
export 'package:al_quran/presentation/screens/bookmark_screen/widgets/bookmark_body.dart';
export 'package:hive/hive.dart';
export '../../../data/models/bookmark_model/bookmark_model.dart';
export 'package:al_quran/presentation/screens/bookmark_screen/widgets/bookmark_list.dart';
export 'package:al_quran/presentation/screens/bookmark_screen/widgets/list_subtitle_body.dart';
export 'package:al_quran/presentation/screens/bookmark_screen/widgets/list_tile_widget.dart';
export 'package:al_quran/presentation/screens/bookmark_screen/widgets/list_title_body.dart';
export 'package:al_quran/presentation/screens/bookmark_screen/widgets/list_trailing_body.dart';
export 'package:al_quran/presentation/screens/last_read/last_read.dart';
export 'package:flutter_swipe_action_cell/core/cell.dart';

//********************************************************************************
export 'package:al_quran/presentation/blocs/asma_al_husna_bloc/asma_al_husna_bloc.dart';
export 'package:al_quran/presentation/screens/asma_al_husna_screen/widgets/grid_body.dart';
export 'package:al_quran/presentation/screens/asma_al_husna_screen/widgets/card_body.dart';
export 'package:al_quran/data/models/asma_al_husna_model/asma_al_husna.dart';
export 'package:al_quran/presentation/screens/asma_al_husna_screen/widgets/card_content_body.dart';

//*************************************************************************************
export 'package:al_quran/presentation/blocs/surat_list_bloc/surat_list_bloc.dart';
export 'package:al_quran/presentation/screens/all_ayat_screen/widgets/surat_list_body.dart';
export 'package:al_quran/presentation/screens/all_ayat_screen/widgets/leading_content_body.dart';
export 'package:al_quran/presentation/screens/all_ayat_screen/widgets/subtitle_body.dart';

//*****************************************************************************************
export 'package:al_quran/presentation/screens/introduction_screen/widgets/screen_content_body.dart';
export 'package:al_quran/presentation/screens/introduction_screen/widgets/start_btn_screen.dart';

//********************************************************************************************

export 'package:al_quran/presentation/common/widgets/appbar_title_row/appbar_title_row.dart';
export 'package:al_quran/presentation/blocs/adhan_time_bloc/adhan_time_bloc.dart';

//************************************************************************************************

export 'package:al_quran/presentation/screens/surat_screen/widgets/ayat_list.dart';
export 'package:al_quran/presentation/screens/surat_screen/widgets/gradient_text.dart';
export 'package:al_quran/data/models/quran_single_surat_model/quran_single_surat_model.dart';
export 'package:al_quran/presentation/screens/surat_screen/widgets/ayat_content_body.dart';
export 'package:al_quran/presentation/screens/surat_screen/widgets/icons_row.dart';


//***********************************************************************************************

export 'package:al_quran/data/permission/permission_service.dart';
export 'package:al_quran/presentation/screens/qibla_direction/screen/empty_screen.dart';
export 'package:flutter_qiblah/flutter_qiblah.dart';
export 'package:al_quran/presentation/screens/qibla_direction/screen/finder_body.dart';

//****************************************************************************************************

export 'package:al_quran/presentation/blocs/beads_counter_bloc/beads_counter_bloc.dart';
export 'package:al_quran/presentation/screens/prayer_counter/widgets/beads_header.dart';
export 'package:al_quran/presentation/screens/prayer_counter/widgets/beads_section.dart';
export 'package:al_quran/presentation/screens/prayer_counter/widgets/beads_states.dart';
export 'package:al_quran/presentation/screens/prayer_counter/widgets/reusable_row.dart';

//*****************************************************************************************************

export 'package:al_quran/data/models/quran_pak_model/quran_pak_model.dart';
export 'package:al_quran/presentation/screens/last_read/widgets/ayat_text_widget.dart';
export 'package:al_quran/presentation/screens/last_read/widgets/icons_row_widgets.dart';
export 'package:al_quran/presentation/screens/last_read/widgets/verse_list_widgets.dart';

//*******************************************************************************************************

export 'package:al_quran/presentation/screens/bookmark_screen/bookmark_screen.dart';
export 'package:al_quran/presentation/screens/home_screen/widgets/tab_screens/quran_pak_tab_screen.dart';






//**********************************************************

export 'package:al_quran/core/storage/quran_pak_storage/quran_pak_storage.dart';
export 'package:al_quran/data/repositories/quran_pak_repository/quran_pak_repository.dart';

//***********************************************************
export 'package:al_quran/data/repositories/adhan_time_repository/adhan_repository.dart';
export 'package:al_quran/data/repositories/all_surah_list_repository/surat_list_http_api_repository.dart';
export 'package:al_quran/data/repositories/asma_al_husna_repository/99_names_http_api_repository.dart';
export 'package:al_quran/data/repositories/asma_al_husna_repository/99_names_repository.dart';
export 'package:al_quran/data/repositories/quran_pak_repository/quran_http_api_repository.dart';
export 'package:al_quran/data/repositories/single_surah_repository/surat_http_api_repository.dart';
export 'package:al_quran/data/repositories/single_surah_repository/surat_repository.dart';