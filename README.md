A Complete Guide to Database Normalization in SQL
================

### Tackle messy tables head-on with PostgreSQL.

#### Overview

Repo for Towards Data Science article [“A Complete Guide to Database
Normalization in SQL”](https://towardsdatascience.com/a-complete-guide-to-database-normalization-in-sql-6b16544deb0) by Emily Burns. Includes SQL files written
to demonstrate facets of relational database normalization with the
synthetic ‘Northern\_California\_Therapists’ dataset.

#### Files

**/dataset\_synthesis folder/**

**table\_creation.sql**- synthesizing ‘Northern\_California\_Therapists’
database  
**fill\_tables.sql**- filling ‘Northern\_California\_Therapists’
database tables with mock data

**/normal\_forms folder/**

**1nf\_queries.sql**- SQL used to update tables into first normal form  
**2nf\_queries.sql**- SQL used to update tables into second normal
form  
**3nf\_queries.sql**- SQL used to update tables into third normal form

**/example\_queries folder/**

**phone\_eda\_query.sql**- SQL used to look at distribution of phone
numbers across each hospital and therapist  
**update\_sid\_michaels.sql**- SQL used to update therapist’s location

#### Tools

-   [PostgreSQL server](https://www.postgresql.org/)
-   [pgAdmin development platform](https://www.pgadmin.org/)

*NOTE: normalization is applicable to all SQL servers. Chosen tools are
indicative of author’s personal preference only. For help installing
either PostgreSQL or pgAdmin on your own local device, please refer to
the information posted on the provided tool’s respective website)*
