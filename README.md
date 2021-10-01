# __Pewlett Hackard Analysis__

## __Overview__
Based on our initial analysis, Pewlett Hackard will have numerous retiring employees. In order to help the retiring employees' future, the company wants to intoduce a Mentorship program wherein eligible retiring employees will step back into a part-time role and mentor employees. Our analysis will determine how many retirees, according to their seniorty, will be eligible for the mentorship program.

## __Results__
## Retirement Pool
Firstly, we need to create our retiree pool together with their respective titles. We extracted a sample from Pewlett Hackard's employee population _(employees.csv)_ of people born between __January 1, 1965 & December 31, 1965__. We have compiled this data into ___retirement_titles.csv___ 

With some employees having multiple titles within the company given their years of service (e.g. promotions, lateral movements, etc.), we use the DISTINCT ON fuction to eliminate their old titles and only consider their most recent ones. This has been compiled into the ____unique_titles.csv____ file. We then categorized and grouped retiring employees with their respective work titles. With this clean data,we can see retired and retiring employees without double booking an Employee's No.

<br>

insert retirement titles image


</br>

Here we can see that a total of __90,398__ employees have retired (_based on their to_date_) or will be retiring (_only for current employees_) soon.

## Mentorship Eligibility Pool
For a retiring employtee to be eligible for mentorship, we have set our parameters as having their birth years be __1965__ and are current employees. In our analysis only a total of __1,549__ employees are eligible for mentors. See image below for the compilation seen in __mentorship_eligibility.csv__ and their groupings according to titles. See image below for a breakdown of mentors accodring to their titles and its count.

<br>

<div align="center"> 

![alt-text-1](https://raw.githubusercontent.com/RobC30/School_District_Analysis/main/Resources/ths_old.PNG) ![alt-text-2](https://raw.githubusercontent.com/RobC30/School_District_Analysis/main/Resources/ths_nans.PNG) 

</div>

## __Summary__
If we are only to consider current retiring employees (birth years are from 1952-1955 & to_date = '9999'-01-01), there will exactly be __72,458__ positions needed to be filled. With only __1,549__ available mentors, it has a ratio of only __2%__. This will not be enough to jumpstart the company's mentorship program. 

It is highly recommended to increase the range of our mentors' birth years to help the transition. See image below for additional queries done:

insert addtl qury image

