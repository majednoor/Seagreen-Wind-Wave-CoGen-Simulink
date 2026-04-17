# Seagreen Wind–Wave Co-Generation Model (Simulink)

## Overview
This project presents a system-level MATLAB/Simulink model of a co-generation offshore wind–wave energy system based on the Seagreen 1 wind farm.

The model integrates:
- A DFIG-based offshore wind farm (1.14 GW)
- An aggregated wave energy converter (WEC) subsystem
- Real environmental data:
  - Wind: ERA5 (Copernicus Climate Data Store)
  - Wave: CMEMS (Copernicus Marine Service)

## Objective
To evaluate how wave energy integration enhances total exported active power and improves utilisation of existing offshore transmission infrastructure.

## Model Description
- Wind farm connected to 220 kV export system
- Wave energy modelled as aggregated active power injection at the offshore bus
- Two WEC configurations analysed:
  - 400 × 300 kW devices
  - 250 × 1 MW devices

## Data Sources
- Wind data: ERA5 reanalysis
- Wave data: CMEMS North-West European Shelf wave reanalysis

## How to Run
1. Open MATLAB
2. Open the `.slx` file
3. Run the simulation
4. Observe outputs in scopes:
   - Active power (P)
   - Reactive power (Q)
   - DC link voltage
   - Rotor speed

## Notes
This model is intended for system-level analysis and does not include detailed hydrodynamic modelling of individual WEC devices.
