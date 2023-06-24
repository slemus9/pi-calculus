# Pi Calulus

Our small project to play with Haskell and learn about Pi Calculus

## Setup

- Install [Stack](https://docs.haskellstack.org/en/stable/). Recommendation: install with [GHCup](https://www.haskell.org/ghcup/)

- Setup the [Haskell Language Server](https://haskell-language-server.readthedocs.io/en/latest/what-is-hls.html) with your favorite IDE. If you're using VSCode, the [Haskell Extension](https://marketplace.visualstudio.com/items?itemName=haskell.haskell) is supported by HLS

- This project uses [fourmolu](https://github.com/fourmolu/fourmolu) for code formatting. Set fourmolu as the HLS [formatting provider](https://haskell-language-server.readthedocs.io/en/latest/configuration.html#language-specific-server-options) (the way you configure this setting depends on your editor)

- Check that everything works:
  - Run `stack build` to build the project
  - Run `stack test` to run the tests of the project
  - Run `stack exec pi-calculus-exe` to run the project's main function
