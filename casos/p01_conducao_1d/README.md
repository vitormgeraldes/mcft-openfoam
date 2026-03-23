# P1 — Condução 1D Estacionária

## Problema físico

Uma barra metálica de comprimento $L = 0.3$ m está sujeita a:
- Temperatura na face esquerda: $T_W = 150$ °C
- Temperatura na face direita: $T_E = 50$ °C

Não há geração de calor. Em estado estacionário a equação que governa é:

$$\frac{d}{dx}\left(k \frac{dT}{dx}\right) = 0$$

cuja solução analítica é uma variação **linear** de temperatura.

## Ligação ao livro (Capítulo 2, Exercício 2.1)

Este caso replica exactamente o Exercício 2.1 do livro — 4 volumes de controlo uniformes.

| Célula | Posição $x$ (m) | $T$ FVM (°C) | $T$ analítica (°C) |
|--------|-----------------|--------------|---------------------|
| 1      | 0.0375          | **137.5**    | 137.5               |
| 2      | 0.1125          | **112.5**    | 112.5               |
| 3      | 0.1875          | **87.5**     | 87.5                |
| 4      | 0.2625          | **62.5**     | 62.5                |

Para uma malha uniforme sem termos fonte, o FVM reproduz a solução exacta.

## Como correr

```bash
./Allrun
```

## Solver usado

`laplacianFoam` — resolve equações de difusão escalar:
$$\frac{\partial T}{\partial t} = \nabla \cdot (D_T \nabla T)$$

Em estado estacionário ($t \to \infty$) o termo transiente desaparece e obtemos a solução correcta independentemente do valor de $D_T$.

## Experiências a fazer

1. **Mudar o número de células**: edita `blockMeshDict`, linha `(4 1 1)` → `(10 1 1)` e volta a correr. A solução não muda (malha uniforme, sem fonte).

2. **Adicionar termo fonte**: edita `constant/transportProperties` e adiciona um termo `S`. Compara com a solução analítica do livro.

3. **Refinar e aplicar Richardson**: corre com 4, 8 e 16 células e calcula a ordem de convergência (Exercício 2.2 do livro).

## Visualização no SimFlow

1. Abre o SimFlow
2. **File → Open Case** → selecciona a pasta `p01_conducao_1d`
3. Clica em **Run** ou carrega o último instante de tempo
4. Visualiza o campo $T$ com o mapa de cores
