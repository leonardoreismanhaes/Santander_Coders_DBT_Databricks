

SELECT md5(cast(coalesce(cast("Municipio" as TEXT), '_dbt_utils_surrogate_key_null_') || '-' || coalesce(cast("Produto" as TEXT), '_dbt_utils_surrogate_key_null_') || '-' || coalesce(cast("Data da Coleta" as TEXT), '_dbt_utils_surrogate_key_null_') as TEXT)) AS pkey, 
        pc."Municipio"          AS cidade,
        pc."Produto"            AS produto,
        pc."Data da Coleta"     AS data_coleta,
        pc."Valor de Venda"     AS valor_revenda
FROM public.preco_combustiveis  AS pc