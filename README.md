## Pewlett-Hackard Retirement Forecast

### Overview of the analysis
Pewlett-Hackard (PH) is a large company employing several thousand staff. PH has been around for decades and many employees have been with the company just as long. Given the longevity of the company and of the staff, PH anticipates that a large cohort will be retiring in the next several years. The purpose of this analysis is to determine the number of employees eligible for retirement and the roles held by these people. With this information, PH can better anticipate future hiring needs and proactively staff up and train others to replace employees exiting for their next chapter - retirement! Along with Bobby, my colleague at PH, we are analysizing the data to present to management in preparation of this anticipated exodus, the "silver tsunami."

### Results 
#### Deliverable 1:
Our initial focus is to identify those employees that are likely to retire based on date of birth. We filtered employees who were born between January 1, 1952 and December 31, 1955 by their titles. We narrowed this filtered list to only include those staff currently with the company and further to their current title as many staff have changed positions during their tenure. This analysis provided both a list of staff by their current titles anticipated to retire by their birthdate as well as a count of staff by title.

The table below provides a count (starting with the highest number) of staff by title that are expected to retire. 
![image](Data\D1Table.png)

The .csv file entitled 'unique_titles.csv' provides names of those employees that are likely to retire. Fields include the following:
![image](Data\D1Sum.png)

#### Deliverable 2:
Bobby and I don't want to present the first analysis without presenting solutions or ideas to help PH navigate this "silver tsunami".  With this in mind, we're identifying the next generation of senior staff members. This includes those born about 10 years later than those likely to retire soon; these staff were born between January 1, 1965 and December 31, 1965. We created a data table and exported a .csv file (mentorship_eligibility.csv) including staff names, employment timeframe, and titles. 

High-level points to consider:
1. In total, PH should begin planning for the exit of 72,458 employees. 
2. PH should anticipate the retirement of a significant number of senior staff. Approximately 25,000 Senior Engineers as well as 25,000 Senior Staff will likely retire in the near future.
3. Looking at the counts of those likely to retire based on date of birth, it seems there are a multitude of Senior Engineers and Senior Staff. It is interesting that there are so few Managers (2). PH should investigate this and ensure the appropriate leadership structure is in place to navigate this transition. It will take much effort to organize and communication will be very important. 
4. 1,549 staff were born in 1965 and are likely candidates based on this to be eligible for mentorship. This is too small of a percentage (2%) given the expected number of those expected to retire (72,458).

### Summary
This analysis revealed that the upcoming "silver tsunami" is realistic. There are 10s of 1000s of employees that will likely retire in the next few years based on date of birth. Given this, leadership needs to proactively map out a plan to replace the retiring workforce to ensure that their knowledge is adequately transferred. 

Based on number of employees alone, over 70,000 individuals will likely retire. The mentorship pipeline will help but it will need to expand to include younger people. 

It is worth considering what staff positions will be required given PH's future business plans. Should PH simply replace staff that are retiring or will the business shift focus and the staff needed may have different experience than those exiting?

If PH elects to simply replace those likely to retire, they will need to fill 72,458 roles. These staff fall into 7 categories or titles with Senior Engineer and Senior Staff being highest by sheer number of staff.

Based on counts alone, there are enough qualified retirement-ready employees to train the next generation. The issue is more that PH needs to mentor a larger cohort of younger staff to ensure adequate transition of knowledge. If PH expands the mentorship program to include staff born between January 1st, 1962 and December 31, 1965, there are over 70,000 current staff. Count summarized in the table below with code demonstrating the quick summary of potential mentorship eligible staff in thsi age group.

![image](Data\60s.png)
SELECT COUNT (e.emp_no)
FROM employees as e
WHERE (e.birth_date BETWEEN '1962-01-01' AND '1965-12-31');