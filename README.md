# IriScan
### IRIS-recognition-system

## Overview
This repository presents an iris recognition system designed for accurate and secure user authentication. Leveraging Daughman's Algorithm, the system processes iris images to identify unique patterns. Techniques such as segmentation, normalization, convolution encoding, and Hamming distance computation contribute to the precision of the recognition process.

## Problem Statement
The challenge is to create a biometric system capable of reliable identification based on the distinct iris patterns. The system must handle variations in lighting, eye position, and other factors impacting accuracy. The objective is to develop a secure solution applicable in diverse scenarios, including access control, border security, and law enforcement.

## Key Features
- **Daughman's Algorithm:** Utilized for precise iris segmentation, extracting the relevant region for analysis.
- **Normalization:** Reduces dimensional differences across segmented iris areas, ensuring consistency.
- **Convolution Encoding:** Encodes iris characteristics efficiently using the convolution theorem.
- **Hamming Distance:** Applied as a complementary metric, measuring bit disagreements between iris templates.

## Methodology
The iris recognition system follows a systematic approach:
1. **Daughman’s Algorithm:** Finds the center coordinates and radius of the iris and pupil.
2. **Image Acquisition:** Captures high-quality images of the iris for further processing.
3. **Grayscale Conversion:** Prepares images for analysis by converting them into grayscale.
4. **Image Processing:** Involves various steps such as subtraction, histogram analysis, segmentation, cropping, and resizing.
5. **Filtering Techniques:** Applies Gaussian, Canny, Sobel filters for noise reduction and edge detection.
6. **Gamma Adjustment:** Enhances visibility and quality of iris images.
7. **Hysteresis Thresholding:** Segments iris and pupil regions from the edge map.
8. **Hough Transformation:** Detects and extracts circular shapes of the iris and pupil.
9. **Normalization:** Ensures consistency in size, shape, and orientation for accurate feature extraction.

## Repository Structure
- **Code:** MATLAB scripts implementing each step of the iris recognition system.
- **Data:** Sample datasets for testing and evaluation.
- **Documentation:** Detailed explanations of specific components or functionalities.
