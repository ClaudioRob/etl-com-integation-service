CREATE TABLE [dbo].[Fato_004]
(
	[cod_cliente] NVARCHAR(50) NOT NULL , 
    [cod_produto] NVARCHAR(50) NOT NULL, 
    [cod_organizacional] NVARCHAR(50) NOT NULL, 
    [cod_dia] NVARCHAR(50) NOT NULL, 
    [meta_faturamento] FLOAT NULL, 
    PRIMARY KEY ([cod_cliente], [cod_dia], [cod_produto], [cod_organizacional]),
    CONSTRAINT [FK_Fato_004_Dim_Cliente] FOREIGN KEY ([cod_cliente]) REFERENCES [Dim_Cliente]([cod_cliente]), 
    CONSTRAINT [FK_Fato_004_Dim_Produto] FOREIGN KEY ([cod_produto]) REFERENCES [Dim_Produto]([cod_produto]),
    CONSTRAINT [FK_Fato_004_Dim_Organizacional] FOREIGN KEY ([cod_organizacional]) REFERENCES [Dim_Organizacional]([cod_filho]), 
    CONSTRAINT [FK_Fato_004_Dim_Dim_Tempo] FOREIGN KEY ([cod_dia]) REFERENCES [Dim_Tempo]([cod_dia])
)

