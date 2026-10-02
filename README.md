# 🎮 CDU: Capas de Aprendizaje

El Cien Desarrollos en Uno(CDU), es una propuesta de ruta de aprendizaje para desarrollo de vídeo juegos inspirado en los cartuchos que prometían mil juegos diferentes en uno.

Todo dicen: haz un juego pequeño, pero nunca te dicen cuál o cómo seguir después de hacer un juego pequeño y qué tan pequeño debe ser, lo que termina con el mismo resultado que hacer el juego de tus sueños el primer día; perido, confuso y desmotivado.
CDU es una guía de principio a final de qué y en qué orden aprender. Potencialmente se puede usar en cualquier motor, pero en éste repo usaremos Godot 4.7.2

# Fases del CDU

El CDU tiene 3 fases: 0, 1 y 2. En la primera fase aprendes a usar el motor como si fuera una caja de arrena, pero de forma incremental, en cada paso agregando un tema nuevo que debe convivir con todo lo anterior.

En la segunda fase aprendes a extraer mecanicas, diseños y a diseñar tus propios MVPs(Mínimo Producto Viable), con una lista de generos organizada de forma seudo cronologíca para conseguir un estudio progresivo en difícultad.

En la última, aprendes las minucias del motor; optimización, organización y trucos. Como el objetivo del CDU es ser una ruta de estudio general y ser una ruta para yo aprender a hacer juegos, esos elementos de la FASE 2 no están pensados porque los desconozco.

## 🏗️ **FASE 0: Dominio del Motor**

---

### **Capa 0.1: Menú Simple y Navegación**

#### **Sistemas:**
- Menú principal con botones (UI Canvas)
- Cambio de escena (básico y asíncrono)
- Persistencia de objetos globales (`DontDestroyOnLoad`)
- Lista de MVPs (ScriptableObject/JSON)
- Transición fade in/out

#### **MVP:**
- 🟦 **2D: Menú Principal Interactivo**  
  Navegación entre botones, cambio a nivel de prueba, retorno al menú

---

### **Capa 0.2: Hub Espacial**

#### **Sistemas:**
- 3 escenas hub (2D, 3D, 2.5D)
- Navegación entre hubs
- Selectores de nivel (puertas/portales)
- Sistema de progresión (desbloqueo)
- Cambio de dimensión y MVP

#### **MVPs:**
- 🟦 **2D: Hub 2D** (3 niveles desbloqueables)
- 🟩 **3D: Hub 3D** (3 niveles desbloqueables)
- 🟨 **2.5D: Hub 2.5D** (3 niveles desbloqueables)

---

### **Capa 0.3: Dungeon Crawler**

#### **Sistemas:**
- Static/Rigid Body
- Plataformas fijas, sentido único, móviles
- Raycasting básico
- Daño, curación, i-frames
- Atributos del jugador (data class)

#### **MVPs:**
- 🟦 **2D: Zelda-like 2D** (salas, jarrones, espada, daño)
- 🟩 **3D: Dungeon Crawler 3D** (primera persona, pasillos, enemigos)
- 🟨 **2.5D: Rogue-lite 2.5D** (generación procedural, muerte permanente)

---

### **Capa 0.4: Plataformero**

#### **Sistemas:**
- Menú de pausa (`Time.timeScale`)
- HUD (vidas, monedas, puntuación, tiempo)
- Sonidos 2D/3D
- Animaciones (blend trees)
- Partículas
- Shaders básicos
- Configuración persistente

#### **MVPs:**

**🟦 2D: Super Mario Bros**
- Plataformas, enemigos, monedas, power-ups, bandera
- Audio: volumen maestro/música/efectos persistente
- Gráfico: resolución, ventana/pantalla completa
- Controles: mapeo básico de teclas

**🟩 3D: Super Mario 64 Mini**
- Plataformas 3D, salto triple, cámara orbital, estrellas
- Audio: dispositivo salida, balance estéreo, mute
- Gráfico: calidad texturas, sombras, V-Sync
- Controles: sensibilidad cámara, inversión eje Y, deadzone

**🟨 2.5D: Super Mario 3D World Mini**
- Plataformas con profundidad, multiplayer local, power-ups
- Audio: mezcla por categoría, ecualizador
- Gráfico: límite FPS, anti-aliasing, escala renderizado
- Controles: remapeo completo, múltiples gamepads

---

### **Capa 0.5: Shooters**

#### **Sistemas:**
- Instanciación y Spawners
- Object Pooling
- Sistema de señales
- Guardar/cargar partida
- Wave Manager

#### **MVPs:**

**🟦 2D: Metal Slug**
- Run & gun, scroll horizontal, plataformas, vehículos, jefes
- Audio: efectos posicionales, compresión dinámica
- Gráfico: partículas, screen shake, filtros color
- Controles: sensibilidad disparo, modo hold/tap, vibración

**🟩 3D: FPS Arena**
- Primera persona, raycast, enemigos, munición limitada
- Audio: 3D espacial con oclusión, HRTF
- Gráfico: FOV, profundidad campo, motion blur, iluminación
- Controles: sensibilidad mouse, aceleración, aim assist

**🟨 2.5D: Twin-Stick Shooter**
- WASD + mouse, oleadas infinitas, upgrades
- Audio: subtítulos, indicadores dirección sonido
- Gráfico: bloom, viñeta, aberración cromática
- Controles: apuntado mouse/joystick, auto-aim

---

### **Capa 0.6: RPGs**

#### **Sistemas:**
- NPCs autónomos
- Diálogo ramificado
- Inventario (grid/lista)
- Experiencia y niveles
- Economía básica
- Guardado de progresión

#### **MVPs:**

**🟦 2D: Octopath Traveler**
- HD-2D, turnos con boost, 4 personajes, diálogos ramificados
- Audio: volumen diálogos, música batalla/exploración
- Gráfico: escala UI, tamaño fuente, contraste alto
- Controles: velocidad diálogo, avance automático, confirmación

**🟩 3D: Final Fantasy VII**
- ATB, límite tiempo, materias, mundo 3D
- Audio: estéreo/surround, mezcla voces cinemáticas
- Gráfico: calidad cinemáticas, videos pre-renderizados
- Controles: cámara fija/dinámica, velocidad menús, confirmación doble

**🟨 2.5D: Final Fantasy II**
- Falso 3D nave voladora, isométrico, exploración aérea, turnos
- Audio: loops sin cortes, transiciones suaves
- Gráfico: filtros CRT/Moderno, paleta colores, aspect ratio
- Controles: click-to-move/direccional, velocidad combate, atajos

---

### **Capa 0.7: Sigilo**

#### **Sistemas:**
- Máquina estados IA (patrulla→sospecha→búsqueda→alerta→combate)
- Conos visión y detección
- Sistema de ruido
- Escondites
- Cinemáticas avanzadas
- Sistema de misiones

#### **MVPs:**

**🟦 2D: Metal Gear Solid 1**
- Top-down, conos visión, alertas, cinemáticas
- Audio: volumen pasos, indicadores visuales sonido
- Gráfico: visibilidad conos, intensidad sombras
- Controles: sigilo toggle/hold, marcadores rutas, vibración detección

**🟩 3D: Thief**
- Primera persona, sombras dinámicas, sonido mecánica, sigilo vertical
- Audio: propagación sonido, eco, atenuación distancia
- Gráfico: sombras dinámicas, linternas, niebla/humo
- Controles: sensibilidad agachado, modo lean, indicadores ruido

**🟨 2.5D: Mark of the Ninja**
- Plataformas sigilo, assassinaciones, ruido visual
- Audio: visualización sonido, subtítulos contextuales
- Gráfico: contraste zonas oscuras, resaltado escondites
- Controles: asistencia apuntado, velocidad animaciones, auto-ocultación

---

### **Capa 0.8: Arquitectura y Patrones**

#### **Sistemas:**
- Singleton (GameManager, AudioManager, SaveManager)
- Factory (Spawners genéricos)
- State (máquina estados formal)
- Observer/Señales avanzado (Event Bus)
- Command (remapeo, replays)
- ScriptableObjects

#### **MVPs:**

**🟦 2D: Refactorizar Top-Down Shooter**
- Aplicar Singleton, Factory, State, Event Bus
- Audio: perfiles predefinidos, ecualizador 5 bandas
- Gráfico: presets calidad, configuración avanzada, benchmark
- Controles: perfiles guardables, import/export, macros

**🟩 3D: Refactorizar FPS Arena**
- Aplicar Command, State, Factory
- Audio: adaptativo, capas mezclables
- Gráfico: DLSS/FSR, reflejos, vegetación/partículas
- Controles: configuración por arma, sensibilidad ADS, toggle/hold

**🟨 2.5D: Beat 'em Up**
- Combate cuerpo a cuerpo, combos, múltiples enemigos
- Audio: volumen golpes por tipo, feedback combos
- Gráfico: efectos impacto, slow-motion, filtros personaje
- Controles: buffer inputs, asistencia combos, remapeo combos

---

### **Capa 0.9: Audio Avanzado**

#### **Sistemas:**
- Audio 2D/3D espacial con oclusión
- Audio adaptativo/dinámico (capas que se suman según intensidad)
- Mezclador de audio (mixer) con buses y efectos
- Efectos de audio (reverb, eco, filtros, delay)
- Sincronización de audio con eventos del juego
- Audio por capas (exploración, combate, tensión)
- Transiciones suaves entre pistas musicales
- Audio procedural (generación de sonidos en tiempo real)

#### **MVPs:**

**🟦 2D: Juego de Ritmo**
- Notas que caen en 4 carriles, detección de timing perfecto/bueno/fallo
- Audio: sincronización frame-perfect con música, efectos de golpeo rítmicos
- Gráfico: efectos visuales sincronizados con el beat, partículas rítmicas
- Controles: 4 teclas para cada carril, modo práctica con indicador de timing

**🟩 3D: Horror con Audio Espacial**
- Primera persona, pasillos oscuros, enemigos invisibles detectados solo por sonido
- Audio: 3D espacial completo, reverb por tipo de habitación, pasos que revelan posición
- Gráfico: iluminación mínima, sombras dinámicas, niebla volumétrica
- Controles: linterna con batería limitada, agacharse para hacer menos ruido

**🟨 2.5D: Acción con Audio Adaptativo**
- Combate con oleadas, música que cambia según intensidad de combate
- Audio: 3 capas musicales (exploración, combate, jefe) que se mezclan dinámicamente
- Gráfico: efectos visuales que pulsan con la música, transiciones suaves
- Controles: combate en tiempo real, esquivar, ataques cargados sincronizados con música

---

### **Capa 0.10: Shaders y Efectos Visuales**

#### **Sistemas:**
- Shaders básicos (parpadeo, outline, disolvencia/dissolve)
- Shaders de post-procesado (bloom, viñeta, aberración cromática, color grading)
- Shaders de agua (reflejos, refracción, ondas)
- Shaders de distorsión (calor, impacto, portal)
- Shaders de holograma/glitch
- Shaders de disolvencia con patrones (noise, Voronoi)
- Shaders de outline para selección/interacción
- Shaders de pantalla completa (CRT, pixelación, scanlines)

#### **MVPs:**

**🟦 2D: Plataformero con Efectos Visuales**
- Plataformas con power-ups que activan shaders (invisibilidad, fuego, hielo)
- Audio: efectos de activación de shaders, música que cambia con power-ups
- Gráfico: shader de disolvencia al recoger items, outline en enemigos, distorsión al recibir daño
- Controles: salto, dash con efecto de estela, ataque especial con shader de impacto

**🟩 3D: Aventura con Shaders de Ambiente**
- Exploración de cuevas con agua, lava, cristales mágicos
- Audio: sonidos ambientales que reaccionan a shaders (agua fluyendo, cristales resonando)
- Gráfico: shader de agua con reflejos/refracción, lava con distorsión de calor, cristales con holograma
- Controles: interacción con elementos (tocar agua activa shader, romper cristales con efecto dissolve)

**🟨 2.5D: Shooter con Post-Procesado Dinámico**
- Disparos con efectos de pantalla según arma (glitch, distorsión, bloom)
- Audio: efectos de arma que sincronizan con shaders de pantalla
- Gráfico: aberración cromática al recibir daño, bloom en explosiones, CRT filter opcional
- Controles: disparo con diferentes armas que aplican shaders distintos, esquive con efecto de distorsión

---

### **Capa 0.11: Optimización**

#### **Sistemas:**
- Frustum/Occlusion Culling
- LOD
- Static/Dynamic Batching
- Texture Atlasing
- Addressables
- Profiler
- Partículas densas (GPU particles)
- Animaciones fluidas
- Optimización renderizado

#### **MVPs:**

**🟦 2D: Project Zomboid**
- Isométrico, mundo abierto, cientos zombies, crafteo, inventario complejo
- Audio: compresión dinámica, oclusión paredes
- Gráfico: distancia renderizado, calidad sprites, densidad zombies, modo rendimiento
- Controles: atajos inventario, rueda objetos, modo construcción

**🟩 3D: GTA V Mini**
- Mundo abierto, streaming chunks, LOD agresivo, occlusion bakeado
- Audio: ambiental dinámico, radio vehículos
- Gráfico: distancia dibujado, reflejos tiempo real, sombras, escalado dinámico
- Controles: asistencia conducción, sensibilidad cámara vehículos, modo foto

**🟨 2.5D: Vampire Survivors**
- Cientos enemigos, pooling masivo, atlasing, partículas densas
- Audio: reducción simultáneos, modo ligero
- Gráfico: límite partículas, calidad animaciones, modo batería baja
- Controles: auto-disparo, auto-recolección, atajos upgrades

---

### **Capa 0.12: Redes**

#### **Sistemas:**
- LAN (descubrimiento servidores)
- P2P (host/cliente)
- Cliente-Servidor autoritativo
- Interpolación/extrapolación
- Sincronización estado/inputs
- Matchmaking básico
- Modo local (split-screen/turnos)

#### **MVPs:**

**🟦 2D: Street Fighter**
- Peleas 2D, sincronización inputs, rollback netcode, 1v1, LAN/P2P/local
- Audio: chat voz, indicadores lag
- Gráfico: renderizado netcode, indicadores ping, resolución replays
- Controles: input delay, buffer inputs, modo práctica frames

**🟩 3D: Tactical Shooter**
- CS:GO/Valorant simplificado, raycast, rondas, compra armas, LAN/servidor/P2P/local
- Audio: posicionamiento pasos, chat equipo, dirección disparo
- Gráfico: marcadores daño, indicadores hit, efectos red, modo espectador
- Controles: predicción cliente, interpolación movimiento, compensación lag

**🟨 2.5D: Mario Kart**
- Carreras items, rubber-banding, 4 jugadores, P2P/LAN/local
- Audio: música dinámica, efectos items posicionales
- Gráfico: efectos red, predicción jugadores, split-screen local
- Controles: asistencia conducción, sensibilidad acelerador, gamepad por jugador

==============================================================

## **FASE 1**

Debes desarrollar tu propio MVP para cada juego.

### **Generación 1 (1971-1977) – Arcade y Consolas Dedicadas**

1. **Deportes de paleta (Paddle Sports)**: _Pong_, _Tennis_ (Atari)
2. **Shoot 'em up espacial temprano**: _Computer Space_, _Space Wars_
3. **Rompe-ladrillos (Brick-breaker)**: _Breakout_, _Super Breakout_
4. **Carreras tempranas (Early Racing)**: _Gran Trak 10_, _Night Driver_

### **Generación 2 (1976-1983) – Era Dorada del Arcade / 8-bit**

1. **Shoot 'em up fijo (Fixed Shooter)**: _Space Invaders_, _Galaga_
2. **Shoot 'em up multidireccional**: _Asteroids_, _Robotron: 2084_
3. **Shoot 'em up vertical**: _1942_, _Centipede_
4. **Plataformas de acción (Action-Platformer)**: _Donkey Kong_, _Joust_
5. **Plataformas de burbujas (Bubble Platformer)**: _Bubble Bobble_, _Snow Bros_
6. **Laberinto (Maze Chase)**: _Pac-Man_, _Rally-X_
7. **Cruce de obstáculos (Crossing)**: _Frogger_, _Freeway_

### **Generación 3 (1983-1987) – NES / Master System / Arcade Clásico**

1. **Plataformas 2D de desplazamiento lateral**: _Super Mario Bros._, _Mega Man_
2. **Run and Gun (Corre y dispara)**: _Contra_, _Gunstar Heroes_
3. **Light Gun Shooter (Pistola de luz)**: _Duck Hunt_, _Operation Wolf_
4. **Aventura / Acción top-down**: _The Legend of Zelda_, _Crystalis_
5. **RPG por turnos (JRPG)**: _Dragon Quest_, _Final Fantasy_
6. **Metroidvania (Acción-Aventura no lineal)**: _Metroid_, _Castlevania_
7. **Dungeon Crawler (Mazmorras)**: _Gauntlet_, _Dungeon Explorer_
8. **Puzzle de bloques que caen (Falling Block Puzzle)**: _Tetris_, _Columns_

### **Generación 4 (1987-1993) – SNES / Sega Genesis / Arcade 16-bit**

1. **Plataformas de velocidad (Speed Platformer)**: _Sonic the Hedgehog_, _Earthworm Jim_
2. **Beat 'em up (Brawler)**: _Streets of Rage_, _Final Fight_
3. **Lucha 2D (Fighting Game)**: _Street Fighter II_, _Mortal Kombat_
4. **Shoot 'em up de desplazamiento (Scrolling Shooter)**: _R-Type_, _Gradius_
5. **Carreras Arcade de gabinete (Cabinet Racing)**: _Out Run_, _Daytona USA_
6. **Deportes Arcade exagerados (Arcade Sports)**: _NBA Jam_, _Windjammers_
7. **Estrategia por turnos táctica (SRPG)**: _Fire Emblem_, _Shining Force_

### **Generación 5 (1993-1998) – PlayStation 1 / Nintendo 64 / Sega Saturn**

1. **Plataformas 3D**: _Super Mario 64_, _Crash Bandicoot_
2. **Survival Horror**: _Resident Evil_, _Silent Hill_
3. **RPG de acción isométrico (ARPG)**: _Diablo_, _Secret of Mana_
4. **Estrategia en tiempo real (RTS)**: _StarCraft_, _Age of Empires_
5. **Carreras Arcade (Arcade Racing)**: _Mario Kart 64_, _Need for Speed_ (High Stakes)
6. **Lucha 3D (3D Fighting)**: _Tekken_, _Virtua Fighter_
7. **Aventura 3D de acción**: _Tomb Raider_, _Spyro the Dragon_

### **Generación 6 (1998-2005) – PlayStation 2 / Xbox / GameCube / Dreamcast**

1. **Mundo abierto / Acción-aventura**: _Grand Theft Auto III_, _Spider-Man 2_
2. **Sigilo táctico (Tactical Stealth)**: _Metal Gear Solid 2_, _Splinter Cell_
3. **Character Action / Hack and Slash**: _Devil May Cry_, _God of War_
4. **Ritmo musical (Rhythm Game)**: _Dance Dance Revolution_, _Guitar Hero_
5. **RPG Occidental (WRPG)**: _The Elder Scrolls III: Morrowind_, _Star Wars: Knights of the Old Republic_
6. **MMORPG**: _World of Warcraft_, _RuneScape_

### **Generación 7 (2005-2012) – PlayStation 3 / Xbox 360 / Wii**

1. **TPS con cobertura (Cover Shooter)**: _Gears of War_, _Uncharted_
2. **Sandbox de supervivencia**: _Minecraft_, _Terraria_
3. **FPS multijugador competitivo**: _Call of Duty 4: Modern Warfare_, _Halo 3_
4. **Puzzle de física**: _Portal_, _World of Goo_
5. **Plataformas de precisión (Precision Platformer)**: _Super Meat Boy_, _Braid_

### **Generación 8 (2012-2020) – PlayStation 4 / Xbox One / Nintendo Switch**

1. **Battle Royale**: _Fortnite_, _PUBG: Battlegrounds_
2. **Action Roguelike (Roguelite de acción)**: _Hades_, _The Binding of Isaac_
3. **Deckbuilder Roguelike**: _Slay the Spire_, _Monster Train_
4. **Deportes de simulación**: _FIFA_ (EA Sports FC), _NBA 2K_
5. **Deportes de vehículos / Arcade**: _Rocket League_, _Forza Horizon_
6. **Souls-like (Action RPG de alta dificultad)**: _Dark Souls_, _Bloodborne_
7. **Cooperativo caótico / Gestión**: _It Takes Two_, _Overcooked!_

### **Generación 9 (2020-Presente) – PlayStation 5 / Xbox Series X/S**

1. **Bullet Hell / Danmaku**: _Touhou Project_, _Crimsonland_
2. **Bullet Heaven / Survivor-like**: _Vampire Survivors_, _Brotato_
3. **Shooter de extracción (Extraction Shooter)**: _Escape from Tarkov_, _Hunt: Showdown_
4. **Auto-battler**: _Teamfight Tactics_, _Dota Underlords_
5. **CRPG (Computer Role-Playing Game)**: _Baldur's Gate 3_, _Divinity: Original Sin 2_
6. **.IO / Multijugador casual**: [_Agar.io_](http://Agar.io "‌"), [http://Slither.io](http://Slither.io "smartCard-inline")
7. **Endless Runner**: _Subway Surfers_, _Temple Run_
8. **Moba:** LOL, Dota, Smite, dead lock