if [ "$GIT_BRANCH" = "origin/dev" ]; then
  docker login -u razack619 -p Abdul@1998
  docker build -t react:v1  .
  docker tag react:v1 razack619/dev:v2
  docker push razack619/dev:v2
elif [ "$GIT_BRANCH" = "origin/master" ] && [ `git log --grep="Merge branch 'dev'" | grep -c "Merge"` != "0" ]; then
  docker login -u razack619 -p Abdul@1998
  docker build -t react:v1  .
  docker tag react:v1 razack619/prod:v2 
  docker push razack619/prod:v2
 else
  echo "No build required."
fi
