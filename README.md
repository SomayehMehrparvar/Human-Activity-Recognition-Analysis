# Human-Activity-Recognition-Analysis
This repository contains the analysis files for the "Human Activity Recognition Using Smartphones" dataset.

## Dataset Description

The dataset used for this analysis is derived from data collected from the accelerometers and gyroscopes of Samsung Galaxy S smartphones. It aims to recognize human activities based on sensor data. The original dataset was obtained from the UCI Machine Learning Repository.

## Files Included

1. `run_analysis.R`: This R script performs the analysis on the dataset.
2. `tidy_data.txt`: This file contains the tidy dataset generated after running the `run_analysis.R` script.
3. `CodeBook.md`: This file serves as a code book that describes the variables, the data, and any transformations or work performed to clean up the data.
4. `README.md`: This file provides information about the analysis files, how to run the analysis, dependencies, and license information.

## Running the Analysis

To reproduce the analysis and generate the tidy dataset, follow these steps:

1. Download the dataset from the following link: [Human Activity Recognition Dataset](https://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).
2. Extract the dataset files into a directory.
3. Place the `run_analysis.R` script in the same directory as the dataset files.
4. Open R or RStudio and set the working directory to the directory containing the dataset and the `run_analysis.R` script.
5. Run the `run_analysis.R` script. This will execute the analysis and generate the tidy dataset `tidy_data.txt`.
6. You can then explore the tidy dataset using any software or programming language of your choice.

## Dependencies

This analysis requires the `dplyr` package in R. If you haven't installed it already, you can install it using the following command:

```R
install.packages("dplyr")
