// build.gradle.kts
plugins {
    kotlin("multiplatform") version "2.1.20"
}

repositories {
    mavenCentral()
}

kotlin {
    iosArm64("native") {
        binaries {
            framework {
                baseName = "plain"
                binaryOption("bundleId", "io.github.emelent.plain")
                binaryOption("bundleVersion", "0.0.1")
            }
        }
    }
}

tasks.withType<Wrapper> {
    gradleVersion = "8.10"
    distributionType = Wrapper.DistributionType.BIN
}