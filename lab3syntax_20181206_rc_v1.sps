* Encoding: UTF-8.
****************************************************************************************************
* Social Research Methods.
* Computer Lab 3.
* Introduction to SPSS.
****************************************************************************************************
* SECTION 1: CHI-SQUARED TEST

* EXAMPLE 1

* Research Question: Is being a migrant related to worry about being insulted or pestered?

* Examine the 'migrant' variable.

FREQUENCIES migrant.

* Examine the 'insult' variable.

FREQUENCIES insult.

* Undertake the chi-squared test.

CROSSTABS migrant BY insult
       /CELLS count row
       /STATISTICS CHISQ PHI.

* EXAMPLE 2

* Research Question: Is sex associated with experience of discrimination?

* Examine the 'sex' variable.

FREQUENCIES sex.

* Examine the 'discrim' variable.

FREQUENCIES discrim.

* Undertake the chi-squared test.

CROSSTABS sex BY discrim
       /CELLS count row
       /STATISTICS CHISQ PHI.

****************************************************************************************************
* SECTION 2: CHI-SQUARED TEST (ASSUMPTIONS)

* Research Question: Is ethnicity associated with worry about being pestered or insulted?

* Examine the 'ethgrp' variable.

FREQUENCIES ethgrp.

* Examine the 'insult' variable.

FREQUENCIES insult.

* Undertake the chi-squared test.

CROSSTABS ethgrp BY insult
       /CELLS count row
       /STATISTICS CHISQ PHI.

* Examine the 'ethgrp' variable again.

FREQUENCIES ethgrp.

* Group the 'mixed' category with the 'Chinese and Other' category.

RECODE ethgrp (2=5).

* Add new labels to the categories to reflect the changes made.

VALUE LABELS ethgrp 
    1 "White"
    3 "Asian / Asian British"
    4 "Black / Black British"
    5 "Chinese / Other / Mixed".

* Examine the new 'ethgrp' variable.

FREQUENCIES ethgrp.

* Undertake the chi-squared test.

CROSSTABS ethgrp BY insult
       /CELLS count row
       /STATISTICS CHISQ PHI.


****************************************************************************************************
* SECTION 3: CHI-SQUARED TEST (NON-SIGNIFICANT RESULTS)

* Research Question: Is social class identity associated with perception of the main.
* cause of crime?

* Examine the 'class' variable.

FREQUENCIES class.

* Examine the 'cause' variable.

FREQUENCIES cause.

* Undertake the chi-squared test.

CROSSTABS class BY cause
       /CELLS count row
       /STATISTICS CHISQ PHI.


****************************************************************************************************
* SECTION 4: INDEPENDENT PRACTICE

* Examine your first variable.


* Examine your second variable.


* Undertake the chi-squared test.


****************************************************************************************************
* End of File.

