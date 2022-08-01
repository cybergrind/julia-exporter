import Pkg
Pkg.activate(".")

# using Revise  # hot-reload

using JuliaExporter

Pkg.precompile()

# JuliaExporter.startServer()

wait(JuliaExporter.startServer())
