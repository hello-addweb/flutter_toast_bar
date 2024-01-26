

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
    return Scaffold(
        appBar: AppBar(
          title: const Text("Toast Message Bar"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  FlutterToastBar.showToast(
                      context: context,
                      message: 'Show Snackbar Success',
                      backgroundColor: Colors.green);
                },
                child: const Text("Show Snackbar: Success"),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  FlutterToastBar.showToast(
                      context: context,
                      message: 'Show Snackbar Error',
                      backgroundColor: Colors.red);
                },
                child: const Text("Show Snackbar: Error"),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  FlutterToastBar.showToast(
                      context: context, message: 'Show Snackbar');
                },
                child: const Text("Show Snackbar"),
              ),
            ],
          ),
        )
    );
  }
}
```


## Constructor

#### Basic

| Parameter       | Default       | Description      | Required |
|-----------------|:--------------|:-----------------|:--------:|
| context         | -             | build context.   |   True   |
| message         | -             | toast message.   |   True   |
| backgroundColor | Colors.black, | background color |  false   |
