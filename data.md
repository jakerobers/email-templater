#Data Store Plan


##Postgres

Postgres will model the following:
 * User - Used for authentication
 * EmailTemplate - All things related to templating emails
 * UserInfo - The users info that will be used to fill the email templates


###Tables

####User
 * user_id (index)
 * email (varchar 80)
 * username (varchar 30)
 * password (varchar 50)
 * mailing_list (BOOL)
 * phone_number (varchar 11)
 * last_visited (timestamp [no timezone])
 * created (timestamp [no timezone])
 * modified (timestamp [no timezone])

####EmailTemplate
 * email (text)
 * favorites (integer)
 * times_visited (integer)
 * created (timestamp [no timezone])
 * modified (timestamp [no timezone])

####UserInfo
 * user_id (integer)
 * first_name (varchar 30)
 * sur_name (varchar 50)
 * address (varchar 100)
 * city (varchar 50)
 * state (char 2)
 * company you work for (varchar 100)
 * position in company (varchar 100)
 * updated (timestamp [no timezone])
