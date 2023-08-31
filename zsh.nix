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
      cleanBranches = "git branch --merged | grep -v \* | xargs git branch -D";
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
      {
        name = "zsh-autopair";
        src = fetchFromGitHub {
          owner = "hlissner";
          repo = "zsh-autopair";
          rev = "396c38a7468458ba29011f2ad4112e4fd35f78e6";
          sha256 = "0q9wg8jlhlz2xn08rdml6fljglqd1a2gbdp063c8b8ay24zz2w9x";
        };
        file = "zsh-autopair.plugin.zsh";
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
