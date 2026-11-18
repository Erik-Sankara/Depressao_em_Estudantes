-- contagem depressivos
with pessoas_depre AS (
    SELECT Gender,
           count(*) as total_Depressivo
    FROM minha_tabela

    WHERE Depression = 'Yes'

    GROUP BY Gender
),

-- contagem saudáveis
pessoas_saudaveis AS (
    SELECT count(*) as total_Saudavel
    FROM minha_tabela

    WHERE Depression = 'No'
),
-- agrupamento por Cidade dos Depressivos
Cidade_depres AS (
    SELECT Home_division,
        count(*) AS TotalPorCidadeDepre

    FROM minha_tabela

    WHERE Depression = 'Yes'

    GROUP BY Home_division
),

-- contagem por classe das famílias dos depressivos
classe_familia AS (
SELECT Family_background,
       count(*) as ClasseFamiliar
    
FROM minha_tabela
WHERE Depression = 'Yes'

GROUP by Family_background

),

-- Média arredondada de idade por Gênero 
media_idade_genero AS(
    SELECT Gender,
        round(avg(Age), 2) AS mediaIdade

    FROM minha_tabela

    WHERE Depression = 'Yes'

    GROUP BY Gender
),

Total_Depressivos AS(
SELECT
       count(*) AS totalDepre
    --    round(count(*) * 100.0 / (SELECT count(*) FROM minha_tabela), 2) AS porcentagem

FROM minha_tabela

WHERE Depression = 'Yes'
)

SELECT total_Saudavel,
       totalDepre,
       round(totalDepre * 100.0/ (SELECT count(*) FROM minha_tabela), 2) AS PorcentDepre

FROM pessoas_saudaveis, Total_Depressivos

