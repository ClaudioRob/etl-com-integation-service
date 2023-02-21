CREATE TABLE [dbo].[Dim_Organizacional]
(
	[cod_filho] NVARCHAR(50) NOT NULL PRIMARY KEY, 
    [desc_filho] NVARCHAR(200) NULL, 
    [cod_pai] NVARCHAR(50) NULL, 
    [atr_esquerda] INT NULL, 
    [atr_direita] INT NULL, 
    [atr_nivel] INT NULL, 
    CONSTRAINT [FK_Dim_Organizacional_Dim_Organizacional] FOREIGN KEY ([cod_pai]) REFERENCES [Dim_Organizacional]([cod_filho])
)
