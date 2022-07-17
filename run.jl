import Pkg
Pkg.activate(".")

using JuliaExporter

Pkg.precompile()

wait(JuliaExporter.startServer())
