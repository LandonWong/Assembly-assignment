# ! bin/sh
time = $(date)
echo $time
git add --all
git commit -m "Update project $time"
