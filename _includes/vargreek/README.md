# Variant form of Greek symbols

`vargreek.tex` contains a minimal working example (MWE) which uses the package `mathspec` to write some special variant forms of Greek symbols. The only requirement is that you should have an installed font which supports the greek symbols. **Recommendation:** [Asana-Math](https://en.wikipedia.org/wiki/Asana-Math), which is shipped with TeXLive, and hence independent from your OS platform.

`vargreek.pdf` is the resulting pdf file by running `Makefile`, i.e., compiling from `vargreek.tex`. Note that not all fonts support the variant form of `\varbeta`, and it is interesting that some fonts render opposite results for the normal form and variant form, such as `\phi` and `\varphi` when the font is set as `DejaVuSerif` or `FreeMono`. 

`all.pdf` consists of the results for all available fonts on my system by running `script.sh`. Just for fun :grin:.
