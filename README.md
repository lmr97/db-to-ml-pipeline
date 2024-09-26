# Database to ML Pipeline
This is a a demonstration of a data engineering pipeline. Starting with defining an Oracle database on a Docker container, data is cleaned and inserted, using Python scripts. Then, the data is queried and organized to be useful to an arbitrary machine learning model. To demo the functionality of this repository, follow these steps:

## NOTE: this project has yet to be tested on other machines. Feel free to create an issue.

0. Install [Docker](https://docs.docker.com/engine/install/) if you have not already, as well as [Oracle's database API](https://docs.oracle.com/en-us/iaas/autonomous-database-serverless/doc/connecting-python-prepare.html). 

1. Change your working directory to the folder where you downloaded the repository.
 
2. Run `clean_and_prep.sh` to clean the data and format it into the expected tables

3. Load the database into a Docker container by running `buildDockerDB.sh`

4. Now you can use the core of the project, `DataOrganizer.py`, which can be imported into a Python script to output model-ready data.

The container cleanup has been automated with `dockerCleanup.sh`.

Make sure to download from its source the data before you try it out; Github did not allow files of their size in the repo. You'll probably need to rename the file to `persuade_2.0_human_scores.csv`, and place it in the `Clean_and_org` folder, as that is what the scripts are looking for.
[Essay data source](https://drive.google.com/file/d/10U558k6ocLeIRIwapDH-IqXjq0neK1R7/view?usp=share_link), a redirect from [this repo](https://github.com/scrosseye/persuade_corpus_2.0).
