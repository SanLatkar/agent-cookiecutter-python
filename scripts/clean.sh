#!/bin/bash
set -euxo pipefail

poetry run isort python_project_name/ tests/
poetry run black python_project_name/ tests/
