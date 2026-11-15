plugins {
    id("com.android.application")
}

android {
    namespace = "com.sunelan.netspeed"
    compileSdk = 34

    defaultConfig {
        applicationId = "com.sunelan.netspeed"
        minSdk = 26
        targetSdk = 34
        versionCode = 1
        versionName = "1.0"
    }

    buildTypes {
        release {
            isMinifyEnabled = false
            signingConfig = signingConfigs.getByName("debug")
        }
    }

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }

    packaging {
        resources {
            merges += "META-INF/xposed/*"
        }
    }
}

dependencies {
    compileOnly("io.github.libxposed:api:101.0.0")
}
