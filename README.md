CustomSnackBar is a versatile and visually appealing SnackBar widget designed to provide informative and interactive notifications to users within your application. With its customizable features, including icons, background colors, and decorations, and even text styles and you can tailor the appearance to match your app's branding. Additionally, you have the flexibility to dismiss the snackbar from all directions. Whether it's displaying important messages, alerts, or feedback, CustomSnackBar delivers an engaging and user-friendly experience, ensuring your users stay informed and engaged with your app's latest updates.

# Preview

<img src="https://github.com/pratikandarpa/awesome_top_snackbar/raw/master/snackbar_example.gif" width="300">

# Getting Started

Introducing the incredible awesomeTopSnackbar! It's your gateway to displaying stunning CustomSnackBars. All you need to do is pass the context and message, and voila! But wait, there's more! This powerful a wide range of customization options, including icons, background colors, decorations, and even text styles. Additionally, you have the flexibility to dismiss the snackbar from all directions. Get ready to unleash the full potential of snackbar magic like never before!

## 📱 Implementation
To use the package:
- add the dependency to your pubspec.yaml file

```yaml
dependencies:
  flutter:
      sdk: flutter

  awesome_top_snackbar: <latest-package>
```

- Then import it in your flutter project:
```
import 'package:awesome_top_snackbar/awesome_top_snackbar.dart';
```

- Example 1:
```dart
   awesomeTopSnackbar(context,"Hello world");
```

- Example 2: (If you want a dismiss icon or any other icon at the end, you can refer to the example below.)
```dart
   awesomeTopSnackbar(
                  context,
                  "Hello world",
                   iconWithDecoration: BoxDecoration(borderRadius: BorderRadius.circular(20), border: Border.all(), color: Colors.white),
                    icon: Icon(
                      Icons.close,
                      color: Colors.white,
                    ) 
                );
```

- Example 3: (Custome textstyle)
```dart
   awesomeTopSnackbar(
                    context,
                    "Hello world ...",
                    textStyle: const TextStyle(
                        color: Color.fromARGB(255, 20, 64, 83), fontStyle: FontStyle.italic, fontWeight: FontWeight.w400, fontSize: 24),
                    backgroundColor: Color.fromARGB(255, 220, 149, 111),
                    icon: const Icon(Icons.close, color: Colors.white),
                    iconWithDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.white),
                    ),
                  );
```
