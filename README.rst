================================================================================
    Convert TikZ pictures to PNG files (actually any raster format)
================================================================================

``tikz2png`` script allows to easily convert `TikZ <https://github.com/pgf-tikz/pgf>`_
pictures into any raster format.

Requirements:

- Python 3;
- TeX installation provides ``pdflatex`` and ``tikz`` (in Debian packages
  ``texlive-latex-base`` and ``texlive-latex-extra`` installs these);
- ImageMagick.


Example
--------------------------------------------------

Content of ``example.tex``::

    % taken from https://pgf-tikz.github.io/pgf/pgfmanual.pdf, page 43
    \begin{tikzpicture}[even odd rule,rounded corners=2pt,x=10pt,y=10pt]
    \filldraw[fill=yellow!80!black]     (0,0)   rectangle(1,1)
             [xshift=5pt,yshift=5pt]    (0,0)   rectangle(1,1)
             [rotate=30]                (-1,-1) rectangle(2,2);
    \end{tikzpicture}

Default conversion::

    $ tikz2png -i example.tex -o example1.png

.. image:: example1.png

Force white background::

    $ tikz2png -i example.tex --background=white -o example2.png

.. image:: example2.png

No border::

    $ tikz2png -i example.tex --border=0 -o example3.png

.. image:: example3.png

No border and background color::

    $ tikz2png -i example.tex --border=0 --background=blue -o example4.png

.. image:: example4.png

./tikz2png --quality 100 -i example.tex -o example5.png

.. image:: example5.png


Installation
--------------------------------------------------

Simply copy/symlink ``tikz2png`` to any directory in your ``$PATH``.
