# Mini Event Album 📸

A Flutter demo application that displays **events and photo albums**.  
Users can browse events, view albums in a grid, and open photos in full-screen with a like button.

---

## 🚀 Features
- List of events from mock API
- Album grid of photos per event
- Full photo view with like/unlike option
- State management with GetX
- Responsive UI for Android/iOS

---
🌐 Mock API Setup

This project uses MockAPI
 for dummy event & photo data.

Endpoints:

Events
https://68b6774473b3ec66cec1a06e.mockapi.io/minieventalbum/events
Example response:

[

  {
    "name": "name 1",
    "thumbnailCover": "https://picsum.photos/seed/asJTaxxSVj/891/399?blur=2",
    "id": "1"
  },
]

Albums 
https://68b6774473b3ec66cec1a06e.mockapi.io/minieventalbum/photos?eventId=1

[

  {
    "name": "name 1",
    "url": "https://picsum.photos/seed/f2XUyl3n/1340/2936?grayscale&blur=6",
    "id": "1",
    "eventId": "1"
  },
	]



📂 Folder Structure
lib/
 ├── controllers/    # GetX controllers for API & state management
 ├── models/         # Data models (Event, Photo)
 ├── screens/        # UI Screens (Events, Albums, Photo View)
 ├── services/          # API client & helpers
 └── main.dart       # App entry point

## 🛠️ Setup Instructions

### 1. Prerequisites
- [Flutter SDK](https://docs.flutter.dev/get-started/install) (>=3.0.0)
- Android Studio / VS Code with Flutter & Dart plugins
- Emulator or physical device

### 2. Clone the Repository
```bash
git clone https://github.com/dimple2429/MiniEventAlbum.git
cd MiniEventAlbum

