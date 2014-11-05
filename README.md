# Vim Races

Find out who is the fastest vimmer with a game of vim races.

## Rules

Vim racers are presented with a vim session with two open buffers. Their goal is
to edit the open buffer (the "before" file) until it looks like the alternate
buffer (the "after" file).

When the "before" file is written, it's compared to the "after" file. When they
are identical, a banner appears to declare that player is the winner. The first
player to make the winner banner appear wins.

There are only a few rules:

1. No `.vimrc`, no plugins: just vim.
2. No copying from the "after" file (yanking, `:read`ing, `C-xC-l`ing, or
   anything else that pulls the changes from the other file).

## You will need

* Two players.
* A computer to act as a server with:
    * [`tmate`](http://tmate.io).
    * A clone of the vimraces repository.
    * A relatively modern version of `vim`.
* Two computers to act as clients. Any computer with an SSH client will do.
* A projector.
* An internet connection.

## How to race

0. Run the vimraces setup script on the server:

    ```
    cd vimraces
    ./setup
    ```

1. Hook the server up to the projector.
2. Open up two terminal emulator windows, so they're both visible.
3. In each window, `cd` to the `vimraces/player1` and `vimraces/player2`
   directories respectively.
4. Start a `tmate` session in each of those windows.
5. Set the two client laptops up facing each other, so they can't see the
   other's screen.
6. Connect to one of the `tmate` sessions from each client laptop.
7. From each client run `../race 1`.
8. Race until someone is declared the winner!
9. Quit `vim`, and run `../race 2`, `../race 3`, and so on.
