# desenvolvimentoiOSmodulo1e2
Projeto para entrega do trabalho de pós graduação do professor Eric para os módulos 1 e 2

1. Descrição do Aplicativo a ser desenvolvido
Agora que aprendemos o básico para desenvolvermos aplicativos em iOS, vamos por em prática este conhecimento criando um app que nos ajudará a cuidar do nosso bairro!
A proposta é que você crie um aplicativo onde o usuário poderá registrar qualquer problema que ele avistar em seu bairro ou em sua cidade. Encontrou um semáforo com defeito? Uma placa de trânsito quebrada? Buraco na rua ou na calçada? Lixeira danificada? Abra o app e registre esse problema (com localização e demais informações) para que posteriormente você possa entrar em contato com o órgão responsável.
2. Funcionamento
O aplicativo deverá funcionar da seguinte maneira:
1) Oaplicativoterá3telas:Listagem,ExibiçãoeEdição/Criação;
2) A tela inicial será a tela de Listagem, uma TableViewController onde serão listados todos os problemas registrados pelo usuário. Nesta lista deverá aparecer o nome e a data do problema registrado;
3) AnavegaçãoentreastelasseráfeitaviaNavigationController
4) A partir da tela inicial o usuário poderá criar um novo registro (clicando em algum botão presente) ou selecionar um dos registros listados. Ele também poderá excluir um registro utilizando o gesto de Swipe.
5) Aoselecionarumregistro,eleserálevadoparaateladeExibição,ondeserãoapresentados todos os dados do mesmo, que são:
a. Nomedoproblema
b. Localização(endereço)
c. Data de registro d. Descrição
Exemplo:
Nome do problema: Buraco calçada
Endereço: Av. Lins de Vasconcelos 3100, Aclimação, São Paulo – SP
Descrição: Este buraco de aproximadamente 80 cm de diâmetro, encontrado na calçada direita (sentido centro) em frente ao Pet Shop da Lins, está atrapalhando a circulação de pedestres que por muitas vezes acabam tendo que invadir a pista correndo risco de atropelamento.
Data: 10/07/2022
6) A partir dessa tela, ele poderá voltar para a tela de Listagem ou ir para a tela de Edição/Criação;
7) A tela de Edição/Criação servirá tanto para a edição de um novo registro (alteração dos seus dados) quanto para a criação de um novo. Se ela for acessada a partir do botão de criação na tela Listagem, ela entrará no modo “Criação”. Caso seja acessada pela tela de Exibição, entrará no modo “Edição”
8) Os dados deverão ser armazenados utilizando Core Data. Todos os campos serão do tipo String (inclusive a Data)
9) Toda a definição de interface (UI) do aplicativo ficará por conta do aluno, podendo ser a mais simples possível.
10) Não é obrigatório implementar Autolayout
