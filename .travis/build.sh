sed -i 's/name="pytorch_transformers"/name="pytorch_transformers_nightly_unofficial"/g' setup.py
sed -i -r 's/version="(.+?)"/version="\1.dev'`date -u "+%Y%m%d%H%M"`'"/g' setup.py

git commit -am "Tag Nightly Version."

python setup.py sdist bdist_wheel
