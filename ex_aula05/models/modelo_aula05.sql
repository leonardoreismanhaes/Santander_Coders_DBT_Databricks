
{{
    config(
        on_schema_changes="sync_all_columns",
        materialized="table"
    )
}}

SELECT {{ dbt_utils.generate_surrogate_key(['"Municipio"','"Produto"','"Data da Coleta"']) }} AS pkey, 
        pc."Municipio"          AS cidade,
        pc."Produto"            AS produto,
        pc."Data da Coleta"     AS data_coleta,
        pc."Valor de Venda"     AS valor_revenda
FROM public.preco_combustiveis  AS pc