#%%
import pandas as pd

df = pd.read_csv("data/Student_Depression_Dataset.csv") #ou read.xlsx


df.head() #Lendo os primeiros dados
df.info() #Ver tipos de dados, valores ausentes e tamanho de um DataFrame
df.shape #O número de linhas e colunas
df.columns #Retorna os nomes das colunas como um objeto Index
df.isnull() #Verificando valores ausentes
df.isnull().sum() #Conta os valores ausentes

qtd = (df[df["Depression"] == "Yes"]).groupby("Gender").count()
qtd[["Depression"]]
# %%
