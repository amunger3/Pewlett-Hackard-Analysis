#  Pewlett Hackard Analysis

## Overview
This analysis uses a number of employee information data tables stored originally as CSV files. The files are imported into a PostgreSQL database for the purpose of preparing an analysis to be ready for a wave of upcoming retirements. Retiree candidates are identified and their information is extracted and exported into multiple CSVs to aid with the company's upcoming retirement wave.

### Data
All data is in the `Data` folder. The database schema can be found in the `schema.sql` file. The queries that generate the analysis can be found in the `Employee_Database_challenge.sql` file with accompanying commentary on their purpose.

## Results
The following table shows the retirees by job title.
![Count by Title](Images/count_by_title.png)
- 2 Managers are eligible to retire and a plan must be developed to either train within or setup an outside hiring process
- A vast number of Senior Staff are eligible for retirement. The current breadth of regular staff under reitement age should be able to cover the vacancies, but a training regiment must be implemented, preferably involving the expertise of the retiring Senior Staff.

The following table shows the eligible (born in 1965) mentors by title.
![Mentors by Title](Images/mentor_titles.png)
- Over 500 Senior Staff are mentor-eligible, which eases a huge burden on the training process for the new Senior Staff that will need to be promoted.
- There are no mentor-eligible managers. The replacement of the 2 retiring managers will have to utilize another training process or an outside hire with experience in the same role.

## Summary

