### LiquiBase Sample

- Directory `ddl` contains individual files for the Data Definition for creating or Altering of tables.
- Directory `dml` contains individual files for any data manipulations or insertion to the tables.
- File `liquibase.properties` contains the jdbc connection url to snowflake, username and other config properties.
- File `liquibase-master.xml` includes references to individual files for DDL and DML, the individual files are executed in the order in which they are mentioned in the master file. 

### Workflow

- DDL or DML: 
  - For any new DDL or DML create a new file in directory `ddl` or `dml`. 
  - Create a new `changeset` and tag it with `author:id`, this will act as a version for the file which can be used to identify and track the applied version on any database installation. 
  - If update is executed on the same database instance again, liquibase will skip those versions which are  already applied in the database.
  - If any new change is done in any existing ddl or dml and if we just want to apply that change on the existing database then we can do two things:
    - Bump the version(id) defined in the changeset.
    - Add a `runOnChange` attribute in the changeset, doing so, `update` will first check if there is any change and if there is then it will be executed.  
- For versions in the `changeset` we can use a major and a minor version, where major version can be a release version and minor version can be specific to that changeset.
