#!/bin/bash

set -e

echo "🚀 Starting Netlify build process..."

# Install Flutter if not found
if ! command -v flutter &> /dev/null; then
    echo "📥 Installing Flutter..."
    
    # Download Flutter SDK
    FLUTTER_VERSION="${FLUTTER_VERSION:-3.38.9}"
    FLUTTER_CHANNEL="${FLUTTER_CHANNEL:-stable}"
    
    cd $HOME
    git clone https://github.com/flutter/flutter.git -b $FLUTTER_CHANNEL --depth 1
    export PATH="$PATH:$HOME/flutter/bin"
    
    # Precache Flutter
    flutter precache --web
    
    echo "✅ Flutter installed: $(flutter --version | head -n 1)"
else
    echo "✅ Flutter found: $(flutter --version | head -n 1)"
fi

# Enable Flutter web
flutter config --enable-web

# Navigate to project directory
cd /opt/build/repo

# Get dependencies
echo "📦 Getting Flutter dependencies..."
flutter pub get

# Build for web
echo "🔨 Building Flutter web app..."
flutter build web --release

echo "✅ Build complete! Output is in build/web/"
echo "📁 Ready for Netlify deployment"
