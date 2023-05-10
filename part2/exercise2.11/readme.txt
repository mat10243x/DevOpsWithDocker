This docker compose project provides a basic development environment for programming projects. It provides a webbased version of vscode, a postgresql database and a web-based administration tool for the database.

How to use:

- If not installed already, install docker.
- Copy docker-compose.yml to the project directory.
- Run "docker compose up -d".
- Access the vs code with "http://localhost:5050"
- In VS code terminal you can install the programming language of your choice with "sudo apt update && sudo apt install _package name of programming language_ (for example clang)
- You can access the database administration tool with "http://localhost:5050".
- The data you write will be preserved in your project directory.
