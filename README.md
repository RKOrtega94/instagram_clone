# instagram_clone

A fake instagram project using flutter.

## Getting Started

This is a experimental project using Instagras as a reference.

## Features

- [ ] Login
- [ ] Register
- [ ] Feed
- [ ] Profile
- [ ] Post
- [ ] Comments
- [ ] Likes
- [ ] Stories
- [ ] Search
- [ ] Notifications
- [ ] Direct
- [ ] Settings
- [ ] Logout
- [ ] Dark Mode
- [ ] Internationalization
- [ ] Responsive
- [ ] Animations

_If you have any suggestions, please create an issue. I am open to new ideas and sharing code with everyone._

## First Steps

1. Clone this repository
2. Run `flutter pub get`
3. Add the environment variables in the `.env` file (you can use the `.env.example` as a reference)
```bash
API_NINJA_KEY=YOUR_API_KEY(https://api-ninjas.com/)
PROJECT_ID=YOUR_PROJECT_ID
STORAGE_BUCKET=YOUR_STORAGE_BUCKET

WEB_API_KEY=YOUR_WEB_API_KEY
WEB_APP_ID=YOUR_WEB_APP_ID
WEB_MESSAGING_SENDER_ID=YOUR_WEB_MESSAGING_SENDER_ID
WEB_AUTH_DOMAIN=YOUR_WEB_AUTH_DOMAIN
WEB_MEASUREMENT_ID=YOUR_WEB_MEASUREMENT_ID

ANDROID_API_KEY=YOUR_ANDROID_API_KEY
ANDROID_APP_ID=YOUR_ANDROID_APP_ID
ANDROID_MESSAGING_SENDER_ID=YOUR_ANDROID_MESSAGING_SENDER_ID

IOS_API_KEY=YOUR_IOS_API_KEY
IOS_APP_ID=YOUR_IOS_APP_ID
IOS_MESSAGING_SENDER_ID=YOUR_IOS_MESSAGING_SENDER_ID
IOS_BUNDLE_ID=YOUR_IOS_BUNDLE_ID

MACOS_API_KEY=YOUR_MACOS_API_KEY
MACOS_APP_ID=YOUR_MACOS_APP_ID
MACOS_MESSAGING_SENDER_ID=YOUR_MACOS_MESSAGING_SENDER_ID

WINDOWS_API_KEY=YOUR_WINDOWS_API_KEY
WINDOWS_APP_ID=YOUR_WINDOWS_APP_ID
WINDOWS_MESSAGING_SENDER_ID=YOUR_WINDOWS_MESSAGING_SENDER_ID
WINDOWS_AUTH_DOMAIN=YOUR_WINDOWS_AUTH_DOMAIN
WINDOWS_MEASUREMENT_ID=YOUR_WINDOWS_MEASUREMENT_ID
```
1. This project uses firebase as a backend, so you need to create a project in the [firebase console](https://console.firebase.google.com/). _Use this documentation as reference to configure firebase [Add Firebase to your project](https://firebase.google.com/docs/flutter/setup?hl=es&platform=ios)._

## Architecture

This project uses the Clean Architecture principles and is divided into the following layers:

- **Data**: Responsible for communication with external services, such as API's, databases, etc.
- **Domain**: Contains the business rules and use cases of the application.
- **Presentation**: Contains the UI of the application.
- **Application**: Contains the application layer, responsible for the communication between the presentation and domain layers.

## Dependencies

- [flutter_dotenv](https://pub.dev/packages/flutter_dotenv) - A flutter plugin to use `.env` files.
- [GetX](https://pub.dev/packages/get) - A flutter framework that simplifies state management.
- [freezed]() <!-- TODO: Add url -->
- [shimmer]() <!-- TODO: Add url -->
- [firebase_core]() <!-- TODO: Add url -->

## Custom Widgets

- **AppImage**: A widget to load images from the internet.

[image_widget.dart](/lib/src/presentation/widgets/image/image_widget.dart)

## Sources

This projec was development with clean architecture and exist two sources, one with fake data, this was used to build interfaces and can use to test application without internet connection, all resources are in local