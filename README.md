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

## Installation and Usage

1. Install Processing at https://processing.org/download/
2. Download the repository
3. Rename the root folder (calendar-master) to `calendar`
4. Open `calendar.pde` in the Processing application and press the round Play button. 

## Configuration
A `config.txt` can be added under `data/` to configure some features of the program, namely:

#### Year
Change the year displayed
```
year=2001
```

#### Background Colour
Change the background colour
```
bkgd=0,0,0
```

#### Width / height
Change the window dimensions, in pixels (can also be done by directly adjusting the window size)
```
width=700
height=1334
```

A sample config file is present in the directory.
