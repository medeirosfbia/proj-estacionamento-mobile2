CREATE TABLE proprietario (
    id_proprietario INT AUTO_INCREMENT PRIMARY KEY,
    nome TEXT,
    cpf TEXT
);

CREATE TABLE veiculo (
    id_veiculo INT AUTO_INCREMENT PRIMARY KEY,
    placa TEXT,
    ano INT,
    mensalidade DECIMAL(10,2),
    fk_proprietario INT NOT NULL,

    CONSTRAINT fk_veiculo_proprietario
        FOREIGN KEY (fk_proprietario)
        REFERENCES proprietario(id_proprietario)
        ON DELETE CASCADE
);

CREATE TABLE usuario (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nome TEXT,
    email TEXT,
    senha TEXT
);