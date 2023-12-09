# Jair-Car
Projeto de banco de dados para a locadora de veículos "Jair Car", desenvolvido como requisito para conclusão do Curso de Banco de Dados (UNINABUCO).

# 1. Introdução

O presente projeto foi estruturado a partir das regras de negócio da locadora Jair Car. Foram utilizados os softwares brModelo e MySQL Workbench.

Locacao_Movimento está destinada a registrar os diferentes tipos de movimentação cadastrados na tabela “Tipo_Movimento”, que envolve, além de outros tipos: aluguel, retirada e devolução. Em cada movimento, também faz-se necessário registrar o funcionário, o veículo e o cliente, também previamente registrados em tabelas próprias. As tabelas Oficina e Tipo_Serviço estão destinadas a fazer o armazenamento das informações referentes aos serviços da Oficina.

## 1.1 Modelo conceitual resumido
<img src="https://github.com/jairzinhoR/Jair-Car/assets/96251048/f70be176-4a23-4390-bac4-bbe8729e2884" width="600">.

## 1.2 Modelo conceitual completo
<img src="https://github.com/jairzinhoR/Jair-Car/assets/96251048/4680faf5-1056-46bd-ac89-eb5d96ae06f2" width="600">.

# 2. Modelo lógico
<img src="https://github.com/jairzinhoR/Jair-Car/assets/96251048/b10a4883-38c4-4e35-a2fe-ef63f233886d" width="600">.

# 3. Modelo físcio
## 3.1 Criação e utilização da base de dados
![image](https://github.com/jairzinhoR/Jair-Car/assets/96251048/99259d00-c960-46f8-a92a-efb0c22f8e01)

## 3.2 Criação de todas as tabelas
![image](https://github.com/jairzinhoR/Jair-Car/assets/96251048/8e48c67b-c300-4b65-aa23-492b41312661)
![image](https://github.com/jairzinhoR/Jair-Car/assets/96251048/065d8f12-60a4-4240-b95a-0a5572f77b83)

# 4. Criação de cinco usuários com diferentes privilégios
## 4.1 Criação dos usuários
![image](https://github.com/jairzinhoR/Jair-Car/assets/96251048/83566aad-92cc-4178-a591-b14d21f79dd3)

Comentário: Criamos cinco usuários a partir das regras negócio da locadora, prevendo um perfil de usuário denominado “DBA” que terá acesso total a todo o banco de dados e outros usuários com privilégios específicos em diferentes tabelas, conforme será apresentado abaixo:

## 4.2 Definições de segurança - privilégios de acesso
![image](https://github.com/jairzinhoR/Jair-Car/assets/96251048/efda90b7-2430-460f-a870-e5eb5bd0940f)

Comentário: No código acima garantimos total acesso ao usuário DBA para todas as tabelas da base de dados “locadora_jair”.
![image](https://github.com/jairzinhoR/Jair-Car/assets/96251048/41cf6d8d-ae2e-41ea-8995-4e74feccb291)

Comentário: No código acima garantimos acesso ao usuário ADM_FROTA para selecionar, inserir, atualizar e deletar dados das tabelas que dizem respeito a sua área de negócio, no caso as tabelas veículo, oficina e tipo_serviço.
![image](https://github.com/jairzinhoR/Jair-Car/assets/96251048/9dd703bb-041b-4406-a70e-63f2eb9486bf)

Comentário: No código acima garantimos acesso ao usuário ADM_CLIENTE para selecionar, inserir, atualizar e deletar dados da tabela que diz respeito a sua área de negócio, no caso: a tabela Cliente.
![image](https://github.com/jairzinhoR/Jair-Car/assets/96251048/83d83ae0-6089-4012-a1f3-78a7fb330bc7)

Comentário: No código acima garantimos acesso ao usuário ADM_VENDAS para selecionar, inserir, atualizar e deletar dados da tabela que diz respeito a sua área de negócio, no caso: as tabelas Locacao_Movimento e Tipo_Movimento.

# 5. Populando os dados das tabelas com cinco registros

![image](https://github.com/jairzinhoR/Jair-Car/assets/96251048/539506b3-ca6d-4f33-bf4a-9489ab7916c5)
![image](https://github.com/jairzinhoR/Jair-Car/assets/96251048/07259747-71b0-4b2f-958e-8de04e86f4fa)
![image](https://github.com/jairzinhoR/Jair-Car/assets/96251048/e8fb5aa2-e892-49dd-9dba-fe1c34c68fc7)

# 6. Prints da base, tabelas, dicionários e dados
![image](https://github.com/jairzinhoR/Jair-Car/assets/96251048/11e72ce5-2ba8-48ac-a3bf-40e49a622a4d)
![image](https://github.com/jairzinhoR/Jair-Car/assets/96251048/b717e8e3-74a1-4b38-a337-bf50b4476d40)
![image](https://github.com/jairzinhoR/Jair-Car/assets/96251048/2568613b-9306-43ce-b903-735965d61c72)
![image](https://github.com/jairzinhoR/Jair-Car/assets/96251048/ad9b86f6-e521-4ff1-a671-7d341c980cd5)
![image](https://github.com/jairzinhoR/Jair-Car/assets/96251048/59f9c561-b707-48fb-a517-d05c34426535)
![image](https://github.com/jairzinhoR/Jair-Car/assets/96251048/b7c8216c-5973-41d1-863c-3b39fb09cb82)
![image](https://github.com/jairzinhoR/Jair-Car/assets/96251048/a83ade7b-f8e6-4cda-ad4f-228b6a48a179)
![image](https://github.com/jairzinhoR/Jair-Car/assets/96251048/f282fa17-6dd2-405b-9c45-f3e61941861c)
![image](https://github.com/jairzinhoR/Jair-Car/assets/96251048/3f1be7dd-0df0-4c1f-8c45-55ec4c6b4675)

# Referências
BRMODELO. Projeto de Modelagem ER. Disponível em: <https://www.sis4.com/brModelo/>. Acessado em: 10/06/2022.

DORNELES, Carlos Alberto. DB2 - Banco de dados - Projeto de Banco de Dados. Disponível em: <https://www.cadcobol.com.br/db2_novo_projeto_banco_dados.htm> Acessado em: 10/06/2022.

FERREIRA, Renato Alves. Banco de Dados. Ed. Ser Educacional, 2019.

MYSQL WORKBENCH. Disponível em: <https://www.mysql.com/products/workbench/>.  Acessado em: 10/06/2022.























