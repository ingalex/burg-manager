<config>
<global>
cd /usr/share/burg-manager/
bash global
bash /usr/share/burg-manager/notifier
bash listaos >> ~/.burg-manager/os
bash listaiso >> ~/.burg-manager/listaiso
sed -i '/./!d' ~/.burg-manager/listaiso
sed -i '/./!d' ~/.burg-manager/os
</global>
<global var="language">
language=$(cat ~/.burg-manager/language)
echo $language
</global>
<label> echo "BURG-Manager v 1.1.0 by IngAlex & Canopus0003 & Tux10" </label>
<img src="/usr/share/burg-manager/images/logo.png" align="center" /> 

<tab>
<title>
tabtitle1=$(head -1 /usr/share/burg-manager/$language | tail -1)
echo $tabtitle1
</title>
<hlayout>
<label>echo " "</label>
<label>
t1=$(head -3 /usr/share/burg-manager/$language | tail -1)
echo $t1
</label>
<label>echo " "</label>
</hlayout>
<img src="/usr/share/burg-manager/images/install.png" align="center" />
<hlayout>
<label>echo " "</label>
<label>
p1=$(head -4 /usr/share/burg-manager/$language | tail -1)
echo $p1
</label>
<label>echo " "</label>
</hlayout>
<hlayout>
<label>echo " "</label>
<combobox var="disk" height="35">
mount | grep ^/dev | cut -d' ' -f1 | sed "s/[0-9]//g" | uniq > ~/.burg-manager/lol
cat ~/.burg-manager/lol
</combobox>
<button height="35">
<title>
b1=$(head -6 /usr/share/burg-manager/$language | tail -1)
echo $b1
</title>
<code>
sudo rm -rf ~/.burg-manager/disk 
echo $isotoremove >  ~/.burg-manager/disk 
bash /usr/share/burg-manager/installer
</code>
</button>
<label>echo " "</label>
<button height="35">
<title>
ex=$(head -62 /usr/share/burg-manager/$language | tail -1)
echo $ex
</title>
<code>
sudo burg-install $disk && sudo update-burg && buc success.mc
</code>
</button>
<button height="35">
<title>
help=$(head -69 /usr/share/burg-manager/$language | tail -1)
echo $help
</title>
<code>
buc help1.mc
</code>
</button>
<label>echo " "</label>
</hlayout>
<hlayout>
<label>echo " "</label>
<label>
p2=$(head -5 /usr/share/burg-manager/$language | tail -1)
echo $p2
</label>
<label>echo " "</label>
</hlayout>
<hlayout>
<label>echo " "</label>
<button height="55">
<title>
b2=$(head -7 /usr/share/burg-manager/$language | tail -1)
echo $b2
</title>
<code>
xterm -e "sudo burg-emu"
</code>
</button>
<label>echo " "</label>
</hlayout>
</tab>


<tab>
<title>
tabtitle2=$(head -2 /usr/share/burg-manager/$language | tail -1)
echo $tabtitle2
</title>
<tab>
<title>
tabtitlea2=$(head -63 /usr/share/burg-manager/$language | tail -1)
echo $tabtitlea2
</title>
<hlayout>
<label>
p3=$(head -8 /usr/share/burg-manager/$language | tail -1)
echo $p3
</label>
<combobox var="operativesystem">
cat ~/.burg-manager/os
</combobox>
<button>
<title>
b3=$(head -9 /usr/share/burg-manager/$language | tail -1)
echo $b3
</title>
<code>
sudo rm -rf ~/.burg-manager/defaultos 
echo $operativesystem >  ~/.burg-manager/defaultos 
bash /usr/share/burg-manager/sceltaos
</code>
</button>
</hlayout>
<label align="center" > 
echo "__________________________________________________________________________________"
</label> 
<hlayout>
<vlayout>
<label>
p4=$(head -10 /usr/share/burg-manager/$language | tail -1)
echo $p4
</label>
<combobox var="risoluzione">
rm -rf ~/.burg-manager/risoluzioni1
xrandr > ~/.burg-manager/risoluzioni1
sed -i '/DFP/d' ~/.burg-manager/risoluzioni1
sed -i '/Screen/d' ~/.burg-manager/risoluzioni1
sed -i '/CRT/d' ~/.burg-manager/risoluzioni1
awk '{print $1}' ~/.burg-manager/risoluzioni1 > ~/.burg-manager/risoluzioni
cat ~/.burg-manager/risoluzioni
</combobox>
<button height="35">
<title>
b4=$(head -11 /usr/share/burg-manager/$language | tail -1)
echo $b4
</title>
<code>
xterm -e "sudo sed -i '/GRUB_GFXMODE/d' /etc/default/burg ; echo "GRUB_GFXMODE="$risoluzione | sudo tee -a /etc/default/burg"
</code>
</button>
</vlayout>
<label> 
echo "|"
echo "|"
echo "|"
echo "|"
echo "|"
echo "|"
echo "|"
echo "|"
</label>
<vlayout>
<label var="attuale">
p5=$(head -12 /usr/share/burg-manager/$language | tail -1)
p6=$(head -13 /usr/share/burg-manager/$language | tail -1)
tn=$(grep GRUB_TIMEOUT /etc/default/burg | tr -cd [:digit:])
echo "$p5 $tn $p6"
</label>
<text var="timeout">echo "10"</text>
<button height="35">
<title>
b5=$(head -14 /usr/share/burg-manager/$language | tail -1)
echo $b5
</title>
<code>
xterm -e "sudo sed -i 's/GRUB_TIMEOUT=[0-9]*/GRUB_TIMEOUT=$timeout/g' /etc/default/burg"
</code>
</button>
</vlayout>
</hlayout>


<hlayout>
<label>
tk=$(head -39 /usr/share/burg-manager/$language | tail -1)
echo $tk
</label>
<button>
<title>
bk=$(head -40 /usr/share/burg-manager/$language | tail -1)
echo $bk
</title>
<code>
xterm -e "sudo dpkg -l 'linux-*' | sed '/^ii/!d;/'"$(uname -r | sed "s/\(.*\)-\([^0-9]\+\)/\1/")"'/d;s/^[^ ]* [^ ]* \([^ ]*\).*/\1/;/[0-9]/!d' | xargs sudo apt-get -y purge"
</code>
</button>
</hlayout>
<hlayout>
<label>
tr=$(head -41 /usr/share/burg-manager/$language | tail -1)
echo $tr
</label>
<button>
<title>
br=$(head -42 /usr/share/burg-manager/$language | tail -1)
echo $br
</title>
<code>
sudo rm -rf /root/.burg-manager && rm -rf ~/.burg-manager && killall buc && burg-manager
</code>
</button>
</hlayout>

<hlayout>
<label>echo " "</label><label>echo " "</label><label>echo " "</label><label>echo " "</label><label>echo " "</label>
<img src="/usr/share/burg-manager/images/apply.png" align="left" /> 
<button align="left" height="45">
<title>
b6=$(head -15 /usr/share/burg-manager/$language | tail -1)
echo $b6
</title>
<code>
xterm -e "sudo update-burg"
</code>
</button>
<label>echo " "</label><label>echo " "</label><label>echo " "</label><label>echo " "</label><label>echo " "</label>
</hlayout>
</tab>
<tab>
<title>
tabtitle5=$(head -22 /usr/share/burg-manager/$language | tail -1)
echo $tabtitle5
</title>
<hlayout>
<label>
p9=$(head -23 /usr/share/burg-manager/$language | tail -1)
echo $p9 
</label>
<label>echo " "</label>
<button height="15">
<title>
b9=$(head -24 /usr/share/burg-manager/$language | tail -1)
echo $b9
</title>
<code>
gedit /etc/default/burg || kate /etc/default/burg || leafpad /etc/default/burg
</code>
</button>
</hlayout>
<hlayout>
<label>echo "GRUB_DISABLE_LINUX_RECOVERY"</label>
<button height="15">
<title>
b10=$(head -25 /usr/share/burg-manager/$language | tail -1)
echo $b10
</title>
<code>
sed -i /GRUB_DISABLE_LINUX_RECOVERY/d /etc/default/burg 
grubrecovery='GRUB_DISABLE_LINUX_RECOVERY="'true'"' 
echo $grubrecovery >> /etc/default/burg
</code>
</button>
<button height="15">
<title>
b11=$(head -26 /usr/share/burg-manager/$language | tail -1)
echo $b11
</title>
<code>
sed -i /GRUB_DISABLE_LINUX_RECOVERY/d /etc/default/burg
</code>
</button>
</hlayout>
<hlayout>
<label>echo "GRUB_CMDLINE_LINUX_DEFAULT"</label>
<text var="cmdline">ln=$(cd /usr/share/burg-manager && ./grub_cmdline) && echo "$ln"</text>

<button height="15">
<title>
b12=$(head -27 /usr/share/burg-manager/$language | tail -1)
echo $b12
</title>
<code>
sed -i /GRUB_CMDLINE_LINUX_DEFAULT/d /etc/default/burg 
gdefault='GRUB_CMDLINE_LINUX_DEFAULT="'$cmdline'"'  
echo $gdefault >> /etc/default/burg
</code>
</button>
</hlayout>
<hlayout>
<label>echo "GRUB_SAVEDEFAULT"</label>
<button height="15">
<title>
b10=$(head -25 /usr/share/burg-manager/$language | tail -1)
echo $b10
</title>
<code>
//grubsd='GRUB_SAVEDEFAULT="'true'"' 
//echo $grubsd >> /etc/default/burg
xterm -e "sudo sed -i 's/GRUB_SAVEDEFAULT=[a-z]*/GRUB_SAVEDEFAULT=true/g;s/^#GRUB_SAVE/GRUB_SAVE/g' /etc/default/burg"
</code>
</button>
<button height="15">
<title>
b11=$(head -26 /usr/share/burg-manager/$language | tail -1)
echo $b11
</title>
<code>
//sed -i /GRUB_SAVEDEFAULT/d /etc/default/burg
xterm -e "sudo sed -i 's/GRUB_SAVEDEFAULT=[a-z]*/GRUB_SAVEDEFAULT=false/g;s/^#GRUB_SAVE/GRUB_SAVE/g' /etc/default/burg"
</code>
</button>
</hlayout>
<hlayout>
<label>echo "GRUB_LINUX16"</label>
<button height="15">
<title>
b10=$(head -25 /usr/share/burg-manager/$language | tail -1)
echo $b10
</title>
<code>
grublinux='GRUB_LINUX16="'true'"' 
echo $grublinux >> /etc/default/burg
</code>
</button>
<button height="15">
<title>
b11=$(head -26 /usr/share/burg-manager/$language | tail -1)
echo $b11
</title>
<code>
sed -i /GRUB_LINUX16/d /etc/default/burg
</code>
</button>
</hlayout>
<hlayout>
<label>echo "GRUB_DISABLE_LINUX_UUID"</label>
<button height="15">
<title>
b10=$(head -25 /usr/share/burg-manager/$language | tail -1)
echo $b10
</title>
<code>
grubuuid='GRUB_DISABLE_LINUX_UUID="'true'"' 
echo $grubuuid >> /etc/default/burg
</code>
</button>
<button height="15">
<title>
b11=$(head -26 /usr/share/burg-manager/$language | tail -1)
echo $b11
</title>
<code>
sed -i /GRUB_DISABLE_LINUX_UUID/d /etc/default/burg
</code>
</button>
</hlayout>
<hlayout>
<label>echo "GRUB_FOLD"</label>
<button height="15">
<title>
b10=$(head -25 /usr/share/burg-manager/$language | tail -1)
echo $b10
</title>
<code>
grubfoldt='GRUB_FOLD="true'"' 
echo $grubfoldt >> /etc/default/burg
</code>
</button>
<button height="15">
<title>
b11=$(head -26 /usr/share/burg-manager/$language | tail -1)
echo $b11
</title>
<code>
sed -i /GRUB_FOLD/d /etc/default/burg
</code>
</button>
<button height="15">
<title>
b13=$(head -28 /usr/share/burg-manager/$language | tail -1)
echo $b13
</title>
<code>
grufolds='GRUB_FOLD="'saved'"' 
echo $grubfolds >> /etc/default/burg
</code>
</button>

</hlayout>
<label>
pu=$(head -29 /usr/share/burg-manager/$language | tail -1)
echo $pu 
</label>
<hlayout>
<text var="utente">
nuser=$(head -54 /usr/share/burg-manager/$language | tail -1)
echo $nuser
</text>
<button height="15">
<title>
b14=$(head -30 /usr/share/burg-manager/$language | tail -1)
echo $b14
</title>
<code>
xterm -e "sudo burg-adduser $utente"
</code>
</button>
<button height="15">
<title>
b15=$(head -31 /usr/share/burg-manager/$language | tail -1)
echo $b15
</title>
<code>
xterm -e "sudo burg-deluser $utente"
</code>
</button>
</hlayout>
<label>
pu=$(head -29 /usr/share/burg-manager/$language | tail -1)
echo $pu 
</label>
<hlayout>
<text var="admin">
nadmin=$(head -53 /usr/share/burg-manager/$language | tail -1)
echo $nadmin
</text>
<button height="15">
<title>
b14=$(head -30 /usr/share/burg-manager/$language | tail -1)
echo $b14
</title>
<code>
xterm -e "sudo burg-adduser --super $admin"
</code>
</button>
<button height="15">
<title>
b15=$(head -31 /usr/share/burg-manager/$language | tail -1)
echo $b15
</title>
<code>
xterm -e "sudo burg-deluser $admin"
</code>
</button>
</hlayout>
</tab>
</tab>

<tab>
<title>
tabtitle3=$(head -16 /usr/share/burg-manager/$language | tail -1)
echo $tabtitle3
</title>
<label>
pt=$(head -38 /usr/share/burg-manager/$language | tail -1)
echo $pt
</label>
   <iconlist var="selezione" iconwidth="220" iconheight="120" mode="none">
<icon text="  A u t u m n" href="/usr/share/burg-manager/images/preview/autumn.png">
<ondoubleclick>
xterm -e  "wget http://www.sourceslist.eu/ccount/click.php?id=5 && tar xzf click.php?id=5 && sudo rm -rf click.php?id=5 && sudo mv autumn /boot/burg/themes/ && sudo update-burg"
</ondoubleclick>
</icon>
<icon text="Magic" href="/usr/share/burg-manager/images/preview/magic.png">
<ondoubleclick>
xterm -e  "wget http://www.sourceslist.eu/ccount/click.php?id=31 && tar xzf click.php?id=31 && sudo rm -rf click.php?id=31 && sudo mv magic /boot/burg/themes/ && sudo update-burg"
</ondoubleclick>
</icon>
<icon text="  P i c c h i o" href="/usr/share/burg-manager/images/preview/picchio.png">
<ondoubleclick>
xterm -e  "wget http://www.sourceslist.eu/ccount/click.php?id=17 && tar xzf click.php?id=17 && sudo rm -rf click.php?id=17 && sudo mv picchio /boot/burg/themes/ && sudo update-burg" 
</ondoubleclick>
</icon>
<icon text="  G o l d e n s e a" href="/usr/share/burg-manager/images/preview/goldensea.png">
<ondoubleclick>
xterm -e  "wget http://www.sourceslist.eu/ccount/click.php?id=22 && tar xzf click.php?id=22 && sudo rm -rf click.php?id=22 && sudo mv goldensea /boot/burg/themes/ && sudo update-burg"
</ondoubleclick>
</icon>
<icon text="  S e x y b u n t u" href="/usr/share/burg-manager/images/preview/sexybuntu.png">
<ondoubleclick>
xterm -e  "wget http://www.sourceslist.eu/ccount/click.php?id=32 && tar xzf click.php?id=32 && sudo rm -rf click.php?id=32 && sudo mv sexybuntu /boot/burg/themes/ && sudo update-burg"
</ondoubleclick>
</icon>
<icon text="  T u x - b u r g e r" href="/usr/share/burg-manager/images/preview/tux-burger.png">
<ondoubleclick>
xterm -e  "wget http://www.sourceslist.eu/ccount/click.php?id=33 && tar xzf click.php?id=33 && sudo rm -rf click.php?id=33 && sudo mv tux-burger /boot/burg/themes/ && sudo update-burg"
</ondoubleclick>
</icon>
<icon text="  A b s t r a c t" href="/usr/share/burg-manager/images/preview/abstract.png">
<ondoubleclick>
xterm -e  "wget http://www.sourceslist.eu/ccount/click.php?id=4 && tar xzf click.php?id=4 && sudo rm -rf click.php?id=4 && sudo mv abstract /boot/burg/themes/ && sudo update-burg"
</ondoubleclick>
</icon>
<icon  text="  H o m e r" href="/usr/share/burg-manager/images/preview/homer.png">
<ondoubleclick>
xterm -e  "wget http://www.sourceslist.eu/ccount/click.php?id=10 && tar xzf click.php?id=10 && sudo rm -rf click.php?id=10 && sudo mv homer /boot/burg/themes/ && sudo update-burg"
</ondoubleclick>
</icon> 
<icon  text="  D a r k  S h i n e" href="/usr/share/burg-manager/images/preview/darkshine.png">
<ondoubleclick>
xterm -e  "wget http://www.sourceslist.eu/ccount/click.php?id=8 && tar xzf click.php?id=8 && sudo rm -rf click.php?id=8 && sudo mv dark_shine /boot/burg/themes/ && sudo update-burg"
</ondoubleclick>
</icon>  
<icon  text="  R a d i a n c e" href="/usr/share/burg-manager/images/preview/radiance.png">
<ondoubleclick>
xterm -e  "wget http://www.sourceslist.eu/ccount/click.php?id=18 && tar xzf click.php?id=18 && sudo rm -rf click.php?id=18 && sudo mv radiance /boot/burg/themes/ && sudo update-burg"
</ondoubleclick>
</icon>
<icon  text="  K u b u n t u" href="/usr/share/burg-manager/images/preview/orange.png">
<ondoubleclick>
xterm -e  "wget http://www.sourceslist.eu/ccount/click.php?id=11 && tar xzf click.php?id=11 && sudo rm -rf click.php?id=11 && sudo mv kubuntu /boot/burg/themes/ && sudo update-burg"
</ondoubleclick>
</icon>
<icon  text="  K u b u n t u B r a n d" href="/usr/share/burg-manager/images/preview/kubuntu_brand.png">
<ondoubleclick>
xterm -e  "wget http://www.sourceslist.eu/ccount/click.php?id=12 && tar xzf click.php?id=12 && sudo rm -rf click.php?id=12 && sudo mv kubuntu_brand /boot/burg/themes/ && sudo update-burg"
</ondoubleclick>
</icon> 
<icon text="  U b u n t u B r a n d" href="/usr/share/burg-manager/images/preview/ubuntu_brand.png">
<ondoubleclick>
xterm -e  "wget http://www.sourceslist.eu/ccount/click.php?id=19 && tar xzf click.php?id=19 && sudo rm -rf click.php?id=19 && sudo mv ubuntu_brand /boot/burg/themes/ && sudo update-burg"
</ondoubleclick>
</icon>
<icon text="  G n o m e" href="/usr/share/burg-manager/images/preview/gnome1.png">
<ondoubleclick>
xterm -e  "wget http://www.sourceslist.eu/ccount/click.php?id=9 && tar xzf click.php?id=9 && sudo rm -rf click.php?id=9 && sudo mv Gnome /boot/burg/themes/ && sudo update-burg"
</ondoubleclick>
</icon>
<icon text="  U b u n t u W a l l" href="/usr/share/burg-manager/images/preview/ubuntu_wall.png">
<ondoubleclick>
xterm -e  "wget http://www.sourceslist.eu/ccount/click.php?id=20 && tar xzf click.php?id=20 && sudo rm -rf click.php?id=20 && sudo mv ubuntu_wall /boot/burg/themes/ && sudo update-burg"
</ondoubleclick>
</icon>
<icon text="  K u b u n t u W a l l " href="/usr/share/burg-manager/images/preview/kubuntu_wall.png">
<ondoubleclick>
xterm -e  "wget http://www.sourceslist.eu/ccount/click.php?id=13 && tar xzf click.php?id=13 && sudo rm -rf click.php?id=13 && sudo mv kubuntu_wall /boot/burg/themes/ && sudo update-burg"
</ondoubleclick>
</icon>
<icon text="  V i t r u v i o" href="/usr/share/burg-manager/images/preview/vitruvio.png">
<ondoubleclick>
xterm -e  "wget http://www.sourceslist.eu/ccount/click.php?id=21 && tar xzf click.php?id=21 && sudo rm -rf click.php?id=21z && sudo mv vitruvio /boot/burg/themes/ && sudo update-burg"
</ondoubleclick>
</icon>
<icon text="M i n i m a l" href="/usr/share/burg-manager/images/preview/minimal.png">
<ondoubleclick>
xterm -e  "wget http://www.sourceslist.eu/ccount/click.php?id=3 && tar xzf click.php?id=3 && sudo rm -rf click.php?id=3 && sudo mv minimal /boot/burg/themes/ && sudo mv minimaltext /boot/burg/themes/ && sudo update-burg"
</ondoubleclick>
</icon>
<icon text="M i n t" href="/usr/share/burg-manager/images/preview/mint.png">
<ondoubleclick>
xterm -e  "wget http://www.sourceslist.eu/ccount/click.php?id=23 && tar xzf click.php?id=23 && sudo rm -rf click.php?id=23 && sudo mv mint /boot/burg/themes/ && sudo mv mint_text_below /boot/burg/themes/ && sudo update-burg"
</ondoubleclick>
</icon>
<icon text="W a s p" href="/usr/share/burg-manager/images/preview/wasp.png">
<ondoubleclick>
xterm -e  "wget http://www.sourceslist.eu/ccount/click.php?id=7 && tar xzf click.php?id=7 && sudo rm -rf click.php?id=7 && sudo mv wasp /boot/burg/themes/ && sudo update-burg"
</ondoubleclick>
</icon>
<icon text="S u n s e t" href="/usr/share/burg-manager/images/preview/sunset.png">
<ondoubleclick>
xterm -e  "wget http://www.sourceslist.eu/ccount/click.php?id=6 && tar xzf click.php?id=6 && sudo rm -rf click.php?id=6 && sudo mv sunset /boot/burg/themes/ && sudo update-burg"
</ondoubleclick>
</icon>
<icon text="H o r t e n s i a" href="/usr/share/burg-manager/images/preview/hortensia.png">
<ondoubleclick>
xterm -e  "wget http://www.sourceslist.eu/ccount/click.php?id=24 && tar xzf click.php?id=24 && sudo rm -rf click.php?id=24 && sudo mv hortensia /boot/burg/themes/ && sudo update-burg"
</ondoubleclick>
</icon>
<icon text="F o r t u n e" href="/usr/share/burg-manager/images/preview/fortune.png">
<ondoubleclick>
xterm -e  "wget http://www.sourceslist.eu/ccount/click.php?id=28 && tar xzf click.php?id=28 && sudo rm -rf click.php?id=28 && sudo mv fortune /boot/burg/themes/ && sudo update-burg"
</ondoubleclick>
</icon>
<icon text="K u b u n t u - E O S" href="/usr/share/burg-manager/images/preview/kubuntu_EOS.png">
<ondoubleclick>
xterm -e  "wget http://www.sourceslist.eu/ccount/click.php?id=27 && tar xzf click.php?id=27 && sudo rm -rf click.php?id=27 && sudo mv kubuntu_EOS /boot/burg/themes/ && sudo update-burg"
</ondoubleclick>
</icon>
<icon text="M i n i m a l  b y  S i r" href="/usr/share/burg-manager/images/preview/minimal_by_sir.png">
<ondoubleclick>
xterm -e  "wget http://www.sourceslist.eu/ccount/click.php?id=29 && tar xzf click.php?id=29 && sudo rm -rf click.php?id=29 && sudo mv minimal_by_sir /boot/burg/themes/ && sudo update-burg"
</ondoubleclick>
</icon>
<icon text="G o g o - n o g e - h o t - l e g s" href="/usr/share/burg-manager/images/preview/gogo-noge-hot-legs.png">
<ondoubleclick>
xterm -e  "wget http://www.sourceslist.eu/ccount/click.php?id=30 && tar xzf click.php?id=30 && sudo rm -rf click.php?id=30 && sudo mv gogo-noge-hot-legs /boot/burg/themes/ && sudo update-burg"
</ondoubleclick>
</icon>
</iconlist>
</tab>


<tab>
<title>
tabtitle4=$(head -17 /usr/share/burg-manager/$language | tail -1)
echo $tabtitle4
</title>
<hlayout>
<label>echo " "</label><label>echo " "</label>
<label>
p7=$(head -18 /usr/share/burg-manager/$language | tail -1)
echo $p7
</label>
<label>echo " "</label><label>echo " "</label>
</hlayout>
<hlayout>
<label>echo " "</label><label>echo " "</label><label>echo " "</label><label>echo " "</label>
<img src="/usr/share/burg-manager/images/remove.png" />
<label>echo " "</label><label>echo " "</label><label>echo " "</label><label>echo " "</label>
</hlayout>
<hlayout>
<label>echo " "</label>
<button height="45">
<title>
b7=$(head -19 /usr/share/burg-manager/$language | tail -1)
echo $b7
</title>
<code>
xterm -e "sudo apt-get remove --purge burg burg-themes burg-emu"
</code>
</button>
<label>echo " "</label>
</hlayout>
<hlayout>
<label>echo " "</label><label>echo " "</label>
<img src="/usr/share/burg-manager/images/restore.png" /> 
<label>echo " "</label><label>echo " "</label>
</hlayout>
<hlayout>
<label>echo " "</label>
<label>
p8=$(head -20 /usr/share/burg-manager/$language | tail -1)
echo $p8 
</label>
<combobox var="disk1" height="45">
mount | grep ^/dev | cut -d' ' -f1 | sed "s/[0-9]//g" | uniq > ~/.burg-manager/lol
cat ~/.burg-manager/lol
</combobox>
<button height="45">
<title>
b8=$(head -21 /usr/share/burg-manager/$language | tail -1)
echo $b8
</title>
<code>
xterm -e "sudo grub-install $disk1 && sudo update-grub"
buc success.mc
</code>
</button>
<label>echo " "</label>
</hlayout>
</tab>

<tab>
<title>
tabtitle1=$(head -43 /usr/share/burg-manager/$language | tail -1)
echo $tabtitle1
</title>
<label>
echo
echo
<label>
<img src="/usr/share/burg-manager/images/ISO.png" align="center" />
<label>
bi=$(head -44 /usr/share/burg-manager/$language | tail -1)
echo $bi 
</label>
<file var="isourl" mode="open" filter="Iso(*.iso)">
</file>

<label>
bu=$(head -46 /usr/share/burg-manager/$language | tail -1)
echo $bu 
</label>
<combobox var="tipoiso">
echo "Aptosid 2010-02 kde amd64"
echo "Aptosid 2010-02 kde x86"
echo "Clonezilla live 20100921"
echo "Kubuntu Maverick 10.10"
echo "Kubuntu Lucid 10.04"
echo "Lineduc 2.0"
echo "Linux Mint 10 Julia"
echo "Linux Mint 9 Isadora"
echo "Linux Mint 8 Helena"
echo "Linux Mint 7 Gloria"
echo "Memory test 4.10 (memtest86+)"
echo "Memory test 4.10 (memtest86+, serial console 115200)"
echo "Netboot.ME"
echo "PartedMagic 5.6"
echo "PING 3.0.0"
echo "Redobackup 0.9.7"
echo "SystemRescueCd 1.6.2"
echo "Ubuntu Maverick 10.10"
echo "Ubuntu Lucid 10.04"
</combobox>
<hlayout>
<label>echo " "</label>
<button height="35">
<title>
ai=$(head -45 /usr/share/burg-manager/$language | tail -1)
echo $ai
</title>
<code>
rm -rf ~/.burg-manager/tipoiso ~/.burg-manager/iso
echo $tipoiso > ~/.burg-manager/tipoiso
echo $isourl > ~/.burg-manager/iso
cd /usr/share/burg-manager/
sudo bash addmenuentry
</code>
</button>
<label>echo " "</label>
</hlayout>
<label>
<hlayout>
echo "__________________________________________________________________________________" 
</hlayout>
</label>
<label>
pp3=$(head -59 /usr/share/burg-manager/$language | tail -1)
echo $pp3
</label>
<combobox var="isotoremove">
cat ~/.burg-manager/listaiso
</combobox>
<hlayout>
<label>echo " "</label>
<button height="35">
<title>
bb3=$(head -60 /usr/share/burg-manager/$language | tail -1)
echo $bb3
</title>
<code>
sudo rm -rf ~/.burg-manager/isotoremove 
echo $isotoremove >  ~/.burg-manager/isotoremove 
bash /usr/share/burg-manager/isoremover
</code>
</button>
<label>echo " "</label>
</hlayout>
</tab>

<tab>
<title>
tabtitle1=$(head -32 /usr/share/burg-manager/$language | tail -1)
echo $tabtitle1
</title>
<label>
echo
</label>
<hlayout>
<label>echo " "</label>
<label>
up=$(head -47 /usr/share/burg-manager/$language | tail -1)
echo $up 
</label>
<button>
<title>
b48=$(head -48 /usr/share/burg-manager/$language | tail -1)
echo $b48
</title>
<code>
bash /usr/share/burg-manager/updater
</code>
</button>
<label>echo " "</label>
</hlayout>
<scrolllayout><label>
echo  ______
echo "| INFO |"
echo " --------"
echo
echo Reference page of this project: http://www.sourceslist.eu
echo
echo Burg-Manager has been realised with BUC.
echo
echo Flag icons has been created by antibakteriell 
echo "(http://antibakteriell.deviantart.com/art/Flag-Icons-FIFA-WC-2010-167149016?q=1&qo=1)" 
echo which are distribuited with Creative Commons Attribution 3.0 License
echo http://creativecommons.org/licenses/by/3.0/
echo
echo "DEVELOPERS"
echo
echo "Alessandro Lanave <alessandro.lanave@gmail.com>"
echo "Giuseppe Diaferia <canopus0003@gmail.com>"
echo "Antonio Zagaria <antoniozagaria89@gmail.com>"
echo "Brazilian & Portuguese localization - Filipo Tardim <filipotardim@gmail.com>"
echo "Croatian localization - Goran Vidovic <trebelnik2@gmail.com>"
echo "Dutch localization - Dennis Van der Meer <dennis@dvdmeer.nl>"
echo "French localization - Stephane Robert <ns.robert@gmail.com> (www.webdevonlinux.fr)"
echo "German localization - Janek Bettinger <321tux@arcor.de> (www.321tux.de)"
echo "Hungarian localization - Richard Somlói <level@somloirichard.hu> (www.somloirichard.hu)"
echo "Indonesian localization - Ibrahim Surya Perkasa <mindscrewer06@yahoo.com>"
echo "Polish localization - Piotr Boruta <abcubuntu@gmail.com> (www.abcubuntu.com)"
echo "Spanish localization - Bernardo Miguel Savone <bmsavone@gmail.com>"
echo "Swedish localization - Robert Blomqvist <robbe81@gmail.com>"
echo "Romanian localization - Marius Bob <znupii@znupii.ro> (www.znupii.ro)"
echo
echo "THEMES"
echo
echo "Rights reserved to the authors. All themes are licensed under a Creative Commons Attribution-Noncommercial-Share Alike 3.0 License."
echo "http://creativecommons.org/licenses/by-nc-sa/3.0/"
echo
echo "- Abstract by Ingalex derived by Sora-Clean with wallpaper by Serial2305" 
echo "  http://serial2305.deviantart.com/art/Armyshopped-145505963"
echo
echo "- Autumn by Ingalex derived by Sora-Clean with wallpaper by WindyLife"
echo "  http://windylife.deviantart.com/art/Japanese-Maple-Leaf-Wallpaper-142771054"
echo
echo "- Dark Shine by SWOriginal derived by radiance"
echo "  http://sworiginal.deviantart.com/art/Dark-Shine-BURG-168869916"
echo
echo "- Fortune by OrphanShadow" 
echo "  http://gnome-look.org/content/show.php/Fortune+-+BURG+Theme?content=128929"
echo
echo "- Gnome Theme by Dario http://fuorichiave.blogspot.com/"
echo "  http://gnome-look.org/content/show.php/Gnome+theme+for+burg?content=122560"
echo
echo "- Gogo-noge-hot-legs Theme by Goran Vidovic"
echo
echo "- Goldensea by Ingalex derived by Sora-Clean with wallpaper by tonyelieh"
echo "  http://tonyelieh.deviantart.com/art/Golden-Sea-75025078"
echo
echo "- Homer Theme by Xabz edited by Ingalex"
echo "  http://archxz.wordpress.com/"
echo "  icon theme Boxex vista-like by TPDKCasimir http://blog.tpdkdesign.net/"
echo
echo "- Hortensia by IngAlex derived by Sora-Clean with wallpaper by viZZZual.com"
echo "  http://www.flickr.com/photos/vizzzual-dot-com/2451144069/in/photostream/"
echo
echo "- Kubuntu Brand by IngAlex derived by Kubuntu Theme"
echo "  http://www.sourceslist.eu/burg-2/tema-kubuntu-brand-per-il-burg/"
echo
echo "- Kubuntu EOS by Alessandro Pra (jarod82) derived by Fortune"
echo "  http://kde-look.org/content/show.php/Kubuntu-EOS+BURG+theme?content=134584"
echo
echo "- Kubuntu by Orange derived by Sora-Clean"
echo "  http://forum.ubuntu-it.org/index.php/topic,354069.0.html"
echo "  icon theme Boxex vista-like by TPDKCasimir http://blog.tpdkdesign.net/"
echo
echo "- Kubuntu Wall by IngAlex derived by Sora-Clean with wallpaper by ﻿viZZZual.com"
echo "  http://www.flickr.com/photos/vizzzual-dot-com/2226095398/"
echo "  fonts Aerosol Graffiti http://www.coolfonts.info/font-595-aerosol_graffiti.php"
echo
echo "- Magic by Ingalex derived by Fortune with wallpaper by Peter Norvig"
echo "  http://picasaweb.google.com/peter.norvig/Landscape#5489767755607288706"
echo
echo "- Minimal by Dario http://fuorichiave.blogspot.com/ derived by Sora-Clean"
echo "  http://ventiseiad.deviantart.com/art/Burg-theme-Minimal-164711116"
echo
echo "- Minimal by Sir-Nimaj derived by Refit theme"
echo "  http://sir-nimaj.deviantart.com/#/d2xhk79"
echo
echo "- Mint by Hokaze derived by Sora-Clean"
echo "  http://gnome-look.org/content/show.php?content=124274"
echo
echo "- Picchio theme by Picchio derived by Sora-Clean"
echo "  http://picchiopc.wordpress.com"
echo
echo "- Radiance by Safin derived by Sora-Clean"
echo "  http://gnome-look.org/content/show.php/Ubuntu+Radiance+for+Grub+2+%5BBURG%5D?content=121105"
echo
echo "- Sexybuntu by IngAlex derived by Ubuntu theme"
echo
echo "- Sunset by Alfredo Cioccolani derived by Burg Theme (Hokaze)"
echo
echo "- Tux-burger by IngAlex derived by Ubuntu theme with wallpaper by Paul Empson"
echo "  http://picasaweb.google.com/paulempsonphotography/Scapes#5413972667834456562"     
echo
echo "- Ubuntu Brand by IngAlex derived by Kubuntu Theme"
echo "  http://www.sourceslist.eu/burg-2/tema-ubuntu-brand-per-il-burg/"
echo
echo "- Ubuntu Wall by IngAlex derived by Sora-Clean with wallpaper by ﻿viZZZual.com"
echo "  http://www.flickr.com/photos/vizzzual-dot-com/2226095398/"
echo "  fonts Aerosol Graffiti http://www.coolfonts.info/font-595-aerosol_graffiti.php"
echo
echo "- Vitruvio by ruben0909 derived by Winter theme"
echo "  http://gnome-look.org/content/show.php/vitruvio+for+grub2+with+burg?content=124143"
echo
echo "- Wasp by Alfredo Cioccolani derived by Burg Theme (Hokaze)"
echo
echo "Special thanks to:"
echo "Richard Paul Fahey <richpaulfahey@yahoo.com.au>"
</label></scrolllayout>
</tab>



<hlayout>
<button>
<title>
b16=$(head -33 /usr/share/burg-manager/$language | tail -1)
echo $b16
</title>
<code>
buc /usr/share/burg-manager/license.mc &
</code>
</button>
<button>
<title>
b17=$(head -34 /usr/share/burg-manager/$language | tail -1)
echo $b17
</title>
<code>
xdg-open http://www.sourceslist.eu
</code>
</button>
<button>
<title>
b18=$(head -35 /usr/share/burg-manager/$language | tail -1)
echo $b18
</title>
<code>
xdg-open http://tinyurl.com/burg-homepage
</code>
</button>
<button>
<title>
b19=$(head -36 /usr/share/burg-manager/$language | tail -1)
echo $b19
</title>
<code>
xdg-open http://buc.opensource.tk
</code>
</button>
<button>
<title>
b20=$(head -37 /usr/share/burg-manager/$language | tail -1)
echo $b20
</title>
<code>
xdg-open http://www.sicilinux.org
</code>
</button>
<button>
<title>
echo DONATE
</title>
<code>
xdg-open http://www.sourceslist.eu/info/donate/
</code>
</button>
</hlayout>
</config>

