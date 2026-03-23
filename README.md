# MCFT — Casos OpenFOAM

**Computational Methods in Transport Phenomena**
Prof. Vítor Geraldes — IST, Técnico Lisboa

## Como usar (sem instalar nada)

### 1. Abre o Codespace

Clica no botão abaixo:

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/vitormgeraldes/mcft-openfoam)

Ou manualmente: **Code → Codespaces → Create codespace on main**

### 2. Aguarda a instalação (~3 minutos)

O OpenFOAM v2312 instala-se automaticamente.
Verás a mensagem `Instalação concluída!` no terminal.

### 3. Corre um caso

```bash
cd casos/p01_conducao_1d
./Allrun
```

### 4. Visualiza os resultados

Descarrega a pasta do caso e abre no **SimFlow** ou **ParaView**.

---

## Estrutura dos casos

| Pasta | Prática | Tópico |
|-------|---------|--------|
| `p01_conducao_1d/` | P1 | Condução 1D estacionária — laplacianFoam |
| `p02_transiente/` | P2 | Condução transiente — laplacianFoam |
| `p03_richardson_2d/` | P3 | Malha 2D — Richardson extrapolation |
| `p04_conveccao/` | P4 | Convecção-difusão — simpleFoam |
| `p05_nao_ortogonal/` | P5 | Malha não-ortogonal — GAMG |
| `p06_tubo_turbulento/` | P6 | Tubo turbulento — buoyantSimpleFoam |

---

## Requisitos

- Conta GitHub gratuita
- Browser (Firefox, Chrome, Safari, Edge)
- SimFlow 5.x para visualização (opcional)

---

## Versão do OpenFOAM

Este repositório usa **OpenFOAM v2312 (ESI/OpenCFD)** — compatível com SimFlow 5.x.
