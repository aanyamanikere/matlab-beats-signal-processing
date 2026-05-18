# MATLAB Beats: Audio Signal Processing & AI

This repository contains four MATLAB scripts developed during the **MATLAB Beats: Turn Noise Into Music** virtual workshop hosted by the **Engineers Australia Society UOWD** (May 2026). 

The project demonstrates how to manipulate audio workspace arrays to introduce environmental noise into a clean music track, and subsequently isolate the original signal using both traditional digital signal processing and Machine Learning techniques.

## Repository Architecture & Scripts

### 1. `01_add_noise_to_music.m`
* **Purpose:** Generates the baseline experimental data.
* **Function:** Imports a clean audio file as a high-frequency amplitude array and programmatically blends it with a generated noise signal (such as high-frequency white noise) to simulate a degraded real-world audio environment.

### 2. `02_low_pass_filter.m`
* **Purpose:** Traditional frequency-domain noise suppression.
* **Function:** Designs and applies a digital low-pass filter with a specified cutoff frequency. It allows lower musical frequencies to pass through while aggressively weakening the high-frequency background disturbances.

### 3. `03_moving_average_filter.m`
* **Purpose:** Traditional time-domain smoothing.
* **Function:** Implements a algorithm that averages adjacent data points in the audio vector. This acts as a smoothing filter to reduce sudden, random noise spikes.

### 4. `04_AI_based_inear_regression.m`
* **Purpose:** Algorithmic signal estimation via AI.
* **Function:** Framework for utilizing linear regression to map the relationships between the noisy signal inputs and target audio features, demonstrating an AI-driven approach to predictive signal modeling and reconstruction.

---
*Completed as part of a technical professional development session with Engineers Australia Society UOWD.*
