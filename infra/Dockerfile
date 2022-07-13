from julia:1.7

ADD Project.toml Manifest.toml install.jl ./
RUN julia install.jl

ADD . .
CMD julia run.jl
