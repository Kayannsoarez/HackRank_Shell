#!/bin/bash
read N

MAXIMO_N=5
ESPACO_N=$((MAXIMO_N - N))

COLUNAS=100
LINHAS=64
NUMERO_FOLHAS=1

QUEBRA_LINHA=$'\\n'
RAMO="1"
ESPACO="_"

desenhar_sub_arvore ()
{
    local ALTURA_SUB_ARVORE=$1
    local NUMERO_RAIZES=$2

    local INDICE_LINHA=${ALTURA_SUB_ARVORE}
    local SUB_ARVORE=""

    while [ ${INDICE_LINHA} -gt 0 ]
    do
        SUB_ARVORE="${SUB_ARVORE}$(desenhar_linha ${ALTURA_SUB_ARVORE} ${INDICE_LINHA} ${NUMERO_RAIZES})"
        INDICE_LINHA=$((INDICE_LINHA - 1))
    done

    echo "$SUB_ARVORE"
}

desenhar_linha ()
{

    local ALTURA_SUB_ARVORE=$1
    local INDICE_LINHA=$2
    local NUMERO_RAIZES=$3
    local NUMERO_FOLHAS=${NUMERO_RAIZES}
    local LINHA=""

    [ ${INDICE_LINHA} -gt $((ALTURA_SUB_ARVORE / 2)) ]
    local PARTE_FOLHA=$?

    local COMPRIMENTO_ESQUERDA=0
    local COMPRIMENTO_DIREITA=0
    local ENTRE_FOLHAS=0
    local ENTRE_RAIZES=0

    if [ ${PARTE_FOLHA} -eq 0 ]; then
        NUMERO_FOLHAS=$((NUMERO_RAIZES * 2))

        ENTRE_FOLHAS=$(( (INDICE_LINHA - ALTURA_SUB_ARVORE / 2) * 2 - 1 ))

        if [ ${NUMERO_RAIZES} -eq 1 ]; then
            ENTRE_RAIZES=0
        else
            ENTRE_RAIZES=$(( (ALTURA_SUB_ARVORE * 2) - 1 - (ENTRE_FOLHAS + 1) ))
        fi

        COMPRIMENTO_ESQUERDA=$(( (COLUNAS - NUMERO_FOLHAS - (ENTRE_FOLHAS * (NUMERO_FOLHAS / 2)) - (ENTRE_RAIZES * (NUMERO_RAIZES - 1)) ) / 2 ))
    # Parte das raizes da arvore
    else
        if [ ${NUMERO_RAIZES} -eq 1 ]; then
            ENTRE_RAIZES=0
        else
            ENTRE_RAIZES=$(( (ALTURA_SUB_ARVORE * 2) - 1 ))
        fi

        ENTRE_FOLHAS=0

        COMPRIMENTO_ESQUERDA=$(( (COLUNAS - NUMERO_RAIZES - (ENTRE_RAIZES * (NUMERO_RAIZES - 1)) ) / 2 ))
    fi

    COMPRIMENTO_DIREITA=$((COMPRIMENTO_ESQUERDA + 1))

    LINHA="${LINHA}$(for ((i=0; i<$COMPRIMENTO_ESQUERDA; i++)); do echo -n ${ESPACO}; done)"

    for ((i=0; i<${NUMERO_FOLHAS}; i++))
    do
        LINHA="${LINHA}${RAMO}"

        if [ ${i} -eq $((NUMERO_FOLHAS - 1)) ]; then
            break
        elif [ $(($i % 2)) -eq 0 ] && [ ${PARTE_FOLHA} -eq 0 ]; then
            LINHA="${LINHA}$(for ((i=0; i<$ENTRE_FOLHAS; i++)); do echo -n ${ESPACO}; done)"
        else
            LINHA="${LINHA}$(for ((i=0; i<$ENTRE_RAIZES; i++)); do echo -n ${ESPACO}; done)"
        fi
    done

    LINHA="${LINHA}$(for ((i=0; i<$COMPRIMENTO_DIREITA; i++)); do echo -n ${ESPACO}; done)"

    echo "${LINHA}${QUEBRA_LINHA}"
}

while [ ${N} -gt 0  ]
do
    LINHAS=$((LINHAS / 2))

    ARVORE="$(desenhar_sub_arvore ${LINHAS} ${NUMERO_FOLHAS})${ARVORE}"

    NUMERO_FOLHAS=$((NUMERO_FOLHAS * 2))

    N=$((N - 1))
done

while [ ${ESPACO_N} -ge 0  ]
do
    LINHAS=$((LINHAS / 2))

    for ((i=0; i<${LINHAS}; i++))
    do
        ARVORE="$(for ((i=0; i<${COLUNAS}; i++)); do echo -n ${ESPACO}; done)${QUEBRA_LINHA}${ARVORE}"
    done

    ESPACO_N=$((ESPACO_N - 1))
done

echo -e "$ARVORE"
