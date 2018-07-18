# Instructor notes

## Post-workshop notes

+ To avoid dealing with file path issues, I think it is best to have
  all the code and data files in the same directory, "analysis". 

+ Add a slide where we actually open the CSV file in a text editor.

+ Add info on how to save environment in RStudio instead of using
`save.image`.

+ Add a "What's included" slide, as well as a "What's included"
  section to the README.

+ Some participants might not have enough memory to load all the
  data. If that is the case, they can just load some of the files.

+ When we revisit the trip data, remind participants that we only
  looked at a portion of the data.

+ Create a slide giving a summary of what function `read.divvy.data`
  does.

+ The `print(object.size(stations),units = "Kb")` line was
  confusing---I should simplify that code.

+ Change `na` argument in `read_csv` call to be less confusing, and
  explain that `read_csv` does many things automatically (e.g.,
  handling missing data).

## Instructor in-class setup

+ Arrange chairs and tables.
+ Clean up Desktop and quit applications (particularly Slack).
+ Use Terminal (not iTerm).
+ Use Basic Terminal theme.
+ Use Consolas font.
+ Fix bash prompt.
+ Arrange slides PDF and terminal on screen.
+ Distribute Yubikeys.


