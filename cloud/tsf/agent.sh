set -e
cd $HOME 
if [ -f tsf-agent/uninstall ]; then
	chmod +x tsf-agent/uninstall
	tsf-agent/uninstall
fi 
if [ -f tsf-agent/ops/uninstall.sh ]; then
	chmod +x tsf-agent/ops/uninstall.sh
	tsf-agent/ops/uninstall.sh
fi 
rm -rf tsf-agent* 
wget http://169.254.0.77:8100/tsf/component/tsf-agent.tar.gz
tar --no-same-owner -xzf tsf-agent.tar.gz
chmod +x tsf-agent/ops/install.sh
tsf-agent/ops/install.sh