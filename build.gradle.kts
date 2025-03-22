import org.jetbrains.kotlin.gradle.plugin.mpp.apple.XCFramework

// build.gradle.kts
plugins { kotlin("multiplatform") version "2.1.20" }

repositories { mavenCentral() }

kotlin {
    val buildNumber = 6
    val version = "0.0.6"
    val name = "plain"
    val xcf = XCFramework(name)

    listOf(
        iosX64(),
        iosArm64(),
        iosSimulatorArm64(),
        macosX64(),
        macosArm64(),
    )
        .forEach {
            it.binaries.framework {
                baseName = name
                binaryOption("bundleId", "io.github.emelent.plain")
                binaryOption("bundleVersion", "$buildNumber")
                binaryOption("bundleShortVersionString", version)
                isStatic = true
                xcf.add(this)
            }
        }
}

tasks.withType<Wrapper> {
    gradleVersion = "8.10"
    distributionType = Wrapper.DistributionType.BIN
}
