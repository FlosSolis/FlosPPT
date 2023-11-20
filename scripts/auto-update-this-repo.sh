currentdate=$(date +%Y-%m-%d_%H:%M:%S)
git add .
git commit -m $currentdate" update"
git push $(cat $MYSLIDE_SCRIPT/remote_name.txt) master --force

