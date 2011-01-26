<config>
<global var="language">
language=$(cat ~/.burg-manager/language)
echo $language
</global>
<img src="/usr/share/burg-manager/images/attention.png" align="center" /> 
<label>
qt=$(head -49 /usr/share/burg-manager/$language | tail -1)
echo $qt
qtt=$(head -50 /usr/share/burg-manager/$language | tail -1)
echo $qtt
</label>
<hlayout><button>
<title>
yes=$(head -51 /usr/share/burg-manager/$language | tail -1)
echo $yes
</title>
<code>
cd ~/.burg-manager/
wget http://www.sourceslist.eu/ccount/click.php?id=26
mv click.php\?id\=26 burg-manager.deb
sudo dpkg -i burg-manager.deb
a=$(pidof buc)
kill $a
burg-manager
</code>
</button>
<button>
<title>
no=$(head -52 /usr/share/burg-manager/$language | tail -1)
echo $no
</title>
<code>
bash /usr/share/burg-manager/killpop
</code>
</button>
</hlayout>
<label>
qtr=$(head -55 /usr/share/burg-manager/$language | tail -1)
echo $qt
qttr=$(head -56 /usr/share/burg-manager/$language | tail -1)
echo $qtt
</label>
</config>
