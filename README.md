# Youth On Record - Empowerment Through Creative Education

[YOR logo](./images/yor_darklogo_cropped.png)

### Link: Youthonrecord.org

YOR is a Denver based non-profit that I have been involved with for many years. They have been big supporters of the at-risk youth community as well as local music, and were there for my band Los Mocochetes when we first got our start in the spring of 2017, allowing us to rehearse in their state of the art Youth Media Studio for several years. Originally founded by members of hip-hop group the Flobots and their venture into service with Flobots.org, Youth On Record has partnered with schools, youth facilities, libraries, and many others, impacted over 1,000 youth annually.

While my involvement as a volunteer has taken on a few different forms over the years, including tuning and maintaining drums, performing at the annual block party, and eventually taking on the digital mapping intiative (See the prototype on stackblitz here: https://stackblitz.com/edit/react-sja6pd) to build an interactive map to showcase their community impact, the goal of this repository will be to construct them a PostgreSQL database to store their data moving forward. This will be deployed to Amazon Redshift.

### YOR Database Plan and Architecture:

Currently, YOR only has data for their donors stored in database, and fairly recently at that. In addition to this, I am hoping to construct the following tables:

- Workshops Table to store the name, location/address, and geographic coordinates of each partnering organization, along with type (School, Library, Youth facility etc)
- Workshop information such as number of sessions, contract duration etc. As many contracts are recurring for each school year, these would be linked to each partnering organization's id
- Volunteer Table to store info on the teachers who facilitated the workshops, as well as some info on their music, links to social media, and their location etc
- Partner Artists table - distinct from the Volunteer table as many musicians from around the globe make donations to YOR, or as they pass through Denver while on tour some will record at the Youth Media Studio, or donate a portion of ticket sales etc. We do have plans to build a separate wordlwide map for the partner artists so this will likely contain location data
- Students table to store info on workshop participants, their demographics etc
- workshop survey table to store results from pre and post-surveys to collect data from the students

In addition to the maps and database, a final project will be to build a Python application that will allow YOR volunteers to scan paper evaluation forms and push data in PostgreSQL...this is currently a tedious manual process at the end of each school year.
