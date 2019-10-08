set -e

npm run build

cd dist

git init
git add -A
git commit -m 'deploy'

git push -f git@github.com:alucidwolf/Masonry-Photo-Gallery.git master:gh-pages

cd -