# Estacionamento, Sistema de Cadastro de Carros

Este projeto é um sistema simples de cadastro de carros, onde é possível adicionar, listar e editar informações de veículos. Ele utiliza Node.js, Express e MySQL no backend, enquanto o frontend é desenvolvido com HTML, CSS e JavaScript.

# Funcionalidades
Cadastro de carros (placa, modelo e cor)
Listagem de carros cadastrados
Edição de carros
Remoção de carros (opcional, se implementado)

# Tecnologias Utilizadas
Backend:
Node.js
Express.js
MySQL

# Frontend:
HTML
CSS
JavaScript (Fetch API para comunicação com o backend)

Como Executar o Projeto

# Clonar o Repositório

 git clone https://github.com/marianatpatrocin/Estacionamento

# Configurar o Banco de Dados MySQL

Crie um banco de dados chamado estacionamento e execute o seguinte SQL:

CREATE TABLE carros (
    id INT AUTO_INCREMENT PRIMARY KEY,
    placa VARCHAR(10) NOT NULL,
    modelo VARCHAR(50) NOT NULL,
    cor VARCHAR(20) NOT NULL
);

# Instalar Dependências do Backend

 cd backend
 npm install
 
# Configurar a Conexão com o Banco de Dados

Edite o arquivo db_config.js com suas credenciais do MySQL:

const mysql = require('mysql2');
const connection = mysql.createConnection({
    host: 'localhost',
    user: 'seu_usuario',
    password: 'sua_senha',
    database: 'estacionamento'
});

module.exports = connection;

# Iniciar o Servidor Backend

 node server.js

# Executar o Frontend

Basta abrir o arquivo index.html no navegador ou usar o Live Server do VS Code.

# Endpoints da API

# Criar um carro (POST)

Endpoint: POST /carros

{
    "placa": "ABC1234",
    "modelo": "Civic",
    "cor": "Preto"
}

# Listar carros (GET)

Endpoint: GET /carros

# Editar carro (PUT)
Endpoint: PUT /carros/editar/:id

{
    "placa": "XYZ5678",
    "modelo": "Corolla",
    "cor": "Branco"
}

Desenvolvido por Mariana Toledo Patrocin
