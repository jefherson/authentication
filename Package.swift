// swift-tools-version: 6.0
// 👆 Indica la versión mínima de Swift que se usará para compilar este paquete.
// Esto también determina qué sintaxis y características están disponibles.

import PackageDescription // 📦 Librería estándar para describir un paquete Swift

let package = Package(
    // 📛 Nombre del paquete (cómo será identificado)
    name: "Authentication",

    // 📱 Plataformas mínimas soportadas
    platforms: [
        .iOS(.v16) // Solo funcionará en iOS 16 o superior
    ],

    // 📤 Productos que este paquete expone a otros módulos o apps
    products: [
        .library(
            name: "Authentication", // Nombre de la librería pública
            targets: ["Authentication"] // Target que construye esta librería
        )
    ],

    // 📥 Dependencias externas que este paquete necesita (ninguna por ahora)
    dependencies: [
        // Ejemplo si quisieras añadir una dependencia externa:
        // .package(url: "https://github.com/apple/example-package-fisheryates.git", from: "1.2.0")
    ],

    // 🎯 Targets: piezas independientes de código que se compilan
    targets: [
        // Target principal que contiene el código de la librería Authentication
        .target(
            name: "Authentication", // Nombre del target
            dependencies: []        // No depende de otros targets o paquetes
        ),

        // Target de pruebas unitarias para Authentication
        .testTarget(
            name: "AuthenticationTests", // Nombre del target de pruebas
            dependencies: ["Authentication"] // Depende del target principal para testearlo
        )
    ]
)
