# ChartWithPreferences

## Overview

**ChartWithPreferences** is an **educational application** designed to demonstrate the fundamentals of data generation, user preferences management, and data visualization using SwiftUI. This app provides a practical example of how to work with dynamic data in Swift, manage state and preferences, and visualize data trends over time through a simple and intuitive user interface.

## Features

- **Data Generation**: The application can generate a list of random data entries, each with a timestamp and two associated numerical values. The user can specify the number of rows to generate, which helps to understand how data generation and manipulation work in Swift.

- **Data Management**: Users can view the generated data in a list format, add new data, or clear the existing data. This feature demonstrates how to manage and interact with dynamic data in a SwiftUI environment.

- **Data Visualization**: The application includes a separate window that displays a bar chart, showing the daily averages of one of the generated values. This visual representation is a key educational component, helping users to learn how to implement and customize data visualizations in SwiftUI.

## Educational Components

### 1. **Defaults**
   - **Purpose**: Teaches how to manage user preferences and persist data within an app.
   - **Details**: Stores the generated data array and the number of rows specified by the user. This persistent state is used throughout the application to drive the UI and chart, demonstrating state management concepts.

### 2. **DataGenerator**
   - **Purpose**: Illustrates how to generate random data programmatically in Swift.
   - **Details**: Generates random entries with a timestamp and numerical values, helping users understand the process of creating and manipulating arrays of data.

### 3. **DataUtilities**
   - **Purpose**: Provides educational examples of utility functions for data processing.
   - **Details**: 
     - `calculateDailyAverages(from:)`: Groups data by day and calculates the average of one of the values, demonstrating how to aggregate and process data.
     - `dateFromTimestamp(_:)`: Converts timestamps into `Date` objects, illustrating date manipulation in Swift.
     - `dateFormattedString(from:)`: Formats `Date` objects into strings, teaching basic string formatting.

### 4. **ContentView**
   - **Purpose**: Serves as a hands-on example of building a user interface with SwiftUI.
   - **Details**: 
     - Displays the list of generated data and provides controls for interacting with it.
     - Demonstrates how to build dynamic UIs that respond to user input and data changes.

### 5. **ChartView**
   - **Purpose**: Demonstrates data visualization techniques using SwiftUI's Charts framework.
   - **Details**: 
     - Visualizes the daily averages of the generated data, providing a concrete example of how to create charts and interpret data visually in an educational setting.

### 6. **Application Entry Point (ChartWithPreferencesApp)**
   - **Purpose**: Shows how to structure a SwiftUI application.
   - **Details**: 
     - Manages the application's scenes and injects the `Defaults` object into the environment, teaching about app architecture and the environment system in SwiftUI.

## How to Use

1. **Generating Data**: 
   - Enter the desired number of rows in the "Rows" text field.
   - Click "Add data" to generate the specified number of rows, observing how data is dynamically added to the app.

2. **Viewing Data**:
   - The generated data is displayed in a list, showing the date and values, helping users understand list management in SwiftUI.

3. **Showing the Chart**:
   - Click "Show chart" to open a new window displaying the bar chart of daily averages, offering insight into data visualization techniques.

4. **Clearing Data**:
   - Click "Clean data" to remove all data from the list and reset the view, demonstrating state resetting and UI updates.

## Purpose of the Application

This application is primarily intended for educational purposes. It serves as a learning tool for developers who want to understand and practice the following:

- **SwiftUI Fundamentals**: Learn how to build dynamic, data-driven interfaces with SwiftUI.
- **Data Management**: Understand how to generate, manage, and persist data in an iOS/macOS environment.
- **Data Visualization**: Gain experience with the Charts framework in SwiftUI to visualize and interpret data.
- **App Architecture**: See how to structure a SwiftUI app, manage state, and handle user interactions.

## License

This project is licensed under the MIT License. See the `LICENSE` file for more details.

## Author

- **Konrad** - Developed and maintained this project.

This educational app is open to contributions and suggestions. Feel free to open an issue or submit a pull request to help improve it as a learning resource.
