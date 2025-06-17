# Enhancing Electrostatic Embedding for ML/MM Free Energy Calculations

This repository contains the supporting data, models, and figure generation code for the publication titled "Enhancing Electrostatic Embedding for ML/MM Free Energy Calculations".

![Abstract](./abstract.png)

## Directory Structure

-   `data/`: Contains the datasets used for training and testing the EMLE models, along with training logs.
-   `emle_models/`: Contains the various EMLE models trained and used in this study.
-   `figures/`: Includes Jupyter notebooks used to generate the figures presented in the publication, along with the figures themselves.

## Dependencies

The following packages are required to run the notebooks in this repository:

- numpy
- pandas
- scipy
- matplotlib
- seaborn
- scikit-learn
- torch
- rdkit
- emle-engine

## Associated Packages

- [`fes-ml`](https://github.com/michellab/fes-ml): Enables hybrid ML/MM free energy calculations, with support for various alchemical modifications.
- [`emle-engine`](https://github.com/michellab/fes-ml): A package which streamlines the training of EMLE models by automatic conformer sampling, QM energy evaluations, and parameter fitting, with modular components for flexible use.

## Citation

If you use the code, data, or models from this repository in your research, please cite the following publication:

``` bibtex
@article{Morado2025,
  title   = {Enhancing Electrostatic Embedding for ML/MM Free Energy Calculations},
  author  = {Author 1 and Author 2 and ...},
  journal = {Journal Name},
  year    = {Year},
  volume  = {Volume},
  pages   = {Pages},
  doi     = {DOI}
}
```
