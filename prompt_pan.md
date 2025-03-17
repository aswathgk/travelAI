# Travel Audio Commentary App MVP - Code Generation Prompt Plan

This document contains a series of iterative prompts for a code-generation LLM to implement the Travel Audio Commentary App MVP. Each prompt builds on previous work and wires together all components to ensure a robust, test-driven, and incremental development process.

---

## Prompt 1: Initialize Project Repository and Environment

```text
# Prompt 1: Initialize Project Repository and Environment

You are tasked with setting up the initial project structure for the Travel Audio Commentary App MVP. This includes:
- Creating a version-controlled repository with the following folder structure:
  - /frontend (for the Flutter code)
  - /backend (for serverless functions)
  - /tests (for unit and integration tests)
  - /docs (for project documentation)
- Adding essential configuration files such as README.md, .gitignore, and linter/formatter configuration.
- Providing comments in the configuration files to explain their purpose.

Generate the necessary code and configuration files to initialize the project environment.
Prompt 2: Establish Testing Framework and Write “Hello World” Tests
text
Copy
# Prompt 2: Establish Testing Framework and Write “Hello World” Tests

Set up testing frameworks for both the Flutter frontend and the backend serverless functions. This includes:
- Configuring flutter_test for the frontend.
- Configuring a testing framework (e.g., Jest for Node.js or pytest for Python) for the backend.
- Writing simple “Hello World” tests for both environments to confirm that the testing frameworks are working properly.

Provide the configuration files and example test code for both frontend and backend.
Prompt 3: Implement Map Screen and Location Tracking in Flutter
text
Copy
# Prompt 3: Implement Map Screen and Location Tracking in Flutter

Develop a basic Flutter application that:
- Displays a map screen.
- Requests and handles location permissions.
- Continuously updates the user’s live location on the map.

Also, include unit tests that mock location data to ensure the functionality works as expected.

Provide the Flutter code for the map screen, location tracking implementation, and the associated tests.
Prompt 4: Create Landmark Visualization and Native TTS Integration
text
Copy
# Prompt 4: Create Landmark Visualization and Native TTS Integration

Enhance the Flutter application by:
- Adding UI components to display markers for nearby landmarks on the map (initially using simulated data).
- Integrating native TTS APIs (using AVSpeechSynthesizer for iOS and Android TextToSpeech) to convert text to audio.
- Triggering audio commentary when a landmark is detected within the default proximity range.

Include component tests to verify that landmark markers are rendered and TTS calls are initiated correctly.

Provide the code for the UI components, TTS integration, and tests.
Prompt 5: Develop Backend Function for Real-Time Location Processing and Landmark Detection
text
Copy
# Prompt 5: Develop Backend Function for Real-Time Location Processing and Landmark Detection

Create a serverless backend function that:
- Receives live location data.
- Connects to an external landmark API (simulate the API for initial development).
- Filters and returns landmarks within a specified proximity (default 1km).

Write unit tests to validate that the function correctly filters landmarks based on proximity and handles errors gracefully.

Provide the backend function code and its unit tests.
Prompt 6: Implement Dynamic Queue Management for Commentary and ChatGPT Integration
text
Copy
# Prompt 6: Implement Dynamic Queue Management for Commentary and ChatGPT Integration

Build on the backend by:
- Creating logic to queue commentary requests based on detected landmarks.
- Removing a landmark from the queue if the user moves more than 100 meters away before commentary is delivered.
- Integrating with ChatGPT to generate a ~1-minute audio commentary narrative for each landmark.
- Handling external API failures by logging errors and skipping commentary cycles when needed.

Include integration tests that simulate user movement and verify correct queue behavior and ChatGPT response handling.

Provide the updated backend code and tests.
Prompt 7: Integrate Google Authentication and Location Permission Handling
text
Copy
# Prompt 7: Integrate Google Authentication and Location Permission Handling

For the MVP, implement:
- Google Authentication for user registration and login on the mobile app.
- Native permission dialogs in Flutter to request location access.
- Logic to display a message (“The app won’t work without live location”) if permissions are denied.

Write tests to simulate both successful and denied permission scenarios, as well as authentication flows.

Provide the code for authentication, permission handling, and the corresponding tests.
Prompt 8: Connect Frontend and Backend and Wire End-to-End Flow
text
Copy
# Prompt 8: Connect Frontend and Backend and Wire End-to-End Flow

Integrate the Flutter frontend with the backend serverless functions by:
- Implementing API calls to fetch landmark data and commentary from the backend.
- Wiring up the UI to trigger commentary playback (using the native TTS integration) when a landmark is within range.
- Handling error states (e.g., API failures) gracefully on the UI.
- Running comprehensive integration tests that simulate a full user journey—from launching the app and tracking location to receiving audio commentary.

Provide the integration code, API calls, and full end-to-end tests.
Prompt 9: Set Up CI/CD Pipeline and Final Integration Testing
text
Copy
# Prompt 9: Set Up CI/CD Pipeline and Final Integration Testing

Finalize the project by:
- Configuring a CI/CD pipeline to run all tests (linting, unit, integration, and end-to-end) automatically on commits.
- Creating deployment scripts or configurations for mobile app distribution (TestFlight and Google Play Beta) and backend serverless functions.
- Ensuring that all environment-specific configurations (development, staging, production) are properly set up.
- Running final integration tests to confirm that all components work seamlessly together.

Provide the CI/CD configuration files, deployment scripts, and tests for the complete integration.
This prompt plan ensures incremental progress, early testing, and integration at every stage. Each step builds upon the previous, making sure that all components are wired together and that no code is left isolated.

css
Copy
