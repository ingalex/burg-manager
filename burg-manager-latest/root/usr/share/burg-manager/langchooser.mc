<config>
<title>
echo Choose your language
</title>
<label> echo "Choose your language"</label>
 <iconlist var="language" mode="list" iconwidth="30" iconheight="30">
     <icon href="/usr/share/burg-manager/images/flag/Brazil.png">
     echo "brazilian"
     </icon>
     <icon href="/usr/share/burg-manager/images/flag/Croatia.png">
     echo "croatian"
     </icon>
     <icon href="/usr/share/burg-manager/images/flag/Netherlands.png">
     echo "dutch"
     </icon>
     <icon href="/usr/share/burg-manager/images/flag/England.png">
     echo "english"
     </icon>
     <icon href="/usr/share/burg-manager/images/flag/France.png">
     echo "french"
     </icon>
     <icon href="/usr/share/burg-manager/images/flag/Germany.png">
     echo "german"
     </icon>
     <icon href="/usr/share/burg-manager/images/flag/Hungary.png">
     echo "hungarian"
     </icon>
     <icon href="/usr/share/burg-manager/images/flag/Indonesia.png">
     echo "indonesian"
     </icon>
     <icon href="/usr/share/burg-manager/images/flag/Italy.png">
     echo "italian"
     </icon>
     <icon href="/usr/share/burg-manager/images/flag/Poland.png">
     echo "polish"
     </icon>
     <icon href="/usr/share/burg-manager/images/flag/Portugal.png">
     echo "portuguese"
     </icon>
     <icon href="/usr/share/burg-manager/images/flag/Romania.png">
     echo "romanian"
     </icon>
     <icon href="/usr/share/burg-manager/images/flag/Spain.png">
     echo "spanish"
     </icon>
     <icon href="/usr/share/burg-manager/images/flag/Sweden.png">
     echo "swedish"
     </icon>
<ondoubleclick>
if [ "$language" = "italian" ]; then
echo it > ~/.burg-manager/language
elif [ "$language" = "english" ]; then
echo en > ~/.burg-manager/language
elif [ "$language" = "croatian" ]; then
echo hr > ~/.burg-manager/language
elif [ "$language" = "brazilian" ]; then
echo ptbr > ~/.burg-manager/language
elif [ "$language" = "portuguese" ]; then
echo ptpt > ~/.burg-manager/language
elif [ "$language" = "indonesian" ]; then
echo id > ~/.burg-manager/language
elif [ "$language" = "french" ]; then
echo fr > ~/.burg-manager/language
elif [ "$language" = "german" ]; then
echo de > ~/.burg-manager/language
elif [ "$language" = "romanian" ]; then
echo ro > ~/.burg-manager/language
elif [ "$language" = "spanish" ]; then
echo es > ~/.burg-manager/language
elif [ "$language" = "swedish" ]; then
echo se > ~/.burg-manager/language
elif [ "$language" = "hungarian" ]; then
echo hu > ~/.burg-manager/language
elif [ "$language" = "dutch" ]; then
echo nl > ~/.burg-manager/language
elif [ "$language" = "polish" ]; then
echo pl > ~/.burg-manager/language
fi
buc /usr/share/burg-manager/burg-manager.mc
</ondoubleclick>
 </iconlist>
</config>
