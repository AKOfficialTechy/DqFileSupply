if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/akashdq/DqFileDonor.git /DqFileDonor
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /DqFileDonor
fi
cd /DQ-The-File-Donor
pip3 install -U -r requirements.txt
echo "Starting DqFileDonor...."
python3 bot.py
