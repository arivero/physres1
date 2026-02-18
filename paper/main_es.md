---
title: "De Newton a la Integral de Trayectoria"
author: "Alejandro Rivero"
date: "2026"
abstract: |
  Este artículo desarrolla una tesis estructural única a través de la teoría clásica y cuántica: las leyes físicamente significativas surgen como límites controlados de refinamientos locales componibles. Comenzamos con la aproximación poligonal de Newton al movimiento de fuerza central y su límite hacia la dinámica continua, luego re-expresamos la misma lógica en forma variacional moderna mediante funcionales de acción aditivos. Tratamos la integral de trayectoria como una ley de composición sobre rebanadas de tiempo refinadas, no como un postulado cuántico aislado, y enmarcamos la cuantización por deformación y la renormalización como dos mecanismos matemáticamente distintos para el control de la consistencia de los límites. La narrativa es constructiva: cada etapa retiene la anterior como condición límite o de compatibilidad en lugar de reemplazarla. Dentro de esta arquitectura reservamos un papel dedicado a sondas puntuales (soportadas por Dirac) en formulaciones débiles del principio de acción, destacando dónde son matemáticamente válidas y dónde es obligatoria la regularización. El resultado es un programa por etapas desde los métodos de límite newtonianos hasta las amplitudes cuánticas, en el que las ecuaciones clásicas se recuperan como límites estacionarios de un marco composicional más amplio.
---

# 1. Introducción
El problema histórico y técnico abordado aquí no es meramente "cómo cuantizar", sino "cómo definir una teoría de continuo estable a partir del refinamiento iterativo". El artículo trata por tanto la mecánica newtoniana, los principios de acción, la integración de trayectorias, la cuantización por deformación y la renormalización como partes de un único problema de continuidad.

El primer ancla es el método geométrico de Newton en el movimiento de fuerza central: reemplazar una curva por una secuencia de segmentos cortos, imponer una regla de actualización local, y pasar a un límite controlando qué se entiende por cantidades "que se anulan". En lenguaje moderno, el objeto clave no es la pieza geométrica más pequeña sino un procedimiento de refinamiento con contenido invariante [Newton1687]. (Una nota complementaria, "Incortable como Refinamiento Controlado", desarrolla esta distinción: "incortable" significa definido únicamente mediante un límite de refinamiento, no indivisible en el sentido ontológico.)

El segundo ancla es la formulación de la acción. La acción es aditiva bajo partición temporal, y esa aditividad es exactamente la estructura algebraica necesaria para comparar descripciones gruesas y finas. Esto crea el puente hacia la composición cuántica: si las contribuciones locales se componen multiplicativamente mientras que el funcional subyacente es aditivo, el peso exponencial es estructuralmente natural [Dirac1933] [Feynman1948].

La tensión fundacional de larga data puede formularse como una paradoja de refinamiento estilo Zenón: una descripción de refinamiento es una construcción de *límite infinito*, y el límite no es automáticamente único ni siquiera está definido una vez que los objetos refinados se vuelven singulares (sondas soportadas por Dirac, derivadas distribucionales) o una vez que las cantidades intermedias divergen. La crítica de Berkeley a las fluxiones de Newton — la objeción de los "fantasmas de cantidades desaparecidas" [Berkeley1734Analyst] — es una articulación temprana de esta tensión. La mecánica clásica a menudo la oculta tratando "enviar el parámetro de refinamiento a cero" como una operación axiomáticamente legítima. El programa que se persigue aquí es en cambio: mantener el refinamiento explícito, aislar dónde el paso al límite necesita control adicional, y tratar la **cuantización** y la **renormalización** como dos mecanismos distintos para hacer que la composición refinada sea estable cuando el límite newtoniano ingenuo no es riguroso tal como está escrito.

`Heurística H0.2 (Modos concretos de fallo del refinamiento ingenuo a cero).`
Tres obstrucciones recurrentes que hacen que "refinar \(\to 0\)" sea no trivial en la práctica son:
1. **Sondas singulares:** variaciones con soporte puntual y esquinas/impulsos fuerzan formas débiles distribucionales (suavizadores y términos de contacto).
2. **No unicidad:** el refinamiento/composición puede admitir múltiples esquemas clásicamente equivalentes pero cuánticamente distintos (elecciones de orden/discretización), requiriendo un mapa de equivalencia o control explícito. (Testigo mínimo: la división en rebanadas de tiempo de \(H=pq\) puede producir \(-\hat p\hat q\) vs \(-\hat q\hat p\), difiriendo en \(O(\hbar)\) como operadores; requerir simetría del generador — la condición mínima para la auto-adjuntividad, necesaria a su vez para la unitariedad — selecciona la convención del punto medio (semi-densidad); ver Observación D4.1c.)
3. **Divergencia:** algunos límites de refinamiento no convergen sin sustracción/flujo de parámetros (renormalización). (Testigo de juguete: la derivada existe sólo tras sustraer una divergencia \(1/\varepsilon\) en el cociente de diferencias.)
Este manuscrito trata estos como problemas de control de límites en lugar de postulados sobre "la naturaleza a la escala más pequeña".

`Heurística H0.2a (No hay medida de Lebesgue en el espacio de trayectorias).`
En espacios de dimensión infinita no existe ninguna medida de Borel \(\sigma\)-finita no trivial invariante por traslaciones (no hay medida de Lebesgue/Haar) [Velhinho2017InfDimMeasure], por lo que el símbolo formal \(Dq\) en una integral de trayectoria no puede interpretarse como una "medida de Lebesgue ordinaria sobre trayectorias". Por tanto el eslogan "refinar la división temporal, integrar sobre trayectorias, y enviar \(\Delta t\to0\)" no es una afirmación de límite newtoniano bruto sino una definición-por-refinamiento que debe especificar normalización y, cuando haya singularidades, reglas de regulador/sustracción.

`Heurística H0.3 (Constantes como parámetros de control para los límites de compatibilidad).`
En este programa, \(\hbar\), \(c\) y \(G\) pueden leerse como parámetros de control para tres compatibilidades distintas: \(\hbar\to0\) recupera la estacionaridad clásica a partir de la composición oscilatoria, \(c\to\infty\) recupera la cinemática galileana/newtoniana a partir del refinamiento compatible con Lorentz, y \(G\to0\) desconecta la retroacción geométrica (con \(\hbar,c,G\) juntos definiendo la escala de Planck donde se encuentran los controles de refinamiento cuántico y gravitacional).
La `Derivación D0.2` siguiente da un ejemplo concreto de un paso \(c\to\infty\) que requiere una convención de sustracción explícita.

El tercer ancla es metodológica. En este manuscrito, la cuantización por deformación y la renormalización no se presentan como temas especializados desconectados. Son dos maneras de controlar los límites:
1. La cuantización por deformación controla el paso clásico-a-cuántico mediante deformación algebraica y recuperación de la estructura de Poisson en el límite de parámetro pequeño [Landsman1998] [Connes1994].
2. La renormalización controla los procedimientos de refinamiento divergentes mediante pasos intermedios dependientes del regulador y observables independientes del regulador [ConnesKreimer2000].

La Sección 2 fija el vocabulario formal y la taxonomía de afirmaciones usados en las secciones posteriores. También estrecha una ambigüedad fundacional:
el artículo no asume que los límites del continuo sean afirmaciones ontológicas sobre la naturaleza. Asume únicamente que son definiciones operacionales de objetos predictivos estables. Esta afirmación estrecha será sometida a prueba de tensión en secciones posteriores.

**Contribuciones (qué es nuevo aquí).**
1. Una lectura de refinamiento/composición de la cadena Newton \(\to\) acción \(\to\) núcleo en la que cada etapa se retiene como condición de compatibilidad, no se reemplaza.
2. Una formulación intrínseca de semi-densidades de la ley de composición para propagadores, separando la composición de núcleos libre de coordenadas de las convenciones de escalarización.
3. Una derivación de cierre semigrupal que muestra que el exponente de normalización a tiempo corto \(t^{-d/2}\) es forzado por la composición (el "jacobiano de raíz cuadrada").
4. Un teorema de necesidad (Proposición P4.2) que muestra que una escala de dimensión de acción \(\kappa=\hbar\) es forzada por tres requisitos independientes — composición, límite de identidad y homogeneidad dimensional — con la forma de peso exponencial derivada en lugar de asumida, y extensiones a entornos curvos, de interacción y de Lorentz.
5. Un marco de compatibilidad de refinamiento para la renormalización en el que la invariancia del GR es la condición de consistencia exigida por los límites de refinamiento divergentes.
6. Un cálculo completamente explícito de "el GR aparece antes que la TCC" (interacción de contacto/delta en 2D) incluido como testigo a nivel de apéndice.

# 2. Notación y Taxonomía de Afirmaciones
**Registro de dimensiones.**
A lo largo de las Secciones 2–7, \(d\) denota la dimensión de la variedad sobre la que se integra en la ley de composición (típicamente la dimensión del espacio de configuración/espacial en núcleos no relativistas). Cuando escribamos integrales espacio-temporales estilo teoría de campos, denotaremos la dimensión espacio-temporal con \(D\) para evitar confundirla con la dimensión de la variable de composición.

## 2.1 Objetos Fundamentales
Sea \(q:[t_i,t_f]\to \mathbb{R}^d\) una trayectoria en el espacio de configuración y \(\mathcal{L}(q,\dot q,t)\) una densidad lagrangiana. Definir la acción:

$$
S[q] = \int_{t_i}^{t_f} \mathcal{L}(q,\dot q,t)\,dt.
$$

Para una partición \(t_i=t_0< t_1<\cdots<t_N=t_f\) con \(\Delta t_k=t_{k+1}-t_k\), definir el funcional de acción discreto:

$$
S_N[q] = \sum_{k=0}^{N-1} \mathcal{L}\!\left(q_k,\frac{q_{k+1}-q_k}{\Delta t_k},t_k\right)\Delta t_k.
$$

Para el movimiento central plano \(q=(r,\theta)\), definir la velocidad areal y el momento angular:

$$
\dot A = \frac{1}{2}r^2\dot\theta,\qquad
L_{\mathrm{ang}} = m r^2\dot\theta = 2m\dot A.
$$

Estas definiciones se usan como puente newtoniano-a-variacional en la Sección 3 y la Sección 4.

## 2.2 Preliminares de la Formulación Débil para Sondas Puntuales
Sea \(\eta\in C_c^\infty((t_i,t_f);\mathbb{R}^d)\) una variación suave de soporte compacto. La primera variación se escribe
\(\delta S[q;\eta]\), y la estacionaridad significa \(\delta S[q;\eta]=0\) para toda \(\eta\) admisible.

Para modelar posteriormente sondas con soporte puntual, introducir una familia de suavizadores \(\rho_\varepsilon\) con
\(\rho_\varepsilon \rightharpoonup \delta\) en distribuciones cuando \(\varepsilon\to 0^+\). Cualquier uso de variaciones soportadas en Dirac en este manuscrito se entiende como un límite suavizado a menos que se etiquete explícitamente como heurística.

## 2.3 Taxonomía de Afirmaciones
Cada afirmación sustantiva está marcada por uno de:
1. `Proposición`: enunciado que se pretende matemáticamente válido bajo supuestos explícitos.
2. `Derivación`: cálculo explícito a partir de premisas enunciadas.
3. `Heurística`: puente físicamente motivado que no se presenta como demostración completa.

## 2.4 Afirmaciones Semilla del Programa
`Proposición P0.1 (Estructura de refinamiento aditivo).`
Dada una partición de \([t_i,t_f]\), la acción discreta \(S_N\) es aditiva sobre subintervalos concatenados por construcción. Por tanto la acción es un candidato natural para la comparación de refinamientos.

`Derivación D0.1 (Forma exponencial compatible con la composición).`
Suponga que un mapa de peso \(W\) sobre trayectorias divididas en rebanadas de tiempo satisface:
1. \(W[\gamma_1\!\circ\!\gamma_2]=W[\gamma_1]W[\gamma_2]\) para segmentos componibles.
2. \(\log W\) es local en las contribuciones de la rebanada.
3. El funcional aditivo correspondiente es proporcional a \(S_N\) en el límite de refinamiento.

Entonces existe una escala \(\kappa\) y una constante \(c_0\) tales que, salvo normalización,
\(W[\gamma]\propto \exp(c_0 S[\gamma]/\kappa)\).
Eligiendo \(c_0=i\) y \(\kappa=\hbar\) se recupera la forma de peso cuántico oscilatorio estándar.

`Heurística H0.1 (Recuperación clásica como concentración).`
Cuando la escala de fase es pequeña en relación con la variación de la acción, las contribuciones dominantes se concentran cerca de trayectorias de acción estacionaria. Esta es la afirmación estructural que más adelante se hace precisa mediante el análisis de fase estacionaria.

`Derivación D0.2 (Límite no relativista como sustracción controlada \(c\to\infty\)).`
Considerar la acción de partícula libre relativista escrita con un parámetro de velocidad de la luz explícito:
\[
S_{\mathrm{rel}}[q]
=-mc^2\int_{t_i}^{t_f} dt\;\sqrt{1-\frac{\|\dot q(t)\|^2}{c^2}}.
\]
Para \(\|\dot q\|\ll c\), expandir la raíz cuadrada:
\[
S_{\mathrm{rel}}[q]
=\int_{t_i}^{t_f} dt\left(-mc^2+\frac12 m\|\dot q(t)\|^2+O(c^{-2})\right).
\]
El término \(-mc^2(t_f-t_i)\) diverge cuando \(c\to\infty\). Clásicamente es inerte (agregar una constante a \(\mathcal L\) no cambia las ecuaciones de Euler-Lagrange), por lo que puede sustraerse como contratérmino aditivo permitido para obtener un límite finito \(c\to\infty\):
la acción cinética newtoniana \(\int \frac12 m\|\dot q\|^2 dt\) más correcciones relativistas de orden superior.
En amplitudes cuánticas, la misma sustracción corresponde a una fase global \(e^{-imc^2(t_f-t_i)/\hbar}\).
Esta observación es a nivel de mecánica de partículas; los efectos de campo y gravitacionales de los términos constantes (energía del vacío) son una cuestión separada que no se aborda aquí.

## 2.5 Límite de Alcance Establecido
Esta sección fija la notación y los límites metodológicos:
1. Los enunciados históricos se usan únicamente como motivación anclada en la fuente.
2. La validez matemática requiere supuestos explícitos y, para objetos singulares, regularización explícita.
3. Los enunciados a nivel cuántico y de TCC se introducen sólo después de fijar el lenguaje de la ley de composición y refinamiento.

> **Mapa del lector (compatibilidades; dónde buscar).**
> - **Compatibilidad de partición** (\(\mathcal C_t\)): refinamiento/composición temporal (división en rebanadas de tiempo). Ver Secciones 3--4.
> - **Compatibilidad de representación** (\(\mathcal Q_\hbar\)): elecciones de orden/discretización con el mismo límite \(\hbar\to0\). Ver Secciones 6--7.
> - **Compatibilidad de escala** (\(\mathcal R_\Lambda\)): comparación de escala gruesa/fina tras evolución de parámetros (GR). Ver Sección 8 (y Apéndice 10.5 para un testigo explícito).
>
> Definiciones de símbolos y resumen formal: Apéndice 10.3.

Transición a la Sección 3:
con la notación fijada, la siguiente sección deriva el argumento de refinamiento del área newtoniana en símbolos modernos y lo vincula con la conservación de \(L_{\mathrm{ang}}\).

# 3. Refinamiento Newtoniano y Ley de las Áreas
## 3.1 Marco Crítico de la Fuente
En el Libro I, Proposición I de los *Principia*, Newton demuestra que una regla de fuerza centrípeta implica que áreas iguales son barridas en tiempos iguales por el vector de posición. La demostración histórica es poligonal y basada en el límite: se construye una trayectoria lineal a trozos con impulsos dirigidos a un centro fijo, luego se pasa a una curva continua por refinamiento [Newton1687].

Esta sección usa esa estructura directamente y sólo entonces la traduce a notación vectorial moderna. Desde un punto de vista crítico de las fuentes, los enunciados siguientes distinguen:
1. El argumento geométrico de Newton sobre polígonos y límites.
2. Una reformulación moderna mediante torca y momento angular.

La reformulación es matemáticamente equivalente bajo los mismos supuestos, pero es una traducción interpretativa, no una reproducción histórica literal.

## 3.2 Modelo Discreto de Refinamiento
Fijar pasos de tiempo iguales \(\Delta t>0\), tiempos \(t_k=t_0+k\Delta t\), y un centro fijo \(O\). Sea \(\mathbf r_k\) el vector de posición en \(t_k\). El modelo escalonado es:
1. Deriva inercial libre entre \(t_k\) y \(t_{k+1}\).
2. Impulso instantáneo en cada vértice \(t_k\), dirigido a lo largo de \(\mathbf r_k\) (centrípeto/central).

Sea \(\mathbf v_k^{-}\) la velocidad justo antes del impulso en \(t_k\), y \(\mathbf v_k^{+}\) justo después. La condición de impulso es

$$
m\big(\mathbf v_k^{+}-\mathbf v_k^{-}\big)=J_k\,\hat{\mathbf r}_k,
\qquad \hat{\mathbf r}_k=\frac{\mathbf r_k}{\|\mathbf r_k\|}.
$$

La deriva da entonces

$$
\mathbf r_{k+1}=\mathbf r_k+\mathbf v_k^{+}\Delta t,
\qquad
\mathbf v_{k+1}^{-}=\mathbf v_k^{+}.
$$

`Derivación D1.1 (Invariancia del momento angular en el paso finito).`
Definir \( \mathbf L_k^{-}=m\,\mathbf r_k\times \mathbf v_k^{-}\), \( \mathbf L_k^{+}=m\,\mathbf r_k\times \mathbf v_k^{+}\).

En el impulso:

$$
\mathbf L_k^{+}-\mathbf L_k^{-}
=m\,\mathbf r_k\times(\mathbf v_k^{+}-\mathbf v_k^{-})
=\mathbf r_k\times (J_k\hat{\mathbf r}_k)=\mathbf 0.
$$

Durante la deriva:

$$
\mathbf L_{k+1}^{-}
=m\,\mathbf r_{k+1}\times \mathbf v_{k+1}^{-}
=m(\mathbf r_k+\mathbf v_k^{+}\Delta t)\times \mathbf v_k^{+}
=m\,\mathbf r_k\times \mathbf v_k^{+}
=\mathbf L_k^{+}.
$$

Por tanto \( \mathbf L_{k+1}^{-}=\mathbf L_k^{-}\): el momento angular se conserva exactamente en cada paso finito en este modelo de refinamiento.

`Derivación D1.2 (Áreas iguales en tiempos iguales, forma discreta).`
El área barrida en el paso \(k\) es el área del triángulo

$$
\Delta A_k
=\frac12\left\|\mathbf r_k\times(\mathbf r_{k+1}-\mathbf r_k)\right\|
=\frac12\left\|\mathbf r_k\times \mathbf v_k^{+}\right\|\Delta t
=\frac{\|\mathbf L\|}{2m}\Delta t.
$$

Por tanto para \(\Delta t\) fijo, \(\Delta A_k\) es independiente de \(k\). Este es el enunciado de áreas iguales a nivel poligonal finito.

`Derivación D1.2a (Testigo numérico de la ley de área en paso finito).`
Considerar una fuerza inversa al cuadrado con \(GM=m=1\). Colocar un cuerpo en \(\mathbf r_0=(1,0)\) con velocidad \(\mathbf v_0=(0,0.8)\) — este es el apoapsis de una elipse con excentricidad \(e=9/25=0.36\) y semieje mayor \(a\approx 0.735\). El momento angular es \(L=0.8\).

Ejecutando el esquema impulso-deriva de la Sección 3.2 con \(N=12\) pasos iguales en un período (\(T\approx 3.96\)): cada área triangular \(\Delta A_k\) es igual a \(L\,\Delta t/(2m)\approx 0.132\) exactamente en el sentido algebraico de D1.1–D1.2, a pesar de que la distancia radial varía por un factor \(r_{\mathrm{apo}}/r_{\mathrm{peri}}=(1+e)/(1-e)=17/8\approx 2.1\) entre apoapsis y periapsis. La igualdad no es una coincidencia numérica ni una aproximación del continuo — es una identidad algebraica en cada paso finito, válida para cualquier fuerza central. Sólo la forma de la trayectoria converge bajo refinamiento; el invariante de área barrida es exacto en cada \(N\).

## 3.3 Paso al Continuo y Generalidad de la Fuerza Central
`Proposición P1.1 (Límite de refinamiento de la velocidad areal).`
Si \(\max_k \Delta t_k\to 0\) bajo refinamiento consistente, la ley de paso finito anterior produce

$$
\frac{dA}{dt}=\frac{\|\mathbf L\|}{2m},
$$

para la trayectoria límite siempre que el límite exista en el sentido diferenciable estándar.

Para una fuerza central suave \(\mathbf F(\mathbf r)=f(r)\hat{\mathbf r}\), el mismo invariante se sigue de la torca:

$$
\frac{d\mathbf L}{dt}=\mathbf r\times \mathbf F=\mathbf 0.
$$

Por tanto la ley areal es independiente del índice de potencia inversa \(n\) en \(\mathbf F=-(K/r^n)\hat{\mathbf r}\): \(n\) cambia la dinámica radial y las familias de órbitas, pero no el mecanismo de conservación de la velocidad areal en sí. Una nota complementaria sobre órbitas centrales relativistas analiza la cinemática compatible con Lorentz en detalle.

`Observación P1.1a (Puente del umbral asintótico: Newton \(3\) vs RE \(2\)).`
Para una fuerza central atractiva de ley de potencia \(F(r)=K/r^q\), momento angular fijo \(L\) y asintótica cinética de alto momento \(E_{\mathrm{kin}}(p)\sim a p^\nu\), se tiene \(p\sim L/r\) cuando \(r\to0\). Por tanto la barrera centrífuga escala como \(r^{-\nu}\) mientras que la atracción escala como \(r^{-(q-1)}\), dando el umbral \(q_{\mathrm{crit}}=\nu+1\). Esto recupera el desplazamiento newtoniano/relativista especial (\(\nu=2\Rightarrow q_{\mathrm{crit}}=3\), \(\nu=1\Rightarrow q_{\mathrm{crit}}=2\)) en una línea. El criterio es una afirmación asintótica de \(L\) fijo y \(r\) pequeño, y es distinto del mecanismo separado de identidad dimensional de cuadrado inverso (donde \(K/L\) tiene unidades de velocidad y produce \(v=K/L\) en el análisis de órbita circular de RE).

`Heurística H1.1 (Interpretación impulso-a-continuo).`
El modelo de impulso es un andamiaje de refinamiento para el forzamiento continuo, no una afirmación literal de que la naturaleza actúa mediante golpes discretos. Su valor es estructural: los invariantes demostrados exactamente en el paso finito sobreviven al refinamiento controlado.

`Observación H1.1a (Convergencia de la construcción poligonal).`
El paso de órbitas poligonales discretas a una trayectoria continua es no trivial: depende del Lema 3 de Newton (Libro I, Sección 1 de los *Principia*) y ha sido objeto de un debate académico. Nauenberg [Nauenberg2003KeplerArea] da una reconstrucción moderna que muestra que la construcción poligonal tiene un límite de continuo bien definido que parametriza una curva plana continua; Pourciau [Pourciau2003] analiza críticamente el mismo límite e identifica condiciones bajo las cuales el supuesto del impulso requiere cuidado adicional. Para los propósitos de este artículo, la salvedad en P1.1 ("siempre que el límite exista en el sentido diferenciable estándar") es suficiente: el contenido estructural del invariante de área igual en el paso finito es independiente de las sutilezas de convergencia.

`Heurística H1.2 (El esquema de Newton como integrador simpléctico).`
La estructura impulso-deriva de la Sección 3.2 — actualizar la velocidad mediante un impulso en la posición actual, luego derivar — es precisamente el integrador de Euler simpléctico aplicado al hamiltoniano separable \(H(\mathbf r,\mathbf p)=|\mathbf p|^2/(2m)+V(r)\) [Nauenberg1994SymplecticNewton] [Nauenberg2018GraphicalMethod]. La conservación exacta del momento angular (D1.1) es consecuencia de dos propiedades: la fuerza es central (de modo que cada impulso conserva \(\mathbf L\)), y la deriva libre es lineal (de modo que también conserva \(\mathbf L\)). Más en general, el carácter simpléctico del mapa significa que preserva la 2-forma canónica \(\omega=d\mathbf p\wedge d\mathbf r\) en cada paso finito. Aunque el método tiene la misma tasa de convergencia de primer orden que el esquema de Euler explícito analizado en la Sección 8.4, sus correcciones por duplicación de paso están restringidas a preservar la forma simpléctica — un análogo en paso finito del principio de que los contratérminos de renormalización deben respetar las simetrías de la teoría.

`Observación H1.2a (Teorema de convergencia y modo de fallo).`
La teoría de convergencia estándar para integradores numéricos de un paso garantiza que la órbita poligonal converge a la órbita continua verdadera con error global \(O(h)\) en cualquier intervalo de tiempo finito donde la fuerza \(\nabla V\) sea de Lipschitz — es decir, lejos de la singularidad de colisión \(r=0\) de los potenciales centrales. En el punto de colisión, la constante de Lipschitz diverge, el esquema de paso fijo se rompe, y se requiere regularización (transformaciones de coordenadas de Kustaanheimo-Stiefel/Levi-Civita) o paso adaptativo. Los invariantes estructurales (momento angular, áreas iguales) son exactos en cada paso finito independientemente y no dependen de la convergencia del límite de interpolación. Esto hace precisa la salvedad en H1.1a: el límite existe en el sentido diferenciable estándar exactamente donde la fuerza es de Lipschitz, y falla en las singularidades donde los modelos de fuerza central dejan de ser suaves.

## 3.4 Pregunta Cerrada del Marco de la Sección 2
La Sección 2 dejó abierta una ambigüedad clave: ¿es la ley de áreas de Newton una aproximación de paso pequeño o una afirmación genuina de invariante? Las derivaciones anteriores cierran ese punto:
dentro del modelo poligonal de impulso central, la ley de área igual es exacta en cada paso finito y sólo la interpolación de la curva es un paso límite.

Transición a la Sección 4:
con el invariante newtoniano fijado en notación moderna, la siguiente sección deriva las ecuaciones de Euler-Lagrange y la conservación de la carga de Noether para mostrar la misma estructura directamente en el lenguaje de la acción.

# 4. La Acción como Invariante Aditivo
## 4.1 Configuración de la Estacionaridad
El invariante de la Sección 3 se derivó de un modelo de refinamiento en geometría de configuración. Ahora replanteamos la misma física mediante la estacionaridad de la acción.

Suponer:
1. \(q:[t_i,t_f]\to\mathbb R^d\) es al menos \(C^2\), y las variaciones \(\eta\) son \(C^1\) (o suaves con soporte compacto).
2. \(\mathcal L(q,\dot q,t)\) es \(C^1\) en \(t\) y \(C^2\) en \((q,\dot q)\) en la región alcanzada por \((q(t),\dot q(t))\).

Sea la acción

$$
S[q]=\int_{t_i}^{t_f}\mathcal L\big(q(t),\dot q(t),t\big)\,dt,
$$

y definir \(q_\varepsilon=q+\varepsilon\eta\) para una variación admisible \(\eta\), con ya sea:
1. extremos fijos \(\eta(t_i)=\eta(t_f)=0\), o
2. soporte compacto en \((t_i,t_f)\).

La estacionaridad significa

$$
\delta S[q;\eta]
=\left.\frac{d}{d\varepsilon}\right|_{\varepsilon=0} S[q_\varepsilon]
=0
\quad\text{para toda }\eta\text{ admisible}.
$$

`Proposición P2.0 (Lema fundamental, forma vectorial).`
Si \(F:[t_i,t_f]\to\mathbb R^d\) es continua y \(\int_{t_i}^{t_f} F(t)\cdot\eta(t)\,dt=0\) para toda \(\eta\in C_c^\infty((t_i,t_f);\mathbb R^d)\), entonces \(F(t)=0\) para todo \(t\in(t_i,t_f)\).

## 4.2 Derivación de Euler-Lagrange
`Derivación D2.1 (Ecuación de Euler-Lagrange).`
Diferenciar bajo el signo integral (justificado por los supuestos de regularidad). Por la regla de la cadena,
\(\left.\frac{d}{d\varepsilon}\right|_{0}\mathcal L(q+\varepsilon\eta,\dot q+\varepsilon\dot\eta,t)
=\frac{\partial\mathcal L}{\partial q}\cdot\eta+\frac{\partial\mathcal L}{\partial\dot q}\cdot\dot\eta\).
Por tanto:

$$
\delta S[q;\eta]
=\int_{t_i}^{t_f}
\left(
\frac{\partial\mathcal L}{\partial q}\cdot\eta
+
\frac{\partial\mathcal L}{\partial \dot q}\cdot\dot\eta
\right)dt.
$$

Integrando el segundo término por partes:

$$
\delta S[q;\eta]
=
\left[
\frac{\partial\mathcal L}{\partial\dot q}\cdot\eta
\right]_{t_i}^{t_f}
+
\int_{t_i}^{t_f}
\left(
\frac{\partial\mathcal L}{\partial q}
-\frac{d}{dt}\frac{\partial\mathcal L}{\partial\dot q}
\right)\cdot\eta\,dt.
$$

Las condiciones de extremo o soporte compacto eliminan el término de frontera. Por la `Proposición P2.0`, la estacionaridad para toda \(\eta\) admisible implica:

$$
\frac{d}{dt}\frac{\partial\mathcal L}{\partial\dot q}
-\frac{\partial\mathcal L}{\partial q}
=0.
$$

Esta es la ecuación de Euler-Lagrange.

## 4.3 Simetría Rotacional y Momento Angular
Para el movimiento central plano con

$$
\mathcal L(r,\theta,\dot r,\dot\theta)=
\frac{m}{2}\big(\dot r^2+r^2\dot\theta^2\big)-V(r),
$$

\(\theta\) es cíclica (\(\partial\mathcal L/\partial\theta=0\)). Aplicar Euler-Lagrange a \(\theta\) da:

$$
p_\theta=\frac{\partial\mathcal L}{\partial\dot\theta}=m r^2\dot\theta
=L_{\mathrm{ang}}
\quad\Rightarrow\quad
\frac{dL_{\mathrm{ang}}}{dt}=0,
$$

que es la ley de conservación rotacional de Noether [Noether1918].

En forma vectorial completa para \(\mathcal L(\mathbf r,\dot{\mathbf r})=\frac{m}{2}\|\dot{\mathbf r}\|^2-V(\|\mathbf r\|)\), el momento canónico es \(\mathbf p=\partial\mathcal L/\partial\dot{\mathbf r}=m\dot{\mathbf r}\) y la invarianza rotacional produce el vector conservado de momento angular

$$
\mathbf L=\mathbf r\times\mathbf p.
$$

`Proposición P2.1 (Equivalencia del invariante geométrico-variacional).`
Bajo los supuestos de regularidad anteriores, el invariante de ley de áreas de la Sección 3 y la carga de Noether son la misma cantidad en lenguaje diferente:

$$
\dot A=\frac12 r^2\dot\theta=\frac{L_{\mathrm{ang}}}{2m}.
$$

Así la Sección 3 y la Sección 4 no proporcionan derivaciones en competencia; proporcionan presentaciones geométrica y variacional de una estructura conservada.
La demostración poligonal de Newton es también estrictamente más fuerte en alcance: el enunciado de área igual es exacto en cada paso de impulso finito sin asumir regularidad ni siquiera un lagrangiano, mientras que la conservación de la carga de Noether requiere una trayectoria suave y simetría rotacional de \(\mathcal L\) para reproducir el mismo invariante.

`Proposición P2.2 (Energía para el movimiento central autónomo).`
Si \(\mathcal L\) no tiene dependencia temporal explícita, entonces la función de energía

$$
E=\dot q\cdot\frac{\partial\mathcal L}{\partial\dot q}-\mathcal L
$$

se conserva (simetría de traslación temporal, otra ley de Noether) [Noether1918]. Para el lagrangiano de movimiento central anterior,

$$
E=\frac{m}{2}\dot r^2+\frac{L_{\mathrm{ang}}^2}{2mr^2}+V(r),
$$

mostrando la reducción estándar a movimiento radial unidimensional con potencial efectivo \(V_{\mathrm{eff}}(r)=V(r)+L_{\mathrm{ang}}^2/(2mr^2)\).

## 4.4 Aditividad y Pre-Puente de Composición
Recordar el funcional de acción discreto desde el punto de vista del refinamiento:

$$
S_N[q]=\sum_{k=0}^{N-1}
\mathcal L\!\left(q_k,\frac{q_{k+1}-q_k}{\Delta t_k},t_k\right)\Delta t_k.
$$

Es aditivo bajo concatenación de intervalos por construcción. Esta aditividad es la entrada estructural usada posteriormente para el peso cuántico basado en composición en la Sección 6.

`Heurística H2.1 (Hacia sondas distribucionales).`
Las sondas puntuales de extremos pueden expresarse en lenguaje distribucional. En este manuscrito, el uso técnico de tales sondas se difiere a la Sección 5, donde se enuncian explícitamente los límites de suavizadores y admisibilidad.

Transición a la Sección 5:
con la estructura de Euler-Lagrange y Noether fijada, a continuación extendemos el análisis de estacionaridad a entornos débiles/distribucionales y aclaramos dónde son válidas las construcciones soportadas por Dirac.

# 5. Distribuciones de Dirac y Acción Extremal
## 5.1 Por Qué Aparecen las Formulaciones Débiles Aquí
La historia hasta ahora trató las trayectorias como clásicamente suaves. Dos temas fuerzan una formulación más cuidadosa:
1. Los límites de refinamiento a menudo producen objetos que sólo son suaves a trozos (esquinas) o que se manejan mejor mediante límites débiles.
2. La idea de "sonda puntual" (localización soportada por Dirac) se enuncia naturalmente en la teoría de distribuciones.

Mantenemos el papel de las distribuciones estrecho y explícito:
las distribuciones se usan como funcionales lineales sobre funciones de prueba y como límites de aproximaciones suaves. No se asumen operaciones no lineales sobre distribuciones a menos que estén regularizadas.

## 5.2 Ecuación de Euler-Lagrange Débil
Sea \(q\in C^1([t_i,t_f];\mathbb R^d)\) una trayectoria candidata y suponer que \(\mathcal L(q,\dot q,t)\) es suficientemente suave para que \(\partial_q\mathcal L\) y \(\partial_{\dot q}\mathcal L\) estén bien definidas a lo largo de \(q\).

`Proposición P3.1 (Enunciado de estacionaridad débil).`
Si \(\delta S[q;\eta]=0\) para toda \(\eta\in C_c^\infty((t_i,t_f);\mathbb R^d)\), entonces el operador de Euler-Lagrange

$$
F[q](t)\equiv \frac{\partial\mathcal L}{\partial q}(q,\dot q,t)
-\frac{d}{dt}\frac{\partial\mathcal L}{\partial\dot q}(q,\dot q,t)
$$

se anula como distribución en \((t_i,t_f)\): para toda \(\eta\) de prueba,

$$
\int_{t_i}^{t_f} F[q](t)\cdot\eta(t)\,dt=0.
$$

Equivalentemente, \(F[q]=0\) en \(\mathcal D'((t_i,t_f);\mathbb R^d)\), donde \(\mathcal D'\) es el dual de \(C_c^\infty\).

`Derivación D3.1 (Forma débil desde la primera variación).`
Comenzar desde la identidad de primera variación (como en la Sección 4):

$$
\delta S[q;\eta]
=\int_{t_i}^{t_f}\left(
\frac{\partial\mathcal L}{\partial q}\cdot\eta
+
\frac{\partial\mathcal L}{\partial\dot q}\cdot\dot\eta
\right)dt.
$$

Integrar el segundo término por partes. El soporte compacto elimina el término de frontera y produce la identidad distribucional enunciada.

## 5.3 Sondas Puntuales mediante Suavizadores (No Deltas Brutas)
Elegir un suavizador no negativo \(\rho\in C_c^\infty(\mathbb R)\) con \(\int\rho=1\), y definir \(\rho_\varepsilon(t)=\varepsilon^{-1}\rho(t/\varepsilon)\).

`Proposición P3.2 (Sondeo localizado bajo continuidad).`
Suponer que \(F[q](t)\) es continua en un tiempo \(t_0\in(t_i,t_f)\). Entonces la estacionaridad débil implica la condición puntual \(F[q](t_0)=0\).

`Derivación D3.2.`
Para cualquier vector fijo \(u\in\mathbb R^d\), elegir una función de prueba localizada
\(\eta_\varepsilon(t)=\rho_\varepsilon(t-t_0)\,u\). Entonces la identidad débil da

$$
0=\int_{t_i}^{t_f} F[q](t)\cdot \rho_\varepsilon(t-t_0)\,u\,dt
=u\cdot\int_{t_i}^{t_f} \rho_\varepsilon(t-t_0)\,F[q](t)\,dt.
$$

Cuando \(\varepsilon\to 0^+\), la integral de convolución tiende a \(F[q](t_0)\) por continuidad. Como \(u\) era arbitrario, \(F[q](t_0)=0\).

Este es el sentido preciso en el que las "sondas soportadas por Dirac" recuperan las ecuaciones de Euler-Lagrange puntuales: lo hacen mediante límites de suavizadores, no insertando expresiones no lineales que involucran \(\delta(t-t_0)\).
(Para un tratamiento ampliado con hipótesis de análisis funcional explícitas, un modelo de impulso delta completamente trabajado, y la conexión desde el ajuste de \(N\)-impulsos hasta la integral de trayectoria dividida en rebanadas de tiempo, cf.\ Teorema 2.1 y Sección 4 en la nota complementaria sobre Sondas de Dirac.)

## 5.4 Esquinas e Impulsos: Condiciones de Salto
Hay dos fenómenos distintos que parecen "singulares" en el tiempo:
1. **Esquinas**: \(q\) es continua pero \(\dot q\) tiene un salto en \(t_0\), sin forzamiento delta.
2. **Impulsos**: la dinámica incluye una fuerza delta en \(t_0\), produciendo un salto en el momento.

Registramos ambas condiciones explícitamente.

`Proposición P3.3 (Condición de esquina sin impulso).`
Suponer que \(q\) es \(C^2\) a trozos con una discontinuidad de velocidad en \(t_0\), y satisface la ecuación de Euler-Lagrange no forzada a cada lado de \(t_0\). Entonces:

$$
\left[\frac{\partial\mathcal L}{\partial\dot q}\right]_{t_0^-}^{t_0^+}=0.
$$

`Derivación D3.3 (Condición de esquina).`
Integrar la ecuación de Euler-Lagrange no forzada en \([t_0-\varepsilon,t_0+\varepsilon]\):

$$
\left[\frac{\partial\mathcal L}{\partial\dot q}\right]_{t_0-\varepsilon}^{t_0+\varepsilon}
=\int_{t_0-\varepsilon}^{t_0+\varepsilon}\frac{\partial\mathcal L}{\partial q}\,dt.
$$

Tomar \(\varepsilon\to0^+\). Bajo acotación local de \(\partial_q\mathcal L\), el lado derecho se anula, produciendo la condición de salto anterior. Esta es la continuidad local de esquina del momento canónico (forma de Weierstrass-Erdmann en este entorno de una esquina).

`Proposición P3.4 (La fuerza de impulso implica salto de momento).`
Considerar la ecuación de Euler-Lagrange forzada en forma distribucional

$$
\frac{d}{dt}\frac{\partial\mathcal L}{\partial\dot q}
-\frac{\partial\mathcal L}{\partial q}
=J\,\delta(t-t_0),
$$

para un vector de impulso fijo \(J\in\mathbb R^d\). Si \(\partial_{\dot q}\mathcal L\) tiene límites unilaterales en \(t_0\), entonces

$$
\left[\frac{\partial\mathcal L}{\partial\dot q}\right]_{t_0^-}^{t_0^+}
\equiv
\frac{\partial\mathcal L}{\partial\dot q}(t_0^+)-\frac{\partial\mathcal L}{\partial\dot q}(t_0^-)
=J.
$$

`Derivación D3.4.`
Integrar la ecuación en \([t_0-\varepsilon,t_0+\varepsilon]\). La integral del término suave \(\partial_q\mathcal L\) tiende a 0 cuando \(\varepsilon\to 0\). El término derivada se integra al salto en \(\partial_{\dot q}\mathcal L\). El lado derecho se integra a \(J\).

Para el lagrangiano mecánico estándar \(\mathcal L=\frac{m}{2}\|\dot q\|^2-V(q)\), esto se reduce al familiar salto de momento:

$$
m\big(\dot q(t_0^+)-\dot q(t_0^-)\big)=J.
$$

Esto conecta directamente con el andamiaje de impulso de la Sección 3: los impulsos centrales conservan el momento angular porque cambian el momento sólo en la dirección radial.

## 5.5 Medidas Extremales: Analogía Finito-Dimensional y Límites
La frase "distribuciones de Dirac para calcular extremos" es inequívoca en dimensiones finitas. Para una \(f:\mathbb R\to\mathbb R\) suave, la distribución \(\delta(f'(x))\) tiene soporte en los puntos críticos de \(f\). En dimensiones superiores se usa análogamente \(\delta(\nabla f)\).

`Derivación D3.5 (Normalización de la raíz delta cuadrada y forma de la regla de Born).`
Sea \(f:\mathbb R^N\to\mathbb R\) suave y definir, para \(\varepsilon>0\),
\(A_\varepsilon(O):=\varepsilon^{-N/2}\int e^{\frac{i}{\varepsilon}f(x)}O(x)\,dx\).
Entonces
\(|A_\varepsilon(O)|^2=\varepsilon^{-N}\iint e^{\frac{i}{\varepsilon}(f(x)-f(y))}O(x)\overline{O(y)}\,dx\,dy\).
Bajo el escalamiento cerca de la diagonal \(y=x+\varepsilon z\) (de modo que \(dy=\varepsilon^Ndz\)), se obtiene formalmente
\(|A_\varepsilon(O)|^2\to (2\pi)^N\int \delta(\nabla f(x))\,|O(x)|^2\,dx\).
Esto exhibe el patrón "densidad = \(|\text{amplitud}|^2\)", con el exponente \(N/2\) coincidiendo con el escalamiento de semi-densidad necesario para cancelar jacobianos bajo refinamiento.

`Derivación D3.5a (Puntos críticos no degenerados: por qué los pesos son raíces cuadradas).`
En una dimensión, si \(f\) tiene finitos puntos críticos no degenerados \(x_i\) (de modo que \(f'(x_i)=0\) y \(f''(x_i)\neq 0\)), entonces la identidad distribucional
\[
\delta(f'(x))=\sum_i \frac{\delta(x-x_i)}{|f''(x_i)|}
\]
hace explícito que \(\delta(f')\,dx\) es una densidad soportada en puntos estacionarios con pesos \(1/|f''|\). La fase estacionaria, por el contrario, da contribuciones de amplitud ponderadas por \(1/\sqrt{|f''(x_i)|}\). Esta es la razón finito-dimensional limpia por la que el punto de vista "primero semi-densidades" es natural: los pesos de amplitud son raíces cuadradas de los pesos de densidad.

La Sección 6 recupera el mismo "jacobiano de raíz cuadrada" en el entorno dinámico: la composición semigrupal de núcleos a tiempo corto fuerza la normalización característica \(t^{-d/2}\) (Derivación D4.1a). (Un tratamiento comprensivo que muestra que este exponente es forzado en cuatro entornos distintos — composición temporal, determinante de Van Vleck en espacio curvo, difusión de núcleo de calor y umbrales de renormalización — se da en el satélite complementario [PathIntegralNormalization].)

En entornos de dimensión infinita (trayectorias), uno está tentado de escribir "medidas formales" soportadas en trayectorias de acción estacionaria. En este manuscrito tratamos tales expresiones como heurísticas de hoja de ruta hasta que estén regularizadas y se hagan compatibles con la composición (Sección 6); ver también `Heurística H0.2a`.
(Una nota complementaria sobre objetos delta recopila los cálculos de escalamiento finito-dimensional — núcleo identidad, concentración en conjunto estacionario, interacciones de contacto como núcleos de rango uno — y traza el determinante de Van Vleck como la instancia del propagador del hessiano de raíz cuadrada.)

`Observación D3.5b (Diccionario de objetos delta y criterio seguro/inseguro).`
Cinco construcciones adyacentes a delta aparecen en este trabajo: (i) la delta de conjunto estacionario \(\delta(\nabla f)\), que localiza en puntos críticos de una función suave con pesos de determinante hessiano (la fórmula distribucional de cambio de variables); (ii) la derivada distribucional \(\delta'\), definida por dualidad y realizable como un límite de separación de puntos; (iii) el núcleo delta diagonal \(\delta(x-y)|dx|^{1/2}|dy|^{1/2}\), el núcleo de Schwartz de la identidad sobre semi-densidades; (iv) el potencial delta \(g\,\delta(x)\), una perturbación de rango uno que define una extensión auto-adjunta en \(d\le3\) pero requiere renormalización para \(d\ge2\); y (v) la heurística "\(\delta(\delta S)\)" para soporte extremal en espacio de trayectorias. Las primeras cuatro son rigurosas (con renormalización donde se indica); la quinta es significativa sólo como abreviación de la identidad de fase estacionaria finito-dimensional combinada con el límite \(N\to\infty\) compatible con la composición de la Sección 6. El límite seguro/inseguro es la universalidad del suavizador: una construcción delta es independiente del esquema precisamente cuando sondea un objeto continuo, de modo que el límite de la secuencia de suavizadores es único; los productos de distribuciones singulares o las evaluaciones en puntos coincidentes de núcleos singulares dependen del esquema y requieren regularización explícita.

## 5.6 Advertencias (Peligros de las Distribuciones No Lineales)
1. Productos como \(\delta(t)^2\) no están definidos en la teoría estándar de distribuciones; cualquier aparición requiere un esquema de regularización y una demostración de independencia del esquema para los observables afirmados.
2. "Evaluar en un punto" sólo es legítimo para cantidades conocidas como continuas (o de otro modo bien definidas) en ese punto; el sondeo por suavizador debe enunciar este supuesto explícitamente.
3. La estacionaridad (\(\delta S=0\)) no es lo mismo que la minimalidad; las condiciones de segunda variación y convexidad son separadas y no se asumen aquí.

Transición a la Sección 6:
ahora tenemos una noción controlada de "dinámica clásica extremal" (incluidos impulsos y esquinas) y un lenguaje preciso para sondas locales de refinamiento. La siguiente sección usa la composición bajo división en rebanadas de tiempo para motivar los pesos de amplitud y la integral de trayectoria.

# 6. Composición e Integral de Trayectoria
## 6.1 Postulado de Composición para Amplitudes
Sea \(K(q_f,t_f;q_i,t_i)\) la amplitud de transición. El postulado estructural es la composición en rebanadas de tiempo intermedias:

$$
K(q_f,t_f;q_i,t_i)
=\int dq\,K(q_f,t_f;q,t)\,K(q,t;q_i,t_i),
\qquad t_i<t<t_f.
$$

`Heurística H4.0 (Los núcleos de semi-densidad hacen la composición libre de medida).`
En una variedad de configuración \(M\), el objeto libre de coordenadas subyacente a la fórmula mostrada es un **núcleo bi-semi-densidad**:
\(K_t(q',q)\in|\Lambda^dT^\ast_{q'}M|^{1/2}\otimes|\Lambda^dT^\ast_qM|^{1/2}\).
Entonces la composición es el apareamiento canónico en la variable intermedia \(q\), y no requiere elegir una medida de fondo. Escribir \(\int dq\) es lo que se obtiene tras elegir una densidad de referencia para identificar las semi-densidades con funciones escalares.

`Derivación D4.0 (Invarianza de coordenadas de la composición mediante semi-densidades).`
En coordenadas locales \(q\), escribir
\(K_t(q',q)=k_t(q',q)\,|dq'|^{1/2}|dq|^{1/2}\).
Entonces
\(
K_{t_f-t}(q_f,q)\,K_{t-t_i}(q,q_i)
=k_1k_2\,|dq_f|^{1/2}|dq|\,|dq_i|^{1/2}
\)
es una densidad en \(q\), de modo que \(\int_M K_{t_f-t}(q_f,q)K_{t-t_i}(q,q_i)\) es invariante de coordenadas. Este es el significado intrínseco del postulado de composición.

`Heurística H4.0a (Calibre y escala de escalarización).`
Escribir un núcleo de semi-densidad como función escalar ordinaria con un "\(dq\)" explícito elige implícitamente una densidad de referencia \(\rho_\ast\) en \(M\) (equivalentemente una semi-densidad de referencia \(\sigma_\ast=\rho_\ast^{1/2}\)). Las diferentes elecciones están relacionadas por multiplicación puntual y dan representaciones escalares unitariamente equivalentes. Si además se exige que las amplitudes escalares sean adimensionales, entonces \(\sigma_\ast\) debe llevar el peso completo \(\text{longitud}^{d/2}\), de modo que una elección universal de \(\sigma_\ast\) equivale a elegir una escala universal \(\text{longitud}^{d/2}\).
En un entorno de TCC en espacio-tiempo donde el problema de escalarización está formulado sobre una variable de integración de dimensión \(D\), esta es una escala \(\text{longitud}^{D/2}\); en \(D=4\) es un área, con el área de Planck \(\ell_P^2=\hbar G/c^3\) como candidato universal natural. Una nota complementaria explora hipótesis adicionales (opcionales) sobre tales proveedores de escala; ninguna identificación de este tipo es necesaria para la cadena estructural del presente artículo.

`Heurística H4.0b (Filtro independiente \(D=4\): simplicidad del operador bajo cambios de escalarización conforme).`
La pregunta del "proveedor de escala" anterior es distinta de otra forma en que \(D=4\) puede aparecer una vez que se insiste en representantes escalares: la simplicidad de cómo los *operadores cinéticos* dependen de los cambios de escalarización. En un entorno covariante/de TCC (dimensión espacio-temporal \(D\)), el laplaciano escalar \(\Delta_g\) induce un operador sobre semi-densidades por conjugación,
\[
\widetilde\Delta_g := |g|^{1/4}\Delta_g|g|^{-1/4}.
\]
Bajo un reescalado conforme \(g=e^{2\sigma}\bar g\), la conjugación de semi-densidad produce un término de gradiente cuadrático \(\propto |\nabla\sigma|^2\) con coeficiente universal \(D(4-D)/4\), por tanto se cancela en \(D=4\) (dentro de la clase conforme). Este es un filtro de simplicidad del operador (neutral a la escala) y es independiente del tamiz de dimensión de acoplamiento discutido anteriormente. (Un satélite complementario sobre semi-densidades en TCC desarrolla el cálculo completo de bi-semi-densidades para propagadores y funciones de Green en espacio-tiempo, incluida la expansión de clase conforme, la computación en coordenadas normales que muestra que el potencial de conjugación universal \(V=(1/6)R\) coincide con el acoplamiento conforme sólo en \(D=4\), y la fórmula de traza del núcleo de calor sin factores \(\sqrt{|g|}\) extraños.)

`Heurística H4.0c (Eco del lado GR: marginalidad del acoplamiento gauge en \(D=4\)).`
En el lado de la renormalización, \(D=4\) es la dimensión única en la que los acoplamientos gauge de 1-forma son marginales por conteo de potencias (\([g^2]=\text{longitud}^{D-4}\)), y en la que la acción clásica de Yang-Mills es conformalmente invariante (el factor de peso de densidad de acción \(e^{(D-4)\sigma}\) es igual a la unidad). Tanto este enunciado como la cancelación de semi-densidades en H4.0b comparten la raíz algebraica \((D-4)=0\), pero se aplican a objetos diferentes: la versión de semi-densidad es universal (independiente del contenido de materia), mientras que la versión GR es específica del acoplamiento (ligada al grado de forma del campo gauge mediante \(D=2(p+1)\) para un campo de \(p\)-forma; \(p=1\) da \(D=4\)). La consistencia de estos dos filtros lógicamente independientes en \(D=4\) es una verificación estructural no trivial: el filtro de semi-densidades selecciona el arena cinemática, y el filtro GR restringe la dinámica dentro de ella.

`Derivación D4.1 (División en rebanadas de tiempo por composición repetida).`
Iterando la ley de composición sobre una partición \(t_i=t_0<\cdots<t_N=t_f\) da

$$
K(q_f,t_f;q_i,t_i)=
\int \prod_{k=1}^{N-1} dq_k
\prod_{k=0}^{N-1}
K_\Delta(q_{k+1},q_k;t_k),
$$

con \(q_0=q_i,\;q_N=q_f,\;\Delta t_k=t_{k+1}-t_k\), y \(K_\Delta\) el núcleo a tiempo corto.

`Derivación D4.1a (El semigrupo fija la normalización \(t^{-d/2}\)).`
En \(M=\mathbb R^d\), la invariancia por traslación sugiere un núcleo bi-semi-densidad de la forma
\(K_t(x,y)=k_t(x-y)\,|dx|^{1/2}|dy|^{1/2}\), de modo que la ley semigrupal se convierte en una convolución escalar:
\(k_{t+s}=k_t*k_s\).
Suponer una fase cuadrática a tiempo corto y escribir
\[
k_t(u)=A(t)\,\exp\!\left(\frac{i m}{2\hbar}\frac{\|u\|^2}{t}\right),
\]
interpretando la integral gaussiana en tiempo euclidiano (núcleo de calor) y luego continuando analíticamente, o con la prescripción \(i0\) habitual.
Entonces
\[
(k_t*k_s)(u)=A(t)A(s)\int_{\mathbb R^d}
\exp\!\left(\frac{i m}{2\hbar}\left(\frac{\|u-v\|^2}{t}+\frac{\|v\|^2}{s}\right)\right)\,dv.
\]
Completando el cuadrado da
\[
\frac{\|u-v\|^2}{t}+\frac{\|v\|^2}{s}
=\frac{\|u\|^2}{t+s}+\frac{t+s}{ts}\left\|v-\frac{s}{t+s}u\right\|^2,
\]
por lo que la convolución se cierra sobre la misma familia con
\[
A(t+s)=A(t)A(s)\left(\frac{ts}{t+s}\right)^{d/2}\times(\text{fase}).
\]
La solución única (salvo una fase global constante) es \(A(t)\propto t^{-d/2}\). Así el exponente \(d/2\) es forzado por la composición semigrupal: es el "jacobiano de raíz cuadrada" de semi-densidad necesario para la composición de núcleos estable bajo refinamiento.
Imponer la condición inicial delta cuando \(t\to0^+\) fija la constante de normalización restante y fuerza \(\hbar\) en el prefactor (en convenciones escalares estándar de espacio plano, \(A(t)=(m/2\pi i\hbar t)^{d/2}\) salvo fase).

`Proposición P4.2 (Necesidad de una escala de dimensión de acción para el refinamiento compatible con la composición).`
Sea \(M=\mathbb R^d\) con lagrangiano \(\mathcal L(q,\dot q,t)\) y acción \(S[q]=\int\mathcal L\,dt\) de dimensión \([S]=\mathrm{masa}\cdot\mathrm{longitud}^2\cdot\mathrm{tiempo}^{-1}\). Suponer una familia de núcleos de transición \(\{K(q_f,t_f;q_i,t_i)\}_{t_f>t_i}\) satisfaciendo: **(C)** Composición (semigrupo): \(K(q_f,t_f;q_i,t_i)=\int_M dq\,K(q_f,t_f;q,t)K(q,t;q_i,t_i)\) para todo \(t_i<t<t_f\); **(L)** Peso exponencial local: \(K_{\Delta t}(q_f,q_i)=\mathcal N(\Delta t)\exp(c_0 S_{\mathrm{slice}})\) para tiempos cortos; **(I)** Identidad: \(K(q_f,t_f;q_i,t_i)\to\delta^{(d)}(q_f-q_i)\) cuando \(t_f\to t_i^+\); **(D)** Homogeneidad dimensional: \([K]=\mathrm{longitud}^{-d}\). Entonces: (i) el exponente de normalización es \(\mathcal N(\Delta t)\propto(\Delta t)^{-d/2}\), determinado únicamente por el cierre de la composición (Derivación D4.1a); (ii) existe una constante \(\kappa\) con \([\kappa]=[\mathrm{acción}]\) tal que \(\mathcal N(\Delta t)=(m/2\pi\kappa\Delta t)^{d/2}\) y \(c_0=i/\kappa\) (o \(-1/\kappa\) en firma euclidiana), fijados por el límite de identidad y el análisis dimensional; (iii) \(\kappa\) no puede eliminarse: tomar \(\kappa\to0\) colapsa la composición a la extremización de Hamilton-Jacobi, que no tiene límite de identidad distribucional (el núcleo compuesto se aproxima a \(\delta(q_f-q_{\mathrm{cl}}(q_i))\), genéricamente no \(\delta(q_f-q_i)\) para \(t>0\)); tomar \(\kappa\to\infty\) hace el peso trivial y pierde el contenido dinámico. La escala \(\kappa\) es por tanto una constante estructural necesaria de cualquier refinamiento compatible con la composición de la dinámica basada en la acción. (iv) Identificar \(\kappa=\hbar\) recupera el propagador cuántico estándar con fase de Feynman \(e^{iS/\hbar}\) y normalización de Van Vleck.

`Observación P4.2a (Consolidación de derivaciones existentes).`
La proposición consolida la Derivación D4.1a (la composición fuerza \(t^{-d/2}\)), la Derivación D4.2a (el extremo suave requiere \(\hbar>0\)), las Derivaciones PA-D1.2a/b (escalamiento del núcleo identidad de semi-densidades en la nota del área de Planck), y el testigo del núcleo de calor (cinco manifestaciones de \(d/2\): núcleo identidad, traza de calor, parametrización de Schwinger del propagador, grado de divergencia UV, polos de regularización dimensional). Reorganiza los resultados existentes en un enunciado de necesidad en lugar de introducir nueva matemática.

`Observación P4.2b (Conexión con RCP).`
La proposición es el testigo constructivo primario de la Proposición P10.1 (Principio de Compatibilidad de Refinamiento): la compatibilidad de partición exige una actualización de parámetros para que la composición se cierre. El hecho de que este parámetro tenga dimensión de acción es forzado por el contenido dimensional del lagrangiano clásico, haciendo que RCP no sea meramente estructural sino constructivo — le dice cuál debe ser el parámetro de control.

`Observación P4.2c (Reducción de hipótesis: el peso exponencial es un teorema).`
La hipótesis **(L)** (peso exponencial local) se descompone en dos partes: **(L\(_{\mathrm{loc}}\))** dependencia del núcleo sólo de la acción clásica, y **(L\(_{\mathrm{exp}}\))** forma exponencial \(W=\exp(c_0 S/\kappa)\). La forma exponencial no es un supuesto independiente: para un núcleo libre invariante por traslación \(K_t(u)=N(t)W(mu^2/(2\kappa t))\), la composición **(C)** en el espacio de Fourier se reduce a la ecuación multiplicativa \(\hat K_T(p)=\hat K_{t_1}(p)\hat K_{t_2}(p)\). Bajo continuidad, la solución única es \(\log\hat K_t(p)=t\,\phi(p)\), lo que fuerza \(\log\hat W_0(q)=\alpha q^2+\beta\) (cuadrático), es decir, \(W=\exp(\text{cuadrático})\). La ecuación funcional no admite solución continua no gaussiana. Así **(L\(_{\mathrm{exp}}\))** es un teorema de la composición, no un axioma.

`Observación P4.2d (Reducción de hipótesis: la obstrucción de Lévy-Khintchine cierra el escape).`
El escape restante de los núcleos gaussianos son los procesos de Lévy-estables con exponente característico \(\Psi(p)=-c|p|^\alpha\), \(\alpha\in(0,2]\). Para estos, la homogeneidad dimensional **(D)** requiere \([c]=[m]^a[\hbar]^b\). Igualar los exponentes de longitud, masa y tiempo produce la condición de consistencia \(-\alpha/2=1-\alpha\), que fuerza \(\alpha=2\) (gaussiano). Para \(\alpha\neq 2\), ninguna combinación de \(m\) y \(\hbar\) puede construir el coeficiente requerido \(c\). Aunque todos los procesos de Lévy satisfacen el límite de identidad **(I)**, la hipótesis discriminante es **(D)**: cualquier núcleo que satisfaga **(C)**+**(I)**+**(D)** con constantes dimensionales \(\{m,\hbar\}\) debe ser gaussiano. El recuento efectivo de hipótesis para la Proposición P4.2 se reduce por tanto de cuatro a tres: composición **(C)**, límite de identidad **(I)** y homogeneidad dimensional **(D)**.

`Observación P4.2e (Extensiones: entornos curvos, de interacción y de Lorentz).`
Las conclusiones de la Proposición P4.2 no se limitan a partículas libres en espacio euclidiano plano. Tres extensiones independientes confirman la robustez:
(1) **Espacios de configuración curvos.** En una variedad riemanniana \((M,g)\), el núcleo a tiempo corto involucra el determinante de Van Vleck-Morette \(\Delta^{1/2}(x,y)\), que se compone mediante la ley semigrupal de DeWitt-Morette. El exponente de normalización \(d/2\) es forzado por la misma ecuación funcional; \(\Delta\) y \(\sqrt{|g|}\) son geométricos (dependientes de la métrica) pero independientes de \(\kappa\). La métrica no proporciona ninguna vía de escape de la necesidad de \(\kappa\).
(2) **Sistemas de interacción.** El núcleo de Mehler para el oscilador armónico \(V=\tfrac{1}{2}m\omega^2 q^2\) satisface la composición con \(\sin\omega t\) reemplazando a \(t\) como "función de tiempo". El forzamiento \(d/2\) es puramente algebraico (conteo de dimensiones), y los coeficientes de Seeley-DeWitt \(a_n\) son condiciones de compatibilidad de composición, no vías de escape. La extracción a tiempo corto de \(a_1=-iV/\hbar\) confirma esto.
(3) **Firma de Lorentz.** Reemplazando el amortiguamiento gaussiano por la fase oscilatoria de Fresnel, las partes algebraicas del argumento (exponente \(d/2\), necesidad de \(\kappa=\hbar\), cierre semigrupal) son independientes de la firma. La prescripción \(i\varepsilon\) es en sí misma un teorema de la composición: entre reguladores \(\exp(-\varepsilon f((x-y)^2/t))\), sólo \(f(x)=x\) (lineal) preserva el cierre semigrupal, y esta unicidad se sigue del conteo de grados (la \(f\) no lineal produce integrandos no gaussianos). La composición sola — sin invocar el límite de identidad — fuerza la forma \(i\varepsilon\).

`Observación P4.2f (Universalidad de \(\kappa\) entre sectores de interacción).`
La Proposición P4.2 fuerza una escala \(\kappa\) con \([\kappa]=[\text{acción}]\) para cada sector individualmente. Si dos sectores (digamos partículas \(A\) y \(B\)) interactúan, su núcleo conjunto debe componerse como un único semigrupo. Bajo el supuesto de peso exponencial único, el núcleo conjunto hereda un único \(\kappa\): la factorización en \(\kappa_A\neq\kappa_B\) específicos del sector es incompatible con la composición conjunta cuando \(A\) y \(B\) están acoplados. Los sectores desacoplados (no interactuantes) pueden en principio llevar escalas independientes, pero la transitividad de la interacción en cualquier física conectada hace que \(\kappa=\hbar\) sea universal en todos los grados de libertad interactuantes. Esta universalidad no es postulada sino forzada por la composición.

`Observación P4.2g (El tiempo continuo forzado por la homogeneidad dimensional).`
La homogeneidad dimensional **(D)** no sólo prohíbe los procesos de salto (Observación P4.2d) sino que también fuerza la parametrización de tiempo continuo. Una formulación de tiempo discreto con espaciado de red \(\varepsilon\) requeriría \([\varepsilon]=T\), pero en mecánica cuántica no relativista la base dimensional es \(\{m,\hbar\}\). Buscar \(\varepsilon=[m]^a[\hbar]^b\) da \(M^{a+b}L^{2b}T^{-b}=T\); igualando exponentes se obtiene \(2b=0\) (longitud) y \(-b=1\) (tiempo), de ahí \(b=0\) y \(b=-1\) simultáneamente — una contradicción. La causa raíz es que \(\{m,\hbar\}\) abarcan sólo un subespacio bidimensional del espacio dimensional MLT tridimensional, y las dimensiones alcanzables satisfacen \([L]=[T^{-1/2}]\) (salvo factores de masa). Así **(D)** prohíbe las escalas de tiempo externas, forzando el límite del continuo \(\varepsilon\to 0\). La Proposición P4.2 establece por tanto no sólo la necesidad de una escala de acción finita \(\kappa=\hbar\), sino también la necesidad del tiempo continuo como parámetro de composición. (Las formulaciones en red en TCC introducen \(\varepsilon\) como regulador UV externo; su validez depende de límites controlados \(\varepsilon\to 0\), consistente con esta obstrucción.)

`Observación P4.2h (La composición como único axioma maestro).`
La reducción de axiomas de las Observaciones P4.2c-g puede llevarse más lejos. La hipótesis **(D)** (homogeneidad dimensional) es en sí misma un teorema de **(C)** (composición) en \(\mathbb{R}^d\): la integral de composición \(\int K(x,z;t_1)\,K(z,y;t_2)\,d^d z = K(x,y;t_1+t_2)\) fuerza \([K]=L^{-d}\) por consistencia dimensional, y el contenido restante de **(D)** es o trivialmente verdadero para las teorías lagrangianas o una propiedad de la configuración física. De manera similar, la hipótesis **(I)** (límite de identidad) es derivable: el núcleo gaussiano explícito forzado por **(C)** es una familia delta naciente, de modo que \(K(x,y;t) \to \delta(x-y)\) cuando \(t \to 0\) es un teorema. Para potenciales generales, el teorema de Stone produce la misma conclusión dado un generador auto-adjunto. **El recuento efectivo de hipótesis para la Proposición P4.2 es por tanto un axioma matemático (composición) más la configuración física** (dinámica basada en la acción en \(\mathbb{R}^d\) con masa \(m\) y hamiltoniano auto-adjunto). La composición es el único axioma maestro para el canal de partición. Ver [RCPFoundations] Sección 6 para la formulación completa con axiomas reducidos.

## 6.2 De la Acción Aditiva a los Pesos Multiplicativos
La estructura de la Sección 4/Sección 5 da una acción discreta aditiva:

$$
S_N[q]=\sum_{k=0}^{N-1}\mathcal L\!\left(q_k,\frac{q_{k+1}-q_k}{\Delta t_k},t_k\right)\Delta t_k.
$$

Suponer localidad a tiempo corto: cada rebanada contribuye con un factor que depende sólo de los datos del paso local. Escribir

$$
K_\Delta(q_{k+1},q_k;t_k)=\mathcal N_k\,W_k.
$$

`Proposición P4.1 (Forma exponencial bajo localidad + composición).`
Si
1. el peso total de la trayectoria es multiplicativo entre rebanadas concatenadas, y
2. \(\log W_k\) es aditivo en \(\Delta t_k\) al primer orden,

entonces, salvo normalización y correcciones de división de orden superior,

$$
\prod_{k=0}^{N-1}W_k
\propto
\exp\!\big(c_0\,S_N[q]\big),
$$

para una constante \(c_0\) con dimensiones \([\text{acción}]^{-1}\).

Elegir la evolución temporal cuántica oscilatoria da \(c_0=i/\hbar\), de ahí el factor de fase estándar \(\exp(iS_N/\hbar)\) [Dirac1933] [Feynman1948].

## 6.3 Orden, Discretización y Ambigüedad Cuántica
Las diferentes discretizaciones a tiempo corto (izquierda/derecha/punto medio u otros esquemas \(\alpha\) más generales) corresponden típicamente a diferentes órdenes de operadores. En lenguaje de deformación, esta es la misma ambigüedad que elegir un representante de producto estrella; estas construcciones coinciden en el límite clásico pero pueden diferir en el orden cuántico subyacente [Landsman1998] [deGosson2018ShortTimePropagators].

`Heurística H4.1 (Mismo límite clásico, diferentes correcciones cuánticas).`
Dos discretizaciones que difieren en \(O(\Delta t)\) en cada rebanada pueden producir ecuaciones clásicas equivalentes mientras desplazan los términos \(O(\hbar)\) en los generadores cuánticos. Por tanto el orden es una elección de modelado controlada, no una contradicción.

`Derivación D4.1b (Testigo de orden: \(H=qp\) bajo discretización \(\alpha\)).`
Para el hamiltoniano clásico \(H(q,p)=qp\), la integral de trayectoria en el espacio de fase con prescripción \(\alpha\) (evaluando la posición en \(q_\alpha=(1-\alpha)q_k+\alpha q_{k+1}\) en cada rebanada) produce el operador
\[\hat H_\alpha=\alpha\hat q\hat p + (1-\alpha)\hat p\hat q = \hat p\hat q + \alpha\,i\hbar.\]
Para verificar: el elemento de matriz \(\langle q'|\hat H_\alpha|q\rangle = [\alpha q'+(1-\alpha)q](-i\hbar)\delta'(q'-q) = q_\alpha(-i\hbar)\delta'(q'-q)\), que coincide con el integrand interpolado \(\alpha\) del núcleo orden por orden en \(\Delta t\). En \(\alpha=0\) (prepunto) esto es el orden anti-estándar \(\hat p\hat q\); en \(\alpha=1/2\) (punto medio) es la forma de Weyl-simétrica \(\tfrac12(\hat q\hat p+\hat p\hat q)\) conectada con el producto de Moyal de la Sección 7; en \(\alpha=1\) (postpunto) es el orden estándar \(\hat q\hat p=\hat p\hat q+i\hbar\). Los tres comparten el límite clásico \(H=qp\); las correcciones \(O(\hbar)\) son artefactos de discretización controlados por \(\alpha\). Esta es la instancia más simple de la familia general \(f(q)p\) tratada en la Sección 10.2.

`Observación D4.1c (La simetría selecciona el punto medio).`
En la representación de posición \(\hat H_\alpha=-i\hbar(q\tfrac{d}{dq}+(1-\alpha))\) en \(L^2(\mathbb R,dq)\), el defecto de simetría formal es \(\langle u,\hat H_\alpha v\rangle - \langle\hat H_\alpha u,v\rangle = i\hbar(2\alpha-1)\langle u,v\rangle\) para funciones de prueba con soporte compacto fuera de \(q=0\). Esto se anula si y sólo si \(\alpha=1/2\). La cadena lógica es: la unitariedad del grupo generado requiere auto-adjuntividad del generador, la auto-adjuntividad requiere simetría, y la simetría selecciona \(\alpha=1/2\). La auto-adjuntividad esencial (cierre a una única extensión auto-adjunta) depende adicionalmente del espacio de configuración: se cumple automáticamente en \(\mathbb R_+\) mediante el grupo de dilatación pero requiere elegir una extensión auto-adjunta en \(\mathbb R\) donde la singularidad en \(q=0\) crea índices de deficiencia \((1,1)\). La selección de \(\alpha=1/2\) en sí misma es una consecuencia puramente algebraica del producto interno \(L^2\) y es independiente de estas sutilezas de dominio.

`Observación D4.1d (Diccionario discretización-estocástico: Itô vs Stratonovich).`
La discretización \(\alpha\) se mapea directamente a las convenciones del cálculo estocástico. Para un modelo de \(N\)-impulsos con impulsos aleatorios dependientes de la posición \(J_k=\sigma(q_k^\ast)\sqrt{\Delta t}\,\xi_k\) (donde \(\xi_k\) son normales estándar i.i.d. y \(q_k^\ast\) es el punto de evaluación), las tres discretizaciones estándar corresponden a: \(\alpha=0\) (prepunto \(q_k^\ast=q_k\)) produce la integral de Itô; \(\alpha=1/2\) (punto medio \(q_k^\ast=(q_k+q_{k+1})/2\)) produce la integral de Stratonovich; \(\alpha=1\) (postpunto \(q_k^\ast=q_{k+1}\)) produce la integral anti-Itô o regresiva. La fórmula de conversión de Stratonovich a Itô agrega un término de corrección \(\tfrac12\sigma(q)\sigma'(q)\,dt\) a la deriva, que tiene el mismo origen estructural que el desplazamiento \(O(\hbar)\) dependiente de \(\alpha\) en el hamiltoniano cuántico: ambos son "correcciones de la regla de la cadena" que surgen al mover el punto de evaluación en un contexto donde los incrementos tienen fluctuaciones \(O(\sqrt{\Delta t})\). La convención de Stratonovich preserva la regla de la cadena clásica y la fórmula variacional de trabajo por impulso; la convención de Itô tiene mejores propiedades de martingala pero rompe la simetría manifiesta. Esto no es una afirmación de que las integrales de trayectoria "son" procesos estocásticos, sino de que las convenciones de discretización y sus correcciones \(O(\hbar)\) o \(O(\Delta t)\) se mapean entre ambos formalismos.

## 6.4 Límite Formal del Continuo y Fase Estacionaria
Formalmente, cuando el tamaño de malla \(\max_k\Delta t_k\to0\):

$$
K(q_f,t_f;q_i,t_i)\sim
\int_{q_i}^{q_f}\mathcal Dq\;
\exp\!\left(\frac{i}{\hbar}S[q]\right).
$$

Esta expresión es formal en esta etapa: no afirmamos una construcción de medida numerablemente aditiva sobre el espacio completo de trayectorias.

`Derivación D4.2 (Mecanismo de recuperación clásica).`
Sea \(q=q_{\mathrm{cl}}+\xi\), donde \(q_{\mathrm{cl}}\) es estacionaria:
\(\delta S[q_{\mathrm{cl}};\eta]=0\).
Expandir:

$$
S[q_{\mathrm{cl}}+\xi]
=S[q_{\mathrm{cl}}]
+\frac12\langle \xi,\mathcal H_{q_{\mathrm{cl}}}\xi\rangle
+O(\xi^3).
$$

Las oscilaciones de fase rápidas cancelan las contribuciones no estacionarias, mientras que los vecindarios de trayectorias estacionarias contribuyen coherentemente. Este es el sentido preciso en el que las ecuaciones clásicas reaparecen como asintóticas \(\hbar\to0\).

`Derivación D4.2a (Extremo suave y por qué un \(\hbar\) finito estabiliza el refinamiento).`
Incluso antes de cualquier cuestión de medida de dimensión infinita, el patrón de composición-refinamiento fuerza una versión "suavizada" de la extremización.
Considerar una acción de dos rebanadas finito-dimensional
\(S(q_2,q_1)+S(q_1,q_0)\) y formar el peso euclideano compuesto
\[
W_\hbar(q_2,q_0):=\int dq_1\;\exp\!\left(-\frac{1}{\hbar}\big(S(q_2,q_1)+S(q_1,q_0)\big)\right).
\]
Definir la acción efectiva gruesa asociada (un funcional logarítmico de partición)
\[
S_{\mathrm{eff}}^{(\hbar)}(q_2,q_0):=-\hbar\ln W_\hbar(q_2,q_0).
\]
Entonces el refinamiento-composición es exacto a nivel de pesos (sumar acciones en el exponente, integrar la variable intermedia),
y la regla de eliminación/extremización dura aparece sólo como el límite de agudización:
bajo supuestos estándar de no degeneración, el método de Laplace da
\[
S_{\mathrm{eff}}^{(\hbar)}(q_2,q_0)
\xrightarrow{\hbar\to0}
\inf_{q_1}\big(S(q_2,q_1)+S(q_1,q_0)\big),
\]
con correcciones \(O(\hbar)\) determinadas por datos cuadráticos locales cerca del minimizador(es).
Así \(\hbar\) juega el papel de parámetro de control universal que hace "refinar y luego comparar" estable, con los extremales clásicos recuperados como un límite.
En tiempo real, el mismo patrón aparece con \(e^{iS/\hbar}\) y fase estacionaria en lugar de positividad y concentración de Laplace.

`Ejemplo D4.2b (Integral de dos rebanadas para partícula libre: recuperación clásica explícita).`
Para una partícula libre de masa \(m\), la acción de dos rebanadas es \(S=\frac{m}{2\Delta t}\bigl[(q_2-q_1)^2+(q_1-q_0)^2\bigr]\). Completando el cuadrado da \(S=\frac{m}{4\Delta t}(q_2-q_0)^2+\frac{m}{\Delta t}(q_1-\bar q)^2\) con \(\bar q=(q_0+q_2)/2\). El peso euclideano integrado es gaussiano:
\[
W_\hbar(q_2,q_0)=\sqrt{\frac{\pi\hbar\Delta t}{m}}\;\exp\!\left(-\frac{m(q_2-q_0)^2}{4\hbar\Delta t}\right),
\]
dando la acción efectiva gruesa
\[
S_{\mathrm{eff}}^{(\hbar)}(q_2,q_0)=\frac{m(q_2-q_0)^2}{4\Delta t}+\frac\hbar2\ln\!\frac{m}{\pi\hbar\Delta t}.
\]
Cuando \(\hbar\to0\), \(S_{\mathrm{eff}}^{(\hbar)}\to\inf_{q_1}S=\frac{m(q_2-q_0)^2}{4\Delta t}\) con una corrección subyacente \(O(\hbar\ln\hbar)\) del ancho gaussiano. Esto hace el mecanismo de recuperación clásica de D4.2a completamente explícito: la trayectoria extremal (\(q_1=\bar q\), velocidad uniforme) es seleccionada por agudización, sin hipótesis adicionales.

`Observación D4.2c (Ángulos deslocalizados en los estados propios de momento angular).`
El mecanismo de fase estacionaria explica cómo las trayectorias clásicas reaparecen en paquetes semiclásicos. No implica que un único eigenestado estacionario sea una órbita clásica localizada. Un testigo simple ocurre ya en los potenciales centrales: en coordenadas polares el ángulo azimutal \(\phi\) es conjugado a \(L_z\), y la separación de variables produce [TongQMLectures]
\[
\psi(r,\phi)=R(r)\,e^{im\phi}.
\]
Por tanto
\[
|\psi(r,\phi)|^2=|R(r)|^2
\]
es independiente de \(\phi\), es decir, el ángulo azimutal está distribuido uniformemente en un eigenestado de \(L_z\). Las imágenes de "fase de órbita" localizada corresponden a superposiciones coherentes/paquetes de onda, consistente con el uso del manuscrito de la concentración de fase estacionaria en lugar de la identificación "eigenestado = órbita".
(Una nota complementaria sobre la indeterminación acción-ángulo amplía esta observación a un segundo testigo — el oscilador armónico, donde los estados de Fock deslocalizan la fase de la órbita y los estados coherentes se dispersan sobre los modos de Fock — y formula la estructura general como una relación de incertidumbre entre las variables de acción y ángulo.)

`Derivación D4.3 (El prefactor de Van Vleck es una bi-semi-densidad).`
En la aproximación semiclásica, el núcleo de extremos tiene la forma estándar
\[
K(q_f,t_f;q_i,t_i)\approx
\frac{1}{(2\pi i\hbar)^{d/2}}
\left|\det\!\left(-\frac{\partial^2 S_{\mathrm{cl}}}{\partial q_f\,\partial q_i}\right)\right|^{1/2}
\exp\!\left(\frac{i}{\hbar}S_{\mathrm{cl}}(q_f,t_f;q_i,t_i)\right),
\]
donde \(S_{\mathrm{cl}}\) es la acción clásica evaluada en la trayectoria estacionaria con esos extremos.
Bajo cambios de coordenadas \(q_f=q_f(q_f')\), \(q_i=q_i(q_i')\), el hessiano mixto se transforma por la regla de la cadena, y
\[
\det\!\left(-\frac{\partial^2 S_{\mathrm{cl}}}{\partial q_f'\,\partial q_i'}\right)
=
\det\!\left(\frac{\partial q_f}{\partial q_f'}\right)
\det\!\left(\frac{\partial q_i}{\partial q_i'}\right)
\det\!\left(-\frac{\partial^2 S_{\mathrm{cl}}}{\partial q_f\,\partial q_i}\right).
\]
Tomando raíces cuadradas se obtiene un factor
\(|\det(\partial q_f/\partial q_f')|^{1/2}|\det(\partial q_i/\partial q_i')|^{1/2}\),
de modo que el prefactor se transforma como una semi-densidad en cada variable de extremo. Este es el origen semiclásico concreto del punto de vista de semi-densidad en la `Heurística H4.0`.
Para un ancla semiclásica/de principio de correspondencia temprana en la tradición "Van Vleck", ver [VanVleck1928Correspondence]. Para un enunciado moderno de OA del propagador de Van Vleck/prefactor y la "densidad de Van Vleck" asociada, ver [deGosson2018ShortTimePropagators].
Una plantilla explícita de eliminación cuadrática finito-dimensional (complemento de Schur) muestra cómo los hessianos de extremos mixtos surgen en la división en rebanadas de tiempo; la omitimos aquí.

`Observación D4.3a (Cáusticas y el índice de Maslov).`
En las cáusticas (puntos conjugados donde el determinante de Van Vleck \(D\to\infty\)), la aproximación semiclásica parece romperse: la amplitud \(|D|^{1/2}\) diverge y \(\sqrt{D}\) cambia de signo. En el marco de semi-densidades la singularidad es un artefacto de proyección: el estado semiclásico es una semi-densidad suave sobre la subvariedad lagrangiana \(L\subset T^\ast M\), y la cáustica ocurre porque la proyección \(\pi:L\to M\) desarrolla un pliegue [BatesWeinstein1997]. La ambigüedad de signo de \(\sqrt{D}\) se resuelve mediante la estructura metaplética: las semi-densidades se transforman bajo el doble cubrimiento \(\mathrm{Mp}(2n)\) de \(\mathrm{Sp}(2n)\), y el índice de Maslov \(\mu\) — contando los puntos conjugados a lo largo de la trayectoria clásica — registra la corrección de fase acumulada \(e^{-i\pi\mu/2}\). Esto hace preciso el patrón "las amplitudes son semi-densidades" de la Sección 3.3: el prefactor de Van Vleck no es un escalar sino una sección de un haz metalineal, globalmente bien definido incluso a través de las cáusticas.

## 6.5 Vínculo con la Dinámica Singular de la Sección 5
La imagen de composición incluye naturalmente las trayectorias suaves a trozos. En los impulsos, el esqueleto clásico dominante debe satisfacer las leyes de salto de la Sección 5:

$$
\left[\frac{\partial\mathcal L}{\partial\dot q}\right]_{t_0^-}^{t_0^+}=J
\quad\text{(impulso)}
\qquad
\left[\frac{\partial\mathcal L}{\partial\dot q}\right]_{t_0^-}^{t_0^+}=0
\quad\text{(esquina, no forzada)}.
$$

Así el "conjunto extremal" que entra en la evaluación semiclásica es más amplio que las trayectorias globalmente suaves; incluye trayectorias rotas admisibles que obedecen las condiciones de ajuste correctas.

Transición a la Sección 7:
con la lógica de composición, peso y recuperación clásica en su lugar, podemos ahora presentar la cuantización como deformación de productos algebraicos, vinculando las elecciones de discretización de la integral de trayectoria con la estructura de deformación del grupoide tangente/cotangente.

# 7. Puente de Cuantización por Deformación
## 7.1 De los Pesos de Trayectoria a la Deformación del Producto
La Sección 6 estableció que la composición discretizada introduce prescripciones no únicas a tiempo corto (esquemas de izquierda/derecha/punto medio y relacionados). La reformulación algebraica es: la cuantización debe deformar el producto clásico de observables en lugar de reemplazar la mecánica clásica por objetos no relacionados [Landsman1998] [Connes1994].

Sea \(M\) el espacio de fase con paréntesis de Poisson \(\{\cdot,\cdot\}\), y sea \(\mathcal A_0\) un álgebra conmutativa de observables clásicos (p. ej., funciones suaves con condiciones de decaimiento/dominio apropiadas). Una cuantización por deformación es una familia de productos asociativos \(\star_\hbar\) en \(\mathcal A_0\) tales que:

$$
f\star_\hbar g
=
fg+\sum_{n\ge 1}\hbar^n B_n(f,g),
$$

donde \(B_n\) son operadores bilineales, con \(f\star_0 g=fg\).

`Proposición P5.1 (Condiciones de compatibilidad clásica).`
Si \(\star_\hbar\) es asociativo para cada \(\hbar\) y depende suave/formalmente de \(\hbar\), entonces la parte antisimétrica de \(B_1\) controla la no conmutatividad al orden principal:

$$
[f,g]_{\star_\hbar}
\equiv
f\star_\hbar g-g\star_\hbar f
=
\hbar\big(B_1(f,g)-B_1(g,f)\big)+O(\hbar^2).
$$

Así la no conmutatividad de primer orden está completamente determinada por \(B_1^{\mathrm{anti}}\).

## 7.2 Recuperación del Paréntesis de Poisson a partir del Conmutador
`Derivación D5.1 (Límite de correspondencia).`
Imponer el requisito de correspondencia de que la antisimetría de primer orden coincida con el paréntesis de Poisson:

$$
B_1(f,g)-B_1(g,f)=i\,\{f,g\}.
$$

Entonces

$$
[f,g]_{\star_\hbar}
=
i\hbar\,\{f,g\}+O(\hbar^2),
$$

y por tanto

$$
\lim_{\hbar\to0}
\frac{1}{i\hbar}[f,g]_{\star_\hbar}
=
\{f,g\}.
$$

Cierre dimensional: \([\hbar]=[\text{acción}]\), mientras que \(\{f,g\}\) lleva un factor inverso de acción relativo a \(fg\) en coordenadas canónicas, de modo que \(i\hbar\{f,g\}\) tiene la misma dimensión física que \(fg\). Esta es la misma condición de consistencia de unidades ya usada en la Sección 6 para \(\exp(iS/\hbar)\).

## 7.3 Modelo Concreto y Contenido de Orden
Para el espacio de fase plano, el producto de Moyal proporciona un representante explícito:

$$
(f\star_M g)(q,p)
=
f(q,p)\exp\!\left[
\frac{i\hbar}{2}
\left(
\overleftarrow{\partial_q}\overrightarrow{\partial_p}
-\overleftarrow{\partial_p}\overrightarrow{\partial_q}
\right)\right]g(q,p),
$$

que reproduce el paréntesis de Poisson al orden principal y las correcciones cuánticas más altas a órdenes superiores [Landsman1998].

`Derivación D5.1a (Producto de Moyal para observables lineales y cuadráticos).`
Para el par canónico \(f=q\), \(g=p\), el exponencial se termina al primer orden (todas las derivadas superiores se anulan):
\[
(q\star_M p)(q,p)
=qp+\frac{i\hbar}{2}(\partial_q q)(\partial_p p)
=qp+\frac{i\hbar}{2}.
\]
Por simetría, \((p\star_M q)=pq-\frac{i\hbar}{2}\), de modo que \([q,p]_{\star_M}=i\hbar\), reproduciendo exactamente la relación de conmutación canónica sin correcciones de orden superior (como se espera para funciones lineales).

Para \(f=q^2\), \(g=p\), la derivada de segundo orden \(\partial_q^2(q^2)=2\) es constante, pero multiplica a \(\partial_p^2 p=0\), de modo que la expansión también termina al primer orden:
\[
(q^2\star_M p)=q^2p+\frac{i\hbar}{2}(2q)(1)=q^2p+i\hbar\,q.
\]
Así \([q^2,p]_{\star_M}=2i\hbar\,q\), coincidiendo con \([\hat q^2,\hat p]=2i\hbar\,\hat q\) en el orden de Weyl. Más en general, \([q^n,p]_{\star_M}=ni\hbar\,q^{n-1}\), recuperando la regla de Leibniz para el paréntesis de Poisson \(\{q^n,p\}=nq^{n-1}\) al orden principal sin correcciones ulteriores.

`Derivación D5.1b (Testigo cúbico: corrección genuina \(O(\hbar^3)\) en el paréntesis de Moyal).`
Para monomios puros \(f=q^m\), \(g=p^n\), todas las derivadas cruzadas se anulan (\(\partial_p q^m=\partial_q p^n=0\)), de modo que el producto de Moyal termina al orden \(\min(m,n)\) en \(\hbar\):
\[[q^m,p^n]_{\star_M}=\sum_{\substack{k=1\\k\;\mathrm{impar}}}^{\min(m,n)}\frac{2(i\hbar/2)^k}{k!}\,\frac{m!\,n!}{(m\!-\!k)!\,(n\!-\!k)!}\,q^{m-k}p^{n-k}.\]
Cuando \(\min(m,n)\le 2\) sólo contribuye el término \(k=1\), dando \(i\hbar\{q^m,p^n\}\) exactamente — el paréntesis de Poisson es suficiente, como se verifica en D5.1a. El primer caso que requiere un término superior es \(m=n=3\): el término \(k=1\) da \(9i\hbar\,q^2p^2=i\hbar\{q^3,p^3\}\), y el término \(k=3\) da \(2(i\hbar/2)^3/3!\cdot(3!)^2=-\tfrac32\,i\hbar^3\), de modo que
\[[q^3,p^3]_{\star_M}=i\hbar\{q^3,p^3\}-\tfrac32\,i\hbar^3.\]
La constante \(-\tfrac32 i\hbar^3\) es una corrección cuántica genuina que no puede recuperarse del paréntesis de Poisson. Esto hace del par cúbico el testigo más simple de que la cuantización por deformación va más allá de una re-codificación del álgebra de Poisson.

`Heurística H5.1 (El orden como elección de calibre de deformación).`
La ambigüedad de discretización de la Sección 6 se interpreta naturalmente como elegir diferentes productos estrella deformativamente equivalentes; comparten los mismos datos del paréntesis clásico pero difieren en correcciones \(O(\hbar)\) y superiores [Landsman1998].

## 7.4 Clases de Equivalencia y Punto de Vista del Grupoide
`Proposición P5.2 (Productos estrella equivalentes, mismo límite clásico).`
Si dos productos \(\star_\hbar\) y \(\star'_\hbar\) están relacionados por un automorfismo formal

$$
T_\hbar=\mathrm{id}+\hbar T_1+O(\hbar^2),
\qquad
f\star'_\hbar g
=
T_\hbar^{-1}\!\big((T_\hbar f)\star_\hbar(T_\hbar g)\big),
$$

entonces definen el mismo paréntesis de Poisson en el límite \(\hbar\to0\), mientras que generalmente difieren en los términos cuánticos subyacentes.

Este es el lado algebraico de la misma narrativa de continuidad: los datos de cuantización se organizan en clases de equivalencia compatibles con un límite clásico común. Los programas de deformación geométrica (incluidos los puntos de vista de grupoide tangente) codifican el mismo puente de los datos clásicos conmutativos a los productos cuánticos no conmutativos [Connes1994].

`Observación P5.2a (La equivalencia de deformación es física, no meramente formal).`
El enunciado de automorfismo formal de la Proposición P5.2 no es puramente asintótico: los cálculos explícitos para una masa dependiente de la posición \(f(q)=1+\alpha q^2\) en una trampa armónica muestran que las diferentes prescripciones (Weyl, conjugación de semi-densidades) concuerdan exactamente en el símbolo principal (Capa 1) y el término de conexión de primera derivada (Capa 2), difiriendo sólo en un potencial escalar \(O(\hbar^2)\) (Capa 3). El desplazamiento de energía del estado base resultante entre las prescripciones es \(|\Delta E_0|=\hbar\omega\alpha_0^2/16\), donde \(\alpha_0\) es la variación de masa adimensional en la escala del oscilador. Para heteroestructuras de semiconductores realistas (pocillos cuánticos de GaAs, \(\hbar\omega\sim 10\) meV, \(\alpha_0\lesssim 0.3\)), esto da \(|\Delta E_0|\lesssim 0.06\) meV, muy por debajo de la resolución espectroscópica actual (\(\sim 0.1\) meV). La estratificación de cuatro capas y la estimación de energía explícita se detallan en el Apéndice \S\,10.2 (`Observación D9.1a`). El contenido físico de la equivalencia de deformación es así que las prescripciones de orden son observacionalmente indistinguibles a escalas accesibles, mientras que la prescripción de semi-densidades proporciona un representante geométricamente distinguido dentro de la clase de equivalencia (análogo al calibre de Lorenz).

(Un satélite complementario sobre la equivalencia de orden desarrolla la clasificación de cuatro capas (símbolo principal, conexión, potencial escalar, dominio) sistemáticamente, con ejemplos adicionales trabajados — masa dependiente de la posición en una trampa armónica, operador de Laplace-Beltrami en variedad curva — y conecta la libertad de orden/discretización con los automorfismos de producto estrella y la correspondencia de Itô/Stratonovich en la división en rebanadas de tiempo de la integral de trayectoria.)

## 7.5 Límite Formal de la Deformación
En esta sección usamos el lenguaje de deformación formal/asintótico para los enunciados de puente local. No requerimos el programa completo de cuantización por deformación \(C^\ast\)-algebraica para el argumento principal del manuscrito; el ingrediente necesario es la compatibilidad del límite clásico y las correcciones cuánticas bajo los supuestos enunciados [Landsman1998].

Transición a la Sección 8:
con el puente de deformación en su lugar, el problema restante no es cómo definir las correcciones cuánticas de primer orden, sino cómo mantener las predicciones refinadas finitas y consistentes en escala cuando los límites ingenus divergen. Ese problema de control es precisamente el paso de renormalización.

# 8. Renormalización como Refinamiento Controlado
## 8.1 Por Qué la Renormalización Aparece en los Límites de Refinamiento
Las secciones anteriores trataron el refinamiento como benigno: refinamiento poligonal en la Sección 3, división en rebanadas de tiempo en la Sección 6, y límites de parámetros de deformación en la Sección 7. En la teoría cuántica de campos y en varios modelos cuántico-mecánicos singulares (p. ej., interacciones de contacto), el mismo paso de refinamiento puede en cambio *divergir* [ManuelTarrach1994PertRenQM] [BoyaRivero1994Contact]:
a medida que se elimina la escala de corte, las cantidades intermedias explotan incluso cuando se espera que la física de baja energía permanezca finita. (Una nota complementaria sobre mediadores fermiónicos traza cómo los límites de interacción de contacto surgen como el residuo natural de la teoría efectiva cuando los lazos cuánticos reemplazan las fuentes clásicas.)

La renormalización es el mecanismo que restaura la tesis central del programa en el caso divergente:
proporciona una regla controlada para tomar los límites de refinamiento de modo que los observables permanezcan estables.
Operacionalmente, acepta que las expresiones intermedias dependen de un regulador (corte), pero requiere que los observables correctamente definidos no dependan de él.

Para mantener la discusión alineada con el lenguaje de composición del artículo, tratamos la renormalización como una condición de invarianza/consistencia a través de los pasos de refinamiento compuestos.

`Heurística H6.1 (La renormalización como parte de "lo que es una teoría").`
En los problemas de refinamiento benignos, a menudo se puede enviar el parámetro de refinamiento a cero sin más elecciones. En los problemas de refinamiento divergentes, la prescripción de renormalización (qué se regula, qué se mantiene fijo, y cómo se re-expresan los parámetros a medida que se mueve el corte) no es contabilidad opcional: es parte de la definición de la teoría del continuo, porque especifica cuáles predicciones compuestas/refinadas se declaran físicamente estables.

## 8.2 Regulador, Datos Desnudos y Observables Renormalizados
Sea \(\Lambda\) un corte de refinamiento (p. ej., corte de momento \(|k|<\Lambda\) o espaciado de red \(a\) con \(\Lambda\sim 1/a\)). Sea \(g_B(\Lambda)\) los parámetros *desnudos* dependientes del corte de la teoría regulada (acoplamientos, masas, normalizaciones de campo), y sea \(O_\Lambda\) una predicción regulada para algún observable \(O\).

`Proposición P6.1 (Observable renormalizado como límite estable bajo el corte).`
Si existe una elección de parámetros desnudos dependientes del corte \(g_B(\Lambda)\) tal que el límite

$$
O_{\mathrm{phys}}
\equiv
\lim_{\Lambda\to\infty} O_\Lambda\big(g_B(\Lambda)\big)
$$

existe y es finito (o tiene una expansión asintótica controlada) para los observables de interés, entonces el límite de refinamiento está *definido* por esta prescripción.

Este enunciado es intencionalmente operacional: no asume que el objeto sin corte existe sin ajuste. Establece que "teoría física" significa un objetivo estable bajo refinamiento.

A menudo es conveniente introducir una escala de renormalización \(\mu\) (una resolución de referencia) y un mapa de renormalización \(R_{\Lambda\to\mu}\) de los parámetros desnudos a los renormalizados:

$$
g_R(\mu) = R_{\Lambda\to\mu}\big(g_B(\Lambda)\big).
$$

El punto de vista de composición sugiere una condición de compatibilidad:
renormalizar desde \(\Lambda\) hacia abajo hasta \(\mu\) debe ser lo mismo que renormalizar desde \(\Lambda\) a una escala intermedia \(\kappa\) y luego de \(\kappa\) a \(\mu\):

$$
R_{\Lambda\to\mu} = R_{\kappa\to\mu}\circ R_{\Lambda\to\kappa}.
$$

Esta es la propiedad semigrupal del grupo de renormalización (GR) en lenguaje de refinamiento; para una discusión estándar de Wilsoniana/ERG de flujos de granulado grueso y puntos fijos, ver [Rosten2012ERG].

`Derivación D6.0 (Mapa de control \(\tau\): comparar refinamientos a regla fija).`
La misma condición de compatibilidad puede enunciarse sin comprometerse con un regulador particular. Fijar una regla de referencia \(h>0\) (la resolución a la que comparamos las predicciones), y sea \(A_{h,\theta}\) una familia de funcionales de amplitud/predicción indexados por parámetros \(\theta\) (acoplamientos, normalizaciones y cualquier convención fija como el calibre de escalarización). Para un factor de refinamiento \(b>1\), elegir una operación "comparar a regla \(h\)" \(\mathcal C_{b,h}\): tomar una predicción escrita a regla más fina \(h/b\) y expresarla de nuevo a regla \(h\) (p. ej., componiendo pasos finos o integrando variables intermedias cuando exista tal representación). La compatibilidad de escala es el requisito de cierre de que la comparación de refinamiento aterrice de nuevo en la misma familia tras una actualización de parámetros:

$$
\mathcal C_{b,h}\!\big(A_{h/b,\theta}\big)=A_{h,\tau_b(\theta)}.
$$

Aquí \(\tau_b\) es el mapa de control/flujo inducido por la operación de comparar a regla fija. Cuando no existe tal \(\tau_b\) dentro de la familia de parámetros elegida, el refinamiento genera nuevos operadores y la familia debe ampliarse (contratérminos/operadores efectivos). Un micro-testigo concreto es la `Derivación D6.2a`, donde la reducción a la mitad del paso induce \(\tau_2(a)=a/2+1/4\) con punto fijo \(a_\ast=1/2\). En la notación de corte anterior, uno puede ver \(R_{\Lambda\to\mu}\) como un caso especial de \(\tau\) escrito con escalas de referencia explícitas.

## 8.3 Ecuación GR a partir de la Independencia del Corte
`Derivación D6.1 (Ecuación GR como consistencia bajo refinamiento).`
Suponer que un observable regulado depende del corte \(\Lambda\) tanto explícitamente como a través de los parámetros desnudos \(g_B(\Lambda)\):

$$
O_{\mathrm{phys}} = O_\Lambda\big(g_B(\Lambda)\big),
$$

e imponer independencia del corte de la predicción física:

$$
\frac{d}{d\ln\Lambda} O_\Lambda\big(g_B(\Lambda)\big)=0.
$$

Por la regla de la cadena,

$$
0
=
\frac{\partial O_\Lambda}{\partial \ln\Lambda}
+
\sum_a \frac{d g_B^a}{d\ln\Lambda}\frac{\partial O_\Lambda}{\partial g_B^a}
,
$$

donde \(a\) va sobre los componentes del vector de parámetros. Definiendo las funciones beta
\(\beta_B^a(g_B)\equiv \frac{d g_B^a}{d\ln\Lambda}\), obtenemos la ecuación GR:

$$
\left(\frac{\partial}{\partial \ln\Lambda}
+\sum_a \beta_B^a(g_B)\frac{\partial}{\partial g_B^a}\right)O_\Lambda(g_B)=0.
$$

En la forma parametrizada por \(\mu\) con parámetros renormalizados \(g_R(\mu)\), el mismo razonamiento produce una ecuación de flujo
\(\mu \frac{d}{d\mu}g_R(\mu)=\beta(g_R)\) más las ecuaciones de invarianza GR correspondientes para los observables renormalizados. El punto clave para este manuscrito es estructural:
el GR no es física adicional añadida después de la cuantización; es la *condición de consistencia* que hace que el refinamiento compuesto sea significativo cuando los límites ingenus divergen.

`Proposición P6.2 (Generador de flujo del semigrupo de refinamiento).`
Sea \(W_{\Lambda\to\kappa}\) el mapa que envía los parámetros efectivos en la escala \(\Lambda\) a los parámetros efectivos en la escala \(\kappa<\Lambda\), y suponer:
1. \(W_{\Lambda\to\Lambda}=\mathrm{id}\),
2. \(W_{\kappa\to\mu}\circ W_{\Lambda\to\kappa}=W_{\Lambda\to\mu}\),
3. diferenciabilidad respecto a \(\ln\Lambda\).

Entonces el generador infinitesimal define las funciones beta:

$$
\beta^a(g)
=
\left.\frac{d}{dt}\,W^a_{e^t\mu\to\mu}(g)\right|_{t=0},
$$

y los cambios de escala finitos se recuperan integrando este campo vectorial en el espacio de parámetros. Así el flujo GR es la forma diferencial del refinamiento compuesto.

`Derivación D6.2 (Divergencia logarítmica de juguete y sustracción).`
Considerar una situación de acoplamiento único con una dependencia logarítmica del corte en una predicción regulada:

$$
O_\Lambda(g_B;\mu)=g_B+c\,g_B^2\ln\!\left(\frac{\Lambda}{\mu}\right)+O(g_B^3),
$$

donde \(c\) es una constante adimensional determinada por el modelo y por la convención de renormalización elegida. Definir el acoplamiento renormalizado en la escala \(\mu\) por una condición de renormalización \(g_R(\mu)\equiv O_\Lambda(g_B(\Lambda);\mu)\) que se mantiene fija cuando \(\Lambda\to\infty\). La independencia del corte impone entonces:

$$
0=\frac{d}{d\ln\Lambda}g_R(\mu)
=\frac{d g_B}{d\ln\Lambda}+c\,g_B^2+O(g_B^3),
$$

de modo que \( \beta_B(g_B)\equiv \frac{d g_B}{d\ln\Lambda}=-c\,g_B^2+O(g_B^3)\). Equivalentemente, con acoplamiento desnudo fijo, uno encuentra la evolución con \(\mu\):

$$
\beta(g_R)\equiv \mu\frac{d g_R}{d\mu}=-c\,g_R^2+O(g_R^3),
$$

ilustrando cómo la renormalización convierte el efecto divergente de refinamiento \(\ln\Lambda\) en un acoplamiento dependiente de la escala consistente con observables estables.

## 8.4 Control de Refinamiento Antes de la TCC: Reducción a la Mitad del Paso como Modelo
La misma lógica puede verse en el refinamiento numérico puramente clásico. Considerar un operador de evolución \(\Phi_\varepsilon\) que representa "un paso" a resolución \(\varepsilon\). La composición da \(\Phi_{2\varepsilon}\approx \Phi_\varepsilon\circ\Phi_\varepsilon\). Una pregunta de control de refinamiento es entonces:
¿qué corrección a \(\Phi_\varepsilon\) hace que la composición de dos pasos concuerde con un método de un paso tras reescalar de vuelta a la misma resolución de referencia?

`Derivación D6.2a (La reducción a la mitad del paso induce un mapa de control \(\tau\) en una EDO de juguete).`
Considerar la EDO autónoma \(y'=f(y)\) en \(\mathbb R^n\) y una familia de un parámetro de mapas de un paso en tamaño de paso \(h\),
\[
\Phi_h^{(a)}(y)=y+h f(y)+a\,h^2 f'(y)[f(y)]+O(h^3).
\]
Aquí \(f'(y)\) es el jacobiano (derivada), y \(f'(y)[v]\) denota su acción sobre un incremento \(v\).
Definir la comparación de reducción a la mitad del paso \(H(\Phi_h):=\Phi_{h/2}\circ \Phi_{h/2}\). Una expansión directa al orden \(h^2\) da
\[
H(\Phi_h^{(a)})(y)=y+h f(y)+\left(\frac14+\frac{a}{2}\right)h^2 f'(y)[f(y)]+O(h^3).
\]
Así, dentro de esta familia ansatz, la comparación de refinamiento se cierra mediante una actualización de parámetros
\[
H(\Phi_h^{(a)})=\Phi_h^{(\tau_2(a))}+O(h^3),\qquad \tau_2(a)=\frac{a}{2}+\frac14,
\]
con punto fijo \(a_\ast=1/2\) (el coeficiente de Taylor de segundo orden del flujo exacto). Este es un micro-modelo limpio para la `Derivación D6.0`: \(\tau_b\) es el mapa de control necesario para que "refinar y comparar" aterrice de nuevo en la familia elegida; el fallo del cierre fuerza la ampliación de la familia (contratérminos).

`Derivación D6.2a-HO (Testigo del oscilador armónico para la reducción a la mitad del paso).`
Aplicar la construcción del mapa de control a \(y'' + y = 0\) escrito como sistema con \(f(y,v) = (v,-y)\). El jacobiano es constante: \(f'= \bigl(\begin{smallmatrix}0&1\\-1&0\end{smallmatrix}\bigr)\), de modo que \(f'(y,v)[f(y,v)] = (-y,-v)\) (el oscilador armónico tiene \(f''=0\), haciendo el análisis de \(O(h^3)\) trivialmente limpio).

La discrepancia del Euler explícito es \(E_{h/2}\circ E_{h/2} - E_h = (h^2/4)\,f'[f]\), confirmando D6.2a. En el punto fijo \(a_\ast = 1/2\), el mapa paramétrico se convierte en \((y + hv - h^2 y/2,\; v - hy - h^2 v/2)\), que coincide con el flujo exacto \((y\cos h + v\sin h,\; v\cos h - y\sin h)\) al orden \(h^2\). El mapa de control \(\tau_2(a) = a/2 + 1/4\) lleva cualquier discretización inicial hacia este esquema de segundo orden bajo reducciones repetidas a la mitad — relajación exponencial hacia el atractor universal, con tasa \(1/2\) por duplicación.

`Observación D6.2a-sg (Ley semigrupal y función beta para refinamiento general).`
Reemplazar la reducción a la mitad del paso por un refinamiento general de \(b\) veces (componiendo \(b\) copias de \(\Phi_{h/b}^{(a)}\) y leyendo el coeficiente \(O(h^2)\)) da
\[
\tau_b(a)=\frac{a}{b}+\frac{b-1}{2b},\qquad a_\ast=\tfrac12\;\;\text{para todo }b>0.
\]
Estos mapas satisfacen la ley semigrupal \(\tau_b\circ\tau_c=\tau_{bc}\). Fijando \(b=1+\varepsilon\) y expandiendo se obtiene el generador infinitesimal \(\beta(a)=\tfrac12-a\), un flujo lineal con atractor universal \(a_\ast=1/2\). Así el lenguaje del "semigrupo GR" invocado en la `Heurística H6.2` no es meramente una analogía: los mapas de control de refinamiento por pasos forman un semigrupo de un parámetro cuya función beta, punto fijo y relajación exponencial a la universalidad son todos explícitos.

`Observación D6.2a1 (Siguiente término de discrepancia y el siguiente árbol enraizado en la duplicación del paso de Euler).`
Para el mapa de Euler explícito \(E_h(y):=y+h f(y)\) con \(f\in C^2\), expandiendo un orden más da
\[
E_{h/2}\!\circ E_{h/2}(y)-E_h(y)
=\frac{h^2}{4}\,f'(y)[f(y)]+\frac{h^3}{16}\,f''(y)[f(y),f(y)]+O(h^4),
\]
donde \(f'(y)[v]\) denota el jacobiano actuando sobre un vector y \(f''(y)[v,w]\) es la segunda derivada bilineal. En lenguaje de árboles enraizados, cada monomial en la expansión de Taylor es un *diferencial elemental* etiquetado por un árbol enraizado: el término principal \(O(h^2)\) es el árbol cadena \(F([\bullet]):=f'(y)[f(y)]\), y el nuevo término \(O(h^3)\) es el árbol rama \(F([\bullet,\bullet]):=f''(y)[f(y),f(y)]\). (La contribución \(O(h^3)\) requiere \(f\in C^2\); el término \(O(h^2)\) sólo necesita \(f\in C^1\).)

`Heurística H6.2 (Árboles enraizados como contabilidad de refinamiento).`
En los integradores de Runge-Kutta y relacionados, la comparación entre pasos compuestos y un paso único se organiza en expansiones de árboles enraizados; la ley de composición correspondiente forma un grupo (el grupo de Butcher). Interpretar "reducción a la mitad del paso y luego reescalar de vuelta" como una operación de actualización de escala hace explícita la analogía con la contabilidad del GR, y la combinatoria de árboles enraizados/álgebra de Hopf también aparece en la renormalización perturbativa [Brouder1999] [McLachlan2017] [ConnesKreimer2000].

Este ejemplo se incluye no para reemplazar la renormalización de la TCC, sino para reforzar la tesis del artículo con un modelo limpio: la renormalización es lo que se hace cuando "refinar y comparar" no es automáticamente estable. El *grupo* de Butcher concierne a la composición formal de métodos, mientras que el granulado grueso Wilsoniano es generalmente un *semigrupo* porque la información se descarta en cada paso de granulado grueso. (Un satélite complementario sobre la contabilidad de árboles enraizados desarrolla el diccionario Butcher/GR en su totalidad: fórmulas explícitas del coproduto de Hopf para árboles hasta el orden 3, una tabla de correspondencia de 7 entradas, un ejemplo de GR de delta 2D trabajado paralelo al test de composición RK2 de punto medio, y una caracterización precisa de la distinción estructural grupo-contra-semigrupo.)
Una brecha estructural permanece entre el modelo de juguete y el GR completo: la función beta \(\beta(a)=\tfrac12 - a\) de la `Observación D6.2a-sg` es *lineal*, de modo que el invariante del GR es algebraico en el acoplamiento y no se genera ninguna escala nueva. La transmutación dimensional (`Derivación D6.2`, Sección 8.3) requiere una función beta de orden \(\ge 2\) en el punto fijo, produciendo una singularidad esencial \(\Lambda_\ast\sim\mu\,e^{-1/(cg)}\) que es no analítica en el acoplamiento. Los axiomas del semigrupo (`Proposición P6.2`) son compartidos por ambos regímenes; lo que los separa es el orden de anulación de \(\beta\) en el punto fijo. (Para un modelo de granulado grueso exactamente soluble — integración gaussiana como complemento de Schur — que hace concretamente visible la propiedad del semigrupo y la no invertibilidad del granulado grueso, cf.\ Derivación RG-D1.7 en la nota complementaria de GR.)

## 8.5 Contratérminos como Correcciones de Refinamiento
En el lenguaje de la teoría de campos, el refinamiento se implementa mediante una acción regulada \(S_\Lambda\) con parámetros dependientes del corte. Esquemáticamente,

$$
S_\Lambda[\phi]
=
\int d^D x\left(
\frac{Z(\Lambda)}{2}(\partial\phi)^2
+\frac{m^2(\Lambda)}{2}\phi^2
+\frac{\lambda(\Lambda)}{4!}\phi^4
+\cdots
\right),
$$

donde \(D\) es la dimensión espacio-temporal y los "\(\cdots\)" representan operadores adicionales permitidos por las simetrías y la precisión deseada. El punto de vista de contratérminos es simplemente el enunciado de que \(Z,m^2,\lambda,\ldots\) deben elegirse como funciones de \(\Lambda\) para que existan los límites estables bajo el corte de los observables. En esta narrativa composicional, los contratérminos son correcciones de refinamiento necesarias para mantener la "misma teoría" después de integrar las escalas cortas.

`Derivación D6.3 (Cociente de diferencias como sustracción de contratérmino).`
Sea \(f\in C^1\) y \(\varepsilon\to 0^+\). Las dos cantidades reguladas \(f(x+\varepsilon)/\varepsilon\) y \(f(x)/\varepsilon\) cada una diverge como \(1/\varepsilon\). Sustraer el contratérmino local \(f(x)/\varepsilon\) produce un límite finito:

$$
\frac{f(x+\varepsilon)}{\varepsilon}-\frac{f(x)}{\varepsilon}
=\frac{f(x+\varepsilon)-f(x)}{\varepsilon}
\xrightarrow{\varepsilon\to0} f'(x).
$$

Este es un modelo mínimo de renormalización: las expresiones reguladas divergentes se vuelven finitas después de sustraer una divergencia que depende sólo de datos locales, y la cantidad renormalizada es el remanente estable bajo el corte.

El marco de Connes-Kreimer hace que esta consistencia sea estructural al codificar la renormalización perturbativa como un problema de factorización con una organización Hopf-algebraica de las divergencias [ConnesKreimer2000]. Para este manuscrito, la conclusión no es la maquinaria completa sino la alineación:
la renormalización es un método con principios para producir predicciones independientes del regulador a partir de piezas locales componibles cuando el refinamiento solo no converge.

## 8.6 Auditoría de Supuestos y Límites
`Proposición P6.3 (Supuesto de cierre para el flujo de parámetros finito-dimensional).`
Los sistemas de funciones beta finito-dimensionales sólo se cierran después de elegir una truncación/ansatz para los operadores permitidos (o una base efectiva completa). Si el refinamiento genera nuevos operadores omitidos del vector de parámetros, el flujo reducido es sólo aproximado.

Esta advertencia es esencial para interpretar correctamente la sección 8: las ecuaciones GR escritas aquí son exactas al nivel del conjunto de variables elegido, pero las truncaciones prácticas pueden hacerlas aproximadas. La tesis principal no se ve afectada: la renormalización sigue siendo la regla que restaura la consistencia entre escalas bajo refinamiento compuesto.

`Derivación D6.4 (Auditoría de truncación en dos niveles y una ventana de estabilidad cuantitativa).`
Tomar un flujo de un acoplamiento con dos niveles de truncación:
\[
\beta_{(2)}(g)=-b_0 g^2,\qquad
\beta_{(3)}(g)=-b_0 g^2-b_1 g^3,\qquad b_0>0.
\]
Para \(g\) fijo, definir el defecto de truncación local
\[
\delta_\beta(g):=\frac{|\beta_{(3)}(g)-\beta_{(2)}(g)|}{|\beta_{(2)}(g)|}
=\left|\frac{b_1}{b_0}\right|\,|g|.
\]
Para una tolerancia \(\eta\in(0,1)\), requerir \(\delta_\beta(g)\le \eta\) produce una ventana de estabilidad explícita
\[
|g|\le g_{\max}(\eta):=\eta\,\frac{b_0}{|b_1|}.
\]
Así la truncación sólo está cuantitativamente controlada en la región de acoplamiento débil \( |g|\ll b_0/|b_1| \); cuando \( |g|\sim b_0/|b_1| \), el término omitido es de orden uno y el cierre de truncación falla. Esto convierte la advertencia cualitativa de la `Proposición P6.3` en un criterio de pasa/falla concreto.

`Observación H6.3 (Recuperación del contenido no perturbativo a partir de la expansión de contacto).`
La expansión de contacto \(C_0+C_2 q^2+C_4 q^4+\cdots\) de la Sección 4 en la nota complementaria fermiónica es una serie de Taylor en \(q^2/M^2\), donde \(M\) es la masa del mediador integrado. Sus coeficientes de Taylor son datos de infrarrojo — medibles a pequeña transferencia de momento. El contenido no perturbativo (polos, cortes de rama, singularidades tipo instanton) está fuera del disco de convergencia \(|q^2|<M^2\) y es invisible para cualquier truncación finita. Sin embargo, este contenido puede recuperarse mediante métodos de extrapolación controlada ajustados al tipo de singularidad: **(1) Polos (intercambio a nivel árbol):** Para una amplitud de Yukawa \(\mathcal A(q^2)=g^2/(q^2+M^2)\), el aproximante de Padé \([0/1]\) de sólo los dos primeros coeficientes de contacto \(C_0=g^2/M^2\), \(C_2=-g^2/M^4\) produce \(P_{[0/1]}(q^2)=C_0/(1-(C_2/C_0)q^2)=g^2/(q^2+M^2)=\mathcal A(q^2)\), recuperando la amplitud completa exactamente — incluido el polo en \(q^2=-M^2\), que está fuera del disco de convergencia de Taylor. Dos observables de baja energía (la longitud de dispersión \(C_0\) y la razón de alcance efectivo \(C_2/C_0=-1/M^2\)) determinan la escala de masa UV. **(2) Cortes de rama (nivel de lazo):** La polarización del vacío \(\Pi(q^2)\) tiene un corte de rama en \(q^2=4m^2\) (umbral de producción de pares). Los coeficientes de Taylor por debajo del umbral determinan los momentos de la función espectral \(\mathrm{Im}\,\Pi(s)\) mediante relaciones de dispersión (nota complementaria fermiónica, Observación 3.5), y los aproximantes de Padé \([N/N]\) colocan polos que se acumulan en el corte cuando \(N\to\infty\) (Montessus de Ballore). **(3) Series divergentes (sectores no perturbativos):** Cuando los coeficientes de Taylor crecen como \(|a_n|\sim n!\), la transformada de Borel \(B(t)=\sum(a_n/n!)t^n\) tiene radio de convergencia finito, y la resuma de Borel-Padé (nota complementaria incortable, Observación 2.5) recupera la función completa incluyendo las contribuciones exponencialmente suprimidas \(\sim e^{-A/g}\) de los puntos de silla instanton. En cada caso, los coeficientes de Taylor son los "datos locales" del marco de compatibilidad de refinamiento (Sección 10.3, Proposición P10.1), y el método de reconstrucción es el "mapa de control" \(\tau\) que accede a la estructura global desde la entrada local. La jerarquía de métodos — aproximación racional algebraica para polos, reconstrucción integral para cortes, resuma de Borel para singularidades esenciales — refleja la jerarquía de tipos de singularidad en la continuación analítica, y cada método requiere sus propias hipótesis de control (meromorfía, analiticidad de relación de dispersión, sumabilidad de Borel). La expansión de contacto determina así el contenido no perturbativo, no a pesar de ser perturbativa, sino porque la analiticidad y el cruce (las condiciones de consistencia detrás del RCP) restringen la estructura global una vez que se dan los datos locales. Esto es lo inverso del proceso de desacoplamiento de la nota complementaria fermiónica (Observación 4.6): allí la física UV colapsa en coeficientes de contacto cuando \(M\to\infty\); aquí los coeficientes de contacto se usan para reconstruir la física UV por extrapolación controlada.

Transición a la Sección 9:
ahora tenemos la cadena completa refinamiento newtoniano \(\to\) aditividad de la acción \(\to\) composición de la integral de trayectoria \(\to\) compatibilidad de deformación \(\to\) control de refinamiento renormalizado. La sección de síntesis final somete a prueba de tensión las transiciones, etiqueta lo que permanece heurístico y consolida el manuscrito en un argumento coherente único.

# 9. Perspectiva Unificada y Problemas Abiertos
## 9.1 Gráfico de Afirmaciones de Extremo a Extremo
El manuscrito ha construido una cadena a través de siete pasos técnicos:
1. Sección 3: la geometría de refinamiento en el movimiento de fuerza central produce un invariante exacto en el paso finito (áreas iguales / conservación del momento angular).
2. Sección 4: la estacionaridad de la acción y la simetría de Noether expresan el mismo invariante en lenguaje variacional.
3. Sección 5: la formulación débil/distribucional extiende la estacionaridad a los límites singulares (suavizadores, esquinas, impulsos) con límites de admisibilidad explícitos.
4. Sección 6: la composición bajo división más la acción aditiva produce el peso exponencial y la recuperación clásica de fase estacionaria.
5. Sección 7: la ambigüedad de orden se reenmarca como datos de equivalencia de deformación con un límite clásico de Poisson compartido.
6. Sección 8: el refinamiento divergente se controla por mapas de renormalización y la consistencia del semigrupo GR (`Observación D6.2a-sg` da la ley semigrupal explícita y la función beta en un modelo de juguete).

`Observación P7.1a (Mapa de compatibilidad compacto para navegación).`
La misma cadena puede leerse como tres vías enlazadas, cada una con testigos explícitos:
1. **Vía de partición**: D1.1-D1.2 \(\to\) D2.1 \(\to\) D3.1 \(\to\) D4.1/D4.1a \(\to\) P4.2.
2. **Vía de representación**: D4.1b \(\to\) D5.1 \(\to\) D9.1/D9.1a/D9.1b/D9.1d/D9.1e.
3. **Vía de escala**: D6.0-D6.2 \(\to\) D6.2a-sg/D6.4 \(\to\) D8.1-D8.2 \(\to\) D11.2-D11.3.
Cada flecha es un puente de compatibilidad, no un cambio de tema. Este mapa compacto es la contraparte textual del diagrama solicitado en la Sección 9.5.

La tesis unificadora es por tanto no "clásico luego cuántico luego TCC" como capas desconectadas, sino "un problema de refinamiento/composición bajo requisitos de consistencia progresivamente más estrictos".

`Proposición P7.1 (Cadena de compatibilidad de límites).`
Bajo los supuestos de regularidad y admisibilidad enunciados en las secciones 3--8, las siguientes condiciones de compatibilidad pueden imponerse simultáneamente:

$$
\delta S[q;\eta]=0
\;\Longleftrightarrow\;
\text{Euler-Lagrange en forma débil},
$$

$$
K \sim \int \mathcal Dq\,e^{iS[q]/\hbar}
\;\Longrightarrow\;
\hbar\to 0 \text{ se concentra en } \delta S=0,
$$

$$
\lim_{\hbar\to 0}\frac{1}{i\hbar}[f,g]_{\star_\hbar}=\{f,g\},
\qquad
\left(\partial_{\ln\Lambda}+\beta\cdot\partial_g\right)O_\Lambda=0.
$$

Estas ecuaciones no son enunciados idénticos; son restricciones de compatibilidad sobre una construcción por etapas: los extremales clásicos, la composición cuántica, la deformación algebraica y la consistencia de escala deben coincidir en sus dominios de solapamiento.

## 9.2 Prueba de Tensión de la Transición

`Derivación D7.1 (Auditoría de ausencia de salto oculto entre transiciones).`
El manuscrito puede someterse a prueba de tensión comprobando cada transición contra una condición de cierre explícita:

1. Cierre `Sección 3 -> Sección 4`:
el invariante de momento angular de paso finito y la carga de Noether variacional concuerdan a través de
\(\dot A=\frac{L_{\mathrm{ang}}}{2m}\). Esto cierra el puente de la geometría a lo variacional.

2. Cierre `Sección 4 -> Sección 5`:
las ecuaciones de Euler-Lagrange en forma clásica suave implican la forma distribucional débil cuando se prueban contra \(C_c^\infty\), y la localización por suavizador recupera las ecuaciones puntuales bajo supuestos de continuidad. Esto cierra la extensión suave-a-débil.

3. Cierre `Sección 5 -> Sección 6`:
el conjunto clásico admisible en la semiclásica incluye trayectorias suaves y suaves a trozos que satisfacen las leyes de ajuste
\([\partial_{\dot q}\mathcal L]^+_- =0\) (esquina) o \(=J\) (impulso). Esto cierra la dinámica singular en la composición.

4. Cierre `Sección 6 -> Sección 7`:
la libertad de discretización/orden en los núcleos a tiempo corto se mapea a representantes de producto estrella que comparten el mismo límite de Poisson en \(\hbar\to0\). Esto cierra la ambigüedad de la integral de trayectoria en el lenguaje de deformación.

5. Cierre `Sección 7 -> Sección 8`:
la deformación maneja la compatibilidad clásico/cuántico a escala fija; la renormalización maneja la consistencia entre escalas cuando el refinamiento diverge. Esto cierra la cuantización a escala fija en la consistencia multiescala.

El criterio de auditoría es simple: cada puente enuncia sus supuestos y lleva un invariante o ecuación explícita a través de la transición. Donde esto falla, la afirmación se degrada a heurística.

## 9.3 Qué Está Demostrado vs Heurístico
Para la navegación, las Secciones 3–8 contienen la siguiente mezcla de resultados y puentes:

1. **Sección 3:** el refinamiento de impulso central poligonal preserva el momento angular y las áreas iguales en el paso finito. (`Proposición`, `Derivación`) Límite: impulsos centrales y límite de refinamiento consistente.

2. **Sección 4:** Euler-Lagrange más Noether recuperan los invariantes de momento angular y energía. (`Derivación`, `Proposición`) Límite: regularidad \(C^2\) de la trayectoria e hipótesis variacionales estándar.

3. **Sección 5:** Euler-Lagrange débil, sondas de suavizador y leyes de salto para esquinas/impulsos. (`Proposición`, `Derivación`) Límite: linealidad distribucional y sin productos no lineales indefinidos.

4. **Sección 6:** composición más aditividad implican el peso exponencial; la fase estacionaria produce la recuperación clásica. (mixto: `Proposición`, `Derivación`, `Heurística`) Límite: uso formal de la integral de trayectoria y supuestos locales de fase estacionaria.

5. **Sección 7:** los productos de deformación recuperan el paréntesis de Poisson; el orden aparece como elección de equivalencia de deformación. Existe una resolución geométrica complementaria: la conjugación de semi-densidades proporciona un representante canónico dentro de la clase de equivalencia de deformación, de acuerdo con el orden de Weyl en el símbolo principal y los términos de conexión (primera derivada), difiriendo sólo en un potencial escalar \(O(\hbar^2)\) (`Observación D9.1a`, `Observación P5.2a`, Apéndice \S\,10.2). (mixto: `Proposición`, `Derivación`, `Heurística`) Límite: entorno de deformación formal/asintótico y alcance de la equivalencia.

6. **Sección 8:** el GR aparece como consistencia semigrupal bajo refinamiento compuesto; los contratérminos aparecen como correcciones de refinamiento. (mixto: `Proposición`, `Derivación`, `Heurística`) Límite: supuestos de cierre/truncación y elección del esquema del regulador.

`Heurística H7.1 (Interpretación programática).`
La narrativa de Newton a la integral de trayectoria se lee mejor como un *programa de compatibilidad* en lugar de un teorema único:
cada capa añade nuevas restricciones de consistencia mientras preserva los invariantes previos en su dominio de validez.

## 9.4 Vulnerabilidades Residuales
1. La integral de trayectoria permanece formal a nivel de teoría de medida completa; el control constructivo no se proporciona aquí.
   Objetivo de cierre mínimo: exhibir una familia explícita de núcleos regulados \(K_\varepsilon\) con una ley de composición demostrada y un enunciado de \(\varepsilon\to0\) controlado en un modelo no trivial.
2. La equivalencia de deformación se enuncia a nivel estructural; el análisis de dominio del operador modelo por modelo se aborda parcialmente.
   Estado actual: un modelo de masa dependiente de la posición (\(f(q)=1+\alpha q^2\) en una trampa armónica) se ha llevado a través de las cuantizaciones de Weyl y de semi-densidades con un término de error \(O(\hbar^2)\) explícito y una estimación cuantitativa del desplazamiento de energía (`Observación D9.1a`, `Observación P5.2a`). La extensión completa a símbolos cinéticos de variedad curva con análisis de dominio permanece abierta.
3. El flujo GR se deriva estructuralmente; un cálculo cuántico-mecánico completamente explícito (interacción de contacto 2D) se proporciona en el Apéndice 10.5, pero no se incluye un cálculo de lazo a nivel de teoría de campos.
   Objetivo de cierre mínimo: añadir un cálculo de TCC de un lazo en un esquema de sustracción fijo cuya sustracción, función beta y comportamiento de cambio de esquema estén escritos en las mismas convenciones de normalización que la Sección 10.1.
4. El cierre de truncación en la sección 8 se identifica pero no se calibra mediante un estudio explícito de error de truncación.
   Objetivo de cierre mínimo: comparar al menos dos niveles de truncación en el mismo modelo e informar una ventana de estabilidad a nivel de observable.

Estos son límites de alcance explícitos, no defectos ocultos. También definen pruebas de cierre falsificables para la próxima oleada de revisión: cada punto no resuelto ahora está emparejado con un testigo concreto que lo cerraría.

## 9.5 Trabajo Futuro (Cola de Revisión Impulsada por Tareas; Etiquetas de Paquetes Editoriales)
Para mantener el manuscrito evolucionando por derivación en lugar de por cambios incrementales de redacción, las ediciones futuras deben organizarse como paquetes de trabajo concretos:

1. **Paquete A (Testigo de control en espacio de trayectorias).**
   Entregable: una subsección con una familia regulada \(K_\varepsilon\), su identidad de composición y un enunciado límite.
   Criterio de pase: al menos un enunciado numerado con supuestos y un modo de fallo explícito cuando se abandonan los supuestos.
   Estado actual: el Apéndice 10.6 ahora contiene composición exacta del núcleo libre, testigo de potencial acotado de primer orden, control cuantitativo \(L^\infty\), y un benchark de núcleo exactamente soluble no trivial (`D12.1`, `P12.1`, `D12.2`, `P12.2`, `D12.3`); el control constructivo completo del espacio de trayectorias permanece abierto.
2. **Paquete B (Benchmark de orden/dominio/extensión).**
   Entregable: un modelo a nivel de apéndice comparando dos órdenes más la conjugación de semi-densidades.
   Criterio de pase: diferencia de operadores explícita hasta \(O(\hbar)\) y un enunciado claro de los límites de dominio/equivalencia.
   Estado actual: el Apéndice 10.2 ahora incluye benchmarks de simetría periódica/curva, un testigo explícito de extensión auto-adjunta (`D9.1b`, `D9.1d`, `D9.1e`, `D9.1f`), y una estratificación de cuatro capas de las diferencias de orden con estimaciones cuantitativas de observabilidad (`Observación D9.1a`); la clasificación de extensión completa permanece abierta.
3. **Paquete C (Testigo GR a nivel de TCC).**
   Entregable: evolución de un lazo en un esquema de sustracción fijo usando las convenciones del manuscrito.
   Criterio de pase: \(\beta(g)\) explícito, un cálculo de cambio de esquema, y mapeo directo a la compatibilidad de escala en la Sección 8.
   Estado actual: la nota complementaria fundamental del GR contiene una integración explícita de cápara de Wilsonian de un lazo para el modelo de contacto 2D (función beta, composición semigrupal de mapas GR y estructura de cambio de esquema). Importar esto al Apéndice 10.1 del presente manuscrito en convenciones coincidentes permanece abierto.
4. **Paquete D (Auditoría de error de truncación).**
   Entregable: flujos paralelos para dos niveles de truncación con al menos una comparación de observable.
   Criterio de pase: una región de estabilidad cuantitativa y un régimen de colapso explícito.
5. **Paquete E (Consolidación del mapa del lector).**
   Entregable: un diagrama de compatibilidad compacto que vincule las Secciones 3--8 y los Apéndices 10.1--10.6.
   Criterio de pase: cada flecha referencia al menos una proposición/derivación numerada en el texto.

Se sigue una regla práctica: las adiciones que no avancen al menos un paquete deben diferirse, de modo que el esfuerzo de revisión permanezca concentrado en el cierre técnico en lugar de las ediciones contables. Estas etiquetas de paquete son sólo etiquetas de planificación editorial, no etiquetas de teorema/afirmación.
Puntero de navegación rápida: el Apéndice 10.1 avanza principalmente el Paquete C/D; el Apéndice 10.2 avanza principalmente el Paquete B; el Apéndice 10.6 avanza principalmente el Paquete A; la Sección 9.1 + el Apéndice 10.3 soportan el Paquete E.

## 9.6 Conclusión
La tesis central del artículo es que las "leyes del continuo" se entienden más limpiamente como *objetivos estables del refinamiento controlado*: los invariantes de paso finito (la dinámica poligonal de Newton) persisten a través de la formulación de la acción, y la aditividad de la acción es la estructura algebraica que fuerza una ley de composición consistente. En el entorno cuántico, la composición multiplicativa junto con la aditividad local hace que el peso exponencial sea estructuralmente natural, y la dinámica clásica se recupera por concentración de fase estacionaria. Entran dos mecanismos de control adicionales cuando el refinamiento ingenuo no está definido de manera única: la cuantización por deformación organiza las elecciones de orden/discretización en clases de equivalencia compatibles con un límite clásico común, y la renormalización suministra la condición de compatibilidad requerida cuando los límites de refinamiento divergen.

A lo largo de todo, el manuscrito mantiene el refinamiento explícito, separa las derivaciones de las heurísticas y resalta las hipótesis adicionales necesarias para cada paso al continuo. (Un satélite complementario sobre el Principio de Compatibilidad de Refinamiento formaliza esta idea unificadora como un sistema axiomático explícito — cinco axiomas (composición, identidad, equivalencia de representación, invarianza de escala, homogeneidad dimensional) organizados en tres canales (partición, representación, escala) — con testigos trabajados en cada canal y una síntesis multicanal que muestra cómo la integral de trayectoria realiza los tres simultáneamente.)

`Observación P9.1 (Cadena de completaciones forzadas y estructura vs contenido).`
La narrativa admite una lectura más nítida como una cadena de *completaciones forzadas*: cada etapa es el enriquecimiento mínimo de la ley de composición necesario para la consistencia al siguiente nivel de complejidad. Etapa 0→1: los límites de diferencias finitas producen derivadas (cálculo). Etapa 1→2: la composición temporal de propagadores fuerza núcleos gaussianos, la normalización \(d/2\) y \(\kappa=\hbar\) (Proposición P4.2; la composición sola es suficiente como único axioma maestro, Observación P4.2h). Etapa 2→3: la cuantización por modo más el ensamblaje de modos infinitos mediante renormalización producen la teoría de campos (Secciones 6 y 8). Cada transición es una derivación (o, para la etapa 2→3, un argumento estructural) del requisito de composición de la etapa anterior, no un postulado. Emerge una separación limpia: la composición restringe la *estructura* (forma del núcleo, exponente de normalización, peso exponencial) pero no el *contenido* (qué lagrangiano de interacción); la selección del contenido entra sólo a nivel de renormalización, donde la condición de ensamblaje filtra las teorías admisibles.

Inversamente, cada desviación conocida del marco composicional tiene una explicación estructural: los sistemas abiertos (datos de frontera incompletos), la medición (el trazado del subsistema viola la composición global), las anomalías (conflicto simetría-composición) y la divergencia UV (fallo del ensamblaje de modos infinitos). Estos no son patologías independientes sino cuatro caras de un fenómeno — las obstrucciones de límite identificadas en la Heurística H0.2 que reaparecen a niveles estructurales progresivamente más altos.

`Observación P9.1a (Etapa 4: composición sobre geometría dinámica).`
La cadena de completaciones forzadas 0→1→2→3 no termina obviamente en la TCC. Cuando la gravedad es dinámica, la integral de composición debe sumar sobre las geometrías de rebanada espacial mismas, y la noción "t = t₁ + t₂" que presupone el axioma A1 se vuelve dependiente del calibre bajo la covarianza general. Esto es cualitativamente diferente de las etapas 1–3, que fijan las divergencias de una integral de composición existente: la etapa 4 desafía el *dominio* de la integral (¿qué es "la rebanada espacial"?), no sólo el integrando. Una completación requeriría definir la composición a nivel de cobordismo — sin una foliación temporal preferida — y los candidatos actuales (seguridad asintótica, composición de frontera holográfica, métodos de hoja de mundo) proponen cada uno resoluciones diferentes, ninguna derivada aún de un único principio de composición. La cadena puede *ramificarse* en lugar de continuar linealmente. Inversamente, el límite clásico \(\kappa\to 0\) es singular (Proposición P4.2(iii)) precisamente porque intenta deshacer una completación forzada: la composición requiere \(\kappa\) finito, y eliminarlo colapsa el semigrupo a la extremización de Hamilton-Jacobi, que genéricamente carece de un límite de identidad.

# 10. Apéndices Técnicos
Esta sección proporciona los apéndices anunciados al final de la Sección 9. Cada subsección es una extensión trabajada compacta vinculada a una vulnerabilidad residual.

## 10.1 Plantilla de Renormalización Trabajada (Acoplamiento Único)
El objetivo es reemplazar el lenguaje GR puramente estructural con un cálculo explícito de sustracción-y-evolución.

Suponer que una cantidad regulada tiene la forma perturbativa

$$
F_\Lambda(g_B;\mu)
=
g_B
+c\,g_B^2\ln\!\left(\frac{\Lambda}{\mu}\right)
+d\,g_B^2
+O(g_B^3),
$$

con constantes adimensionales \(c,d\). Definir un acoplamiento renormalizado por una condición de sustracción en la escala \(\mu\):

$$
g_R(\mu)\equiv g_B+c\,g_B^2\ln\!\left(\frac{\Lambda}{\mu}\right).
$$

`Derivación D8.1 (Predicción renormalizada finita en escala de sustracción fija).`
Invertir la definición al segundo orden:

$$
g_B
=
g_R-c\,g_R^2\ln\!\left(\frac{\Lambda}{\mu}\right)+O(g_R^3).
$$

Sustituir en \(F_\Lambda\):

$$
F_\Lambda
=
g_R
+d\,g_R^2
+O(g_R^3),
$$

de modo que la dependencia logarítmica explícita del corte se cancela a este orden. Esta es la implementación concreta de la regla de la Sección 8: ajustar los datos desnudos para que las predicciones a la escala de referencia permanezcan estables.

`Derivación D8.2 (Evolución a partir de la independencia del corte).`
Con acoplamiento desnudo fijo \(g_B\), la diferenciación de la condición de renormalización da

$$
\mu\frac{d g_R}{d\mu}
=
-c\,g_R^2+O(g_R^3)
\equiv
\beta(g_R).
$$

Esto convierte la dependencia del corte divergente en dependencia de escala controlada.

`Proposición P8.1 (Coeficiente beta principal bajo cambio analítico de esquema).`
Para una reparametrización
\(g_R' = g_R + a\,g_R^2 + O(g_R^3)\),
el coeficiente principal de \(\beta\) no cambia:

$$
\beta'(g_R')=-c\,{g_R'}^2+O({g_R'}^3).
$$

Así los cambios de esquema desplazan los términos de orden superior mientras preservan el primer coeficiente de flujo no trivial en esta plantilla.

`Derivación D8.2a (Testigo de TCC de un lazo en esquema fijo: \(\lambda\phi^4\) cerca de cuatro dimensiones).`
Para hacer explícitos los enunciados GR estructurales de la Sección 8 a nivel de TCC, considerar la teoría escalar \(\lambda\phi^4\) en \(D=4-2\varepsilon\), con parametrización estilo sustracción mínima
\[
\lambda_B
=
\mu^{2\varepsilon}\!\left(
\lambda_R
+\frac{3}{16\pi^2}\frac{\lambda_R^2}{\varepsilon}
+O(\lambda_R^3)
\right).
\]
Aquí la convención de interacción es \(\mathcal L_{\mathrm{int}}=\lambda_R\phi^4/4!\), que fija el coeficiente de un lazo \(3/(16\pi^2)\).
Manteniendo \(\lambda_B\) fijo y diferenciando respecto a \(\ln\mu\) da
\[
\beta(\lambda_R)\equiv \mu\frac{d\lambda_R}{d\mu}
=
-2\varepsilon\,\lambda_R
+\frac{3}{16\pi^2}\lambda_R^2
+O(\lambda_R^3).
\]
En \(D=4\) (\(\varepsilon\to0\)):
\[
\beta(\lambda_R)=\frac{3}{16\pi^2}\lambda_R^2+O(\lambda_R^3),
\qquad
\frac{1}{\lambda_R(\mu)}
=
\frac{1}{\lambda_R(\mu_0)}
-\frac{3}{16\pi^2}\ln\!\frac{\mu}{\mu_0}
+O(\lambda_R).
\]
Este es el análogo de la teoría de campos de la `Derivación D6.2`: la dependencia de refinamiento logarítmica se intercambia por una evolución de escala controlada en una convención de sustracción fija. Bajo un cambio analítico de esquema \(\lambda_R'=\lambda_R+a\lambda_R^2+O(\lambda_R^3)\), el coeficiente \(3/(16\pi^2)\) no cambia a este orden, coincidiendo con la `Proposición P8.1`.

## 10.2 Par de Orden/Discretización con el Mismo Límite Clásico
Este apéndice da un ejemplo explícito de la afirmación de la Sección 6/Sección 7 de que la elección de discretización cambia los términos \(O(\hbar)\) mientras preserva la dinámica clásica.

Tomar el símbolo clásico \(A(q,p)=f(q)p\), con \(f\) suave. Considerar dos cuantizaciones:
1. Orden izquierdo:
\(Q_L(A)=f(\hat q)\hat p\).
2. Orden de Weyl (simétrico):
\(Q_W(A)=\frac12\left(f(\hat q)\hat p+\hat p f(\hat q)\right)\).

Usando \([\hat p,f(\hat q)]=-i\hbar f'(\hat q)\):

$$
Q_W(A)
=
f(\hat q)\hat p
-\frac{i\hbar}{2}f'(\hat q)
=
Q_L(A)-\frac{i\hbar}{2}f'(\hat q).
$$

`Derivación D9.1 (Acuerdo clásico, desplazamiento cuántico).`
El operador diferencia es \(O(\hbar)\):

$$
Q_W(A)-Q_L(A)=-\frac{i\hbar}{2}f'(\hat q).
$$

Por tanto

$$
\lim_{\hbar\to0}\big(Q_W(A)-Q_L(A)\big)=0
$$

en el límite clásico formal, mientras que los generadores cuánticos difieren al orden subyacente.

`Observación D9.1a (Símbolos cuadráticos y resolución de semi-densidades).`
Para el símbolo cuadrático \(A(q,p)=f(q)p^2\) (p. ej., energía cinética con masa dependiente de la posición \(f=1/m\)), la misma comparación produce
\[
Q_W(fp^2)-Q_L(fp^2)=-i\hbar f'(\hat q)\hat p-\tfrac{1}{4}\hbar^2 f''(\hat q).
\]
La corrección ahora tiene dos capas: un operador diferencial de primer orden \(O(\hbar)\) y un potencial \(O(\hbar^2)\). En particular, los diferentes órdenes de \(p^2/m(q)\) difieren en el coeficiente del término de primera derivada \(i\hbar(m'/m^2)\hat p\).
La conjugación de semi-densidades \(|g|^{1/4}\Delta_g|g|^{-1/4}\) no elimina el término de primera derivada (conexión): tanto la prescripción de Weyl como la de semi-densidades comparten el mismo término de conexión \(f'\partial_q\) (como requiere la auto-adjuntividad formal en \(L^2(\mathbb R,dq)\)). Difieren sólo en la capa siguiente: el potencial escalar \(O(\hbar^2)\), con \(\hat H_W-\hat H_{\mathrm{HD}}=-\hbar^2 f'^2/(32mf)\) (un operador puramente multiplicativo, sin derivadas). Esto apoya una estratificación de cuatro capas de las diferencias de orden: (1) símbolo principal — todas las prescripciones concuerdan; (2) conexión (primera derivada) — fijado por auto-adjuntividad, independiente del orden; (3) escalar \(O(\hbar^2)\) — la libertad de deformación genuina persiste; (4) dominio del operador — independiente. La prescripción de semi-densidades es un representante canónico dentro de la clase de equivalencia de deformación (como el calibre de Lorenz), no una física diferente. Las estimaciones explícitas del desplazamiento de energía para masa dependiente de la posición \(f(q)=1+\alpha q^2\) en una trampa armónica muestran \(|\Delta E_0|\sim O(\alpha^2)\), con el desplazamiento de primer orden anulándose idénticamente y la corrección principal siendo indetectablemente pequeña (\(\sim 0.01\)--\(0.06\) meV para pocillos cuánticos de GaAs, por debajo de los umbrales de resolución actuales). Esto confirma que la equivalencia de deformación (Proposición P5.2) es física, no meramente formal (cf.\ Derivación HD-D1.3 en la nota complementaria de semi-densidades).

`Derivación D9.1b (Testigo de simetría de dominio periódico para \(Q_L\) vs \(Q_W\)).`
Tomar el espacio de configuración \(S^1\) con coordenada \(q\in[0,2\pi)\), espacio de Hilbert \(L^2(S^1,dq)\) y dominio de Sobolev periódico \(H^1_{\mathrm{per}}(S^1)\). Sea \(f\in C^1(S^1,\mathbb R)\). Definir
\[
Q_L=-i\hbar\,f(q)\partial_q,\qquad
Q_W=-i\hbar\!\left(f(q)\partial_q+\frac12 f'(q)\right).
\]
Para \(u,v\in H^1_{\mathrm{per}}(S^1)\), la integración por partes con cancelación de frontera periódica da
\[
\langle u,Q_L v\rangle-\langle Q_L u,v\rangle
=
i\hbar\int_0^{2\pi}\overline{u(q)}\,f'(q)\,v(q)\,dq,
\]
mientras que para el representante de Weyl los términos extra \(\frac12 f'\) se cancelan:
\[
\langle u,Q_W v\rangle-\langle Q_W u,v\rangle=0.
\]
Por tanto \(Q_W\) es simétrico en \(H^1_{\mathrm{per}}(S^1)\) para \(f\) real, mientras que \(Q_L\) sólo es simétrico para \(f' = 0\). Este es un límite de dominio de operador explícito detrás de la diferencia de orden \(O(\hbar)\) de la `Derivación D9.1`.

`Observación D9.1c (Límite de alcance para afirmaciones de dominio).`
El testigo anterior establece la simetría en el dominio periódico enunciado; no afirma la auto-adjuntividad esencial ni clasifica las extensiones auto-adjuntas en casos de coeficientes singulares/degenerados.

`Derivación D9.1d (Benchmark cinético de variedad curva mediante conjugación de semi-densidades).`
Sea \((M,g)\) una variedad riemanniana compacta sin frontera. Escribir \(d\mathrm{vol}_g=|g|^{1/2}dx\) en una carta local \(x\), y definir
\[
U: L^2(M,d\mathrm{vol}_g)\to L^2(M,dx),\qquad (U\psi)(x)=|g(x)|^{1/4}\psi(x).
\]
El operador cinético de Laplace-Beltrami
\[
H_g:=-\frac{\hbar^2}{2}\Delta_g,\qquad \Delta_g=|g|^{-1/2}\partial_i\!\left(|g|^{1/2}g^{ij}\partial_j\right),
\]
es simétrico en \(H^2(M,d\mathrm{vol}_g)\). Conjugar por \(U\) da
\[
\widetilde H_g:=U H_g U^{-1}
=-\frac{\hbar^2}{2}\,|g|^{1/4}\Delta_g|g|^{-1/4}
\]
en dominio \(U(H^2(M,d\mathrm{vol}_g))\subset L^2(M,dx)\), y la simetría se preserva por la unitariedad:
\[
\langle u,\widetilde H_g v\rangle_{dx}
=\langle U^{-1}u,H_g U^{-1}v\rangle_{d\mathrm{vol}_g}
=\langle \widetilde H_g u,v\rangle_{dx}.
\]
Esto da un testigo de dominio de operador de variedad curva de que la prescripción de semi-densidades no es una reescritura cosmética: es el transporte que preserva la simetría del operador cinético geométrico.

`Derivación D9.1e (El operador cinético izquierdo ingenuo falla la simetría en cartas genéricas).`
En el mismo dominio de carta (con términos de frontera suprimidos por compacidad/periodicidad), definir el operador de símbolo principal de orden izquierdo
\[
H_L:=-\frac{\hbar^2}{2}\,g^{ij}(x)\partial_i\partial_j.
\]
Para \(u,v\) suaves, la integración repetida por partes produce
\[
\langle u,H_L v\rangle_{dx}-\langle H_L u,v\rangle_{dx}
=\frac{\hbar^2}{2}\int dx\;(\partial_i g^{ij})\big(\overline{u}\,\partial_j v-(\partial_j\overline{u})\,v\big).
\]
Por tanto \(H_L\) sólo es simétrico bajo restricciones adicionales de coordenada/coeficiente (p. ej. \(\partial_i g^{ij}=0\) en la carta elegida). En coordenadas curvas generales, el orden izquierdo rompe la simetría mientras que la forma de Laplace-Beltrami conjugada por semi-densidades permanece simétrica por construcción (`Derivación D9.1d`).

`Derivación D9.1f (Testigo de parámetro de dominio: mismo símbolo, realizaciones auto-adjuntas inequivalentes).`
Considerar el operador cinético 1D formal
\[
\widehat H_{\mathrm{form}}=-\frac{\hbar^2}{2m}\frac{d^2}{dx^2}
\]
en \(C_c^\infty(\mathbb R\setminus\{0\})\). Es simétrico pero no auto-adjunto; las realizaciones auto-adjuntas se fijan por los datos de frontera en \(x=0\). Una familia estándar de un parámetro es la extensión de contacto delta
\[
\mathcal D(H_g)=\Bigl\{\psi\in H^2(\mathbb R\setminus\{0\})\cap H^1(\mathbb R):
\psi'(0^+)-\psi'(0^-)=\frac{2mg}{\hbar^2}\psi(0)\Bigr\},
\]
con \(H_g\psi=\widehat H_{\mathrm{form}}\psi\) para \(x\neq0\). Los diferentes \(g\) definen teorías cuánticas inequivalentes mientras comparten el mismo símbolo principal \(p^2/(2m)\): para \(g<0\) hay un estado ligado
\[
E_B=-\frac{m g^2}{2\hbar^2},
\]
mientras que para \(g\ge0\) no aparece ningún estado ligado. Por tanto la compatibilidad de representación en el Paquete B requiere datos de dominio explícitos además de los datos de orden.

`Observación D9.1g (Límite de alcance del testigo de extensión).`
Este es un testigo a nivel de familia de extensión, no una clasificación completa de todas las extensiones auto-adjuntas (p. ej., las condiciones de frontera del parámetro completo \(U(2)\) en un punto).

`Proposición P9.1 (Enunciado de clase de equivalencia de discretización-orden).`
Si dos prescripciones de núcleo a tiempo corto se mapean a representantes de tipo \(Q_L\) y de tipo \(Q_W\) del mismo álgebra de símbolo clásico, entonces definen las mismas ecuaciones clásicas y difieren sólo por correcciones controladas \(O(\hbar)\). Esta es la versión trabajada de la afirmación de transición de la Sección 6 a la Sección 7 [Landsman1998].

## 10.3 Principio de Compatibilidad Fundacional
Este apéndice enuncia un principio de compatibilidad fundacional dirigido al objetivo central del manuscrito.

`Proposición P10.1 (Principio de Compatibilidad de Refinamiento, PCR).`
Un marco dinámico es admisible cuando tres condiciones de compatibilidad se cumplen simultáneamente:
1. **Compatibilidad de partición**: la composición a través de subdivisiones temporales preserva las mismas ecuaciones extremales basadas en la acción en el límite de refinamiento.
2. **Compatibilidad de representación**: las representaciones cuánticas alternativas (elecciones de orden/discretización) concuerdan en el límite clásico y difieren sólo por correcciones subyacentes controladas.
3. **Compatibilidad de escala**: las predicciones de observables permanecen estables bajo cambios compuestos de escala gruesa/fina después del ajuste del flujo de parámetros.

En forma compacta, para cualquier mapa de predicción \(\mathcal O\),

$$
\mathcal O
=
\mathcal O\circ\mathcal C_t
=
\mathcal O\circ\mathcal Q_\hbar
=
\mathcal O\circ\mathcal R_\Lambda,
$$

donde \(\mathcal C_t\) es la composición/refinamiento temporal, \(\mathcal Q_\hbar\) es el cambio de representación dentro de una clase de límite clásico fija, y \(\mathcal R_\Lambda\) es el flujo de refinamiento/renormalización de escala.

`Derivación D10.1a (Forma de cierre operacional: compatibilidad como "existe \(\theta'\)").`
Las igualdades esquemáticas anteriores suprimen el hecho crucial de que cada operación generalmente requiere una **actualización de parámetros** (flujo de acoplamiento, cambio de normalización, o un cambio de representación controlado) para aterrizar de nuevo en la misma familia admisible. Concretamente, los operadores \(\mathcal C_t,\mathcal Q_\hbar,\mathcal R_\Lambda\) pueden instanciarse mediante familias indexadas: \(\mathcal C_t\) por un mapa "componer \(b\) pasos finos en un paso grueso" \(\mathcal C_{b,h}\), \(\mathcal Q_\hbar\) por una familia \(\mathcal Q_\alpha\) de cambios de representación/orden a \(\hbar\) fijo, y \(\mathcal R_\Lambda\) por mapas de comparación/granulado grueso de escala \(\mathcal R_b\) (con \(\Lambda\) representando cualquier convención de corte/sustracción que parametrice la familia siendo comparada).
Aquí \(h\) es la regla a la que comparamos las predicciones, \(b\) es un factor de refinamiento/granulado grueso, y \(\alpha\) etiqueta una elección de representación dentro de una clase de límite clásico fija.
Una manera operacional de enunciar el PCR es escribir las predicciones como una familia \(\{\mathcal O_{h,\theta}\}\) indexada por \(h>0\) y parámetros \(\theta\), y requerir que para cada operación exista un mapa de actualización \(\tau\) tal que el objeto post-operación sea nuevamente representable dentro de la misma familia:
\[
\mathcal O_{h,\theta}
=
\mathcal O_{h,\tau_C(b,h;\theta)}\circ \mathcal C_{b,h}
=
\mathcal O_{h,\tau_Q(\alpha;\theta)}\circ \mathcal Q_\alpha
=
\mathcal O_{h,\tau_R(b;\theta)}\circ \mathcal R_b.
\]
Escrito de esta manera, la compatibilidad es falsificable: el cierre puede fallar cuando no existe ningún \(\theta'\) admisible. El testigo constructivo más fuerte del manuscrito es la Proposición P4.2: bajo las hipótesis (C), (L), (I), (D), el refinamiento compatible con la composición de la dinámica basada en la acción fuerza una constante estructural \(\kappa\) con \([\kappa]=[\mathrm{acción}]\), y tanto los límites \(\kappa\to0\) como \(\kappa\to\infty\) fallan — el primero colapsa la composición a la extremización de Hamilton-Jacobi sin límite de identidad distribucional, el último trivializa los pesos. El sub-caso más simple es el exponente de normalización: el cierre semigrupal fija \(A(t)\propto t^{-d/2}\) (Derivación D4.1a); elegir cualquier otra potencia rompe el cierre.

`Observación D10.1b (Qué pertenece a \(\theta\): datos de orden y datos de dominio).`
El haz de parámetros \(\theta\) en la `Derivación D10.1a` incluye más que los acoplamientos: también contiene datos de representación tales como elecciones de orden y dominios/condiciones de frontera de operadores admisibles. La `Derivación D9.1f` da un testigo concreto: el mismo símbolo principal \(p^2/(2m)\) admite realizaciones auto-adjuntas inequivalentes indexadas por el parámetro de contacto \(g\), con diferentes espectros. Así el canal \(\mathcal Q_\hbar\) no es "sólo de orden"; el cierre puede fallar a menos que los datos de dominio se transporten como parte de \(\theta\).

`Derivación D10.1 (Puente a las secciones 3--8).`
1. **Compatibilidad de partición** (\(\mathcal C_t\)): Secciones 3--4 (refinamiento de ley de áreas; puente acción/Noether).
2. **Compatibilidad de representación** (\(\mathcal Q_\hbar\)): Secciones 6--7 (elecciones de orden/discretización con límite \(\hbar\to0\) idéntico).
3. **Compatibilidad de escala** (\(\mathcal R_\Lambda\)): Sección 8 (consistencia del semigrupo GR).

Por tanto la narrativa de Newton a la integral de trayectoria es una implementación del PCR en lugar de una secuencia de formalismos desconectados.

`Observación D10.1c (Testigos corona para cada canal del PCR).`
Cada canal de compatibilidad tiene ahora un testigo constructivo más allá del puente estructural: **(1) Canal de partición** (\(\mathcal C_t\)): la Proposición P4.2 prueba que \(\hbar\) es necesario (no meramente conveniente) para el cierre de la composición — el mapa de actualización de compatibilidad de partición es forzado y su ausencia es catastrófica. **(2) Canal de representación** (\(\mathcal Q_\hbar\)): la Derivación D9.1f muestra que los datos de dominio (parámetro de extensión auto-adjunta) deben transportarse como parte de \(\theta\); las realizaciones inequivalentes comparten los símbolos clásicos pero tienen espectros diferentes. **(3) Canal de escala** (\(\mathcal R_\Lambda\)): la Observación H6.3 demuestra que los datos de expansión de contacto local, combinados con la analiticidad (Padé, dispersión, Borel), reconstruyen la estructura global no perturbativa — el mapa de control \(\tau\) accede a polos, cortes y sectores instanton a partir de los coeficientes de Taylor. Estos tres testigos hacen que el PCR sea constructivo en lugar de axiomático: muestran no sólo que la compatibilidad puede requerirse, sino que determina constantes estructurales específicas, datos de dominio y métodos de reconstrucción.

`Heurística H10.1 (Lectura fundacional).`
El PCR puede interpretarse como un postulado fundacional candidato: las leyes físicas son aquellos enunciados que sobreviven a los cambios controlados de partición, representación y escala.

## 10.4 Resumen del Apéndice
Las secciones de apéndice 10.1--10.3 cierran tres brechas técnicas identificadas en la Sección 9:
1. sustracción/evolución de renormalización explícita, incluyendo ahora un testigo de TCC de un lazo en esquema fijo (10.1),
2. desplazamiento explícito de orden/discretización \(O(\hbar)\) con límite clásico fijo (10.2),
3. principio de compatibilidad fundacional explícito que unifica la cadena completa (10.3).

El Apéndice 10.5 suministra un cálculo GR cuántico-mecánico completamente trabajado (interacción de contacto 2D) que demuestra la divergencia, la sustracción, el acoplamiento evolutivo, la transmutación dimensional y la dependencia del esquema en un modelo concreto.
El Apéndice 10.6 añade un testigo explícito de composición de núcleos regulados con eliminación controlada del regulador y un modo de fallo concreto cuando se violan los supuestos de admisibilidad.

Estas adiciones no alteran la tesis; aumentan la responsabilidad computacional de la cadena existente.

`Observación D10.4a (Mapa de paquete a apéndice para navegación rápida).`
Para la navegación del lector:
1. **Paquete C/D (testigo GR + control de truncación):** Apéndice 10.1 con `D8.1`, `D8.2`, `D8.2a`, `P8.1` y Sección 8.6 `D6.4`.
2. **Paquete B (orden/dominio/extensión):** Apéndice 10.2 con `D9.1`, `D9.1a`, `D9.1b`, `D9.1d`, `D9.1e`, `D9.1f`.
3. **Paquete A (escalera de cierre de espacio de trayectorias/núcleo):** Apéndice 10.6 con `D12.1`, `P12.1`, `D12.2`, `P12.2`, `D12.3`.
4. **Paquete E (mapa de compatibilidad global):** Sección 9.1 `P7.1a` más Apéndice 10.3 `P10.1`, `D10.1a`, `D10.1b`.

## 10.5 Interacción de Contacto Singular como Cálculo GR Explícito (Delta 2D)
La Sección 8 argumenta que el GR es la condición de compatibilidad de escala requerida cuando los límites de refinamiento divergen. Este apéndice suministra un ejemplo completamente explícito en un modelo cuántico-mecánico singular donde la teoría del continuo sólo se define después de elegir una prescripción de renormalización. Para un tratamiento perturbativo estilo TCC de este mecanismo en mecánica cuántica (incluida la interacción delta 2D), ver [ManuelTarrach1994PertRenQM].
Para una discusión estándar de los potenciales de función delta en dos y tres dimensiones (y sus problemas de renormalización), ver [Jackiw1991DeltaPotentials].

Considerar la interacción de contacto bidimensional

$$
H
=
-\frac{\hbar^2}{2m}\Delta
+g\,\delta^{(2)}(x)
\quad \text{en }\mathbb R^2.
$$

La interacción tiene soporte en Dirac y el límite del continuo ingenuo está mal definido: las integrales de lazo divergen logarítmicamente.

`Derivación D11.1 (Evaluación con corte del lazo de contacto).`
Sea \(E>0\) y escribir \(E=\hbar^2 k^2/(2m)\). La ecuación de Lippmann-Schwinger produce una matriz \(T\) algebraica

$$
T(E;\Lambda)
=
\frac{1}{g_B(\Lambda)^{-1}-I(E;\Lambda)},
$$

donde la integral de lazo es el resolvente libre en el origen con un corte de vector de onda \(|q|<\Lambda\):

$$
I(E;\Lambda)
=
\int_{|q|<\Lambda}\frac{d^2q}{(2\pi)^2}\,
\frac{1}{E-\frac{\hbar^2 q^2}{2m}+i0}
=
-\frac{m}{2\pi\hbar^2}\left[\ln\!\left(\frac{\Lambda^2}{k^2}\right)+i\pi\right]
+O\!\left(\frac{k^2}{\Lambda^2}\right).
$$

Así la teoría regulada contiene una divergencia logarítmica \(\sim -\frac{m}{2\pi\hbar^2}\ln\Lambda^2\).

`Derivación D11.2 (Acoplamiento renormalizado y función beta).`
Definir un acoplamiento renormalizado en la escala de sustracción \(\mu\) por

$$
\frac{1}{g_R(\mu)}
\equiv
\frac{1}{g_B(\Lambda)}
+\frac{m}{2\pi\hbar^2}\ln\!\left(\frac{\Lambda^2}{\mu^2}\right).
$$

Sustituir en \(T(E;\Lambda)\) cancela la dependencia explícita del corte y da una amplitud finita:

$$
T(E)
=
\frac{1}{
\frac{1}{g_R(\mu)}
+\frac{m}{2\pi\hbar^2}\ln\!\left(\frac{\mu^2}{k^2}\right)
+ i\,\frac{m}{2\hbar^2}
}.
$$

Como \(\mu\) es arbitrario, las predicciones físicas deben satisfacer \(dT/d\ln\mu=0\). Esto produce la ecuación GR

$$
\mu\frac{d}{d\mu}\left(\frac{1}{g_R(\mu)}\right)
=-\frac{m}{\pi\hbar^2},
\qquad
\beta(g_R)\equiv \mu\frac{d g_R}{d\mu}
=\frac{m}{\pi\hbar^2}\,g_R^2.
$$

Este es el "campo vectorial de compatibilidad de escala" explícito prometido por la Sección 8, obtenido de la exigencia de que la escala de sustracción no afecte la predicción compuesta. (Para una derivación alternativa mediante integración explícita de cápara de Wilsonian — haciendo directamente visible la composición semigrupal \(W_{\Lambda_1\to\Lambda_2}\circ W_{\Lambda\to\Lambda_1} = W_{\Lambda\to\Lambda_2}\) como una identidad de integrales de cápara de momento — cf.\ Derivación RG-D1.2a en la nota complementaria del GR.)

`Proposición P11.1 (Transmutación dimensional: una escala de estado ligado invariante bajo GR).`
Para \(E<0\), escribir \(E=-\hbar^2\kappa^2/(2m)\). El estado ligado corresponde a un polo de \(T\), que ocurre cuando

$$
\frac{1}{g_R(\mu)}
+\frac{m}{2\pi\hbar^2}\ln\!\left(\frac{\mu^2}{\kappa^2}\right)
=0.
$$

Definir

$$
\kappa_\ast^2
\equiv
\mu^2\exp\!\left(\frac{2\pi\hbar^2}{m}\frac{1}{g_R(\mu)}\right).
$$

Usando la ecuación GR para \(1/g_R(\mu)\), se comprueba que \(d\kappa_\ast/d\mu=0\). Así la interacción delta renormalizada intercambia el acoplamiento dependiente del regulador por una escala física \(\kappa_\ast\) (equivalentemente una energía de estado ligado \(E_B=\hbar^2\kappa_\ast^2/(2m)\)).

`Derivación D11.3 (Dependencia del esquema como reescalado de la escala de transmutación).`
La sustracción que define \(g_R(\mu)\) no es única: se puede desplazar por una constante finita \(C\) definiendo

$$
\frac{1}{g_R^{(C)}(\mu)}
\equiv
\frac{1}{g_R(\mu)}+\frac{m}{2\pi\hbar^2}C.
$$

La diferenciación en \(\ln\mu\) elimina la constante, de modo que la función beta no cambia. Sin embargo, la escala invariante bajo GR se reescala:

$$
\kappa_{\ast}^{(C)\,2}
\equiv
\mu^2\exp\!\left(\frac{2\pi\hbar^2}{m}\frac{1}{g_R^{(C)}(\mu)}\right)
=e^{C}\,\kappa_\ast^2.
$$

Así, en este modelo de una escala, la "dependencia del esquema" es precisamente la libertad de reescalar la única escala física. Fijar un dato físico (p. ej. \(E_B\)) fija \(\kappa_\ast\) y elimina la ambigüedad de las predicciones.

## 10.6 Testigo de Composición de Núcleos Regulados (Modelo Libre Euclidiano)
La Sección 9.4 identifica el formalismo del espacio de trayectorias como una vulnerabilidad abierta a menos que se pueda exhibir una familia regulada con composición exacta y eliminación controlada del regulador. El siguiente testigo gaussiano suministra esa estructura en un modelo donde todas las integrales son explícitas.
Para las fórmulas explícitas de núcleos en esta subsección usamos unidades \(m=\hbar=1\); los límites de la norma del operador a continuación no cambian salvo los reescalamientos convencionales correspondientes.

`Derivación D12.1 (Composición exacta con actualización aditiva del regulador).`
Para \(t>0\), \(\varepsilon>0\), definir
\[
K_\varepsilon(x,y;t)
:=
\frac{1}{\bigl(4\pi(t+\varepsilon)\bigr)^{d/2}}
\exp\!\left[-\frac{|x-y|^2}{4(t+\varepsilon)}\right].
\]
Como \(K_\varepsilon(\cdot,\cdot;t)=K_0(\cdot,\cdot;t+\varepsilon)\), la convolución gaussiana da, para \(t_1,t_2>0\) y \(\varepsilon_1,\varepsilon_2>0\),
\[
\int_{\mathbb R^d} d^dz\;
K_{\varepsilon_1}(x,z;t_1)\,
K_{\varepsilon_2}(z,y;t_2)
=
K_{\varepsilon_1+\varepsilon_2}(x,y;t_1+t_2).
\]
Así la composición es exacta dentro de la familia regulada, con ley de flujo del regulador \(\varepsilon\mapsto\varepsilon_1+\varepsilon_2\).

`Proposición P12.1 (Eliminación controlada del regulador y modo de fallo explícito).`
Para \(t>0\) fijo, \(K_\varepsilon(x,y;t)\to K_0(x,y;t)\) puntualmente y en \(L^1_x\) cuando \(\varepsilon\to0^+\), de modo que
\[
\lim_{\varepsilon_1,\varepsilon_2\to0^+}
\int d^dz\;K_{\varepsilon_1}(x,z;t_1)K_{\varepsilon_2}(z,y;t_2)
=
K_0(x,y;t_1+t_2),
\]
recuperando el semigrupo estándar del núcleo de calor. Un modo de fallo concreto es inmediato: si \(t+\varepsilon\le 0\), la normalización gaussiana es indefinida/no integrable, y la composición ya no se cierra en la familia admisible. Esto da una realización a nivel de modelo de la lógica de compatibilidad del manuscrito: el cierre requiere condiciones de admisibilidad explícitas en el par refinamiento-regulador.

`Derivación D12.2 (Perturbación de potencial de primer orden: cierre de composición hasta \(O(V)\)).`
Sea \(V:\mathbb R^d\to\mathbb R\) acotado, y definir el núcleo regulado de primer orden (en \(V\)) mediante la expansión de Duhamel:
\[
K_{\varepsilon,V}^{(1)}(x,y;t)
:=
K_\varepsilon(x,y;t)
-\int_0^t d\tau\int_{\mathbb R^d} d^dz\;
K_\varepsilon(x,z;t-\tau)\,V(z)\,K_\varepsilon(z,y;\tau).
\]
Usando la `Derivación D12.1` para la parte libre y reteniendo los términos hasta \(O(V)\),
\[
\int d^dz\;K_{\varepsilon,V}^{(1)}(x,z;t)\,K_{\varepsilon,V}^{(1)}(z,y;s)
=K_{\varepsilon,V}^{(1)}(x,y;t+s)+O(V^2).
\]
El término de primer orden se combina dividiendo \([0,t+s]\) en \([0,t]\cup[t,t+s]\): en el segundo intervalo fijar \(\tau=t+\sigma\), usar la composición del núcleo libre para colapsar las integraciones intermedias, y recuperar la misma estructura de convolución de tiempo único al tiempo total \(t+s\). Así los datos de potencial no triviales aún encajan en la narrativa de refinamiento-composición al orden controlado.

`Observación D12.2a (Modo de fallo para potenciales atractivos singulares).`
La fórmula \(O(V)\) requiere que la integral de convolución espacio-temporal sea finita. Para potenciales distribucionales o demasiado singulares (por ejemplo, interacciones de contacto brutas en dimensiones donde se requiere renormalización), la integral puede diverger y \(K_{\varepsilon,V}^{(1)}\) no está bien definida sin datos de renormalización/frontera adicionales. Este es precisamente el régimen donde el tratamiento explícito del GR del Apéndice 10.5 se vuelve necesario.

`Proposición P12.2 (Resto cuantitativo y límites de defecto de composición para \(V\) acotado).`
Sea \(H_0=-\frac{\hbar^2}{2}\Delta\), \(T_0(t)=e^{-tH_0}\), y \(T_V(t)=e^{-t(H_0+V)}\) en \(L^2(\mathbb R^d)\), con \(V\) un operador de multiplicación acotado y \(M:=\|V\|_\infty\). Definir la aproximación de Duhamel de primer orden
\[
T_V^{(1)}(t):=T_0(t)-\int_0^t T_0(t-\tau)\,V\,T_0(\tau)\,d\tau.
\]
Entonces:
1. **Límite del resto**
\[
\|T_V(t)-T_V^{(1)}(t)\|
\le e^{Mt}-1-Mt
\le \frac12 M^2 t^2 e^{Mt}.
\]
2. **Límite de defecto de composición (aproximación de primer orden)**
\[
\|T_V^{(1)}(t)T_V^{(1)}(s)-T_V^{(1)}(t+s)\|
\le C\,M^2\,(t+s)^2 e^{M(t+s)}
\]
para una constante universal \(C\) (p. ej. \(C=2\)).

Esbozo: expandir \(T_V\) por Duhamel al segundo orden, acotar las integrales iteradas con normas del semigrupo \(\|T_0(r)\|\le1\), \(\|T_V(r)\|\le e^{Mr}\), y usar
\[
T_V^{(1)}(t)T_V^{(1)}(s)-T_V^{(1)}(t+s)
=\big(T_V^{(1)}(t)-T_V(t)\big)T_V^{(1)}(s)
+T_V(t)\big(T_V^{(1)}(s)-T_V(s)\big)
+\big(T_V(t+s)-T_V^{(1)}(t+s)\big).
\]
Así la `Derivación D12.2` tiene control cuantitativo explícito en el régimen de potencial acotado, no sólo contabilidad formal \(O(V)\).

`Derivación D12.3 (Testigo exacto de semigrupo no trivial: oscilador armónico euclidiano).`
Para el potencial cuadrático confinante \(V(x)=\frac12\omega^2|x|^2\) con \(\omega>0\), el núcleo euclidiano en \(\mathbb R^d\) es la forma de Mehler
\[
K_\omega(x,y;t)
=
\left(\frac{\omega}{2\pi\sinh(\omega t)}\right)^{d/2}
\exp\!\left[
-\frac{\omega}{2\sinh(\omega t)}
\Big((|x|^2+|y|^2)\cosh(\omega t)-2x\!\cdot\! y\Big)
\right].
\]
La integración gaussiana en la variable intermedia da, para \(t_1,t_2>0\),
\[
\int_{\mathbb R^d} d^dz\;K_\omega(x,z;t_1)K_\omega(z,y;t_2)
=K_\omega(x,y;t_1+t_2),
\]
usando las identidades hiperbólicas estándar (notablemente \(\sinh(a+b)=\sinh a\cosh b+\cosh a\sinh b\) y la identidad inducida para \(\coth(a+b)\)). Así obtenemos un testigo de composición no trivial a todos los órdenes (más allá de los regímenes libres y perturbativos de primer orden).
Definiendo \(K_{\omega,\varepsilon}(x,y;t):=K_\omega(x,y;t+\varepsilon)\) con \(\varepsilon>0\), el mismo cálculo produce el flujo aditivo del regulador:
\[
\int d^dz\;K_{\omega,\varepsilon_1}(x,z;t_1)K_{\omega,\varepsilon_2}(z,y;t_2)
=K_{\omega,\varepsilon_1+\varepsilon_2}(x,y;t_1+t_2).
\]

`Observación D12.3a (Límite de alcance del benchmark exacto).`
Este testigo de cierre exacto es específico de los potenciales cuadráticos confinantes (\(\omega>0\)) en tiempo euclidiano. Los casos invertidos/no confinantes requieren tratamiento separado y están fuera de la clase admisible usada aquí.

`Observación D12.3b (Límites de sanidad: límite libre y localización a tiempo corto).`
Dos verificaciones inmediatas fijan la normalización e interpretación:
1. **Límite libre \(\omega\to0\)**: usando \(\sinh(\omega t)=\omega t+O((\omega t)^3)\), \(\cosh(\omega t)=1+O((\omega t)^2)\),
\[
K_\omega(x,y;t)\xrightarrow[\omega\to0]{}
\frac{1}{(4\pi t)^{d/2}}\exp\!\left(-\frac{|x-y|^2}{4t}\right)
=K_0(x,y;t).
\]
2. **Límite a tiempo corto \(t\to0^+\)**: \(K_\omega(\cdot,\cdot;t)\) se concentra a \(\delta\) en distribuciones, coincidiendo con la condición inicial del semigrupo.
Estas verificaciones aseguran que la `Derivación D12.3` es consistente tanto con el testigo libre (`D12.1`) como con la normalización estándar del núcleo de calor a tiempos cortos.

# Referencias

1. [Newton1687] Isaac Newton, *Philosophiae Naturalis Principia Mathematica* (1687), Libro I (métodos de límite y geometría de fuerza central). Punto de acceso de referencia: Newton Project y ediciones traducidas estándar.
2. [Noether1918] Emmy Noether, "Invariante Variationsprobleme" (1918). Traducción al inglés comúnmente usada en las referencias de mecánica moderna.
3. [Dirac1933] P. A. M. Dirac, "The Lagrangian in Quantum Mechanics," *Physikalische Zeitschrift der Sowjetunion* 3 (1933), 64–72. (Citado comúnmente como el enunciado más temprano de ponderación de fase estilo integral de trayectoria.)
4. [Feynman1948] R. P. Feynman, "Space-Time Approach to Non-Relativistic Quantum Mechanics," *Reviews of Modern Physics* 20 (1948), 367–387. DOI `10.1103/RevModPhys.20.367`. OA: PDF del repositorio de autores de Caltech.
5. [Connes1994] Alain Connes, *Noncommutative Geometry* (Academic Press, 1994). ISBN `978-0-12-185860-5`.
6. [Landsman1998] N. P. Landsman, *Mathematical Topics Between Classical and Quantum Mechanics* (Springer, 1998), Springer Monographs in Mathematics. DOI `10.1007/978-1-4612-1680-3`. ISBN `978-0-387-98318-9`.
7. [ConnesKreimer2000] Alain Connes y Dirk Kreimer, "Renormalization in quantum field theory and the Riemann-Hilbert problem I," *Communications in Mathematical Physics* 210 (2000), 249–273. DOI `10.1007/s002200050779`.
8. [Brouder1999] Ch. Brouder, "Runge-Kutta methods and renormalization," arXiv:`hep-th/9904014` (2 Apr 1999).
9. [McLachlan2017] Robert I. McLachlan, Klas Modin, Hans Munthe-Kaas, Olivier Verdier, "Butcher series: A story of rooted trees and numerical methods for evolution equations," arXiv:`1512.00906` (v3, 27 Feb 2017).
10. [BoyaRivero1994Contact] Luis J. Boya y Alejandro Rivero, "Renormalization in 1-D Quantum Mechanics: contact interactions," arXiv:`hep-th/9411081` (v1, 11 Nov 1994).
11. [ManuelTarrach1994PertRenQM] Cristina Manuel y Rolf Tarrach, "Perturbative Renormalization in Quantum Mechanics," *Physics Letters B* 328 (1994), 113--118. arXiv:`hep-th/9309013` (v1, 2 Sep 1993). DOI `10.1016/0370-2693(94)90437-5`.
12. [Jackiw1991DeltaPotentials] R. Jackiw, "Delta-function potentials in two- and three-dimensional quantum mechanics," MIT-CTP-1937 (Jan 1991). Reimpreso en *M.A.B. Bég Memorial Volume* (World Scientific, 1991), pp. 25–42. Espejo OA: <https://www.physics.smu.edu/scalise/P6335fa21/notes/Jackiw.pdf>.
13. [VanVleck1928Correspondence] J. H. Van Vleck, "The Correspondence Principle in the Statistical Interpretation of Quantum Mechanics," *Proceedings of the National Academy of Sciences of the United States of America* 14(2) (1928), 178–188. DOI `10.1073/pnas.14.2.178`.
14. [deGosson2018ShortTimePropagators] Maurice A. de Gosson, "Short-Time Propagators and the Born–Jordan Quantization Rule," *Entropy* 20(11) (2018), 869. DOI `10.3390/e20110869`. OA: PubMed Central (PMCID: PMC 7512447).
15. [Rosten2012ERG] Oliver J. Rosten, "Fundamentals of the Exact Renormalization Group," *Physics Reports* 511 (2012), 177–272. arXiv:`1003.1366` (v4, 15 Feb 2012). DOI `10.1016/j.physrep.2011.12.003`.
16. [Velhinho2017InfDimMeasure] José Velhinho, "Topics of Measure Theory on Infinite Dimensional Spaces," *Mathematics* 5(3) (2017), 44. DOI `10.3390/math5030044`. OA: MDPI.
17. [TongQMLectures] David Tong, "Quantum Mechanics" (notas de clase, sin DOI). OA: PDF de notas de clase. (Contiene \(Y_{l,m}(\theta,\phi)=P_{l,m}(\cos\theta)e^{im\phi}\) como eigenstados simultáneos de \(L^2\) y \(L_z\).)
18. [Nauenberg2003KeplerArea] Michael Nauenberg, "Kepler's Area Law in the Principia: Filling in some details in Newton's proof of Prop. 1," *Historia Mathematica* 30 (2003), 441–456. arXiv:`math/0112048`. DOI `10.1016/S0315-0860(02)00027-7`. (Defiende el límite del continuo de Newton mediante el Lema 3; la construcción poligonal tiene un límite de continuo bien definido que parametriza una curva plana continua.)
19. [Pourciau2003] Bruce Pourciau, "Newton's Argument for Proposition 1 of the Principia," *Archive for History of Exact Sciences* 57 (2003), 267–311. DOI `10.1007/s00407-002-0062-x`. (Analiza críticamente el supuesto del impulso e identifica problemas de acumulación de error y de planaridad en el argumento límite de Newton.)
20. [Berkeley1734Analyst] George Berkeley, *The Analyst; or, A Discourse Addressed to an Infidel Mathematician* (Dublin/Londres, 1734). (Crítica fundacional de las fluxiones de Newton y los infinitesimales de Leibniz — la objeción de los "fantasmas de cantidades desaparecidas" a los límites evanescentes. Precursor histórico de los enfoques modernos de refinamiento constructivo.)
21. [Nauenberg1994SymplecticNewton] Michael Nauenberg, "Newton's early computational method for dynamics," *Archive for History of Exact Sciences* 46 (1994), 221–252. DOI `10.1007/BF01686278`. (Las ecuaciones de impulso corresponden a un mapeamiento canónico/simpléctico — soluciones exactas de un hamiltoniano con fuerzas impulsivas. Discute la convergencia y el paso de tiempo adaptativo.)
22. [Nauenberg2018GraphicalMethod] Michael Nauenberg, "Newton's graphical method for central force orbits," *American Journal of Physics* 86(10) (2018), 765–771. DOI `10.1119/1.5046424`. arXiv:`1810.05264`. (Identifica explícitamente la construcción de la Proposición 1 de Newton como un integrador simpléctico de primer orden; muestra la conservación discreta de la energía y la invarianza por inversión temporal. OA copia del autor: UCSC Emeriti.)
