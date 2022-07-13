import Pkg
Pkg.activate(".")

using JuliaExporter

wait(JuliaExporter.startServer())
