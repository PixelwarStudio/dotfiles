from math import radians as rad
from Tree.core import Tree
from PIL import Image
from random import randint, uniform

WALLPAPER_SIZE = (1366, 768)


def main():
    branches = []
    number_of_branches = randint(4, 5)
    angle_step = 270//number_of_branches

    for i in range(number_of_branches):
        angle = -135 + angle_step*(i+.5) + randint(-angle_step//2, angle_step//2)
        scale = uniform(.45, .55)
        branches.append((scale, rad(angle)))

    tree = Tree(
        pos=(0, 0, 0, -min(WALLPAPER_SIZE)*.45),
        branches=branches,
        sigma=(.05, .05)
    )
    tree.grow(8)

    tree.move_in_rectangle()

    im = Image.new("RGB", tree.get_size(), (59, 66, 82))
    tree.draw_on(im, (216, 222, 233, 236, 239, 244), (136, 192, 208), 10)

    wallpaper = Image.new("RGB", WALLPAPER_SIZE, (59, 66, 82))
    wallpaper.paste(im, ((wallpaper.size[0]-im.size[0])//2, (wallpaper.size[1]-im.size[1])//2))
    wallpaper.save("wallpaper.png", "PNG")


if __name__ == "__main__":
    main()
