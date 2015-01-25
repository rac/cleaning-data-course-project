# Cleaning Data Course Project

## Overview

[run_analysis.R](https://github.com/rac/cleaning-data-course-project/blob/master/run_analysis.R) is the only script required to create the tidy data set.

Please view my [Code Book](https://github.com/rac/cleaning-data-course-project/blob/master/CodeBook.md) for a detailed run down of how the tidy dataset was created.

You can view a csv version my tidy data set [here](https://github.com/rac/cleaning-data-course-project/blob/master/tidyDataset.csv) and a txt version [here](https://github.com/rac/cleaning-data-course-project/blob/master/tidyDataset.txt).

### How to run the script*

1. Create a directory where you want the repository to live and `cd` to that directory.
2. Run `git clone https://github.com/rac/cleaning-data-course-project.git` to clone the repo into your new directory. (I'm going to refer to this newly created project directory with PROJECT from now on)
3. Open RStudio
4. Use `setwd("<path to PROJECT>")` to set the working directory in RStudio.
5. Run `source("run_analysis.R")` to create the tidy data set.
6. `tidyDataset.txt` and `tidyDataset.csv` are created in the `PROJECT` directory. If you `cd` to the `PROJECT` directory you can run `ls -l` and see that
	both `tidyDataset.txt` and `tidyDataset.csv` have been updated.

\**I completed this project using a Mac and instructions may vary if you are using a different operating system*



