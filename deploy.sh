echo -e "\033[32m 更新themes文件 \033[0m"
cp themes/hueman/_config.yml ./themes_hueman_config.yml
cd themes/hueman
# git clone git@github.com:ppoffice/hexo-theme-hueman.git
git pull
cd ../../
echo -e "\033[32m 清理hexo文件 \033[0m"
hexo clean
echo -e "\033[32m 部署静态博客 \033[0m"
hexo d -g
echo -e "\033[32m 备份hexo系统 \033[0m"
git add .
if [$# == 0]
then
git commit -m "auto deploy"
else
git commit -m "auto deploy: $1"
fi
git push origin master
echo -e "\033[32m 发布完成 https://rsmars.github.io/blog/ \033[0m"
