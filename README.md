![Screen 1](assets/app%20screenshot/1.png)
![Screen 2](assets/app%20screenshot/2.png))
![Screen 3](./assets/screenshots/screen3.png)
![Screen 4](./assets/screenshots/screen4.png)

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
lib
│── core
│   │── resources
│   │   │── constants
│   │   │── assets.dart
│   │   │── colors.dart
│   │   │── strings.dart
│   │   │── themes.dart
│   │   │── screen_path.dart
│   │   │── enums.dart
│   │   │── api_url.dart
│   │   │── sizes.dart
│   │── exceptions
│   │   │── app_exception.dart
│   │── utils
│   │   │── logger.dart
│   │   │── validators.dart
│   │   │── helpers.dart
│   │   │── network_checker.dart
│
│── data
│   │── models
│   │   │── surah_model.dart
│   │   │── verse_model.dart
│   │── repositories
│   │   │── quran_repository.dart
│
│── domain
│   │── entities
│   │   │── surah.dart
│   │── usecases
│   │   │── get_surah_usecase.dart
│
│── presentation
│   │── screens
│   │   │── home_screen.dart
│   │   │── surah_detail_screen.dart
│   │── widgets
│   │   │── custom_button.dart
│   │   │── verse_card.dart
│   │── bloc
│   │   │── quran_bloc.dart
│   │   │── quran_event.dart
│   │   │── quran_state.dart
│
│── di
│   │── service_locator.dart
│
│── config
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
   git clone https://github.com/your-username/quran-app.git
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
