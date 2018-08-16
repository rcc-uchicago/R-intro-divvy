# Instructor notes

## Post-workshop notes

+ Add info on how to save environment in RStudio instead of using
`save.image`.

+ Add a "What's included" slide, as well as a "What's included"
  section to the README.

+ Some participants might not have enough memory to load all the
  data. If that is the case, they can just load some of the files.

+ When we revisit the trip data in "Create a map of the Divvy
  stations", remind participants that we only looked at a portion of
  the data.

+ Explain that `tripfiles` does not actually contain any data, only
  the names of the files.

+ Create a slide giving a summary of what function `read.divvy.data`
  does.

+ The `print(object.size(stations),units = "Kb")` line was
  confusing---I should simplify that code.

+ Change `na` argument in `read_csv` call to be less confusing, and
  explain that `read_csv` does many things automatically (e.g.,
  handling missing data)

+ When "reordering" the data frame rows, we might ask, what was the
  *original* ordering?

+ Add more text to "what is a factor"?

+ Show two different ways of manipulating individual columns, with and
  without the `transform` function.

+ The slides "Convert station columns to factors" and "Summarizing
  trips by station" are probably too complicated for an introductory
  workshop.

+ Remove `theme_cowplot()`---these aren't needed with the current
  version of cowplot.

+ Simplify the plot adjustments in order to simplify the code.

+ It would be good to show another example of a "geom" other than
  `geom_point`. Maybe `geom_density` or `geom_text`?

## Instructor in-class setup

+ Arrange chairs and tables.
+ Clean up Desktop and quit applications (particularly Slack).
+ Use Terminal (not iTerm).
+ Use Basic Terminal theme.
+ Use Consolas font.
+ Fix bash prompt.
+ Arrange slides PDF and terminal on screen.
+ Distribute Yubikeys.


