"""params.py

Parameters used in this model

These parameters are from paper Miller et. al. "The stability of CaMKII
switch"

"""
    
__author__           = "Dilawar Singh"
__copyright__        = "Copyright 2015, Dilawar Singh and NCBS Bangalore"
__credits__          = ["NCBS Bangalore"]
__license__          = "GNU GPL"
__version__          = "1.0.0"
__maintainer__       = "Dilawar Singh"
__email__            = "dilawars@ncbs.res.in"
__status__           = "Development"


run_time             = 300
N_CaMK               = 16
N_PP1                = 64
num_switch           = 1
voxel_length         = 125e-9
num_voxels           = 3

diff_consts          = { 'x' : 1e-12, 'y' : 1e-12 }

conc_i1_free         = 0.1e-3
act_CaN              = 1.0
act_PKA              = 1.0
K_M                  = 0.4e-3 # Michaelis constant of protein phosphatase
K_H1                 = 0.7e-3 # Hill coefficientfor Ca++ activation of CaMKII
K_H2                 = 0.3e-3
k_1                  = 1.5
k_2                  = 10.0
K_I                  = 1e-6

rate_loosex          = 1
rate_loosey          = 1
rate_gainx           = 1
rate_gainy           = 1

turnover_rate        = 1/(30*3600.0)
v_1                  = 1.268e-5
v_2                  = 4.36e-3
conc_i1p_free        = 2.8e-3
phosphatase_inhibit  = 280.0
vi                   = phosphatase_inhibit

## Calcium input expression.
ca_basal             = 100e-6
ca_expr              = "(fmod(t,4)<2)?{0}:({0}*(1+rand(-1)))".format( ca_basal )