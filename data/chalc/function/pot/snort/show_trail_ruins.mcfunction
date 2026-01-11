execute unless dimension overworld run return run function chalc:pot/snort/show_ruined_portal
function chalc:pot/snort/prepare_find {structure:trail_ruins}
function chalc:pot/snort/find_structure
data modify storage chalc:structure particle set value "falling_dust{block_state:gravel}"
data modify storage chalc:structure y set value "62"
function chalc:pot/snort/show with storage chalc:structure