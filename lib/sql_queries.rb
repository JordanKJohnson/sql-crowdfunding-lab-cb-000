# Write your sql queries in this file in the appropriate method like the example below:
#
# def select_category_from_projects
# "SELECT category FROM projects;"
# end

# Make sure each ruby method returns a string containing a valid SQL statement.

def selects_the_titles_of_all_projects_and_their_pledge_amounts_alphabetized_by_name
"SELECT projects.title,SUM(pledges.amount) from projects INNER JOIN pledges on projects.id = pledges.project_id group by projects.title order by title asc;"
end

def selects_the_user_name_age_and_pledge_amount_for_all_pledges_alphabetized_by_name
"SELECT users.name,users.age,SUM(pledges.amount) from projects INNER JOIN pledges on projects.id = pledges.project_id INNER JOIN users on users.id = pledges.user_id group by users.id order by users.name asc;"
end

def selects_the_titles_and_amount_over_goal_of_all_projects_that_have_met_their_funding_goal
"SELECT projects.title,(SUM(pledges.amount)) as raised FROM projects INNER JOIN pledges on projects.id = pledges.project_id GROUP BY projects.id HAVING raised > projects.funding_goal;"
end

def selects_user_names_and_amounts_of_all_pledges_grouped_by_name_then_orders_them_by_the_amount_and_users_name
"SELECT users.name,SUM(pledges.amount) from users INNER JOIN pledges on pledges.user_id = users.id GROUP BY pledges.user_id ORDER BY pledges.amount desc;"
end

def selects_the_category_names_and_pledge_amounts_of_all_pledges_in_the_music_category
"SELECT projects.category,pledges.amount FROM projects INNER JOIN pledges on pledges.project_id = projects.id WHERE projects.category = 'music';"
end

def selects_the_category_name_and_the_sum_total_of_the_all_its_pledges_for_the_books_category
"SELECT projects.category,SUM(pledges.amount) FROM projects INNER JOIN pledges on pledges.project_id = projects.id WHERE projects.category = 'books';"
end
