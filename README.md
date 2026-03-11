📍 Consulta CEP.

Consulta CEP é um aplicativo desenvolvido em Flutter que permite consultar endereços a partir de um CEP brasileiro de forma rápida e simples.

O usuário informa um CEP e o aplicativo retorna automaticamente os dados do endereço utilizando uma API pública.

O projeto foi desenvolvido com foco em simplicidade, organização de código e boa experiência do usuário, seguindo um design minimalista em preto e branco e priorizando mobile first.

🎯 Objetivo do Projeto

O Consulta CEP permite que o usuário:

Informar um CEP brasileiro

Consultar automaticamente o endereço correspondente

Visualizar os dados retornados de forma clara em um card de resultado

As informações retornadas incluem:

Logradouro

Bairro

Cidade

Estado

A consulta é feita utilizando a API pública ViaCEP.

🛠️ Tecnologias Utilizadas

Flutter – desenvolvimento da interface e lógica do aplicativo.

Dart – linguagem principal do projeto.

HTTP – requisições para a API de consulta de CEP.

Cubit - Gerenciamento de estado.

API ViaCEP – serviço de consulta de endereços no Brasil.

🎨 Interface do Usuário

O design do aplicativo segue um estilo:

Minimalista

Mobile First

Cores preto e branco

Componentes simples e intuitivos

O fluxo da interface é simples:

O usuário digita um CEP

Clica em Buscar endereço

O aplicativo consulta a API

O resultado é exibido em um card abaixo do formulário

📂 *Futura* Estrutura de Pastas

```
lib/
├── services/
│   └── cep_service.dart
│      (responsável por realizar a requisição para a API ViaCEP)
│
├── models/
│   └── cep_model.dart
│      (modelo de dados que representa as informações retornadas pelo CEP)
│
├── pages/
│   └── home_page.dart
│      (tela principal do aplicativo onde o usuário realiza a consulta)
│
├── widgets/
│   ├── cep_input.dart
│   └── address_card.dart
│      (componentes reutilizáveis da interface)
│
└── main.dart
   (ponto de entrada da aplicação)

```


🌐 API Utilizada

O aplicativo utiliza a API pública:

ViaCEP

https://viacep.com.br/ws/{CEP}/json/

Ela permite consultar informações de endereço a partir de um CEP brasileiro.

🚀 Status do Projeto

🔧 Em desenvolvimento
📈 Evoluindo passo a passo
📢 Progresso sendo documentado no LinkedIn

📌 Próximos Passos (planejado)

Validação automática de CEP

Animação ao exibir resultado

Melhorias de UX

Organização adicional da arquitetura

Possível implementação de gerenciamento de estado

👤 Autor

Desenvolvido por Lucas Batista

💻 GitHub:
https://github.com/LucasBatistaX

💼 LinkedIn:
https://www.linkedin.com
