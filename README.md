# Mailserver
Send a message with attachment on a local server

Database is provided in the file named 10am.sql in the root.

Import the databse and run the project.

You can change the attachment limit by modifying php.ini file.

Try increasing the following values in php.ini, for example:


memory_limit = <your_value>

upload_max_filesize = <your_value>

post_max_size = <your_value>

ADDITIONAL INFORMATION:

If the upload_max_filesize is larger than post_max_size, you must increase post_max_size so that it is bigger than upload_max_size.

If the value of post_max_size is larger than memory_limit, you must increase memory_limit so that it is larger than post_max_size.
