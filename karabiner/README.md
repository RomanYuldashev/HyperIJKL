[//]: # (diffs with main README: small installation instruction edit, label on top and img URLs)

# HyperIJKL

[![GitHub](https://img.shields.io/badge/Open_on_GitHub-blue.svg)](https://github.com/RomanYuldashev/HyperIJKL)

Yet another one productivity-oriented keyboard keys remapper for macOS.  
It is largely based on [Vonng's](https://github.com/Vonng) [CapsLock Enhancement](https://github.com/Vonng/Capslock), but with a twist: 
WASD-style navigation instead of Vim-style.  
For those who are more accustomed to arrow keys or FPS controls ᗜωᗜ

This set up is tailored specifically to my workflow and has no aim to cover all possible use cases, 
though it is easily customizable to your preferences if you like the general idea.

## Overview

Turn `Capslock` into a new modifier – **Hyper** `*`. 
Do stuff without moving your hands away from the keyboard's home row:

- Navigate and edit text quickly

- Delete words and lines with a single key press

- Navigate macOS: desktops, apps and tabs

- Start and switch active apps

- Control the mouse pointer, buttons and wheels with a keyboard

- ... and other workflow enhancements

## Contents

<details>
  <summary>Expand</summary>

- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Description](#description)
   - [General](#general)
      - [Legend](#legend)
   - [Text Navigation](#text-navigation)
   - [OS Navigation](#os-navigation)
   - [Mouse Navigation](#mouse-navigation)
   - [Left Hand Window Navigation](#left-hand-window-navigation)
   - [Applications](#applications)
   - [Display Selection](#display-selection)
   - [Input Source (Language) Selection](#input-source-language-selection)
- [General Key Scheme](#general-key-scheme)
   - [Zones](#zones)
   - [Legend](#legend)
- [Key Mappings by Layer](#key-mappings-by-layer)
   - [Normal](#normal)
   - [Select](#select)
   - [Word](#word)
   - [Word Select](#word-select)
   - [OS Navigation](#os-navigation)
   - [Mouse Pointer](#mouse-pointer)
   - [Mouse Wheel](#mouse-wheel)
- [Making HyperIJKL Work on Login Screen](#making-hyperijkl-work-on-login-screen)
- [Modifying HyperIJKL](#modifying-hyperijkl)
- [Advanced Installation](#advanced-installation)
   - [Setting Up DefaultKeyBindings.dict](#setting-up-defaultkeybindingsdict)
   - [Setting Up Additional IDEA Shortcuts](#setting-up-additional-idea-shortcuts)
      - [Modifying Key Mapping Configuration Directly (Faster Way)](#modifying-key-mapping-configuration-directly-faster-way)
      - [Alternative: Adding Shortcuts through Settings Panel (More Obvious Way)](#alternative-adding-shortcuts-through-settings-panel-more-obvious-way)
- [About](#about)

</details>

## Prerequisites

- macOS 

- [brew](https://brew.sh/)

## Installation

1. Install Karabiner-Elements:
   
   ```bash
   brew install --cask karabiner-elements
   ```

2. [Download the configuration](karabiner://karabiner/assets/complex_modifications/import?url=https://raw.githubusercontent.com/RomanYuldashev/HyperIJKL/main/mac/hyperijkl.json) (or use `Import` button on the current page) and allow Karabiner to load it;

3. Enable HyperIJKL in Karabiner-Elements:
   
   > Karabiner-Elements → Complex Modifications → Add rule → Enable all

4. Enjoy!

*Several non-essential HyperIJKL features (marked in [Description](#description) section) require additional 
installation steps. See [Advanced Installation](#advanced-installation) for instructions.*

## Description

### General

Hold `Capslock` to activate **Hyper** `*` mode.  
Press `Capslock` once to send `esc`.  
`Capslock + esc` to toggle Capslock mode.  

#### Legend

|  `*`  |  `⌥`   |  `⇧`  |   `⌘`   | `␣`   |
|:-----:|:------:|:-----:|:-------:|-------|
| Hyper | option | shift | command | space |

### Text Navigation

| button / layer |           `*`           |         `* ⌘`          |       `* ⌥`       |           `* ⌥ ⌘`            |
|:--------------:|:-----------------------:|:----------------------:|:-----------------:|:----------------------------:|
|      `i`       |           up            |     select line up     |   paragraph up*   |     select paragraph up*     |
|      `j`       |          left           | select character left  |     word left     |       select word left       |
|      `k`       |          down           |    select line down    |  paragraph down*  |    select paragraph down*    |
|      `l`       |          right          | select character right |    word right     |      select word right       |
|      `u`       |          home           |  home with selection   |    line start     |   select line, cursor home   |
|      `o`       |           end           |   end with selection   |     line end      |   select line, cursor end    |
|      `y`       |         page up         |  select previous page  |  document start*  | select up to document start* |
|      `h`       |        page down        |    select next page    |   document end*   |  select up to document end*  |
|      `n`       | delete left (backspace) |    delete line left    | delete word left  |              -               |
|      `m`       |   delete current line   |  select current line   |  move line down   |              -               |
|      `,`       |  delete current word*   |  select current word*  |   move line up    |              -               |
|      `.`       |  delete right (delete)  |   delete line right    | delete word right |              -               |
|      `[`       |            (            |          undo          |         -         |              -               |
|      `]`       |            )            |          redo          |         -         |              -               |
|     `esc`      |        capslock         |           -            |         -         |              -               |

*\* additional set up required. See [Advanced Installation](#advanced-installation).*

### OS Navigation

Navigate macOS: desktops, windows, tabs, Mission Control and Launchpad.

| button / layer |        `* ⇧`        |
|:--------------:|:-------------------:|
|      `i`       |   Mission Control   |
|      `j`       |      Launchpad      |
|      `k`       |    previous tab     |
|      `l`       |      next tab       |
|      `u`       |  previous desktop   |
|      `o`       |    next desktop     |
|      `y`       |     fullscreen      |
|      `h`       | hide current window |

### Mouse Navigation

Use keyboard keys to control the mouse pointer, buttons and wheels.

| button / layer |        `* ⇧`        |       `* ⌥ ⇧`       |
|:--------------:|:-------------------:|:-------------------:|
|      `i`       |     pointer up      |      wheel up       |
|      `j`       |    pointer left     |     wheel left      |
|      `k`       |    pointer down     |     wheel down      |
|      `l`       |    pointer right    |     wheel right     |
|      `u`       |  left mouse button  |  left mouse button  |
|      `o`       | right mouse button  | right mouse button  |
|      `h`       | middle mouse button | middle mouse button |

### Left Hand Window Navigation

These shortcuts duplicate some shortcuts from [OS Navigation](#os-navigation). Their aim is to grant the ability 
to navigate windows and desktops while using a mouse with your right hand at the same time.

| button / layer |     `*`      |      `* ⌘`       |
|:--------------:|:------------:|:----------------:|
|      `w`       |   next tab   |   previous tab   |
|      `s`       | next desktop | previous desktop |
|      `x`       |   forward    |        -         |
|      `z`       |     back     |        -         |

### Applications

These shortcuts launch applications or switch to a desktop with the said application if it is already running.  
`* §` starts multiple apps that are configured in `hyperijkl.yml`.  
`§` is placed on top of a `tab` on ISO (EU) keyboards, 
replace it with `` ` `` to get similar results on ANSI (US) keyboards (see [Modifying HyperIJKL](#modifying-hyperijkl)).

| button / layer |      `*`       |      `* ⌘`       |    `* ⌥`    |
|:--------------:|:--------------:|:----------------:|:-----------:|
|      `e`       |    Outlook     |      Notes       | Thunderbird |
|      `r`       |      IDEA      |      VSCode      |   DBeaver   |
|      `t`       |     iTerm      | Activity Monitor |  Settings   |
|      `d`       |    Postman     |      Docker      |    Lens     |
|      `f`       |     Finder     |     Forklift     |   Preview   |
|      `g`       |   KeepassXC    |     Spotify      |    IINA     |
|      `c`       |    Telegram    |   Rocket.Chat    |   Signal    |
|      `v`       |      Zoom      | Microsoft Teams  |    Skype    |
|      `b`       |     Chrome     |     Firefox      |   Safari    |
|      `§`       | start work env |        -         |      -      |

### Display Selection

Press `* 1` to center the mouse pointer on Display 1. Works with digits from 1 to 4.

| button / layer |    `*`    |
|:--------------:|:---------:|
|      `1`       | display 1 |
|      `2`       | display 2 |
|      `3`       | display 3 |
|      `4`       | display 4 |

### Input Source (Language) Selection

| button / layer |               `*`                |                `* ⌘`                 |
|:--------------:|:--------------------------------:|:------------------------------------:|
|      `;`       |                EN                |                  -                   |
|      `p`       |    input source (language) 2     |                  -                   |
|      `/`       |    input source (language) 3     |                  -                   |
|      `␣`       | previous input source (language) | next input source (language) in menu |

Press `* ;` to select EN input source.  
`* p` to select the second input source.  
`* /` to select the third input source.  
`* ␣` to select the previous input source (like the default `⌥ ␣` in macOS).  
`* ⌘ ␣` to select the next source in the input menu
(iterates through the full list of input sources like the default `⌥ ⌘ ␣`).

Requires manual set up of additional input sources to work.
You will have to edit `hyperijkl.yml` by replacing predefined input language codes to desired ones.
Those input languages should also be configured in macOS. 
Reinstall the script (see [Modifying HyperIJKL](#modifying-hyperijkl))
after those steps and check if LANG2 and LANG3 shortcuts work.

## General Key Scheme

### Zones

![](https://raw.githubusercontent.com/RomanYuldashev/HyperIJKL/main/mac/img/png/keyboard-keys-general-scheme.png)

### Legend

![](https://raw.githubusercontent.com/RomanYuldashev/HyperIJKL/main/mac/img/png/color-zones.png)

## Key Mappings by Layer

*\* additional set up required. See [Advanced Installation](#advanced-installation).*

### Normal

![](https://raw.githubusercontent.com/RomanYuldashev/HyperIJKL/main/mac/img/png/text-navigation.png)

### Select

![](https://raw.githubusercontent.com/RomanYuldashev/HyperIJKL/main/mac/img/png/text-selection.png)

### Word

![](https://raw.githubusercontent.com/RomanYuldashev/HyperIJKL/main/mac/img/png/word-navigation.png)

### Word Select

![](https://raw.githubusercontent.com/RomanYuldashev/HyperIJKL/main/mac/img/png/word-selection.png)

### OS Navigation

![](https://raw.githubusercontent.com/RomanYuldashev/HyperIJKL/main/mac/img/png/os-navigation.png)

### Mouse Pointer

![](https://raw.githubusercontent.com/RomanYuldashev/HyperIJKL/main/mac/img/png/mouse-pointer.png)

### Mouse Wheel

![](https://raw.githubusercontent.com/RomanYuldashev/HyperIJKL/main/mac/img/png/mouse-wheel.png)

## Making HyperIJKL Work on Login Screen

You can make HyperIJKL work on Login Screen.

1. Go to:

   > Karabiner-Elements → Misc

2. Press `Copy the current configuration to the system default configuration`. You will be prompted for admin password.

## Modifying HyperIJKL

You can edit HyperIJKL's shortcuts with the following steps:

1. Open HyperIJKL/mac/hyperijkl.yml;

2. Edit shortcuts (see [Karabiner docs](https://karabiner-elements.pqrs.org/docs/) for reference);

3. Run in `mac` directory:
   
   ```bash
   make all
   ```

4. Go to:
   
   > Karabiner-Elements → Complex Modifications

5. Delete all the old HyperIJKL's modifications;

6. Press:
   
   > Add rule → Enable all
   
   on newly edited modifications.

## Advanced Installation

Advanced Installation of HyperIJKL allows you to use several additional shortcuts, 
but requires more complex configuration that involves modifying key bindings in macOS and in IntelliJ IDEA.

1. Install Karabiner-Elements:
   
   ```bash
   brew install --cask karabiner-elements
   ```

2. Clone HyperIJKL:
   
   ```bash
   git clone https://github.com/RomanYuldashev/HyperIJKL.git
   ```

3. Run installation script in HyperIJKL's `mac` directory:
   
   ```bash
   make all
   ```
   
   This step automatically sets up `DefaultKeyBindings.dict` in macOS. See [Setting Up DefaultKeyBindings.dict](#setting-up-defaultkeybindingsdict) for details.

4. Enable HyperIJKL in Karabiner-Elements:
   
   > Karabiner-Elements → Complex Modifications → Add rule → Enable all

5. Set up additional IDEA shortcuts (see [Setting Up Additional IDEA Shortcuts](#setting-up-additional-idea-shortcuts)).

### Setting Up DefaultKeyBindings.dict

HyperIJKL requires modification of DefaultKeyBindings.dict for advanced shortcuts to work.
If you have no custom key bindings in your macOS — you are good!
Otherwise, you will have to manually merge HyperIJKL's key bindings into existing ones.
In this case HyperIJKL's advanced installation script will notify you about key bindings conflict.

### Setting Up Additional IDEA Shortcuts

HyperIJKL utilizes a couple of text navigation actions that are supported by macOS but are rarely recognized by apps.
To enable these actions in IntelliJ IDEA you will have to add shortcuts for them either through in-app Settings
or by directly modifying configuration files.

#### Modifying Key Mapping Configuration Directly (Faster Way)

1. Perform previous steps of HyperIJKL's Advanced Installation;

2. Go to IDEA configuration directory (directory name may vary between app versions):
   
   ```bash
   cd ~/Library/Application\ Support/JetBrains/[IntelliJIdea]
   ```

3. If directory `[IdeaConfigBasePath]/keymaps` doesn't exist, copy it from HyperIJKL's `mac/idea` directory and paste here;
   
   Else go to `keymaps`, open `macOS.xml` with a text editor and paste all the `<action>` blocks from HyperIJKL's `mac/idea/keymaps/macOS.xml` into it;

4. Go to `[IdeaConfigBasePath]/options/mac` and open `keymap.xml`. Make sure that `active_keymap` name is aligned with an .xml from `keymaps` directory:
   
   > <active_keymap name="macOS" />

5. Restart IDEA;

6. Check if these shortcuts work in IDEA:

   > `* ⌥ i` → move to beginning of paragraph

   > `* ⌥ ⌘ i` → select previous paragraph

   > `* ⌥ k` → move to end of paragraph

   > `* ⌥ ⌘ k` → select next paragraph

#### Alternative: Adding Shortcuts through Settings Panel (More Obvious Way)

1. Perform previous steps of HyperIJKL's [Advanced Installation](#advanced-installation);

2. Open IntelliJ IDEA;

3. Go to:
   
   > Settings → Keymap → Find

4. Add these shortcuts:

   > Move Caret Backward a Paragraph → `* ⌥ i`

   > Move Caret Backward a Paragraph with Selection → `* ⌥ ⌘ i`

   > Move Caret Forward a Paragraph → `* ⌥ k`

   > Move Caret Forward a Paragraph with Selection → `* ⌥ ⌘ k`

## About

Author: Roman Yuldashev ([RomanYuldashev@proton.me](mailto:RomanYuldashev@proton.me))

License: [Apache 2.0 License](../LICENSE)

ᗜˬᗜ
