# Flask Application Setup Script

## Description

This is a Bash script designed to automate the setup of a Flask application. It creates a structured directory for your project, sets up essential files, and installs required dependencies to help you quickly get started with Flask development.

---

## Features

- Automatically creates a project folder with your specified name.
- Sets up essential directories and files for:
  - `app/` (core application directory)
  - `admin/` and `user/` modules.
  - `static/` (for assets like CSS and images).
  - `templates/` (for HTML templates).
- Configures the Flask application with:
  - A `run.py` file for running the app.
  - `__init__.py` files for modular organization.
  - A `config.py` file for application settings.
  - An `.env` file for storing environment variables.
  - A `.gitignore` file to exclude sensitive files.
- Generates a sample `index.html` file to test the application.
- Installs Flask and `python-dotenv`.
- Creates a `requirements.txt` file for dependency management.
- Starts the Flask application after setup.

---

## Prerequisites

- **Bash Shell**: Ensure you are using a Unix-based environment (Linux, macOS, or WSL for Windows).
- **Python Installed**: Python 3.+ must be installed on your system.
- **pip Installed**: Python's package manager `pip` must be installed.

---

## How to Use

1. Save the script to a file, e.g., `setup_flask_app.sh`.
2. Make the script executable:
   ```bash
   chmod +x setup_flask_app.sh
   ```
