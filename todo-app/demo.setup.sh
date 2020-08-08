# First setup the project & Database
oc new-project quarkus-demo
oc apply -f database/mysql

# Log into the terminal of the mysql pod
# Execute the command to become root and enter the password
mysql -u root

# Run the database script present in the "database/mydql/database.script.sql"

# Ready to Start the demo
./demo.start.sh