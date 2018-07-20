Introduction
------------

1. terminal-color is implemented by multiple programming languages, for printing colorful output in terminal.
2. Every implement is simple enough with no third-party dependency. You don't need to think of it as a dependency library, so that you can copy the codes in your project.
3. Every implement has similar method names, so you can use it smoothly in different programming languages.
4. Color functions could be composed together, like putting ``red`` into ``bold``: ``bold(red(string))``.

``color_function``
~~~~~~~~~~~~~~~~~~

``color_function`` decorates string with specified color. ``color_function`` is one of below function names:

========  ============  ===========
Colors    Background    Highlight
========  ============  ===========
black     black_bg      black_hl
red       red_bg        red_hl
green     green_bg      green_hl
yellow    yellow_bg     yellow_hl
blue      blue_bg       blue_hl
magenta   magenta_bg    magenta_hl
cyan      cyan_bg       cyan_hl
white     white_bg      white_hl
========  ============  ===========

A color function with ``_bg`` suffix means it will set the color as background.
A color function with ``_hl`` suffix means it will set the color as background, and change the foreground as well to make the string more standout.

``style_function``
~~~~~~~~~~~~~~~~~~

``style_function`` decorates string with specified style. ``style_function`` is one of below function names:

- bold
- italic
- underline
- strike
- blink
