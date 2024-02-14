In this project, we initiated our work with relational databases, where I commenced practicing fundamental SQL data definitions and manipulation techniques, including subqueries and the utilization of functions.
Tasks 📄

    List Databases
        0-list_databases.sql: MySQL script to enumerate all databases.

    Create a Database
        1-create_database.sql: MySQL script to establish the hbtn_0c_0 database.

    Delete a Database
        2-remove_databases.sql: MySQL script to remove the hbtn_0c_0 database.

    List Tables
        3-list_tables.sql: MySQL script to list all tables.

    First Table
        4-first_table.sql: MySQL script to create a table named first_table.
        Description:
            id: INT
            name: VARCHAR(256)

    Full Description
        5-full_table.sql: MySQL script to display the complete description of the first_table.

    List All in Table
        6-list_values.sql: MySQL script to list all rows in the first_table.

    First Add
        7-insert_value.sql: MySQL script to insert a new row into the first_table.
        Description:
            id = 89
            name = Best School

    Count 89
        8-count_89.sql: MySQL script to count the number of records with id = 89 in the first_table.

    Full Creation
        9-full_creation.sql: MySQL script to create and populate a table named second_table.
        Description:
            id: INT
            name: VARCHAR(256)
            score: INT
        Records:
            id = 1, name = "John", score = 10
            id = 2, name = "Alex", score = 3
            id = 3, name = "Bob", score = 14
            id = 4, name = "George", score = 8

    List by Best
        10-top_score.sql: MySQL script to list the score and name of all records in the second_table in descending order of score.

    Select the Best
        11-best_score.sql: MySQL script to list the score and name of all records with a score >= 10 in the second_table, ordered by descending score.

    Cheating is Bad
        12-no_cheating.sql: MySQL script to update Bob's score to 10 in the second_table.

    Score Too Low
        13-change_class.sql: MySQL script to remove all records with a score <= 5 in the second_table.

    Average
        14-average.sql: MySQL script to compute the average score of all records in the second_table.

    Number by Score
        15-groups.sql: MySQL script to list the score and the number of records with the same score in the second_table, ordered by descending count.

    Say My Name
        16-no_link.sql: MySQL script to list the score and name of all records in the second_table in descending order of score, excluding rows without a name value.

    Go to UTF8
        100-move_to_utf8.sql: MySQL script to convert the hbtn_0c_0 database to UTF8.

    Temperatures #0
        101-avg_temperatures.sql: MySQL script to display the average temperature (Fahrenheit) by city in descending order.

    Temperatures #1
        102-top_city.sql: MySQL script to display the three cities with the highest average temperature from July to August in descending order.

    Temperature #2
        103-max_state.sql: MySQL script to display the maximum temperature of each state ordered by state name.

Dump File 🐬

    Tasks 101-103 queries from the database temperatures.sql.


