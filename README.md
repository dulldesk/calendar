# Calendar

A 12-month calendar. 

## Features

* Buttons are provided to save either the current month or the entire year as `.jpg` images.
* Press `b` or `B` to show/remove the aforementioned buttons
* Press the second row of keys from `1` to `=` to view the corresponding month (in the case of October: `0`, November: `-`, December: `=`)
* Go to the next or previous month by using `WASD`, `HJKL`, `[]` (forward and back respectively), or arrow keys. 
  * Advacing to the next month after December loops back to January and vice versa
* Press any other key to advance to the next month (or loops back to January in the case of December)
* Press `esc` to exit the program
* Edit the config file (`/data/config.txt`) to:
  * Change the year displayed
  * Change the background colour
  * Change the width and the height of the image (can also be adjusted by directly changing the window size)

## Installation and Usage

1. Install Processing at https://processing.org/download/
2. Download the repository
3. Rename the root folder (calendar-master) to `calendar`
4. Open `calendar.pde` in the Processing application and press the round Play button. 
