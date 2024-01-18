
#! /bin/bash
#
cd ~/Downloads/
arquivoZip=$(ls ~/Downloads/ | grep "\$2a\$10" | grep "\.zip")
if [ $? -ne 0 ]; then
    echo "Aparentemente, não há arquivos .zip que contenham arquivos .csv. Verifique e tente novamente."
      exit 1
fi

for zip in $arquivoZip; do
    descompactar=$(unzip "$zip")
    wait
    listarPasta=$(ls -d */ | grep "\$2a\$10")
    for pasta in $listarPasta; do
        copiarArquivos=$(cd "$pasta" && cp * ~/Downloads/)
        echo "Copiando os arquivos para a pasta Downloads"
    done
done

echo "Tarefa concluída."
