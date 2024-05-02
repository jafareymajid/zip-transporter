Molecular Insights into Substrate Translocation in an Elevator-Type Metal Transporter
=======
About this repository
=======
This repository contains the necessary codes to reproduce the simulation results of the Zrt/Irt-like protein (ZIP) metal transporter.

Installation
=======

First, install AmberTools using the following command line in the Linux terminal:

`conda install -c conda-forge ambertools`

Usage
=======
**Distance Calculations:**

To calculate distances between specific residues, use cpptraj. Provide the topology and trajectory files from Zenodo [link]. Here are commands to calculate distances between certain residue pairs:

1. Distance between A66 and V229

`cpptraj -p *.parm7 -i distance_commands.in`

2. Distance between A90 and A209

`cpptraj -p *.parm7 -i distance_commands.in`

3. Distance between S101 and I191

`cpptraj -p *.parm7 -i distance_commands.in`

4. Distance between S101 and M296

`cpptraj -p *.parm7 -i distance_commands.in`

-To visualize the results type the following command line in the Linux terminal:

`xmgrace output.agr`

**Root Mean Square Fluctuation (RMSF):**

To calculate RMSF of each protein residue, use the following commands after running cpptraj:


1. RMSF of the first monomer

`cpptraj -p *.parm7 -i rmsf_first_monomer.in`

2. RMSF of the second monomer

`cpptraj -p *.parm7 -i rmsf_second_monomer.in`

To visualize the results type the following command line in the Linux terminal:

`xmgrace output.agr`

**Visualization**

Visual Molecular Dynamics (VMD) software, version 1.9.4a53, was used to take required snapshots using the snapshot.tcl script.

1. Open VMD and load the topology and trajectory files.

2. Open TK Console (Extensions > TK Console) and run the following command to extract the required snapshot from the simulations:


`source snapshot.tcl`

`takesnapshot <frame_number>`

**Note:**

The residue numbers are based on those in the simulations. The first 5 residues of the protein are missing in the cryo-EM structure, so the residues are renumbered in the simulations as follows:

For example, residue #66 in the simulations corresponds to residue #71 in the cryo-EM structure.


