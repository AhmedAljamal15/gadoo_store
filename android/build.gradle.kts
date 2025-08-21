plugins {
    id("com.google.gms.google-services") version "4.4.3" apply false
}

// توحيد مجلدات الـ build (اختياري)
val newBuildDir = rootProject.layout.buildDirectory.dir("../../build").get()
rootProject.layout.buildDirectory.value(newBuildDir)

subprojects {
    val subBuild = newBuildDir.dir(project.name)
    project.layout.buildDirectory.value(subBuild)
    project.evaluationDependsOn(":app")
}

tasks.register<Delete>("clean") {
    delete(rootProject.layout.buildDirectory)
}
