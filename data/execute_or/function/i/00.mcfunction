# execute OR is marked with the Creative Commons CC0 1.0 Universal License.

data modify storage execute_or:temporary_data macro.condition set from storage execute_or:temporary_data macro.conditions[-1]
data remove storage execute_or:temporary_data macro.conditions[-1]
