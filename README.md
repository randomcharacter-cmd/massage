# Heaven Massages Website

A professional, modern website for Heaven Massages - a premium Thai massage and spa located in Bangkok.

## Features

- **Modern & Professional Design**: Clean, elegant spa-themed design with smooth animations
- **Fully Responsive**: Optimized for both desktop and mobile devices
- **Fast Loading**: Optimized for quick loading even on slow connections and old hardware
- **Local Images**: All images stored locally for maximum performance and reliability
- **SEO Optimized**: Proper meta tags and semantic HTML structure

## Setup Instructions

### 1. Download and Optimize Images

The website uses local images for optimal performance. To download and optimize all images, run:

```bash
./download-images.sh
```

This script will:
- Download all images from Unsplash
- Store them in the `images/` directory
- Automatically optimize them for web performance (if ImageMagick or jpegoptim is installed)

**Requirements:**
- `curl` (for downloading images)
- Optional: `ImageMagick` or `jpegoptim` (for automatic optimization)

**Installation of optimization tools:**

macOS:
```bash
brew install imagemagick
# or
brew install jpegoptim
```

Ubuntu/Debian:
```bash
sudo apt-get install imagemagick
# or
sudo apt-get install jpegoptim
```

### 2. Open the Website

Simply open `index.html` in any modern web browser:

```bash
open index.html
# or on Linux:
xdg-open index.html
# or on Windows:
start index.html
```

## Image List

The website uses the following optimized images:

### Hero Section
- `images/hero.jpg` - Main hero background image (1600px wide)

### About Section
- `images/about-spa.jpg` - Spa interior image (800px wide)

### Services Section
- `images/service-thai-massage.jpg` - Traditional Thai massage
- `images/service-aromatherapy.jpg` - Aromatherapy oil massage
- `images/service-deep-tissue.jpg` - Deep tissue massage
- `images/service-hot-stone.jpg` - Hot stone therapy
- `images/service-foot-reflexology.jpg` - Foot reflexology
- `images/service-herbal-compress.jpg` - Herbal compress massage

### Gallery Section
- `images/gallery-1.jpg` through `images/gallery-6.jpg` - Various spa and massage images

## Manual Image Optimization

If you want to manually optimize images for even better performance, you can use these commands:

### Using ImageMagick:
```bash
convert input.jpg -strip -quality 85 -resize '1600x1600>' output.jpg
```

### Using jpegoptim:
```bash
jpegoptim --strip-all --max=85 input.jpg
```

### Using WebP (for modern browsers):
```bash
cwebp -q 85 input.jpg -o output.webp
```

## Performance Optimization

The website is already optimized for performance with:

- **Embedded CSS**: No external stylesheet requests
- **Lazy Loading**: Images load only when needed
- **Optimized Images**: Quality set to 85% for optimal balance
- **Proper Image Sizing**: Images are appropriately sized for their use case
- **Google Fonts**: Preconnected for faster loading
- **Minified Code**: Clean, efficient code structure

## File Structure

```
massage/
├── index.html              # Main website file
├── download-images.sh      # Image download and optimization script
├── README.md              # This file
└── images/                # Directory for all images
    ├── hero.jpg
    ├── about-spa.jpg
    ├── service-*.jpg
    └── gallery-*.jpg
```

## Location Details

**Heaven Massages**
142 Sukhumvit Soi 11
Khlong Toei Nuea, Watthana
Bangkok 10110, Thailand

Near Nana BTS Station (Exit 3)

## Credits

- Images: [Unsplash](https://unsplash.com) (royalty-free spa and wellness photography)
- Fonts: Google Fonts (Cormorant Garamond & Montserrat)
- Design & Development: Made with love by [lotuslabs.one](https://lotuslabs.one)

## Browser Support

- Chrome (latest)
- Firefox (latest)
- Safari (latest)
- Edge (latest)
- Mobile browsers (iOS Safari, Chrome Mobile)

## License

All images downloaded from Unsplash are under the Unsplash License (free for commercial use).

---

Made with love by lotuslabs.one
