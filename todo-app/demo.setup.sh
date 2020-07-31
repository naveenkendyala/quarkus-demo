# First setup the project & Database
oc new-project quarkus-demo
oc apply -f database/mysql

# Run the database script present in the database.script.sql
# This needs to be run on the terminal of the MySQL Container

# Ready to Start the demo
