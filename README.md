<p align="center">
  <picture>
  <source media="(prefers-color-scheme: dark)" srcset="./packages/smart_ui_kit/assets/svg/logo/logo_dark.svg">
  <img align="center"  src="./packages/smart_ui_kit/assets/svg/logo/logo.svg">
</picture>
</p>

<h1 align="center">SmaRT App Monorepo</h1>

A comprehensive monorepo containing the Flutter source code for the SmaRT App ecosystem.

## Project Strucutre

```ascii
.
├── .vscode/
│   └── launch.json
├── app/
│   ├── smart
│   └── smart_widgetbook
├── coverage_report
├── features/
│   ├── home
│   ├── kyc
│   └── ...
├── packages/
│   ├── core
│   └── smart_ui_kit
├── plugins
├── scripts
├── shared
├── test_reports
├── config.json
├── melos.yaml
├── pubspec.yaml
└── README.md
```

### Directory Overview

- **app/**: Contains Flutter apps in this repository. Includes **smart** (the main app) and **smart_widgetbook** (used to showcase widgets/components from `smart_ui_kit`).
- **coverage_report/**: Stores combined test coverage `.lcov` files for the entire monorepo.
- **features/**: Houses micro-packages for features reusable across different apps in the **app** directory.
- **packages/**: Contains micro-packages or internal packages reusable across apps.
- **plugins/**: Repositories for Flutter plugins reusable in different apps.
- **scripts/**: Scripts for automated tasks, including running tests with coverage and combining coverage data.
- **test_reports/**: Stores individual and combined test coverage reports.

## Getting Started

### Environment Configuration Warning

> [!WARNING]
> Warning on Environment Configuration:
> Before running the app, ensure your environment variables are correctly set up in `shared/config`. Copy the `.env.example` file and create three specific environment files: `.env` (production), `.env.development`, and `.env.staging`.

### Setup Instructions

1. **Clone the Repository:**
   Clone the repository to your local machine using your preferred method (SSH/HTTPS).

2. **Activate Melos:**
   Run the following command to activate Melos, a tool for managing Dart & Flutter mono repositories:

   ```bash
   dart pub global activate melos
   ```

3. **Configure Environment Variables:**
   Update your environment variables in `shared/config`. Use the `.env.example` file as a template to create environment-specific configurations:

   - `.env` for production
   - `.env.development` for development
   - `.env.staging` for staging
     Ensure `shared/config/lib/src/env/env.dart` is correctly configured to reflect your `.env` file settings.

4. **Running the App:**
   Open the project in VSCode and select the desired app flavor `prod`, `dev`, `staging`, or `widgetbook` from the run configuration dropdown to launch the respective app.
