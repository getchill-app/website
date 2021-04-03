
# Cleanup old assets
find ../chill-server/public/docs -mtime +90 -exec rm {} \;
find ../chill-server/public/assets -mtime +90 -exec rm {} \;

yarn vuepress build

cp -R .vuepress/dist/* ../chill-server/public