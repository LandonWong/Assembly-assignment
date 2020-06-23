time = $(date "+%Y/%m/%d %H:%M:%S")
echo $time
git add --all
git commit -m "Update project $time"
