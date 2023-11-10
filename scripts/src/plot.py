#!/usr/bin/env python

import os
import h5py
import matplotlib.pyplot as plt
import numpy as np

def display_attribute(h5_file, attr_name):
    attribute = h5_file.attrs[attr_name]
    print(f"{attr_name}: {attribute}")

def display_array(h5_file, array_name):
    array = h5_file[array_name][...]
    plt.imshow(np.transpose(array), cmap='gray')
    plt.show()

def display_hdf5_menu(file_paths):
    print("HDF5 Files:")
    for i, file_path in enumerate(file_paths):
        print(f"{i+1}. {file_path}")

    selection = int(input("Select an HDF5 file to use (enter number): "))
    if 1 <= selection <= len(file_paths):
        file_path = file_paths[selection-1]
        try:
            with h5py.File(file_path, 'r') as h5_file:
                display_hdf5_menu_options(h5_file)
        except Exception as e:
            print(f"An error occurred while reading the file: {e}")
    else:
        print("Invalid selection.")

def display_hdf5_menu_options(h5_file):
    attributes = list(h5_file.attrs.keys())
    datasets = list(h5_file.keys())

    print("Attributes:")
    for i, attr in enumerate(attributes):
        print(f"{i+1}. {attr}")

    print("Datasets:")
    for i, dataset in enumerate(datasets):
        print(f"{i+1+len(attributes)}. {dataset}")

    selection = int(input("Select an attribute or dataset to display (enter number): "))
    if 1 <= selection <= len(attributes):
        display_attribute(h5_file, attributes[selection-1])
    elif len(attributes) < selection <= len(attributes) + len(datasets):
        display_array(h5_file, datasets[selection-len(attributes)-1])
    else:
        print("Invalid selection.")

# Get HDF5 files in the current directory
file_paths = [file for file in os.listdir('.') if file.endswith('.h5') or file.endswith('.hdf5')]

if not file_paths:
    print("No HDF5 files found in the current directory.")
else:
    display_hdf5_menu(file_paths)
