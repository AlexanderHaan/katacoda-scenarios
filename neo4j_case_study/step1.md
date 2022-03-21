# Preparing the environment

Please wait a moment, while the katacoda environment is starting. In the meantime you can read this text to understand what is happening. At first the right Neo4j version with some modification will be installed. In this version of Neo4j are some files, like the data you will use and a script to help you to import this data, that are not included in the default installation of Neo4j. When you see the text `YOU CAN NOW START` on the terminal window the installation and all configurations steps have finished and you can move on with "Import data".

# Import data

Now you are in the terminal of your Neo4j server. At this moment your Neo4j-database is empty. To fix it you are going to import some data that you will use later. This data is saved in the CSV-file `import/movies.csv`. To facilitate the import for you I created a script that will automatically import the data. To run this script run following command:

`./import_data.sh`{{execute}}

This may take 1-2 minutes. This data has information about movies e.g. the movie title, the director, the rating. The CSV-file is about 1MB big, so it may take some time. In the next step you will learn how to interpret tha data in a Neo4j database and how it is organized.