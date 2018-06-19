DATA=`date +%d-%m-%Y`
DATAMIN=`date +%d%m%Y`
PASTA=`USUARIO-$DATA`

#Acessar o servidor e salvar os arquivos
wget -m ftp://NOMEDEUSUARIO:SENHA@ftp.SITE.com.br/public_html/
echo "######################################################"
echo "Backup Baixado"

#Mandar para o GIT
git add .
git checkout -b $DATAMIN
git commit -m "Usuario"
git push origin $DATAMIN
echo "######################################################"
echo "Enviado para o GIT"

#Excluir a pasta baixada do servidor
sudo chown -R usuario ftp.SITE.com.br
rm -R ftp.SITE.com.br
echo "######################################################"
echo "Pasta Deletada"
