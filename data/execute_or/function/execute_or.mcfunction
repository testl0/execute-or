# execute OR is marked with the Creative Commons CC0 1.0 Universal License.

$data modify storage execute_or:temporary_data macro.command set value "$(command)"
$data modify storage execute_or:temporary_data macro.conditions set value $(conditions)
scoreboard objectives add objective.execute_or.condition_count dummy {"fallback": "Condition Count", "translate": "objective.execute_or.condition_count", "type": "translatable"}
scoreboard objectives add objective.execute_or.max_command_chain_length dummy {"fallback": "Max Command Chain Length", "translate": "objective.execute_or.max_command_chain_length", "type": "translatable"}
scoreboard objectives add objective.execute_or.success dummy {"fallback": "Success", "translate": "objective.execute_or.success", "type": "translatable"}
execute store result score target.execute_or.max_command_chain_length objective.execute_or.max_command_chain_length run gamerule maxCommandChainLength
scoreboard players set target.execute_or.00 objective.execute_or.max_command_chain_length 16
scoreboard players operation target.execute_or.max_command_chain_length objective.execute_or.max_command_chain_length /= target.execute_or.00 objective.execute_or.max_command_chain_length
execute store result score target.execute_or.condition_count objective.execute_or.condition_count run data get storage execute_or:temporary_data macro.conditions
function execute_or:i/00
execute if score target.execute_or.condition_count objective.execute_or.condition_count <= target.execute_or.max_command_chain_length objective.execute_or.max_command_chain_length run function execute_or:i/01 with storage execute_or:temporary_data macro
data remove storage execute_or:temporary_data macro
scoreboard objectives remove objective.execute_or.condition_count
scoreboard objectives remove objective.execute_or.success
