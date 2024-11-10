# Database to ML Pipeline
This is a a demonstration of a data engineering pipeline. Starting with defining an Oracle database on a Docker container, a dataset of gradeschool essays is cleaned (using Python scripts) and inserted into the database (using SQL scripts run by a Bash script against the container). Then, the data is queried and organized to be useful to an arbitrary machine learning model. To demo the functionality of this repository, follow these steps:

0. Install [Docker](https://docs.docker.com/engine/install/) if you have not already.

1. Clone the repo, and change the working directory to where the repo was cloned 

```
git clone https://github.com/lmr97/db-to-ml-pipeline
cd db-to-ml-pipeline
```

2. Install the dependencies. You can use Poetry to install them in an auto-generated virtual environment with `poetry install`, or install the dependencies from the `requirements.txt` in the Python environment of your choice.

3. Download the essay data from its [source](https://drive.google.com/file/d/10U558k6ocLeIRIwapDH-IqXjq0neK1R7/view?usp=share_link), rename the file to `persuade_2.0_human_scores.csv`, and then move it into the `Clean_and_org` folder (the original repo with project information can be found [here](https://github.com/scrosseye/persuade_corpus_2.0)).
 
5. Run `clean_and_prep.sh` to clean the data and format it into the expected tables.

6. If on Linux, first start a superuser shell, otherwise just run `buildDockerDB.sh` to build a Docker image for an Oracle server, run a container, and load the database (root privileges are needed to run Docker commands on Linux). **This might take a while.**

6. Now you can use the core of the project, `DataOrganizer.py`, which can be imported into a Python script to output model-ready Pandas dataframes.

The container cleanup has been automated with `dockerCleanup.sh`.