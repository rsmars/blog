echo -e "\033[32m 更新themes文件 \033[0m"
cd themes/hueman
git pull
cd ../../
echo -e "\033[32m 清理hexo文件 \033[0m"
hexo clean
echo -e "\033[32m 部署静态博客 \033[0m"
hexo d -g
echo -e "\033[32m 备份hexo系统 \033[0m"
git add .
git commit -m "auto deploy"
git push origin master
