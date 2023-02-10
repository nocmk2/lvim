# My LunarVim Config

## java
### lombok

:MasonInstall java-debug-adapter
:MasonInstall java-test
:LspUninstall jdtls
:LspInstall jdtls

## markdown 
### markdown-preview

"iamcco/markdown-preview.nvim"
cd ~/.local/share/nvim/site/pack/packer/start/
git clone https://github.com/iamcco/markdown-preview.nvim.git
cd markdown-preview.nvim
yarn install
npx browserslist@latest --update-db
yarn build
