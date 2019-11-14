* Encoding: UTF-8.
****************************************************************************************************
* Social Research Methods.
* Computer Lab 2.
* Introduction to SPSS.
****************************************************************************************************
* SECTION 1: REVISION

* Before you run the code below you should ensure you have the SRM Practice Data open.
* This is available from the VLE.

* Descriptive statistics for the scale variable 'age'.

FREQUENCIES age
    /FORMAT NOTABLE
    /STATISTICS=MEAN MEDIAN MODE RANGE MIN MAX.

* Descriptive statistics for the categorical variable 'walkdark'.

FREQUENCIES walkdark.

* Descriptive statistics for the categorical variable 'cinema'.

FREQUENCIES cinema.


****************************************************************************************************
* SECTION 2: CONTINGENCY TABLES

* Contingency table of 'sex' and 'work'.

CROSSTABS sex BY work
       /CELLS count row.

* Contingency table of 'work' and 'sex'.

CROSSTABS work BY sex
       /CELLS count row.

* Graph of contingency table of 'sex' and 'work'.
    
GRAPH
    /BAR(GROUPED)=PCT BY sex BY work.

* Graph of contingency table of 'work' and 'sex'.

GRAPH
    /BAR(GROUPED)=PCT BY work BY sex.


****************************************************************************************************
* SECTION 3: RECODING CATEGORICAL VARIABLES

* EXAMPLE 1.

* Contingency table of 'class' and 'cinema'.

CROSSTABS class BY cinema
       /CELLS count row.

* Examine the 'cinema' variable.

FREQUENCIES cinema.

* Recode the cinema variable so that category 6 and category 5 are grouped.

RECODE cinema (5=4).

* Examine the 'cinema' variable again.

FREQUENCIES cinema.

* Add labels to the categories of the variable 'cinema'.

VALUE LABELS cinema 
    1 "Every Week"
    2 "Once a Month"
    3 "Once Every Few Months"
    4 "Once Every Six Months or Less".
   
* Examine the 'cinema' variable again to see the new category labels.

FREQUENCIES cinema.

* Contingency table of 'class' and 'cinema'.

CROSSTABS class BY cinema
       /CELLS count row.

* Graph of contingency table of 'class' and 'cinema'.

GRAPH
    /BAR(GROUPED)=PCT BY cinema BY class.



* EXAMPLE 2.

* Examine the 'social' variable.

FREQUENCIES social.

* Set the 'Does Not Use' category of the variable 'social' as missing.

MISSING VALUES social (999 4).

* Examine the 'social' variable.

FREQUENCIES social.


****************************************************************************************************
* SECTION 4: RECODING SCALE VARIABLES

* Descriptive statistics for the scale variable 'age'.

FREQUENCIES age
    /FORMAT NOTABLE
    /STATISTICS=MEAN MEDIAN MODE RANGE MIN MAX.

* Recode the 'age' variable into three categories.

COMPUTE agegrp = age.
RECODE agegrp (16 THRU 35 =1) (36 thru 59 = 2) (60 thru 101 = 3).
VARIABLE LABELS agegrp 'Age Group'.
VALUE LABELS agegrp
    1 "Young"
    2 "Middle"
    3 "Old".
MISSING VALUES agegrp (999).
VARIABLE LEVEL agegrp (ORDINAL).

* Examine the categorical variable 'agegrp'.

FREQUENCIES agegrp.

* Contingency table of 'agegrp' and 'benefits'.

CROSSTABS agegrp BY benefits
       /CELLS count row.

* Recode the benefits variable so that category 1 and category 2 are grouped.

RECODE benefits (1=2).

* Add new category labels to the 'benefits' variable.

VALUE LABELS benefits 
    2 "Strongly Disagree & Disagree"
    3 "Agree"
    4 "Strongly Agree".
   
* Examine the 'benefits' variable again to see the new category labels.

FREQUENCIES benefits.

* Contingency table of 'agegrp' and 'benefits'.

CROSSTABS agegrp BY benefits
       /CELLS count row.

* Graph of contingency table of 'agegrp' and 'benefits'.

GRAPH
    /BAR(GROUPED)=PCT BY benefits BY agegrp.


****************************************************************************************************
* SECTION 5: INDEPENDENT PRACTICE

* Undertake the tasks below.
* Copy and past the relevant code from above for each task.
* You will need to change the variable names.


* Recode the 'benefits' variable.
* Group together 'Agree' and 'Strongly Agree'.


* Produce a contingency table of 'class' and 'benefits'.


* Produce a graph of the contingency table of 'class' and 'benefits'.


* Pick some variables and practice creating contingency tables.
* Consider whether you need to recode the variables.
* Consider the order of the table (i.e. which variables are the rows / columns).


****************************************************************************************************
* SECTION 6: MORE GRAPHS

* Histograms can be used to describe scale variables.

GRAPH
    /HISTOGRAM age.

* Line graphs can also be used to describe scale variables.

GRAPH
    /LINE mathscore.


* Bar charts can be used to describe categorical variables.

GRAPH
    /BAR discrim.

* Pie charts can be used to describe categorical variables.

GRAPH
    /PIE taxes.

* Scatterplots show the relationship between two scale variables.

GRAPH
    /SCATTERPLOT age WITH mathscore.

* This bar chart shows the mean maths score by sex.

GRAPH
    /BAR=mean(mathscore) BY sex
    /TITLE 'Maths Test Score by Sex'.


****************************************************************************************************
* End of File.



