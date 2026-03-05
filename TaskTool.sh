#!/bash/bin
echo "entrez la description de la tache: read tache"
// verifier si le fichier existe deja sinon creer
if [ ! -f TaskTool.sh ]; then
id = 1
else
     id=$(wc -l <TaskTool.sh)
     id=$((id +1))
fi
// ajouter la tache avec status 
echo "$id|$description|0" >> TasTool.sh

// commit git
git add TaskTool.sh
git commit -m "ajout fonction ajouter_tache"
