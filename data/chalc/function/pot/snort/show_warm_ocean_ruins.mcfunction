execute unless dimension overworld run return run function chalc:pot/snort/show_ruined_portal
function chalc:pot/snort/prepare_find {structure:ocean_ruin_warm}
function chalc:pot/snort/find_structure
data modify storage chalc:structure particle set value bubble_column_up
data modify storage chalc:structure y set value "50"
function chalc:pot/snort/show with storage chalc:structure
