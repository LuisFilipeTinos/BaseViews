CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY,
    nome VARCHAR(100),
    cidade VARCHAR(100),
    regiao VARCHAR(50)
);

CREATE TABLE pedidos (
    id_pedido INT PRIMARY KEY,
    id_cliente INT,
    data_pedido DATE,
    valor_total DECIMAL(10,2),
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

CREATE TABLE itens_pedido (
    id_item INT PRIMARY KEY,
    id_pedido INT,
    produto VARCHAR(100),
    quantidade INT,
    preco_unitario DECIMAL(10,2),
    FOREIGN KEY (id_pedido) REFERENCES pedidos(id_pedido)
);

-- Inserts (Popular as tabelas)

INSERT INTO clientes VALUES
(1, 'Ana Souza', 'São Paulo', 'Sudeste'),
(2, 'Bruno Lima', 'Rio de Janeiro', 'Sudeste'),
(3, 'Carla Reis', 'Recife', 'Nordeste'),
(4, 'Daniel Rocha', 'Curitiba', 'Sul');

INSERT INTO pedidos VALUES
(101, 1, '2025-09-10', 350.00),
(102, 2, '2025-09-15', 500.00),
(103, 3, '2025-09-20', 200.00),
(104, 1, '2025-10-05', 400.00),
(105, 4, '2025-10-07', 800.00),
(106, 4, '2025-10-07', 200.00);

INSERT INTO itens_pedido VALUES
(1, 101, 'Notebook', 1, 350.00),
(2, 102, 'Celular', 2, 250.00),
(3, 103, 'Fone de Ouvido', 4, 50.00),
(4, 104, 'Monitor', 2, 200.00),
(5, 105, 'Teclado', 5, 160.00),
(6, 105, 'Headset', 1, 200.00);