* Encoding: UTF-8.
****************************************************************************************************
* Social Research Methods.
* Computer Lab 1.
* Introduction to SPSS.
****************************************************************************************************
* Before you run the code below you should ensure you have the SRM Practice Data open.
* This is available from the VLE.

* Univariate Descriptive Statistics for Categorical Variables.

FREQUENCIES sex.

FREQUENCIES marital.


* Univariate Descriptive Statistics for Scale Variables.

FREQUENCIES age
    /FORMAT NOTABLE
    /STATISTICS=MEAN MEDIAN MODE RANGE.

FREQUENCIES age
    /FORMAT NOTABLE
    /STATISTICS=MEAN MEDIAN MODE RANGE MIN MAX.

FREQUENCIES mathscore
    /FORMAT NOTABLE
    /STATISTICS=MEAN MEDIAN MODE RANGE MIN MAX.


****************************************************************************************************
* End of File.



