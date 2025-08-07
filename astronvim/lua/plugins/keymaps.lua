return {
  {
    -- this applies mappings through AstroCore
    "AstroNvim/astrocore",
    opts = {
      mappings = {
        n = {
          [";"] = { ":", desc = "Open command mode" },
          [":"] = { ";", desc = "Repeat last f/F/t/T" },
        },
        v = {
          [";"] = { ":", desc = "Open command mode" },
          [":"] = { ";", desc = "Repeat last f/F/t/T" },
        },
      },
    },
  },
}

