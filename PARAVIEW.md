# Instalar o ParaView

O ParaView é gratuito e serve para visualizar os resultados das simulações.

## 1. Download

Vai a **paraview.org/download** e descarrega a versão **5.12** para o teu sistema:

- Windows → `ParaView-5.12.x-Windows-Python3.x-x86_64.exe`
- macOS Intel → `ParaView-5.12.x-macOS-Python3.x-x86_64.dmg`
- macOS Apple Silicon (M1/M2/M3) → `ParaView-5.12.x-macOS-Python3.x-arm64.dmg`
- Linux → `ParaView-5.12.x-MPI-Linux-Python3.x-x86_64.tar.gz`

## 2. Instalar

- **Windows:** executa o `.exe` e segue as instruções
- **macOS:** abre o `.dmg` e arrasta o ParaView para a pasta Applications
- **Linux:** extrai o `.tar.gz` e corre `bin/paraview`

## 3. Abrir resultados de uma simulação

1. No Codespace, clica com o botão direito na pasta do caso → **Download**
2. Extrai o ficheiro `.zip` no teu PC
3. Abre o ParaView
4. **File → Open** → entra na pasta `VTK/` → selecciona o ficheiro `.vtm`
5. Clica **Apply** no painel à esquerda
6. Escolhe o campo `T` no menu de cor (barra de ferramentas em cima)

## Dúvidas?

Consulta o professor ou o manual da prática correspondente.
