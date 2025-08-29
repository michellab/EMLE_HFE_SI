# Input scripts for running ML/MM simulations with fes-ml

This repository contains input scripts for performing ML/MM simulations using `fes-ml`.  
Each directory corresponds to a different simulation setup.  
Benzene is used here as an example system.

## Directories

- `ml_mm_vacuum` — ML → MM (in vacuum)  
- `ml_mm` — ML/MM (mechanical embedding) → MM (in solution)  
- `ml_mm_elec` — ML/MM (electrostatic embedding) → MM (in solution)  
- `mm_sol` — MM → MM (decoupled, in solution)  

## Usage

Run simulations:

```bash
./run_fes.sh
```

Aggregate outputs:

```bash
python agg_output.py
```

Calculate free energy differences:

```
python analysis.py U_kln_agg.npy 298.15
```

Here, 298.15 is the temperature in Kelvin.