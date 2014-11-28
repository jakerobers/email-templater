#Data Store Plan


##Postgres

Postgres will model the following:
 * User

###Tables
####User
 * user_id (index)
 * email (varchar 80)
 * username (varchar 30)
 * password (varchar 50)
 * mailing_list (BOOL)
 * phone_number (varchar 11)