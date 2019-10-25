CREATE TABLE PESSOA (
  id_pessoa integer,
  nome varchar2(20),
  cpf varchar2(14)  
);

Insert into Pessoa values(1,'Eliézio Mesquita','11109865424');
Insert into Pessoa values(2,'Maria Joaquina','93104465334');
Insert into Pessoa values(3,'José da Silva','14109835424');

CREATE TABLE CONTA (
  id_conta integer,
  id_Pessoa integer,
  agencia integer,
  conta integer,
  saldo number(8, 2)
);

Insert into conta values(1, 1, 2222, 121212, 1200.90);
Insert into conta values(2, 2, 1212, 456789, 400.90);
Insert into conta values(3, 3, 3456, 987654, 8700.20);
Insert into conta values(4, 2, 6543, 999999, 121300.40);
Insert into conta values(5, 1, 9999, 366556, 10120.70);

CREATE TABLE CARTAO (
  id_cartao integer,
  id_Pessoa integer,
  numero integer,
  vecimento varchar2(5)
);

Insert into cartao values(1, 1, 8787878, '10/22');
Insert into cartao values(2, 2, 4321123, '09/21');
Insert into cartao values(3, 3, 9898989, '07/24');
Insert into cartao values(4, 2, 0000000, '06/25');
Insert into cartao values(5, 1, 3322112, '10/24');

CREATE TABLE MOVIMENTACAO (
  id_movimentacao integer,
  id_Cartao integer,
  descricao varchar2(20),
  data timestamp,
  valor number(8,2),
  is_credito integer(1)  
);

Insert into movimentacao values(1, 2, 'Compra 1', CURRENT_TIMESTAMP, 120.12, 1);
Insert into movimentacao values(1, 1, 'Compra 2', CURRENT_TIMESTAMP, 100.00, 1);
Insert into movimentacao values(1, 1, 'Compra 3', CURRENT_TIMESTAMP, 100.00, 0);
Insert into movimentacao values(1, 2, 'Compra 4', CURRENT_TIMESTAMP, 1120.34, 1);
Insert into movimentacao values(1, 3, 'Compra 5', CURRENT_TIMESTAMP, 43.25, 0);
Insert into movimentacao values(1, 4, 'Compra 6', CURRENT_TIMESTAMP, 20.12, 1);
Insert into movimentacao values(1, 3, 'Compra 7', CURRENT_TIMESTAMP, 12.14, 1);
Insert into movimentacao values(1, 5, 'Compra 8', CURRENT_TIMESTAMP, 37.12, 0);
Insert into movimentacao values(1, 5, 'Compra 9', CURRENT_TIMESTAMP, 99.05, 0);
Insert into movimentacao values(1, 5, 'Compra 10', CURRENT_TIMESTAMP, 345.09, 1);
Insert into movimentacao values(1, 1, 'Compra 11', CURRENT_TIMESTAMP, 43.25, 0);
Insert into movimentacao values(1, 2, 'Compra 12', CURRENT_TIMESTAMP, 90.33, 1);
Insert into movimentacao values(1, 5, 'Compra 13', CURRENT_TIMESTAMP, 332.45, 0);
Insert into movimentacao values(1, 4, 'Compra 14', CURRENT_TIMESTAMP, 10.00, 1);