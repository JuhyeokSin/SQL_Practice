/* ProjectList
Your boss wants to identify the successful projects running in your company, 
so he asked you to prepare a list of all the currently active projects and 
their average monthly income.

You have stored the information about these projects in a simple database with 
a single Projects table that has five columns:

- internal_id: the company's internal identifier for the project;
- project_name: the official name of the project;
- team_size: the number of employees working on the project;
- team_lead: the name of the project manager;
- income: the average monthly income of the project.

create another table by removing the internal_id and team_size columns from the 
existing Projects table. Return it sorted by internal_id in ascending order.
*/

SELECT project_name, team_lead, income 
FROM Projects
ORDER BY internal_id ASC;