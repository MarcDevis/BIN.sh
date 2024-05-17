    #1/bin/bash
    
read -p "Quin és el teu nom " NOM

if [[ ${NOM} == "mdevisa" ]]
then
    echo "ets en mdevisa"
else
    echo "ets en ${NOM}"
fi