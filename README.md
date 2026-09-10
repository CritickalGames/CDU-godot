# CDU
La idea de un CDU es crear una guia de proyectos para ganar experiencia de manera incremental enfrentando temprano los problemas de una arquitectura escalable buscando la forma de unir pequeños proyectos en un gran proyecto interconectado, no como una colección de proyectos (juegos), si no que una colección de "herramietnas" o "caracteristicas" mixtas que deben cohexistir sin código repetido y de manera interconectada

## CDU para Godot
El CDU, Cin Desarrollos en Uno, nació inspirado por los cartuchos que prometían 100 juegos en un sólo cartucho. La diferencia esencial, es que acá cada juego está pensado para tener un progreso incremental, parecido a lo que pasa con "Evoland", que empieza con un juego 2d y termina en un juego 3d. 

Éste CDU se puede usar, potencialmente, en cualquier motor, pero en éste repo usaremos Godot por preferencia personal.

## CDU para Juegos

Tanto la idea como el nombre CDU(Cien desarrollos en Uno) son conceptos que desarrollé por mi cuenta, pero doy libre uso, aunque espero que referencien el repo original "https://github.com/CritickalGames/CDU-godot" o mi página de Itchio "https://critickal-games.itch.io/"

La lista de juegos, las capas y el orden queda a libre albedrío de cada quien, pero éste es que yo terminé formulando

# 🎮 CDU – Capas de Aprendizaje

MPV = Mínimo Producto Viable. No hagas más que eso, no hagas menos que eso.

## 1️⃣ FUNDAMENTOS (2D BÁSICOS)

### 1. Pong
* **Objetivo técnico:**
  * Game loop básico
  * Input inmediato del jugador
  * Colisiones 2D
  * Física simple
  * Gestión de escenas
* **MPV:** Partida a 5 puntos contra IA simple o segundo jugador local.

### 2. Snake
* **Objetivo técnico:**
  * Movimiento en grid
  * Lista dinámica de segmentos
  * Tick fijo
  * Colisión consigo mismo
* **MPV:** Mapa fijo, comida infinita, game over al chocar.

### 3. Breakout
* **Objetivo técnico:**
  * Rebotes usando normales
  * Destrucción de bloques
  * Estados de partida
* **MPV:** 1 nivel con 3 filas de bloques y reinicio automático al ganar o perder.

### 4. Flappy Bird
* **Objetivo técnico:**
  * Gravedad + impulso
  * Spawning temporizado
  * Score incremental
* **MPV:** Tuberías infinitas, puntuación y reinicio automático al morir.

### 5. Space Invaders
* **Objetivo técnico:**
  * Movimiento grupal
  * Sistema de proyectiles
  * Oleadas
* **MPV:** 1 formación enemiga, disparo del jugador, victoria al limpiar pantalla.

---

## 2️⃣ NARRATIVA Y SISTEMAS

### 6. Visual Novel
* **Objetivo técnico:**
  * Árbol de diálogos
  * Persistencia simple
  * UI desacoplada
* **MPV:** Historia corta con 3 decisiones y 2 finales.

### 7. JRPG por turnos
* **Objetivo técnico:**
  * Sistema de turnos
  * Stats básicas
  * Estados alterados
* **MPV:** Combate 1v1 jugador vs enemigo hasta que uno muera.

### 8. Tower Defense
* **Objetivo técnico:**
  * Pathfinding
  * Sistema de oleadas
  * Economía simple
* **MPV:** 1 mapa, 1 torre, 3 oleadas. Pierdes si 10 enemigos cruzan.

### 9. Match-3
* **Objetivo técnico:**
  * Detección de líneas de 3
  * Cascadas automáticas
  * Reordenamiento del grid
* **MPV:** Grid 8x8, combos automáticos, contador de puntos.

### 10. Editor de niveles
* **Objetivo técnico:**
  * Colocación de objetos
  * Guardado en archivo
  * Carga posterior
* **MPV:** Crear, guardar y jugar un nivel simple.

---

## 3️⃣ ACCIÓN Y EXPLORACIÓN

### 11. Plataformas 2D
* **Objetivo técnico:**
  * Física precisa
  * Estados de animación
* **MPV:** 1 nivel corto con meta final y 3 enemigos simples.

### 12. Zelda-like
* **Objetivo técnico:**
  * Sistema de inventario
  * Habilidad desbloqueable
* **MPV:** Mapa pequeño, 1 ítem clave, 1 puzzle y 1 enemigo.

### 13. Roguelike
* **Objetivo técnico:**
  * Generación procedural
  * Permadeath
* **MPV:** 3 salas generadas aleatoriamente y jefe final.

### 14. Shooter 2D
* **Objetivo técnico:**
  * Input dual
  * Arma modular
* **MPV:** Arena pequeña con 5 enemigos y 1 arma.

### 15. Conducción 2D
* **Objetivo técnico:**
  * Física con fricción
  * Checkpoints
* **MPV:** 1 pista con 1 vuelta cronometrada.

### 16. Bullet Hell
* **Objetivo técnico:**
  * Patrones matemáticos
  * Alta densidad de proyectiles
* **MPV:** 1 jefe con 3 patrones distintos.

### 17. Run & Gun
* **Objetivo técnico:**
  * Armas intercambiables
  * Enemigos variados
* **MPV:** Nivel lineal corto con 2 tipos de enemigo y mini-jefe.

### 18. GTA 2D
* **Objetivo técnico:**
  * Mapa abierto pequeño
  * Sistema de misión
* **MPV:** Ciudad pequeña con 1 misión (ir a punto B y eliminar objetivo).

---

## 4️⃣ COMPETENCIA Y GESTIÓN

### 19. Fighting Game
* **Objetivo técnico:**
  * Buffer de inputs
  * Ventanas de cancelación
* **MPV:** 2 personajes, 4 ataques cada uno, combate al mejor de 3 rounds.

### 20. Shoot ’em Up
* **Objetivo técnico:**
  * Scroll automático
  * Power-up simple
* **MPV:** Nivel de 2 minutos con jefe final.

### 21. Beat ’em Up
* **Objetivo técnico:**
  * Hitboxes cuerpo a cuerpo
  * IA en grupo
* **MPV:** Escenario único con 6 enemigos totales.

### 22. RTS
* **Objetivo técnico:**
  * Selección múltiple
  * Recursos básicos
* **MPV:** Mapa pequeño con 3 unidades controlables y 1 base enemiga.

### 23. 4X
* **Objetivo técnico:**
  * Turnos globales
  * Economía simple
* **MPV:** Mapa pequeño con 3 ciudades y victoria por expansión total.

### 24. IO Game
* **Objetivo técnico:**
  * Crecimiento dinámico
  * Multijugador simple
* **MPV:** Arena online donde creces al eliminar bots.

### 25. TCG
* **Objetivo técnico:**
  * Motor de cartas
  * Sistema de turnos
* **MPV:** Mazo de 20 cartas, partida 1v1 hasta que uno llegue a 0 vida.

### 26. Juego Online Base
* **Objetivo técnico:**
  * Arquitectura cliente-servidor
  * Lobby
* **MPV:** Lobby, inicio automático y partida básica sincronizada.

---

## 🧊 CDU – Capas de Aprendizaje (3D)

### 5️ 3D Básico

### 27. Plataformas 3D
* **Aprendes:**
  * Control de cámara en 3D
  * Físicas tridimensionales (rigidbody, gravedad)
  * Detección de colisiones volumétricas
  * Diseño técnico de niveles 3D
* **MPV:** Nivel 3D pequeño con cámara libre y meta final.

### 28. Conducción (Autos)
* **Aprendes:**
  * Física vehicular simplificada
  * Suspensión y fricción
  * Control de velocidad y giros
  * Cámara dinámica en vehículo
* **MPV:** 1 circuito 3D con 1 vuelta y cronómetro.

### 29. Conducción (Motos)
* **Aprendes:**
  * Balance dinámico e inclinación
  * Animación sincronizada con física
  * Control diferenciado frente a autos
* **MPV:** Pista corta donde la inclinación afecta el control.

### 30. Vuelo Arcade
* **Aprendes:**
  * Movimiento libre en 3 ejes
  * Física simplificada de vuelo
  * Control de velocidad y orientación
  * Objetivos dinámicos en espacio abierto
* **MPV:** Mapa abierto pequeño con 3 objetivos a destruir.

### 31. Supervivencia tipo Minecraft
* **Aprendes:**
  * Inventario y crafting
  * Gestión de mundo dinámico
  * Interacción con recursos
  * Guardado persistente básico
* **MPV:** Recolectar 3 recursos y craftear 1 herramienta.

### 32. Aventura 3D
* **Aprendes:**
  * Integración narrativa y exploración
  * Sistema de misiones básicas
  * Interacción con NPC y objetos
* **MPV:** Mapa pequeño con 1 misión y 1 enemigo.

### 33. Minecraft-like
* **Aprendes:**
  * Generación procedural de terreno
  * Modificación dinámica del entorno (bloques)
  * Optimización de chunks y mundo grande
* **MPV:** Mundo procedural pequeño editable con bloques.

### 34. Mario Kart-like
* **Aprendes:**
  * IA de competidores
  * Sincronización de ítems y poderes
  * Físicas arcade multijugador
* **MPV:** Carrera 3D con 3 karts IA y 1 power-up.

### 6️ 3D Avanzado

### 35. FPS / TPS
* **Aprendes:**
  * Control de cámara en primera y tercera persona
  * Raycasting avanzado para disparos
  * IA enemiga modular
  * HUD dinámico
* **MPV:** Mapa pequeño con 5 enemigos IA y 1 arma.

### 36. Beat ’em up 3D
* **Aprendes:**
  * Combos en 3D y sistema lock-on
  * Animaciones avanzadas
  * Gestión de múltiples enemigos en espacio tridimensional
* **MPV:** Arena cerrada con 5 enemigos y combo básico.

### 37. Arena Combat
* **Aprendes:**
  * Sincronización de habilidades multijugador
  * Balance competitivo básico
  * Control de partidas rápidas
* **MPV:** Partida 2v2 con habilidades simples.

### 38. Horror
* **Aprendes:**
  * IA basada en comportamiento
  * Control de tensión y pacing
  * Diseño técnico de iluminación y sonido
* **MPV:** Casa pequeña con 1 enemigo IA patrullando.

### 39. GTA 3D
* **Aprendes:**
  * Mundo abierto con streaming de áreas
  * Integración de vehículos y combate
  * Sistema modular de misiones
  * Gestión de memoria y rendimiento
* **MPV:** Ciudad pequeña con 1 misión y 1 vehículo funcional.

### 7️⃣ Persistencia y Técnicos

### 40. Mundo Abierto
* **Aprendes:**
  * Streaming de mapa en tiempo real
  * Persistencia básica por zona
  * Spawns y eventos por proximidad
* **MPV:** Mapa dividido en 3 zonas con carga dinámica.

### 41. Simulador de Autos
* **Aprendes:**
  * Física vehicular realista
  * Telemetría y debugging
  * Ajuste de parámetros de manejo
* **MPV:** Vehículo con física realista y panel básico de velocidad.

### 42. Simulador de Vuelo
* **Aprendes:**
  * Física aerodinámica simplificada
  * Instrumentación simulada
  * Manejo de múltiples ejes de control
* **MPV:** Avión controlable con indicador de altitud y velocidad.

### 43. Multiplayer 3D
* **Aprendes:**
  * Replicación de transformaciones en red
  * Predicción cliente-servidor
  * Reconciliación de estado
* **MPV:** Escena 3D donde 2 jugadores ven sus movimientos sincronizados.

### 44. ARPG
* **Aprendes:**
  * Gestión de habilidades y stats del jugador
  * Arquitectura basada en componentes
  * Gestión de enemigos y combate en tiempo real
* **MPV:** Mapa pequeño con progresión de nivel y 1 habilidad activa.

### 8️⃣ Composición Final

### 45. Editor 3D con Scripting
* **Aprendes:**
  * Creación de herramientas internas
  * Scripting embebido para niveles
  * Validación de contenido y modularidad
* **MPV:** Editor que permite crear un nivel simple con scripts básicos y jugarlo.

### 46. Online Persistente (MMO)
* **Aprendes:**
  * Arquitectura cliente-servidor autoritativa
  * Persistencia masiva de datos
  * Manejo de instancias y respawns
* **MPV:** Zona pequeña online con guardado de personaje y respawn persistente.

### 47. Procedural Avanzado
* **Aprendes:**
  * Generación híbrida (manual + procedural)
  * Control de reglas y ensamblaje dinámico
  * Sistemas reutilizables y modulares
* **MPV:** Mapa generado con reglas mixtas (manual + aleatorio).

### 48. VR / AR
* **Aprendes:**
  * Input espacial y tracking
  * Diseño UX tridimensional
  * Optimización para alto framerate
  * Interacción física inmersiva
* **MPV:** Escena interactiva donde el jugador manipula objetos en espacio 3D.

---

##  Total general
**48 juegos** → 26 en 2D + 22 en 3D


# Repo base: Fat Earth Studios - Godot Tutorial Project

This repository contains the public companion project for the Godot development tutorials on [**Fat Earth Studios**](https://www.youtube.com/@FatEarthStudios).

The project is updated alongside the video series so that you can explore the scripts, project structure, and examples shown in each tutorial.

The default branch contains the latest public version of the project.
For the version shown in a specific video, use the corresponding repository tag listed below.

## Tutorial Videos and Project Snapshots

| Tutorial                              | Video                                                                         | Project Version                                                      |
| ------------------------------------- | ----------------------------------------------------------------------------- | -------------------------------------------------------------------- |
| Git and GitHub Workflow for Godot     | [How To Use Git With Godot](https://youtu.be/9yfNX0OdSAw?si=Zy0y8DdWJb68yOdq) | [View the Git tutorial snapshot](https://github.com/fat-earth-studios/tutorial-demo-repo/tree/video-0-git-tutorial) |
| Setting Up a Godot Project Foundation | [Godot Project Foundation Setup](https://youtu.be/V4SO7foDoW4)                | [View the Project Foundation tutorial snapshot](https://github.com/fat-earth-studios/tutorial-demo-repo/tree/video-1-project-foundation) |
| Configuring Godot Project Settings and Conventions | [Godot Project Settings and Conventions](https://youtu.be/5-Ev2ZIQgf4) | [View the Project Settings tutorial snapshot](https://github.com/fat-earth-studios/tutorial-demo-repo/tree/video-1b-project-settings) |
| Abstract `BaseLevel` Design & Load Level Cleanup | [Why My Godot Level Loader Uses an Abstract Class](https://youtu.be/3EYi3Q8Y_dM) | [Updated Load Level and Init Player tutorial snapshot](https://github.com/fat-earth-studios/tutorial-demo-repo/tree/video-2-abstract-base-level)

Each tagged snapshot preserves the state of the repository associated with that tutorial, while the default branch continues to receive the additions shown in future videos.

## Included Guides

### Git Cheat Sheet

A practical reference for the Git commands and workflows covered in the Git tutorial:

* [Git Cheat Sheet](./docs/Git_Cheat_Sheet_Godot.md)

### GDScript Organization Example

A practical reference for organizing GDScript declarations, variables, methods, callbacks, and inner classes, based on Godot’s official GDScript style guide:
* [GDScript Organization Example](./docs/gdscript_organization_example.gd)

## Project Structure

The Godot project is located in:

[`main-game-setup-tutorial/`](./main-game-setup-tutorial/)


```text
main-game-setup-tutorial/
  addons/             Third-party Godot add-ons
  assets/             Art, audio, fonts, shaders, and other game assets
  src/
    core/             Foundational scenes and scripts
      autoload/       Globally available systems
      main_game/      Main entry point for the game
    debug/            Development and debugging tools
    gameplay/         Gameplay-specific code
    levels/           Level scenes and related scripts
    resources/        Reusable data and resource definitions
    shaders/          Shaders used for visual effects
    ui/               User interface scenes and scripts
  project.godot
```

The exact contents will expand as new tutorials are released.

## Requirements

This project was created using **Godot 4.7.1**.

Opening the project with **Godot 4.7.1 or newer** is recommended.
Older versions of Godot 4.x may not open the project correctly.

To clone and open the full project, you will need:

* Godot 4.7.1 or newer
* Git
* Git LFS

## Downloading the Project

You can clone the repository using SSH or HTTPS.

### SSH

```bash
git clone git@github.com:fat-earth-studios/tutorial-demo-repo.git
```

### HTTPS

```bash
git clone https://github.com/fat-earth-studios/tutorial-demo-repo.git
```

After cloning, open the following file in Godot:

```text
main-game-setup-tutorial/project.godot
```

If Git LFS files were not downloaded automatically, run:

```bash
git lfs pull
```


## Using an Earlier Tutorial Snapshot

The default branch changes as new videos are released. If you want to inspect the project exactly as it appeared during an earlier tutorial, check out the matching tag.

For example:

```bash
git tag
git checkout video-0-git-tutorial
```

To return to the current version afterward:

```bash
git checkout master
```


## License

### Code

The source code in this repository is licensed under the MIT License.

See the [LICENSE](./LICENSE) file for details.

### Artwork and Assets

Artwork, music, sound, and other non-code assets are not included under the MIT License and remain the property of Daniel B. Russell.

You are welcome to download the repository and explore the project for personal learning and evaluation purposes. However, those assets may not be copied, redistributed, or reused in other projects without prior written permission.

If you would like to feature the project, use its assets, or discuss another use case, please contact me.

See [ASSETS_LICENSE.md](./ASSETS_LICENSE.md) for details.

## Community and Support

Have a question, want to discuss the tutorials, or want to share what you're building?

* Join the [Fat Earth Studios Discord](https://discord.gg/cBxW2j2Gb5)
* Watch more tutorials on the [Fat Earth Studios YouTube channel](https://www.youtube.com/@FatEarthStudios)

If the tutorials or public resources have helped you and you would like to support their development, you can also visit the [Fat Earth Studios Ko-fi page](https://ko-fi.com/fatearthstudios).

## About Fat Earth Studios

This repository is part of my game development and tutorial work under **Fat Earth Studios**.

The channel covers Godot development, game architecture, practical workflows, debugging, performance, and the small decisions that help a prototype grow into a maintainable game project.
