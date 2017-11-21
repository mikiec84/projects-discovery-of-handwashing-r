set -e
# Use this bash script to install non-R packages necessary for your project.

# For example
apt-get update
apt-get install -y libcurl4-openssl-dev libxml2-dev

DATADIR=/home/repl/datasets
ASSETURL=https://s3.amazonaws.com/assets.datacamp.com/production/project_49/datasets
FILES="monthly_deaths.csv yearly_deaths_by_clinic.csv ignaz_semmelweis_1860.jpeg
       project_image.png task_7_example_table.png"

mkdir -p $DATADIR
for FILE in $FILES
do
	wget -O $DATADIR/$FILE $ASSETURL/$FILE
done
