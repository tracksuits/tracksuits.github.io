# Make packages
rm Packages
rm Packages.gz
dpkg-scanpackages Files/ > Packages
gzip -k Packages

# Deploy to github
git -C ../
git add .
git commit -m "$1"
git push origin master
git push origin2 master