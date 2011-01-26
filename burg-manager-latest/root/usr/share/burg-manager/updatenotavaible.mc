<config>
<global var="language">
language=$(cat ~/.burg-manager/language)
echo $language
</global>
<img src="/usr/share/burg-manager/images/attention.png" align="center" /> 
<label>
na=$(head -57 /usr/share/burg-manager/$language | tail -1)
echo $na
</label>
<button>
<title>
no=$(head -58 /usr/share/burg-manager/$language | tail -1)
echo $no
</title>
<code>
bash /usr/share/burg-manager/killpop
</code>
</button>
</config>
