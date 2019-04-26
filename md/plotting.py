import numpy as np
import matplotlib.pyplot as plt


def savefig(fig, filename, h=4, w=5):
    fig.set_size_inches(h=h, w=w)
    fig.tight_layout()
    plt.savefig(filename, bbox_inches='tight')


def contour(f, levels=25, xlim=(-1.5, 1.5), ylim=(-1.5, 1.5)):
    fig, ax = plt.subplots()

    x, y = np.linspace(*xlim), np.linspace(*ylim)
    xx, yy = np.meshgrid(x, y)
    z = f(xx, yy)

    ax.contourf(x, y, z, levels=levels)
    return fig, ax


def main():
    pass


if __name__ == '__main__':
    main()
