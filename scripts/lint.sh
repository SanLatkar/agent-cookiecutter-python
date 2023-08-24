#!/bin/bash
set -euxo pipefail

poetry run cruft check
poetry run mypy --ignore-missing-imports python_project_name/
poetry run isort --check --diff python_project_name/ tests/
poetry run black --check python_project_name/ tests/
poetry run flake8 python_project_name/ tests/
poetry run safety check -i 39462 -i 40291
poetry run bandit -r python_project_name/
