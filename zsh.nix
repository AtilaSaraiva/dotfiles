{ config, pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    autocd = true;
    dotDir = ".config/zsh";
    enableAutosuggestions = true;
    enableCompletion = true;
    shellAliases = {
      sl = "exa";
      ls = "exa";
      l = "exa -l";
      la = "exa -la";
      ip = "ip --color=auto";
    };

    history = {
      size = 10000;
      share = true;
      ignoreSpace = true;
    };

    oh-my-zsh = {
      enable = true;
      plugins = [
        "git"
        "vi-mode"
        "colored-man-pages"
        "compleat"
        "tmux"
      ];
      theme = "kolo";
    };

    plugins = with pkgs; [
      {
        name = "zshmarks";
        src = fetchFromGitHub {
          owner = "jocelynmallon";
          repo = "zshmarks";
          rev = "a766c6bc81f0412152499e83c818244b2eed1a77";
          sha256 = "16z9jjiy3kfw0i9xh4jdhnwy04z807nr7qfq98vzzc43dw2qblml";
        };
        file = "zshmarks.plugin.zsh";
      }
    ];

    initExtra = ''
      bindkey '^ ' autosuggest-accept
    '';

  };

  programs.fzf = {
    enable = true;
    enableZshIntegration = true;
  };
}
