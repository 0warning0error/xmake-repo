package("gperf")

    set_homepage("https://www.gnu.org/software/gperf")
    set_description("Perfect hash function generator.")

    set_urls("https://ftp.gnu.org/gnu/gperf/gperf-$(version).tar.gz",
             "https://ftpmirror.gnu.org/gperf/gperf-$(version).tar.gz")
    add_versions("3.1", "588546b945bba4b70b6a3a616e80b4ab466e3f33024a352fc2198112cdbb3ae2")

    on_install("macosx", "linux", function (package)
        import("package.tools.autoconf").install(package)
    end)

    on_test(function (package)
        os.vrun("gperf --version")
    end)
