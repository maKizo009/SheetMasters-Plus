
#!/bin/bash

# Caminho da pasta que você quer monitorar

cd ~/
listarArquivos=$(ls Downloads | grep "dados_")

if [ $? -ne 0 ]; then
  echo "Você pode não ter arquivos CSV elegíveis para renomear. Verifique e tente novamente."
  exit 1
fi

echo "Listando arquivos do primeiro comando:"
$listarArquivos

for arquivo in $listarArquivos; do
  nome=$(awk -F": " 'NR==1 {print $2}' "Downloads/$arquivo")
  dataInicial=$(awk -F": " 'NR==7 {print $2}' "Downloads/$arquivo")
  dataFinal=$(awk -F": " 'NR==8 {print $2}' "Downloads/$arquivo")
    sanitizaString="${nome}_${dataInicial}_${dataFinal}.csv"
      echo $sanitizaString

      echo "Renomeando o arquivo $arquivo para $sanitizaString..."
      mv "Downloads/$arquivo" "Downloads/$sanitizaString"

done

echo "Todos os arquivos foram renomeados. A tarefa foi concluída."
