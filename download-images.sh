#!/bin/bash

# Script to download and optimize all images for Heaven Massages website
# Run this script locally where network restrictions don't apply

echo "Downloading images for Heaven Massages website..."
echo "=================================================="

# Create images directory if it doesn't exist
mkdir -p images

# Download images with proper naming
echo "Downloading hero image..."
curl -L "https://images.unsplash.com/photo-1544161515-4ab6ce6db874?w=1600&q=80&fm=jpg" -o images/hero.jpg

echo "Downloading about section image..."
curl -L "https://images.unsplash.com/photo-1600334129128-685c5582fd35?w=800&q=80&fm=jpg" -o images/about-spa.jpg

echo "Downloading service images..."
curl -L "https://images.unsplash.com/photo-1519823551278-64ac92734fb1?w=600&q=80&fm=jpg" -o images/service-thai-massage.jpg
curl -L "https://images.unsplash.com/photo-1540555700478-4be289fbecef?w=600&q=80&fm=jpg" -o images/service-aromatherapy.jpg
curl -L "https://images.unsplash.com/photo-1544161515-4ab6ce6db874?w=600&q=80&fm=jpg" -o images/service-deep-tissue.jpg
curl -L "https://images.unsplash.com/photo-1582719478250-c89cae4dc85b?w=600&q=80&fm=jpg" -o images/service-hot-stone.jpg
curl -L "https://images.unsplash.com/photo-1507652313519-d4e9174996dd?w=600&q=80&fm=jpg" -o images/service-foot-reflexology.jpg
curl -L "https://images.unsplash.com/photo-1560066984-138dadb4c035?w=600&q=80&fm=jpg" -o images/service-herbal-compress.jpg

echo "Downloading gallery images..."
curl -L "https://images.unsplash.com/photo-1540555700478-4be289fbecef?w=600&q=80&fm=jpg" -o images/gallery-1.jpg
curl -L "https://images.unsplash.com/photo-1596178060671-7a80dc8059ea?w=600&q=80&fm=jpg" -o images/gallery-2.jpg
curl -L "https://images.unsplash.com/photo-1583416750470-965b2707b355?w=600&q=80&fm=jpg" -o images/gallery-3.jpg
curl -L "https://images.unsplash.com/photo-1545205597-3d9d02c29597?w=600&q=80&fm=jpg" -o images/gallery-4.jpg
curl -L "https://images.unsplash.com/photo-1552693673-1bf958298935?w=600&q=80&fm=jpg" -o images/gallery-5.jpg
curl -L "https://images.unsplash.com/photo-1544161515-4ab6ce6db874?w=600&q=80&fm=jpg" -o images/gallery-6.jpg

echo ""
echo "Images downloaded successfully!"
echo ""

# Check if ImageMagick is installed for optimization
if command -v convert &> /dev/null; then
    echo "Optimizing images with ImageMagick..."
    for img in images/*.jpg; do
        echo "Optimizing $img..."
        convert "$img" -strip -quality 85 -resize '1600x1600>' "$img.optimized.jpg"
        mv "$img.optimized.jpg" "$img"
    done
    echo "Optimization complete!"
elif command -v jpegoptim &> /dev/null; then
    echo "Optimizing images with jpegoptim..."
    jpegoptim --strip-all --max=85 images/*.jpg
    echo "Optimization complete!"
else
    echo "No image optimization tools found (ImageMagick or jpegoptim)."
    echo "Images are downloaded but not optimized."
    echo "Install ImageMagick or jpegoptim for automatic optimization:"
    echo "  - macOS: brew install imagemagick"
    echo "  - Ubuntu/Debian: sudo apt-get install imagemagick"
    echo "  - Or: brew install jpegoptim / sudo apt-get install jpegoptim"
fi

echo ""
echo "All done! Images are ready to use."
echo "The HTML file has been updated to use local images."
