
# flutter-app-template

A boilerplate Flutter project with:

- 🧭 GoRouter for navigation  
- 🧠 Riverpod for state management (with MVVM pattern)  
- 🗂️ Clean folder structure  
- 🌗 Light/Dark theme support  
- 📦 FVM support for consistent Flutter version across teams  
- 🧑‍💻 Shared VS Code settings for all developers  
- 🧭 Gap package for spaces  
- ✨ Custom extensions for theme, colorScheme, padding, and screen dimensions

---

## 📁 Project Structure

```
lib/
├── core/
│   ├── router/        # App-wide navigation (GoRouter)
│   └── theme/         # Light & dark theme configuration
├── features/
│   └── counter/
│       ├── presentation/ # UI layer
│       └── providers/    # Riverpod state providers
├── providers/             # Global app-level providers
├── presentation/          # Shared widgets across features
└── main.dart
```

---

## 🚀 Getting Started

### 1. Use this Template

- Click **"Use this template"** on GitHub  
- Clone the newly created repo:

```bash
git clone https://github.com/AppliedCognito/flutter-app-template.git
cd flutter_app_template
```

---

## ⚙️ Setup Instructions

### 2. Install Dependencies

#### If you're using **FVM** (recommended):

```bash
fvm install
fvm use
fvm flutter pub get
```

#### If you're **not using FVM**:

Make sure your Flutter version matches the one in `.fvm/fvm_config.json`, then:

```bash
flutter pub get
```

---

## 📌 Why FVM?

**FVM (Flutter Version Management)** ensures everyone on the team uses the **same Flutter version**, avoiding version mismatch issues and environment bugs.

### To install FVM:

```bash
dart pub global activate fvm
```

Then add it to your path:

```bash
export PATH="$PATH":"$HOME/.pub-cache/bin"
```

For Windows users, add it via Environment Variables.  
More help: [https://fvm.app/docs/getting_started/installation](https://fvm.app/docs/getting_started/installation)

---

## 🛠️ VS Code Setup (Recommended)

This project includes a `.vscode/settings.json` file to ensure:

- Everyone uses the same SDK path (via FVM)
- Auto formatting on save
- Code fixes automatically applied

```json
{
  "dart.flutterSdkPath": ".fvm/flutter_sdk",
  "editor.formatOnSave": true,
  "files.eol": "\n",
  "editor.codeActionsOnSave": {
    "source.fixAll": "always"
  }
}
```

---

## 📌 Project Extensions

### ✅ Theme & ColorScheme Access

```dart
extension ThemeContext on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;
  ColorScheme get colorScheme => Theme.of(this).colorScheme;
  ThemeData get theme => Theme.of(this);
}
```

Usage:

```dart
Text(
  'Hello',
  style: context.textTheme.bodyMedium?.copyWith(
    color: context.colorScheme.primary,
  ),
);
```

### ✅ Padding Extensions

```dart
extension PaddingContext on BuildContext {
  EdgeInsets get paddingS => const EdgeInsets.all(8);
  EdgeInsets get paddingM => const EdgeInsets.all(16);
  EdgeInsets get paddingHorizontal => const EdgeInsets.symmetric(horizontal: 16);
}
```

Usage:

```dart
Padding(
  padding: context.paddingHorizontal,
  child: Text('Hello'),
);
```

---

## 🎨 ColorScheme + AppColors Usage

This template uses `ColorScheme` for theme-aware UI. All semantic colors like `primary`, `onPrimary`, `secondary`, `error`, etc., are mapped using `AppColors`.

`AppColors` provides consistent base colors, which are used to generate the `ColorScheme` for both light and dark themes.

```dart
class AppColors {
  static const Color primary = Color(0xFF1976D2); // Blue
  static const Color onPrimary = Colors.white;
  static const Color secondary = Color(0xFFFFA000); // Amber
  static const Color error = Color(0xFFD32F2F); // Red
  static const Color background = Colors.white;
  static const Color onBackground = Colors.black;
}
```

Then these are mapped in `ThemeData.colorScheme`:

```dart
ThemeData(
  colorScheme: ColorScheme.light(
    primary: AppColors.primary,
    onPrimary: AppColors.onPrimary,
    background: AppColors.background,
    onBackground: AppColors.onBackground,
    secondary: AppColors.secondary,
    error: AppColors.error,
  ),
)
```

### ✅ Usage Example in Widgets

```dart
Container(
  padding: context.paddingS,
  color: AppColors.primary, // Shows actual color (VS Code color box)
  child: Text(
    'Primary container',
    style: context.textTheme.bodyMedium?.copyWith(
      color: AppColors.onPrimary, // Text color on primary
    ),
  ),
);
```

🖼️ In VS Code, using `AppColors.primary` will show a small color preview box beside the color value, useful for visual identification.

> Prefer using `context.colorScheme.primary` when building theme-aware widgets that auto-adjust for dark/light modes.

---

## ✅ You're All Set!

You now have:

- ✅ A professional project structure
- ✅ Consistent dev environment using FVM
- ✅ Shared VS Code settings
- ✅ Git workflow to avoid conflicts
- ✅ AppColors, ColorScheme, and Padding extensions for scalability

Start building scalable, error-free apps as a team! 🚀
