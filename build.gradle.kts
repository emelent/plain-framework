// build.gradle.kts
plugins {
    kotlin("multiplatform") version "2.1.20"
}

repositories {
    mavenCentral()
}

kotlin {
    val buildNumber = 1
    val version = "0.0.1"
    val name = "plain"

    iosArm64 {
        binaries {
            framework {
                baseName = name
                binaryOption("bundleId", "io.github.emelent.plain")
                binaryOption("bundleVersion", "$buildNumber")
                binaryOption("bundleShortVersionString", version)

            }
        }
    }
}

tasks.withType<Wrapper> {
    gradleVersion = "8.10"
    distributionType = Wrapper.DistributionType.BIN
}