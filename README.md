# Pointillism
## Overview

This project applies pointillism techniques in MATLAB to create an artistic rendition of an input image by generating random color points, emulating the effect of pointillism in fine art. Using an image as input, it plots thousands of points in random locations with colors that are mapped from the original image, resulting in a colorful and expressive display.

## Getting Started

### Prerequisites

- MATLAB installed on your computer.
- Basic knowledge of MATLAB scripting.

### Instructions

1. **Clone the repository:**
    ```bash
   git clone https://github.com/yourusername/pointillism-image-processing.git
   ```
    - Open the MATLAB script (`pointillism.m`) in MATLAB.


2. **Run the script:**

    - Load an image of your choice.

    - The script will apply the pointillism effect by sampling random points from the image and displaying these points with colors corresponding to the image colors.

    - The result will be displayed in an external image display window in MATLAB.

#### Files in the Repository
1. `pointillism.m`: The MATLAB script that generates the pointillism effect.

2. `sample_image.jpg`: A sample image included for testing the script.

## How it Works

### Image Preparation
- **Resize Image**: The input image is resized to a manageable dimension for faster processing without losing too much detail.

- **Color Space Conversion**: The input image is converted from RGB to HSV color space, allowing for effective color sampling.

### Random Point Generation
- **Random Sampling**: A predefined number of random points are generated over the image, representing the coordinates where color points will be plotted.

- **Color Mapping**: The colors for these points are mapped from the HSV values of the image at the sampled locations.

### Displaying the Pointillism Effect
- **Scatter Plot**: The points are plotted in a scatter plot with their respective colors, creating a pointillistic image.

- **Adjustable Parameters**: The number of points and size of the points can be adjusted in the script to vary the detail level of the output.

## Why Use Pointillism in Image Processing?

Pointillism can highlight colors and textures in an image by simplifying details into points. It’s especially useful for creating artistic renditions or visualizing color distributions. This method also demonstrates how sampling and randomness can contribute to creative outcomes in digital art.

## Challenges and Solutions

- Choosing an optimal number of points was a balance between maintaining recognizable details and creating a smooth, artistic look.

- Adjusting color space values for accurate representation of the original image colors required some experimentation.

## Results and Insights

The final result demonstrates a fusion of image processing and art, capturing the essence of pointillism. The colors from the original image are faithfully represented through the randomly placed points, giving the appearance of an abstract painting.

## Key Takeaways

- Pointillism can transform images into expressive visual art.
- Random sampling provides an effective method for pixelating images while preserving color details.
- MATLAB's color space manipulation is versatile for artistic projects.

## Photo Credits
- Sample image by Adrien Olichon on [Unsplash](https://unsplash.com/photos/the-inside-of-a-large-church-with-high-ceilings-OMfHdfegWb8)