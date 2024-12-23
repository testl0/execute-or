$execute store success score target.execute_or.success objective.execute_or.success run execute $(condition)
execute if score target.execute_or.success objective.execute_or.success matches 1 run function execute_or:i/02 with storage execute_or:temporary_data macro
function execute_or:i/00
execute if data storage execute_or:temporary_data macro{conditions: []} if score target.execute_or.success objective.execute_or.success matches 0 run function execute_or:i/01 with storage execute_or:temporary_data macro
