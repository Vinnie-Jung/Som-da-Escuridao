<div align="center">

# Som da Escuridão

A 2D top-down game made with Godot. 
<br>
Ir para: <a href="README-PTBR.md">Versão em Português</a>
</div>

<div align="center">

<br>

|        Index        |
|:-------------------:|
|[About](#about)      |
|[Tools](#tools)      |
|[Screens](#screens)  |
|[Team](#team)        |

<br>
</div>


## About <a name="about"></a>

A 2D top-down view game created using Godot Engine for the Game Design and Digital Entertainment Project course at Univali. The available project versions include Linux, Windows, MacOS, and Android systems.

The game can currently be found on **Itch.io** : [Game Link]()

**Game Tags:**

~~~
Top-down | Suspense | Exploration | Investigation | 2D | Indie
~~~

### Story

The game's story is not very clear (intentionally), but what is known is that the main character (controlled by the player) is a journalist who decides to investigate a place where allegedly many people have disappeared. In the middle of the investigation, the character is captured and faints in the process. Upon waking up after this event, she finds herself in a completely unknown and dark place. Her goal becomes finding the way out of what appears to be the hideout of those who captured her.

### Game Mechanics

As it takes place in completely dark environments, the player will rely on two crucial resources: sounds and makeshift lighting objects.

* **Sounds:**
    * Enemies.
    * Scene obstacles.
    * Scene events (rain sounds, lightning, etc.).
    * Doors opening/closing.
    * Player-used objects (weapon, camera, others).

* **Movement:**
    * Slow and cautious movement.
    * Player can sprint for a brief moment, but it will make more noise.

* **Illumination:**
    * Some objects in the scene will serve as small points of light (such as **candles(i)**).
    * The player will have the opportunity to possess a camera, which can emit a **flash(ii)**.
    * Lightning may illuminate the scene briefly, but the player must be near a window.

    i) **Candles:** are resources found throughout the scene that illuminate a small radius around them. The player can pick up the candle; however, doing so occupies the primary equipment slot, meaning it won't be possible to use other items while the player is holding the candle. It's important to note that the candle cannot be stored in the inventory. Therefore, to use another item, the player must drop the candle on the ground.

    ii) **Flash:** It's a camera mechanic that projects a brief beam of light in the aimed direction. Each use of the flash automatically depletes one camera battery.

* **Scene:**
    * The level will feature various obstacles.
    * Some obstacles will be purely physical, while others will emit sounds.
    * All levels will be in the dark.
    * The size of the level will be approximately the size of the game screen.
    * All levels will have only one exit to the next stage.

* **Enemies:**
    * Enemies have no vision.
    * Enemies can only detect sounds around them.
    * When they detect any sound, enemies move towards it.
    * If an enemy hits the player, it results in an automatic **Game Over**.

## Tools <a name="tools"></a>

### Trello

For the project, Trello was used to organize the roles of each team member, as well as deadlines and activity objectives. The organizational model followed the Scrum framework, with tasks categorized into sprints placed on the backlog, to do, in progress, testing, and done boards.

**Scrum Link (Trello):** [Click here](https://trello.com/b/j7MZBau1/som-da-escurid%C3%A3o-pedro-c-vin%C3%ADcius)

### Github

This project is versioned using Git and made available on GitHub, where it is likely being read. Versioning the project with these tools ensures a safer and more stable development process, as previous versions can be easily reviewed, and the entire team can access the progress of the build.

Changes are made through a hierarchy of branches:

* **Main:** This is the project's main branch, which holds the most up-to-date stable version of the build. Updates that reach this branch are only those that have been thoroughly tested and are unlikely to introduce many bugs.

* **Dev:** This branch is used to gather changes from other smaller branches. Here, the version to be tested or already under testing is maintained. If the version passes all tests, it will be merged into the Main branch.

* **Others:** These are smaller branches representing specific developments within the project. Upon completion, they are merged into the Dev branch for testing alongside the rest of the project.

### Godot Engine

The chosen game engine is the Godot Engine. The reason for selecting this engine is due to its excellence in 2D development, as it offers optimizations and abundant features for creating 2D games. Additionally, it's an extremely lightweight and portable engine that supports various platforms.

Another noteworthy aspect of Godot is that it is an open-source engine, meaning it has an open-source codebase, making it feasible for development without any payment or royalties. It is also easily accessible for installing and creating custom plugins.

Godot Engine primarily uses GDScript as its main scripting language, which is a lightweight and performant scripting language based on Python, native to Godot itself. Another alternative offered by the engine is the use of Microsoft's C# language, which, despite offering better performance than GDScript, is not fully matured on the platform and may be more susceptible to errors and bugs.

## Screens <a name="screens"></a>

### Main Menu

An initial screen that provides options to start a new game, load a previously started game, access game settings, view credits, and exit the game.

### In-game Screen

It displays the actual game, including game maps, characters, and the player interface.

**Interface:**
* Settings button.
* Equipped primary item.
* Inventory button.
* Noise level.
* Character portrait.

### Load Game

Displays three slots where saved games can be selected.

### Settings

A simple screen that allows you to modify some game elements, such as screen size, volume level, etc

### Credits

Another simple screen that displays the game credits, highlighting the contributors and their respective roles within the project.

<div align="center">

## Team <a name="team"></a>

### Development team

**Pedro Camargo Aita Bittencourt**     <br>
Audio Designer                         <br>
2D Artist (characters and environments)<br>
Game Designer                          <br>
Writer                                 <br>

Social Media:                                                   
[Youtube](https://www.youtube.com/@spacenomad8308)       

**Vinícius Jung**    <br>
Programmer           <br>
Quality Assurance    <br>
Prototyping          <br>
Game Designer        <br>

Social Media:

[Github](https://github.com/Vinnie-Jung) | [LinkedIn](https://www.linkedin.com/in/vinicius-jung/) | [Outlook](mailto:viniciusjung@outlook.com)               

### Professor

**Dennis Kerr Coelho**<br>
Supervisor            <br>
Producer              <br>

Social Media:         <br>
[LinkedIn](https://www.linkedin.com/in/dennis-kerr-coelho-902a184/)

</div>