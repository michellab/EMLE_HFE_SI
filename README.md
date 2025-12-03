# Enhancing Electrostatic Embedding for ML/MM Free Energy Calculations

This repository contains the supporting data, models, and figure generation code for the publication titled ["Enhancing Electrostatic Embedding for ML/MM Free Energy Calculations"](https://pubs.acs.org/doi/10.1021/acs.jctc.5c01464).

![Abstract](./abstract.png)

## Directory Structure

-   `data/`: Contains the datasets used for training and testing the EMLE models, along with training logs.
-   `emle_models/`: Contains the various EMLE models trained and used in this study.
-   `figures/`: Includes Jupyter notebooks used to generate the figures presented in the publication, along with the figures themselves.
-   `inputs/`: Contains inputs scripts.

## Associated Packages

- [`fes-ml`](https://github.com/michellab/fes-ml): Enables hybrid ML/MM free energy calculations, with support for various alchemical modifications.
- [`emle-bespoke`](https://github.com/michellab/emle-bespoke): A package which streamlines the training of EMLE models by automating conformer sampling, QM energy evaluations, and parameter fitting, with modular components for flexible use.

## Citation

If you use the code, data, or models from this repository in your research, please cite the following publication:

``` bibtex
@article{Morado2025, 
  title={Enhancing Electrostatic Embedding for ML/MM Free Energy Calculations}, 
  volume={21}, 
  rights={https://doi.org/10.15223/policy-029}, 
  ISSN={1549-9618, 1549-9626}, 
  url={https://pubs.acs.org/doi/10.1021/acs.jctc.5c01464}, 
  DOI={10.1021/acs.jctc.5c01464}, 
  number={22}, 
  journal={Journal of Chemical Theory and Computation}, 
  author={Morado, João and Zinovjev, Kirill and Hedges, Lester O. and Cole, Daniel J. and Michel, Julien}, 
  year={2025}, 
  month=nov, 
  pages={11805–11819}, 
  language={en} 
}
```
