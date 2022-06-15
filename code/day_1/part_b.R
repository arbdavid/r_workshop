############################# USING FUNCTIONS ##################################
# Function take arguments (input) and return values (output).
# Some arguments are mandatory and some are optional.
?round

# Arguments can be matched by position or by name.
round(2.46, 1)
round(x = 2.46, digits = 1)
round(2.46, digits = 1)
round(digits = 1, x = 2.46) # Don't do this!!

# I recommend generally following function order for mandatory ones and writing
# optional named ones in whatever order


################### BASIC DATA STRUCTURES ######################################
# Vectors ----
# Always the same type of data
# Character
chr_vector <- c('d', 'a', 'v', 'i', 'd')

# Logical
lgl_vector <- c(TRUE, FALSE, FALSE, TRUE, TRUE)

# Numeric (double)
dbl_vector <- c(1.25, 2.3, 5.1, 2.8, 5.3)

# Integer
int_vector <- c(2L, 4L, 6L, 8L, 10L)

# Check a type
typeof(dbl_vector)
class(dbl_vector)

# Coercion
test_vector <- c('a', 5)
test_vector <- c(FALSE, 1L)
test_vector <- c(FALSE, 'a')
test_vector <- c(FALSE, 'a', 5)

# General order:
# logical to integer, integer to numeric, numeric to character
# But logical will go to character if other character

# NAs
grades <- c(4, 4, NA, 3.5)
grades <- c(4, 4, NA_real_, 3.5)

mean(grades)
mean(grades, na.rm = TRUE)

# Vectors can be named:
named_vector <- c(course_1 = 4, course_2 = 4, course_3 = NA, 
                  course_4 = 3.5)

names(named_vector)

names(grades) <- c('course_1', 'course_2', 'course_3', 'course_4')

# Comparing objects
identical(named_vector, grades)


# Managing global environment
# Removing things from global environment
rm(test_vector, grades)

# List everything:
ls()

# To delete everything
# rm(list = ls())

# Lists ----
# Can be different types of data
a_list <- list('a', 5)
a_list <- list(chr_vector, dbl_vector, int_vector, lgl_vector)

# Can be named, too
a_list <- list(element_a = chr_vector, element_b = dbl_vector)

# Data frames and tibbles ----
# Basically the same thing, subtle differences
a_tibble <- dplyr::tibble(column_a = chr_vector, column_b = dbl_vector,
                          column_c = int_vector, column_d = lgl_vector)


rm(a_tibble)


###################### SUBSETTING ##############################################
# Subsetting vectors ----
# You can subset vectors by position
chr_vector[2]

# You can select several positions with c()
chr_vector[c(1, 4)]

# Or ranges with :
chr_vector[1:3]

# Or both:
chr_vector[c(1:3, 5)]

# Or just a position vector
chr_vector[c(2, 1, 1, 5, 3, 3)]


# You can also subset by name
named_vector['course_1']


# Most importantly, you can subset with a logical vector of the same length
lgl_vector
chr_vector
chr_vector[lgl_vector]

# Subsetting lists ----
# Same idea but think of a list as a train of vectors
# You need to select the car position, and then get the contents of the car

a_list[1]
a_list['element_a']

# You still get a list of one element, not a vector
class(a_list[1])

# You need to do
a_list[[1]]
class(a_list[[1]])

# You can also use
a_list$element_a



######################## COMMON OPERATORS ######################################
# Boolean comparisons
'a' == 'b'
'a' == 'a'

'a' != 'b'
'a' != 'a'

# ! flips the boolean
!FALSE

# Be careful with NAs
5 == NA
is.na(NA)

# Check if element in vector
'a' %in% c('a', 'b')
'c' %in% c('a', 'b')

# AND and OR
TRUE & TRUE
FALSE & TRUE

TRUE | TRUE
FALSE | TRUE



############################## IMPORTING FILES #################################
# READ CSV
star_wars <- readr::read_csv('./data/star_wars.csv')
star_wars <- read.csv('./data/star_wars.csv')

# Stata, SPSS, SAS, etc
haven::read_dta()
haven::read_spss()
haven::read_sas()

# Feather
feather::read_feather()


############################## SAVING DATA #####################################
readr::write_csv(star_wars, './data/star_wars_2.csv')
write.csv()

# Stata, SPSS, SAS, etc
haven::write_dta()
haven::write_spss()
haven::write_sas()

# Feather
feather::write_feather()



############################## BASIC TIDYVERSE #################################
library(tidyverse)

df <- mtcars

# Pipes
df <- df %>% 
    mutate(mpg_sq = mpg^2)

df_select <- df %>% 
    select(mpg_sq)

df_select <- df %>% 
    select(-mpg_sq)


df_filter <- df %>% 
    filter(cyl == 4)






