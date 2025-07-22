@echo off

python -m venv venv
venv\Scripts\activate.bat
mkdocs build
mkdocs gh-deploy --force