# Database to ML Pipeline
This is a a demonstration of a data engineering pipeline. Starting with defining a database on a Docker container, data is cleaned and inserted, using Python scripts. Then, the data is queried and organized to be useful to an arbitrary machine learning model.

Load the database into a Docker container by running the following command:

```
bash buildDockerDB.sh
```

[Essay data source](https://drive.google.com/file/d/10U558k6ocLeIRIwapDH-IqXjq0neK1R7/view?usp=share_link), a redirect from [this repo](https://github.com/scrosseye/persuade_corpus_2.0).
