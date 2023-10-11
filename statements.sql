CREATE TABLE A (
  id INT PRIMARY KEY,
  data_a VARCHAR(50)
);

INSERT INTO A (id, data_a) VALUES (1, 'Data1'), (2, 'Data2'), (3, 'Data3');

CREATE TABLE B (
  id INT PRIMARY KEY,
  data_b VARCHAR(50)
);

INSERT INTO B (id, data_b) VALUES (2, 'Data2'), (3, 'Data3'), (4, 'Data4');

SELECT A.id, A.data_a, B.id AS b_id, B.data_b FROM A LEFT JOIN B ON A.id = B.id;
SELECT A.id, A.data_a, B.id AS b_id, B.data_b FROM A RIGHT JOIN B ON A.id = B.id;
SELECT A.id, A.data_a, B.id AS b_id, B.data_b FROM A INNER JOIN B ON A.id = B.id;
SELECT A.id, A.data_a, B.id AS b_id, B.data_b FROM A LEFT JOIN B ON A.id = B.id WHERE B.id IS NULL;
SELECT A.id, A.data_a, B.id AS b_id, B.data_b FROM A RIGHT JOIN B ON A.id = B.id WHERE A.id IS NULL;
