<config>
<global var="language">
language=$(cat ~/.burg-manager/language)
echo $language
</global>
<img src="/usr/share/burg-manager/images/remove.png" align="center" /> 
<label>
qt=$(head -70 /usr/share/burg-manager/$language | tail -1)
echo $qt
</label>
<hlayout><button>
<title>
ok=$(head -58 /usr/share/burg-manager/$language | tail -1)
echo $ok
</title>
<code>
bash /usr/share/burg-manager/killpop
</code>
</button>
</hlayout>
</config>
