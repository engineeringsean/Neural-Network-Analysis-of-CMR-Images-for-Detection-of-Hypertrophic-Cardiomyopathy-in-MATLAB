# Neural Network Analysis of CMR Images for Detection of Hypertrophic Cardiomyopathy in MATLAB

## Description:

This project focused on enhancing cardiovascular magnetic resonance (CMR) images to aid in the diagnosis of hypertrophic cardiomyopathy (HCM), a condition characterized by thickened heart muscle that can lead to serious cardiovascular complications. MATLAB was used to implement a multi-step image processing and classification pipeline.

## Key Steps and Methods:

### Image Preprocessing:

Cropping and Interpolation to standardize dimensions and improve resolution.

Contrast Enhancement to highlight key structural features of the myocardium.

Edge Detection to outline ventricular walls and make hypertrophic features more distinguishable.

### Machine Learning Classification:

A Neural Network Classifier was trained to differentiate between healthy and HCM-affected hearts.

Classification was tested on separate, unseen images to evaluate performance.

The model achieved a validation accuracy of 73%, with promising results on test images.

## Outcome:
The project demonstrated that with simple yet effective algorithms, it is possible to process and analyze medical images in a way that supports clinical decision-making. While interpretability of the neural network remains a challenge, its performance suggests potential utility as a “virtual second opinion” in a medical context.

### Reflection and Future Work:
Limitations included a small dataset and hardware constraints. Future improvements would involve:

Expanding the dataset with more diverse and multi-angle CMR images.

Enhancing the generalizability of the neural network.

Optimizing computational performance for larger-scale applications.
