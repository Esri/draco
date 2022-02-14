from conans import ConanFile


class DracoConan(ConanFile):
    name = "draco"
    version = "1.5"
    url = "https://github.com/Esri/draco/tree/runtimecore"
    license = "https://github.com/Esri/draco/blob/runtimecore/LICENSE"
    description = "Draco is a library for compressing and decompressing 3D geometric meshes and point clouds. It is intended to improve the storage and transmission of 3D graphics."

    # RTC specific triple
    settings = "platform_architecture_target"

    def package(self):
        base = self.source_folder + "/"
        relative = "3rdparty/draco/"

        # headers
        self.copy("*.h*", src=base + "include", dst=relative + "include", excludes="*.in")
        self.copy("*.inl", src=base + "include", dst=relative + "include")

        # libraries
        output = "output/" + str(self.settings.platform_architecture_target) + "/staticlib"
        self.copy("*" + self.name + "*", src=base + "../../" + output, dst=output)
