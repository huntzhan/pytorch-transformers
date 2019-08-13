git config --global user.email "travis@travis-ci.org"
git config --global user.name "Travis CI"

git remote add upstream https://github.com/huggingface/pytorch-transformers.git
git fetch upstream
git pull upstream master

git remote add github https://${GH_PAT}@github.com/huntzhan/pytorch-transformers-nightly-unofficial.git
git push github master