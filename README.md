## Sum App

This is a simple Flutter application that allows users to enter three numbers and calculates their sum.

### Getting Started

To run the application, follow these steps:

1. Set up Flutter on your machine. You can refer to the [Flutter installation guide](https://flutter.dev/docs/get-started/install) for detailed instructions.

2. Create a new Flutter project.

3. Replace the contents of the `lib/main.dart` file in your project with the provided code.

4. Save the changes and run the application using `flutter run` command in the terminal.

### Description

The `main.dart` file contains the main entry point of the application. The `MyApp` widget is the root widget of the application, which sets up the `MaterialApp` and defines the home page as `HomePage`.

The `HomePage` widget is a stateful widget that maintains the state of the application. It contains a `formValue` map to store the input values entered by the user and a `total` variable to store the sum of the numbers.

In the `build` method of `HomePage`, a `Scaffold` widget is used to provide the basic structure of the app, including an `AppBar` and a `body` section.

The `body` section consists of a `Column` widget that contains a `Text` widget to display the total sum, three `TextField` widgets for entering the numbers, and an `ElevatedButton` widget to trigger the calculation.

The `MyinputOnChanged` method is used to update the `formValue` map when the user enters a value in the `TextField` widgets. It takes a `storevar` parameter to identify the corresponding key in the `formValue` map and an `inputValue` parameter to store the entered value.

The `AddAllNum` method calculates the sum of the three numbers by accessing the values from the `formValue` map and updates the `total` variable. In this implementation, the sum is printed to the console.

When the user taps the "Add" button, the `setState` method is called to update the UI and trigger the `AddAllNum` method.

### Dependencies

This code relies on the following dependencies:

- `flutter/material.dart`: The Flutter material library, which provides pre-designed widgets and styling for building Flutter apps.

- `sumapp/style.dart`: A custom style module, which presumably contains styling configurations for the app. However, since the contents of `style.dart` are not provided, the exact styling details cannot be determined.

### Note

Please ensure that you have the required dependencies installed and configured in your Flutter project before running the code. Additionally, make sure to handle any missing imports or formatting issues that may arise during the integration process.
