#%%
import pandas as pd

df = pd.read_csv("data/Student_Depression_Dataset.csv") 

df2 = df.copy()

df2.isnull() #Verificando valores ausentes
df2.isnull().sum() #Conta os valores ausentes
df2.dropna() #Descartar ausentes; Argumento (axis=x) define se remove linhas(0) ou colunas(1); argumento (How="all") define se é somente se a linha estiver completamente vazia
df2.drop_duplicates() #Remove todas as duplicadas
df2.rename(columns={"Depression" : "depre"}) #Renomeando colunas; df3.columns [<renomeando colunas por order>]
juntar_merge = df2.merge(tabela_2, on= "<PrimaryKey>", how="<tipo de junção>" ) #Mesma função do Join do sql
juntar_concat = pd.concat([tabela1, tabela2], ignore_index=True) #Mesmas colunas, mas quer empilhar linhas; "ignore_index=True" faz um novo index; "axis=1" coloca tabelas lado a lado com a PKey sendo o index

