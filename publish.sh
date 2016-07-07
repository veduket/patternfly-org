#/bin/sh

# User info
git config --global user.name "Admin"
git config --global user.email "patternfly@redhat.com"

# Add upstream authentication token
git remote add upstream https://$AUTH_TOKEN@github.com/patternfly/patternfly-org.git
git fetch

# Commit generated files
git add source/assets/css source/components --force
git commit -m "Added files generated by Travis build"

# Push to remote branch
git push upstream $TRAVIS_BRANCH:$TARGET_BRANCH --force

exit $?
