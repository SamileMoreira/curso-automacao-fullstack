#language:pt
@login 
Funcionalidade: Remover filme
    Para que eu possa manter o catálogo atualizado
    Sendo um gestor de catálogo que encontrou um título cancelado/indesejado ou que não tem uma boa aceitação pelo público
    Posso remover este título

    
    Cenario: Confirmar exlusão

        Dado que "dbz" está parte do catálogo
        Quando eu solicito a exclusão
        E eu confirmo a solicitação
        Então este item deve ser removido do catálogo
        
    @rm_movie
    Cenario: Cancelar da exclusão

        Dado que "10_coisas" está parte do catálogo
        Quando eu solicito a exclusão
        Mas eu cancelo a solicitação
        Então este item deve permacener no catálogo

