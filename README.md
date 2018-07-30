# Subunit exchange enhances information retention by CaMKII in dendritic spines

This repository contains CaMKII model from the following paper

**Subunit exchange enhances information retention by CaMKII in dendritic
spines**. Here is the [https://doi.org/10.1101/372748](biorxiv URL: https://doi.org/10.1101/372748).

# Whom to contact

If you need any assistant while running this model, fee free to create a ticket on this repo or 
drop an email to dilawars@ncbs.res.in .

# The model

The model is written in `python` which requires [https://moose.ncbs.res.in](pymoose) and 
some other python libraries numpy, scipy, pandas, networkx. Except of `pymoose` and `numpy` others
library are optional but recommended especially for analyzing and plotting data.

The model script is available in `./model` directory. See [./model/README.md](mode/README.md)
for detailed instructions. And for a sample output run with default parameters.

# Figures in the paper

Figures in the paper are generated by using `Tex/PGF` + `gnuplot`. I don't recommend that you 
try to generate figures unless you are very comformatable with TeX. 

Install `cmake` and `gnuplot` along with `texlive-2017`. If you are lucky, following will regenerate
the figure:

    $ cd ./PaperFigures
    $ cmake .
    $ make
    
All figures generated in this folder are in `pdf` format. You have to search which figure is 
where in paper (sorry, they are not numbered in the same way as they appear in paper).

# Data used in paper

[TODO] 

Data used in paper is stored in variour folders. These folder has prefix `exp_`. See `README.md` file
in each folder on how to run the model and generate the data. We only include the data when it is small.

# Main repository 

The detailed repository with daily logs is available [https://bitbucket.org/dilawar/camkii-pp1-system)[on bitbucket] 
which is huge. This repository is a slim version of this and organized in different way.

