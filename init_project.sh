#!/bin/bash

# Default project name
PROJECT_NAME=""

# Parse arguments
while [[ "$#" -gt 0 ]]; do
    case $1 in
        -n|--name)
            PROJECT_NAME="$2"
            shift 2
            ;;
        *)
            echo "Unknown parameter passed: $1"
            exit 1
            ;;
    esac
done

# Check if project name is provided
if [[ -z "$PROJECT_NAME" ]]; then
    echo "Please specify the project name with -n or --name, e.g.: ./init_godot_pos.sh -n my_project"
    exit 1
fi

# Create folder structure
mkdir -p "$PROJECT_NAME"/.import
mkdir -p "$PROJECT_NAME"/.godot
mkdir -p "$PROJECT_NAME"/assets/fonts
mkdir -p "$PROJECT_NAME"/assets/icons
mkdir -p "$PROJECT_NAME"/assets/images
mkdir -p "$PROJECT_NAME"/assets/sounds
mkdir -p "$PROJECT_NAME"/scenes
mkdir -p "$PROJECT_NAME"/scripts
mkdir -p "$PROJECT_NAME"/data
mkdir -p "$PROJECT_NAME"/ui
mkdir -p "$PROJECT_NAME"/addons

echo "Godot POS project folder structure for '$PROJECT_NAME' has been created successfully!"
