using Revise
using OhMyREPL
using BenchmarkTools

function template()
    @eval begin
        using PkgTemplates
        tpl = Template(;
           user = "AtilaSaraiva",
           dir="/home/atila/Files/Codigos/repos/",
           authors="Átila Saraiva Quintela Soares",
           julia=v"1.9",
           plugins=[License(name="MIT"),
               Git(; manifest=true, ssh=true),
               Codecov(),
               Documenter{GitHubActions}(),
               CompatHelper(),
               TagBot(),
               RegisterAction(),
               ProjectFile(version=v"0.1.0"),
           ])
    end
end
