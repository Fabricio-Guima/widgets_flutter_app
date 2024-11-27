# 📱 Flutter Widgets Project

Este repositório apresenta um projeto Flutter desenvolvido na **versão 3**, demonstrando o uso de diversos recursos visuais, funcionais e boas práticas de **arquitetura modular** para criar um aplicativo escalável e fácil de manter.

---

## 🚀 **Funcionalidades Principais**

### Navegação e Organização

- **`go_router`**: Gerenciamento de rotas dinâmicas e organizadas para facilitar a navegação entre telas.

### Visual e Interatividade

- **Animações com `animated_do`**: Efeitos animados para transições e elementos interativos.
- **Assets e Imagens Dinâmicas**:
  - Uso de imagens locais em cards.
  - Carregamento de imagens aleatórias com [Picsum](https://picsum.photos/) usando o widget `NetworkImage`.
- **Gerenciamento de Temas com Riverpod**:
  - **Modo Escuro/Claro**: Controle do estado de ativação do tema escuro usando `isDarkModeProvider`.
  - **Personalização de Cores (AppTheme)**: Alteração dinâmica de cores dos widgets, textos e ícones.
    - Para manipular o estado do tema do aplicativo, foi utilizada a técnica de **cópia imutável**, implementada através do método `copyWith()`.

### Indicadores de Progresso

- **Barras de Progresso**:
  - Lineares e circulares.
  - Indicadores controlados e animados implementados com `StreamBuilder`.

### Interações do Usuário

- **`RefreshIndicator`**: Atualização de listas via pull-to-refresh.
- **Scroll Infinito**: Carregamento dinâmico de itens ao final da lista.
- **Snackbars e Diálogos**: Exibição de mensagens e interações contextuais.
- **Componentes de Seleção**:
  - Switches, Checkboxes e Radios configurados para diferentes estados.
- **Listagem e Layouts**:
  - **Tiles e Listas Dinâmicas**.
  - Navegação deslizável com **PageView**.

---

## 🛠 **Tecnologias e Bibliotecas**

- **Flutter 3**: Framework principal.
- **`go_router`**: Navegação e rotas.
- **`animated_do`**: Animações.
- **`StreamBuilder`**: Gerenciamento de estados e carregamento assíncrono.
- **`Future`**: Simulação de tarefas assíncronas para carregamentos e interações.
- **`NetworkImage`**: Carregamento de imagens dinâmicas.
- **Riverpod**: Gerenciamento de estados reativo e eficiente.

---

## 🏗 **Arquitetura Modular**

O projeto adota uma abordagem de arquitetura modular para garantir:

- **Organização do Código**: Separação em módulos claros, como:
  - Configurações
  - Camada de Apresentação
  - Gerenciamento de Rotas
- **Escalabilidade**: Estrutura que facilita a expansão de funcionalidades.
- **Manutenibilidade**: Código limpo e modular, permitindo alterações e atualizações de forma ágil.

---

## 🎨 **Gerenciamento de Estados com Riverpod**

O projeto utiliza o **Riverpod** para um gerenciamento de estado eficaz e escalável, especialmente para controle de temas:

1. **Estado de Modo Escuro/Claro (`isDarkModeProvider`)**:

   - Permite alternar entre o tema escuro e o tema claro dinamicamente.

2. **Estado do Tema do Aplicativo (`appThemeProvider`)**:
   - Permite personalizar as cores dos widgets, textos e ícones.
   - Para manipular o estado, foi utilizado o método **`copyWith()`**, permitindo criar cópias imutáveis do tema atual e atualizar propriedades específicas de forma eficiente e segura.
