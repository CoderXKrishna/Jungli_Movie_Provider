if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/CoderXKrishna/Jungli_Movie_Provider.git /Jungli_Movie_Provider
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Jungli_Movie_Provider
fi
cd /Jungli_Movie_Provider
pip3 install -U -r requirements.txt
echo "Starting Jungli_Movie_Provider...."
python3 bot.py
