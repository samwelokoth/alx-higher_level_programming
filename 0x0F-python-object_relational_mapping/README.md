In this project, I gained knowledge about the concept of object-relational mapping (ORM) and its application in database scripting. I acquired proficiency in utilizing libraries such as MySQLdb and SQLAlchemy to interact with MySQL databases effectively.

## Test Cases ✅

* [tests](./tests): This directory contains SQL and Python scripts designed to set up test tables for all project files, generously provided by ALX.

## Tasks 📃

* **Task 0: Retrieve all states**
  * [0-select_states.py](./0-select_states.py): This Python script utilizes MySQLdb to fetch and display all states stored in the database `hbtn_0e_0_usa`.
  * Usage: `./0-select_states.py <mysql_username> <mysql_password> <database_name>`.
  * The results are sorted in ascending order based on the `states.id`.

* **Task 1: Filter states**
  * [1-filter_states.py](./1-filter_states.py): This Python script employs MySQLdb to list all states whose names start with the letter `N` from the database `hbtn_0e_0_usa`.
  * Usage: `./1-filter_states.py <mysql_username> <mysql_password> <database_name>`.
  * The results are sorted in ascending order based on the `states.id`.

* **Task 2: Filter states by user input**
  * [2-my_filter_states.py](./2-my_filter_states.py): This Python script utilizes MySQLdb to display all states matching a user-provided name in the `states` table of the `hbtn_0e_0_usa` database.
  * Usage: `./2-my_filter_states.py <mysql_username> <mysql_password> <database_name> <state_name_searched>`.
  * The results are sorted in ascending order based on the `states.id`, and string formatting is utilized to construct the SQL query.

* **Task 3: Protection against SQL Injection**
  * [3-my_safe_filter_states.py](./3-my_safe_filter_states.py): This Python script uses MySQLdb to exhibit all states matching a given name from the `states` table of the `hbtn_0e_0_usa` database, ensuring protection against SQL injection attacks.
  * Usage: `./3-my_safe_filter_states.py <mysql_username> <mysql_password> <database_name> <state_name_searched>`.
  * The results are sorted in ascending order based on the `states.id`.

* **Task 4: List cities by states**
  * [4-cities_by_state.py](./4-cities_by_state.py): This Python script utilizes MySQLdb to list all cities from the `hbtn_0e_4_usa` database.
  * Usage: `./4-cities_by_state.py <mysql_username> <mysql_password> <database_name>`.
  * The results are sorted in ascending order based on the `cities.id`.

* **Task 5: List all cities of a state**
  * [5-filter_cities.py](./5-filter_cities.py): This Python script employs MySQLdb to list all cities of a specified state from the `hbtn_0e_4_usa` database.
  * Usage: `./5-filter_cities.py <mysql_username> <mysql_password> <database_name>`.
  * The results are sorted in ascending order based on the `cities.id`.

* **Task 6: Introduction to ORM - First state model**
  * [model_state.py](./model_state.py): This Python module defines a class named `State` that inherits from SQLAlchemy's `Base` class and maps to the MySQL table `states`.

* **Task 7: Retrieving all states via SQLAlchemy**
  * [7-model_state_fetch_all.py](./7-model_state_fetch_all.py): This Python script employs SQLAlchemy to retrieve all `State` objects from the `hbtn_0e_6_usa` database.
  * Usage: `./7-model_state_fetch_all.py <mysql_username> <mysql_password> <database_name>`.
  * The results are sorted in ascending order based on the `states.id`.

* **Task 8: Retrieving the first state via SQLAlchemy**
  * [8-model_state_fetch_first.py](./8-model_state_fetch_first.py): This Python script utilizes SQLAlchemy to print the first `State` object from the `hbtn_0e_6_usa` database, ordered by `states.id`.
  * Usage: `./8-model_state_fetch_first.py <mysql_username> <mysql_password> <database_name>`.
  * If the `states` table is empty, it prints `Nothing`.

* **Task 9: Retrieving states containing the letter 'a' via SQLAlchemy**
  * [9-model_state_filter_a.py](./9-model_state_filter_a.py): This Python script employs SQLAlchemy to list all `State` objects containing the letter 'a' from the `hbtn_0e_6_usa` database.
  * Usage: `./9-model_state_filter_a.py <mysql_username> <mysql_password> <database_name>`.
  * The results are sorted in ascending order based on the `states.id`.

* **Task 10: Retrieving a state by name via SQLAlchemy**
  * [10-model_state_my_get.py](./10-model_state_my_get.py): This Python script utilizes SQLAlchemy to print the `id` of the `State` object with a name matching the provided argument from the `hbtn_0e_6_usa` database.
  * Usage: `./10-model_state_my_get.py <mysql_username> <mysql_password> <database_name> <state_searched_name>`.
  * It displays the `id` of the matched `State`, and if no match is found, it prints `Not found`.

* **Task 11: Adding a new state via SQLAlchemy**
  * [11-model_state_insert.py](./11-model_state_insert.py): This Python script employs SQLAlchemy to add the `State` object "Louisiana" to the `hbtn_0e_6_usa` database.
  * Usage: `./11-model_state_insert.py <mysql_username> <mysql_password> <database_name>`.
  * It prints the `id` of the newly created `State`.

* **Task 12: Updating a state via SQLAlchemy**
  * [12-model_state_update_id_2.py](./12-model_state_update_id_2.py): This Python script utilizes SQLAlchemy to change the name of the `State` object with `id = 2` in the `hbtn_0e_6_usa` database to "New Mexico".
  * Usage: `./12-model_state_update_id_2.py <mysql_username> <mysql_password> <database_name>`.

* **Task 13: Deleting states via SQLAlchemy**
  * [13-model_state_delete_a.py](./13-model_state_delete_a.py): This Python script employs SQLAlchemy to delete all `State` objects whose names contain the letter 'a' from the `hbtn_0e_6_usa` database.
  * Usage: `./13-model_state_delete_a.py <mysql_username> <mysql_password> <database_name>`.

* **Task 14: Introduction to City model**
  * [model_city.py](./model_city.py): This Python module defines a class named `City` that inherits from SQLAlchemy's `Base

` class and maps to the MySQL table `cities`.
    * It includes a class attribute `state_id`, serving as a foreign key to `states.id`.
  * [14-model_city_fetch_by_state.py](./14-model_city_fetch_by_state.py): This Python script employs SQLAlchemy to list all `City` objects from the `hbtn_0e_14_usa` database.
  * Usage: `./14-model_city_fetch_by_state.py <mysql_username> <mysql_password> <database_name>`.
  * The results are sorted in ascending order based on the `cities.id`.

* **Task 15: Establishing a relationship between State and City models**
  * [relationship_state.py](./relationship_state.py): This Python module defines a class `State` that inherits from SQLAlchemy's `Base` class and maps to the MySQL table `states`.
    * It is identical to the `State` class defined in [model_state.py](./model_state.py).
    * It includes a class attribute `cities`, representing a relationship with the `City` class. Upon deletion of a `State` object, all associated `City` objects are also deleted. `State` objects are back-referenced to `City` objects as `state`.
  * [relationship_city.py](./relationship_city.py): This Python module defines a class `City` that inherits from SQLAlchemy's `Base` class and maps to the MySQL table `cities`.
    * It is identical to the `City` class defined in [model_city.py](./model_city.py).
  * [100-relationship_states_cities.py](./100-relationship_states_cities.py): This Python script employs SQLAlchemy to add the `State` "California" with the `City` "San Francisco" to the `hbtn_0e_100_usa` database.
  * Usage: `./100-relationship_states_cities.py <mysql_username> <mysql_password> <database_name>`.
  * It utilizes the `cities` relationship for all `State` objects.

* **Task 16: Listing states and their associated cities**
  * [101-relationship_states_cities_list.py](./101-relationship_states_cities_list.py): This Python script employs SQLAlchemy to list all `State` objects and their corresponding `City` objects from the `hbtn_0e_101_usa` database.
  * Usage: `./101-relationship_states_cities_list.py <mysql_username> <mysql_password> <database_name>`.
  * It utilizes the `cities` relationship for all `State` objects.
  * The results are sorted in ascending order based on `states.id` and `cities.id`.

* **Task 17: Listing all cities with associated states**
  * [102-relationship_cities_states_list.py](./102-relationship_cities_states_list.py): This Python script employs SQLAlchemy to list all `City` objects from the `hbtn_0e_101_usa` database along with their associated `State` objects.
  * Usage: `./102-relationship_cities_states_list.py <mysql_username> <mysql_password> <database_name>`.
  * It utilizes the `state` relationship to access the `State` objects linked to `City` objects.
  * The results are sorted in ascending order based on the `cities.id`.
