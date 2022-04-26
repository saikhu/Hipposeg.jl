using Hipposeg
using Documenter

DocMeta.setdocmeta!(Hipposeg, :DocTestSetup, :(using Hipposeg); recursive=true)

makedocs(;
    modules=[Hipposeg],
    authors="Saikhu <asimsaikhu@gmail.com> and contributors",
    repo="https://github.com/saikhu/Hipposeg.jl/blob/{commit}{path}#{line}",
    sitename="Hipposeg.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://saikhu.github.io/Hipposeg.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/saikhu/Hipposeg.jl",
    devbranch="main",
)
