#!/bin/bash

set -e

echo "🚀 Starting Netlify build process..."

# Check if Flutter is installed
if ! command -v flutter &> /dev/null; then
    echo "❌ Flutter not found. Please install Flutter first."
    exit 1
fi

echo "✅ Flutter found: $(flutter --version | head -n 1)"

# Get dependencies
echo "📦 Getting Flutter dependencies..."
flutter pub get

# Build for web
echo "🔨 Building Flutter web app..."
flutter build web --release

echo "✅ Build complete! Output is in build/web/"
echo "📁 Ready for Netlify deployment"
