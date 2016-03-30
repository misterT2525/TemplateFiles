# Dependencies for Bukkit Plugin

## [sk89q's Repository](https://maven.sk89q.com/repo/)

```xml
<repository>
    <id>sk89q-repo</id>
    <url>https://maven.sk89q.com/repo/</url>
</repository>
```

### WorldEdit (6.1)

[Website](https://www.enginehub.org/worldedit) |
[Source](https://github.com/sk89q/WorldEdit) |
[Bukkit Dev](http://dev.bukkit.org/bukkit-plugins/worldedit/)

```xml
<dependency>
    <groupId>com.sk89q.worldedit</groupId>
    <artifactId>worldedit-bukkit</artifactId>
    <version>6.1</version>
    <scope>provided</scope>
</dependency>
```

## [dmumlloy2's Repository](http://repo.dmulloy2.net/#view-repositories;releases~browsestorage)

```xml
<repository>
    <id>dmulloy2-repo</id>
    <url>http://repo.dmulloy2.net/content/repositories/releases/</url>
</repository>
```

### ProtocolLib (3.6.5)

[Source](https://github.com/aadnk/ProtocolLib) |
[SpigotMC](https://www.spigotmc.org/resources/protocollib.1997/) |
[Bukkit Dev](http://dev.bukkit.org/bukkit-plugins/protocollib/)

```xml
<dependency>
    <groupId>com.comphenix.protocol</groupId>
    <artifactId>ProtocolLib</artifactId>
    <version>3.6.5</version>
    <scope>provided</scope>
</dependency>
```

#### 4.0-SNAPSHOT

```xml
<repository>
    <id>dmulloy2-repo</id>
    <url>http://repo.dmulloy2.net/content/repositories/snapshots/</url>
</repository>
<dependency>
    <groupId>com.comphenix.protocol</groupId>
    <artifactId>ProtocolLib-API</artifactId>
    <version>4.0-SNAPSHOT</version>
    <scope>provided</scope>
</dependency>
```
