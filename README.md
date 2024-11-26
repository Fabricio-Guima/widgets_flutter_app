Flutter Showcase Project
Este repositório apresenta um projeto Flutter desenvolvido na versão 3, demonstrando o uso de diversos recursos visuais, funcionais e boas práticas de Clean Architecture para criar um aplicativo modular, escalável e fácil de manter.

🚀 Funcionalidades Principais
Navegação e Organização
go_router: Gerenciamento de rotas dinâmicas e organizadas para facilitar a navegação entre telas.
Visual e Interatividade
Animações com animated_do: Efeitos animados para transições e elementos interativos.
Assets e Imagens Dinâmicas:
Uso de imagens locais em cards.
Carregamento de imagens aleatórias com Picsum usando o widget NetworkImage.
Indicadores de Progresso:
Barras de progresso lineares e circulares.
Indicadores controlados e animados implementados com StreamBuilder.
Interações do Usuário
RefreshIndicator: Atualização de listas via pull-to-refresh.
Scroll Infinito: Carregamento dinâmico de itens ao final da lista.
Snackbars e Diálogos: Exibição de mensagens e interações contextuais.
Componentes de Seleção:
Switches, Checkboxes e Radios configurados para diferentes estados.
Listagem e Layouts:
Tiles e listas dinâmicas.
Navegação deslizável com PageView.
🛠 Tecnologias e Bibliotecas
Flutter 3: Framework principal.
go_router: Navegação e rotas.
animated_do: Animações.
StreamBuilder: Gerenciamento de estados e carregamento assíncrono.
Future: Simulação de tarefas assíncronas para carregamentos e interações.
NetworkImage: Carregamento de imagens dinâmicas.

🏗 Arquitetura
O projeto segue os princípios de Clean Architecture:

Modularidade: Camadas bem definidas (Domínio, Dados e Apresentação).
Desacoplamento: Uso de interfaces e injeção de dependências.
Manutenibilidade: Código organizado para facilitar expansão e atualizações.
