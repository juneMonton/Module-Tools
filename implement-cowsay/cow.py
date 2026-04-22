import argparse

import cowsay


def main():
    parser = argparse.ArgumentParser(
        prog="cowsay",
        description="Make animals say things",
    )
    parser.add_argument(
        "message",
        nargs="+",
        help="The message to say.",
    )
    parser.add_argument(
        "--animal",
        choices=sorted(cowsay.char_names),
        default="cow",
        help="The animal to be saying things.",
    )

    args = parser.parse_args()
    message = " ".join(args.message)
    cowsay.draw(message, args.animal)


if __name__ == "__main__":
    main()


# Notes:
# The two requirements:

# Use the cowsay library (don't hand-draw ASCII).
# Don't hardcode the animal list — get it from the library.
# How the code satisfies them:

# cow.py:3 — import cowsay pulls in the library. cowsay.draw(text, animal_name) does the actual rendering.

# cow.py:17 — choices=sorted(cowsay.char_names) is the key line. cowsay.char_names is the library's own list of supported animals (['beavis', 'cheese', 'cow', ...]). By passing it to argparse's choices, two things happen for free:

# The list in --help is generated automatically.

# An invalid value like --animal fish is rejected by argparse with exactly the error format the README shows — we didn't write that error message ourselves.

# cow.py:10 — nargs="+" lets the user type the message as bare words (Grass, delicious.) instead of one quoted string. argparse collects them into a list, which cow.py:25 joins back with spaces.

# cow.py:18 — default="cow" is why running python3 cow.py Grass, delicious. with no --animal gives you a cow.
# cow.py:7 — prog="cowsay" makes argparse print usage: cowsay ... instead of usage: cow.py ..., matching the README's expected output.

# The payoff of using cowsay.char_names: if the library ever adds a new animal, our script picks it up with zero changes. That's the whole point of not hardcoding the list.