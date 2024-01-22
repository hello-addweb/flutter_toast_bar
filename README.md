

# Flutter Toast Bar

```flutter_toast_bar``` An alert toast package to show snackbar easily. This package helps you to render a dynamic alert toast in your Flutter app  ✨


## Installation

Create a new project with the command

```yaml
flutter create MyApp
```

Add

```yaml
flutter_toast_bar: ...
```

to your `pubspec.yaml` of your flutter project.
**OR**
run

```yaml
flutter pub add flutter_toast_bar
```

in your project's root directory.

In your library add the following import:

```dart
import 'package:flutter_toast_bar/flutter_toast_bar.dart';
```

For help getting started with Flutter, view the online [documentation](https://flutter.io/).

## Usage

```dart
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Toast Bar',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    String password = "addweb@123";
    String password2 = 'Add@123';
    bool isValidPassword = PasswordValidator.validatePassword(password);
    bool isValidPassword2 = PasswordValidator.validatePassword(password2);

    log("isValidPassword  $isValidPassword");
    log("isValidPassword22  $isValidPassword2");

    return Scaffold(
      appBar: AppBar(
        title: const Text("Password Validation"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              Text("$isValidPassword"),
              TextFormField(
                validator: (value) {
                  /// your logic
                  if (value!.isEmpty) {
                    return "Please Enter Password";
                  } else if (PasswordValidator.validatePassword(value)) {
                    //return "Please Enter Valid Password";
                    return "Password should be between 8 to 15 characters and should contain atleast one uppercase, one lowercase ,one number and one special character.";
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(),
                  errorBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                  disabledBorder: OutlineInputBorder(),
                  focusedErrorBorder: OutlineInputBorder(),
                  hintText: 'Enter Password',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
```


## Constructor

#### Basic

| Parameter | Default | Description          | Required |
|-----------|:--------|:---------------------|:--------:|
| password  | -       | User Input password. |   True   |
