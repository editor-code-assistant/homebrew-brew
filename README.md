# eca on brew

## How to use this tap

```shell
brew install editor-code-assistant/brew/eca

# For linux, by default it will install the static binary, you can install the dynamic one with:

brew install editor-code-assistant/brew/eca --with-dynamic
```

## development

To update the formulas run `bb -o render.clj --version "<new-version>" --mac-arm-sha "<sha>" --mac-amd-sha "<sha>" --linux-sha "<sha>" --static-linux-sha "<static-linux-sha>" > eca.rb` 
