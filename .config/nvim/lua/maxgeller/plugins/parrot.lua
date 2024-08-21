return {
  "frankroeder/parrot.nvim",
  dependencies = { 'ibhagwan/fzf-lua', 'nvim-lua/plenary.nvim' },
  lazy = false,
  config = function()
    require("parrot").setup {
      providers = {
        anthropic = {
          api_key = os.getenv "ANTHROPIC_API_KEY",
        },
        gemini = {
          api_key = os.getenv "GEMINI_API_KEY",
        },
        groq = {
          api_key = os.getenv "GROQ_API_KEY",
        },
        mistral = {
          api_key = os.getenv "MISTRAL_API_KEY",
        },
        pplx = {
          api_key = os.getenv "PERPLEXITY_API_KEY",
        },
   --     ollama = {},
        openai = {
          api_key = os.getenv "OPENAI_API_KEY",
        },
      },
      fzf_lua = {
        winopts = {
          height = 0.5,
          width = 0.5,
          preview = {
            hidden = "hidden",
          },
        },
      },
    }
  end,
}
