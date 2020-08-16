# First setup the project & Database
oc new-project quarkus-demo
oc apply -f database/mysql

# Log into the terminal of the mysql pod
# Execute the command to become root and enter the password
# The password is "demo"
mysql -u root

# TODO
# Update the instruction to log into the mysql from command line

# Run the database script present in the "database/mydql/database.script.sql"

# Ready to Start the demo
./demo.start.sh

# TODO
# Include instructions for the testing
# Include instructions for the scaling