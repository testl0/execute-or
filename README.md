# execute OR

execute OR is a data pack for Minecraft that enables you to use `execute if` and `execute unless` commands as OR operations.

## How to Use

To use OR operations, execute the command `function execute_or:execute_or`, and specify the `conditions` and `command` macros.

```coffee
function execute_or:execute_or {command: "say Hello, world!", conditions: ["if predicate example:00", "unless predicate example:01"]}
```

- `conditions`: A list of conditions for the OR operation.
- `command`: The command to be executed if any of the conditions are met.

To include straight double quotes (`"`) in the `command` macro, escape them using `\\\"`.

```coffee
function execute_or:execute_or {command: "tellraw @s {\\\"translate\\\": \\\"translation.test.none\\\"}", conditions: ["if data entity @s SelectedItem{id: \"minecraft:grass_block\"}"]}
```

## Supported Minecraft Versions

The data pack has been tested and confirmed to work with the following versions:

- 1.21.4

For other versions, compatibility cannot be guaranteed.

## License

The data pack is marked with the Creative Commons CC0 1.0 Universal License. For more information, see [LICENSE](/LICENSE).
