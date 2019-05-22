import matplotlib.pyplot as plt
import pandas as pd

names = ["Potential", "Kinetic En.", "Total Energy", "Temperature"]
axis = "time"
nve = pd.read_csv("3p5g/nve.xvg", skiprows=27, names=names, header=None, delim_whitespace=True).rename_axis(axis)
nvt = pd.read_csv("3p5g/nvt.xvg", skiprows=27, names=names, header=None, delim_whitespace=True).rename_axis(axis)
npt = pd.read_csv("3p5g/npt.xvg", skiprows=27, names=["Potential", "Kinetic En.", "Total Energy", "Pressure"], header=None, delim_whitespace=True)

for df, filename in zip([nve, nvt, npt], ['nve.png', 'nvt.png', 'npt.png']):
    fig, ax = plt.subplots(2, 2, sharex='all')
    ax[0, 0].plot(df.index.values, df["Potential"].values)
    ax[0, 0].set_ylabel('Potential')

    ax[0, 1].plot(df.index.values, df["Kinetic En."].values)
    ax[0, 1].set_ylabel('Kinetic')

    ax[1, 0].plot(df.index.values, df["Total Energy"].values)
    ax[1, 0].set_ylabel('Total Energy')
    ax[1, 0].set_xlabel('Time [ps]')

    if filename != 'npt.png':
        ax[1, 1].plot(df.index.values, df["Temperature"].values)
        ax[1, 1].set_ylabel('Temperature')
        ax[1, 1].set_xlabel('Time [ps]')
    else:
        ax[1, 1].plot(df.index.values, df["Pressure"].values)
        ax[1, 1].set_ylabel('Pressure')
        ax[1, 1].set_xlabel('Time [ps]')

    fig.set_size_inches(h=4, w=5)
    fig.tight_layout()
    # plt.show()
    plt.savefig(filename, bbox_inches='tight')
