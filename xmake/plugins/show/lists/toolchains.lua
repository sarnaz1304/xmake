--!A cross-platform build utility based on Lua
--
-- Licensed under the Apache License, Version 2.0 (the "License");
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
--
--     http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.
-- 
-- Copyright (C) 2015-2020, TBOOX Open Source Group.
--
-- @author      ruki
-- @file        toolchains.lua
--

-- imports
import("core.tool.toolchain")
import("core.base.text")

-- show all toolchains
function main()

    local tbl = {align = 'l', sep = "        "}
    for _, name in ipairs(toolchain.list()) do
        local t = toolchain.load(name)
        table.insert(tbl, {name, t:get("description")})
    end
    print(text.table(tbl))
end
