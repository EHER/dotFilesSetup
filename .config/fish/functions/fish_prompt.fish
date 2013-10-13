function fish_prompt
	
    function _git_branch_name
        echo (git symbolic-ref HEAD ^/dev/null | sed -e 's|^refs/heads/||')
    end

    function _is_git_dirty
        echo (git status -s --ignore-submodules=dirty ^/dev/null)
    end

    function _has_vi_mode
        echo $vi_mode
    end

    set -l cyan (set_color -o cyan)
    set -l yellow (set_color -o yellow)
    set -l red (set_color -o red)
    set -l blue (set_color -o blue)
    set -l normal (set_color normal)

    set -l arrow "$red➜ "
    set -l pwd "$cyan " (prompt_pwd)

    if not set -q __fish_prompt_cwd
        set -g __fish_prompt_cwd (set_color $fish_color_cwd)
    end

    if [ (_has_vi_mode) ]
        set vi_info "$blue vi:($vi_mode$blue)"
    end

    if [ (_git_branch_name) ]
        set -l git_branch $red(_git_branch_name)

        if [ (_is_git_dirty) ]
            set dirty "$yellow ✗"
        end

        set git_info "$blue git:($git_branch$dirty$blue)"
    end

    echo -n -s $arrow $vi_info $git_info $pwd $normal '> '
end
