local config = {
  fg_color = "",
  bg_color = "",
  NeoColumn = "80",
  always_on = false,
  custom_NeoColumn = {},
  excluded_ft = { "text", "markdown" },
}
require("NeoColumn").setup(config)
