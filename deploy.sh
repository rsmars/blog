git add .
git commit -m "auto deploy"
git push origin master
cd themes/hueman
git pull
cd ../../
hexo clean
hexo d -g
