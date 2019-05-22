import pandas as pd

pd.read_csv("energy_ions.xvg", skiprows=25,
                names=["iter", "angle", "potential energy"], header=None,
                sep='\t') # I dunno.
