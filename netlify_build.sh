#!/bin/bash

# Install Flutter if not already installed
if ! command -v flutter &> /dev/null; then
    echo "Flutter not found. Installing Flutter..."
    # Download Flutter SDK
    git clone https://github.com/flutter/flutter.git -b stable --depth 1
    export PATH="$PATH:`pwd`/flutter/bin"
fi

# Get Flutter dependencies
flutter pub get

# Build for web
flutter build web --release

# The output will be in build/web directory
