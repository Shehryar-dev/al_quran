![Screen 1](assets/app%20screenshot/1.png)
![Screen 2](assets/app%20screenshot/2.png))
![Screen 3](assets/app%20screenshot/3.png)
![Screen 4](assets/app%20screenshot/4.png)

# 📖 Quran App

A beautifully designed Flutter application for reading and understanding the Holy Quran. This app includes features such as Surah listings, verse-by-verse reading, Qibla direction, Salah time notifications, and more.

## ✨ Features

- 📖 **Read the Quran** – Browse through all the Surahs with a clean UI.
- 🔍 **Search Functionality** – Quickly find any Surah or Ayah.
- 🕌 **Qibla Direction** – Locate the accurate direction of the Kaaba.
- 🕋 **Prayer Times** – Get real-time prayer time alerts.
- 📊 **Prayer Counter** – Keep track of your daily prayers.
- 🌙 **Last Read Position** – Resume reading from where you left off.
- 🎨 **Dark & Light Theme** – Choose between different themes.

## 🛠️ Tech Stack

- **Flutter** – Frontend framework
- **Dart** – Programming language
- **Bloc** – State management
- **REST API** – Fetching data
- **GetIt** – Dependency injection

## 📂 Project Structure

```
📂 lib
│── 📂 core
│   │── 📂 resources               # (App-wide static resources)
│   │   │── 📂 constants
│   │   │    │── assets.dart            # (Paths for assets)
│   │   │    │── colors.dart            # (App color scheme)
│   │   │    │── strings.dart           # (App-wide strings)
│   │   │    │── screen_path.dart  
│   │   │    │── enums.dart
│   │   │    │── api_url.dart
│   │   │    │── sizes.dart
│   │   │
│   │   │── 📂 themes
│   │   │
│   │   │── 📂 loader
│   │   │
│   │   │── 📂 device
│   │   │
│   │   │── 📂 popups
│   │   │
│   │── 📂 storage               
│   │   │── 📂 quran_pak_storage
│   │   │    │── quran_pak_storage.dart
│   │── 📂 exceptions
│   │   │── app_exception.dart
│   │── 📂 utils                   # (Helper functions & extensions)
│   │   │── helpers_function.dart           # (Generic helper functions)
│   │   │── flushbar_helper.dart   # (Check internet connectivity)
│
│── 📂 data
│   │── 📂 network
│   │   │── base_api_serrvices.dart
│   │   │── network_api_dio_serrvices.dart
│   │   │── network_api_serrvices.dart
│   │
│   │── 📂 permissions 
│   │   │── permission_service.dart
│   │
│   │── 📂 models (Freezed Models)
│   │   │── surah_model.dart
│   │ 
│   │── 📂 response
│   │   │── api_response.dart
│   │   
│   │── 📂 repositories  (Quran data fetching logic)
│   │   │── quran_repository.dart
│
│──📂 presentation
│   │── 📂 screens
│   │   │── 📂 home_screen
│   │   │   │── home_screen.dart
│   │   │   │── 📂 widgets
│   │   │── 📂 introduction_screen
│   │   │   │── introduction_screen.dart
│   │   │   │── 📂 widgets
│   │   │── 📂 last_read
│   │   │   │── last_read.dart
│   │   │   │── 📂 widgets
│   │   │── 📂 prayer_counter
│   │   │   │── prayer_counter.dart
│   │   │   │── 📂 widgets
│   │   │── 📂 qibla_direction
│   │   │   │── qibla_direction_screen.dart
│   │   │   │── 📂 screen
│   │   │── 📂 quran_pak_screen
│   │   │   │── quran_pak_screen.dart
│   │   │   │── 📂 widgets
│   │   │── 📂 salah_time_screen
│   │   │   │── salah_time_screen.dart
│   │   │── 📂 splash_screen
│   │   │   │── splash_screen.dart
│   │   │── 📂 surat_screen
│   │   │   │── surat_screen.dart
│   │   │   │── 📂 widgets
│   │──📂 common (Reusable Widgets)
│   │   │── custom_button.dart
│   │   │── verse_card.dart
│   │──📂 bloc
│   │   │── quran_bloc.dart
│   │   │── quran_event.dart
│   │   │── quran_state.dart
│
│── 📂di
│   │── service_locator.dart
│
│──📂 config
│   │── routes.dart
│   │── routes_name.dart
│   │── app_config.dart
│
│── main.dart
│── app.dart
```

## 📸 Demo

![Demo](assets/app%20screenshot/video_demo.gif)

## 🚀 Installation

1. Clone the repository:
   ```sh
   git clone https://github.com/Shehryar-dev/al_quran.git
   ```
2. Navigate to the project directory:
   ```sh
   cd quran-app
   ```
3. Install dependencies:
   ```sh
   flutter pub get
   ```
4. Run the app:
   ```sh
   flutter run
   ```

## 📜 License

This project is licensed under the MIT License.

---

⭐ **Star this repository if you like the project!** 🚀
