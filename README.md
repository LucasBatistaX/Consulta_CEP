📍 _Consulta CEP_.

Consulta CEP é um aplicativo desenvolvido em Flutter que permite consultar endereços a partir de um CEP brasileiro de forma rápida e simples.

O usuário informa um CEP e o aplicativo retorna automaticamente os dados do endereço utilizando uma API pública.

O projeto foi desenvolvido com foco em simplicidade, organização de código e boa experiência do usuário, seguindo um design minimalista em preto e branco e priorizando mobile first.

___________________________________________________________________________________________________________________________________________________________________________

🎯 Objetivo do Projeto.


O Consulta CEP permite que o usuário:

- Informar um CEP brasileiro.

- Consultar automaticamente o endereço correspondente.

- Visualizar os dados retornados de forma clara em um card de resultado.

- As informações retornadas incluem:

Logradouro:

- Bairro:

- Cidade:

- Estado:

- A consulta é feita utilizando a API pública ViaCEP.

___________________________________________________________________________________________________________________________________________________________________________

🛠️ Tecnologias Utilizadas

- Flutter – desenvolvimento da interface e lógica do aplicativo.

- Dart – linguagem principal do projeto.

- HTTP – requisições para a API de consulta de CEP.

- Cubit - Gerenciamento de estado.

- API ViaCEP – serviço de consulta de endereços no Brasil.

___________________________________________________________________________________________________________________________________________________________________________

🎨 Interface do Usuário

- O design do aplicativo segue um estilo:

- Minimalista.

- Mobile First.

- Componentes simples e intuitivos.

___________________________________________________________________________________________________________________________________________________________________________

O fluxo da interface é simples:

- O usuário digita um CEP.

- Clica em Buscar endereço.
 
- O aplicativo consulta a API.

- O resultado é exibido em um card abaixo do formulário.

___________________________________________________________________________________________________________________________________________________________________________

📂 *Futura* Estrutura de Pastas

```
lib/
├── src/
│   ├── cubit/
│   │   ├── cep_cubit.dart
│   │   └── cep_state.dart
│   │      (gerenciamento de estado da aplicação utilizando Cubit)
│   │
│   ├── data/
│   │   ├── models/
│   │   │   └── cep_data_model.dart
│   │   │      (modelo de dados responsável pelo parsing da resposta da API)
│   │   │
│   │   └── repositories/
│   │       └── cep_repository.dart
│   │          (camada responsável por abstrair a origem dos dados)
│   │
│   ├── pages/
│   │   └── home_page.dart
│   │      (tela principal da aplicação e ponto de interação com o usuário)
│   │
│   ├── utils/
│   │   ├── app_assets.dart
│   │   ├── app_colors.dart
│   │   ├── app_sizes.dart
│   │   └── app_text_styles.dart
│   │      (centralização de estilos e constantes visuais do app)
│   │
│   ├── validation/
│   │   └── validation_mixin.dart
│   │      (regras de validação reutilizáveis para os formulários)
│   │
│   └── widgets/
│       ├── input_card.dart
│       ├── response_card.dart
│       └── title_input_card.dart
│          (componentes reutilizáveis da interface)
│
└── main.dart
   (ponto de entrada da aplicação)

```

___________________________________________________________________________________________________________________________________________________________________________

🌐 API Utilizada

 O aplicativo utiliza a API pública:

- ViaCEP.

- https://viacep.com.br/ws/{CEP}/json/.

- Ela permite consultar informações de endereço a partir de um CEP brasileiro.

___________________________________________________________________________________________________________________________________________________________________________

🚀 Status do Projeto.

- 🔧 Em desenvolvimento.

- 📈 Evoluindo passo a passo.

- 📢 Progresso sendo documentado no LinkedIn.

___________________________________________________________________________________________________________________________________________________________________________

📌 Próximos Passos (planejado)

- Validação automática de CEP.

- Animação ao exibir resultado.

- Melhorias de UX.

- Organização adicional da arquitetura.

___________________________________________________________________________________________________________________________________________________________________________

👤 Autor
- Desenvolvido por Lucas Batista.

💻 GitHub:
- https://github.com/LucasBatistaX

💼 LinkedIn:
- https://www.linkedin.com
