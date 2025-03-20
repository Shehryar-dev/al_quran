lib/
│── core/
│   ├── api/
│   │   ├── quran_api.dart
│   ├── di/
│   │   ├── injector.dart  <-- GetIt Setup
│   ├── models/
│   │   ├── surah_model.dart (Freezed)
│   ├── repository/
│   │   ├── quran_repository.dart
│── data/
│   ├── sources/
│   │   ├── remote_data_source.dart
│── presentation/
│   ├── screens/
│   │   ├── home_screen.dart
│   │   ├── surah_details_screen.dart
│   ├── widgets/
│── state_management/
│   ├── blocs/
│   │   ├── quran_bloc.dart
│   │   ├── quran_event.dart
│   │   ├── quran_state.dart
│── main.dart

________________________________
📂 lib
│── 📂 core
│   │── 📂 resources               # (App-wide static resources)
│   │   │── 📂 constants
│   │       │── assets.dart            # (Paths for assets)
│   │       │── colors.dart            # (App color scheme)
│   │       │── strings.dart           # (App-wide strings)
│   │       │── themes.dart            # (Light/Dark mode themes)
│   │       │── screen_path.dart  
│   │       │── enums.dart
│   │       │── api_url.dart
│   │       │── sizes.dart
│
│    
│   │── 📂 exceptions
│   │   │── app_exception.dart
│   │
│   │── 📂 utils                   # (Helper functions & extensions)
│   │   │── logger.dart            # (Logging utility)
│   │   │── validators.dart        # (Input validators)
│   │   │── helpers.dart           # (Generic helper functions)
│   │   │── network_checker.dart   # (Check internet connectivity)
│
│── 📂 data
│   │── 📂 models
│   │   │── surah_model.dart       # (Freezed model for Surah)
│   │   │── verse_model.dart       # (Freezed model for Verses)
│   │── 📂 repositories
│   │   │── quran_repository.dart  # (Quran data fetching logic)
│
│── 📂 domain
│   │── 📂 entities
│   │   │── surah.dart             # (Entity for clean architecture)
│   │── 📂 usecases
│   │   │── get_surah_usecase.dart # (Business logic for Surah)
│
│── 📂 presentation
│   │── 📂 screens
│   │   │── home_screen.dart       # (Main Quran UI)
│   │   │── surah_detail_screen.dart # (Surah details UI)
│   │── 📂 widgets
│   │   │── custom_button.dart     # (Reusable Button)
│   │   │── verse_card.dart        # (UI for single verse)
│   │── 📂 bloc
│   │   │── quran_bloc.dart        # (State management)
│   │   │── quran_event.dart       # (Events for BLoC)
│   │   │── quran_state.dart       # (States for BLoC)
│
│── 📂 di
│   │── service_locator.dart       # (Dependency Injection using GetIt)
│
│── 📂 config
│   │── 📂 
│   │   │── routes.dart    
│   │   │── routes_name.dart
│   │
│   │── app_config.dart            # (App-level configurations)
│
│── main.dart                      # (Entry point)
│── app.dart                        # (App initialization)
