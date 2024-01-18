
#!/bin/bash

# Ativar o ambiente virtual
source /home/lucasa/Scripts/sheetMasters/.venv/bin/activate

# Executar o script Python
/home/lucasa/Scripts/sheetMasters/.venv/bin/python /home/lucasa/Scripts/sheetMasters/sheetMasters.py "$@"

# Desativar o ambiente virtual
deactivate
