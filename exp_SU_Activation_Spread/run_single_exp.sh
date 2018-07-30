#!/usr/bin/env bash
set -e

FORCE=$1

# NOTE: NVOXELS*L must be 180nm to keep the volumne of compartment same in all
# case.
NVOXELS=18
CA=80e-6
L=$(echo "180/$NVOXELS" | bc)e-9
# L=30e-9
CAMKII=${NVOXELS}
PP1=800

#NVOXELS=12
#CA=80e-6
#L=15e-9

#NVOXELS=15
#CA=80e-6
#L=12e-9

#NVOXELS=9
#CA=80e-6
#L=20e-9

#NVOXELS=6
#CA=80e-6
#L=30e-9

CAEXPR="(fmod(t,4)<2)?${CA}:(${CA}*(1+0.5*rand(-1)))"

SIMTIME=0.04
for D in 1e-16 1e-15 1e-13; do
    DIFFDICT="{'x':$D,'y':$D,'PP1':1e-14}"
    OUTFILE=CaM-${CAMKII}+PP-${PP1}+N-${NVOXELS}+L-${L}+SU-ON+D-${DIFFDICT}.dat
    if [ -z $FORCE ] && [ -f $OUTFILE ]; then
        echo "$OUTFILE already exists. Not running simulation."
    else
        echo "Genrating $OUTFILE"
        python ./camkii_pp1_scheme.py --camkii $CAMKII --pp1 $PP1 \
            --num-voxels $NVOXELS \
            --voxel-length ${L} \
            --simtime $SIMTIME \
            --ca-expr "${CAEXPR}" \
            --enable-subunit-exchange \
            --record-dt 1\
            --diff-dict "${DIFFDICT}" \
            --outfile ${OUTFILE} && python3 ../analyze.py -i ${OUTFILE} &
    fi
done

wait

python3 ./analyze_exp.py 
