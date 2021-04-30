# 1. [T2.2] MAQUETA CON APPBAR, IMÁGENES, TEXTO Y SCROLL

Maquetación para la segunda tarea del 2do parcial de FDM, en el que estamos
trabajando con Flutter. Hay que hacer la maquetación que nos dijo el profesor,
la cual deberá contener: Imágenes, texto y un scroll con diversos elementos.

- [1.1. ***FECHA DE ENCARGO***](#11-fecha-de-encargo)
- [1.2. ***PROBLEMA CON EL EMULADOR DE ANDROID***](#12-problema-con-el-emulador-de-android)
  - [1.2.1. **PASOS PARA LA SOLUCIÓN DEL PROBLEMA**](#121-pasos-para-la-solución-del-problema)
- [1.3. **LINTER**](#13-linter)
  - [1.3.1. **CÓMO HACERLO FUNCIONAR**](#131-cómo-hacerlo-funcionar)
  - [1.3.2. **ENLACES**](#132-enlaces)
- [1.4. *Getting Started <- Venía por default al crear el proyecto*](#14-getting-started---venía-por-default-al-crear-el-proyecto)

## 1.1. ***FECHA DE ENCARGO***

> Martes, 27 ABRIL 2021

## 1.2. ***PROBLEMA CON EL EMULADOR DE ANDROID***

Me salió un mensaje cuando quise iniciar el emulador. Ya van varias veces que
intento iniciarlo, pero me dice que no encuentra el `adb.exe` y que no se puede
ejecutar, por lo que intento ejecutarlo de nuevo, y me dice que ya hay una
instancia ejecutándolo.

Después, me salió una imagen con un error:

![adb.exe es obsoleto. Deberá ser actualizado.](SS_PROBLEMS/PROBLEM-ANDROID_EMULATOR_ADB.png "adb.exe es obsoleto. Deberá ser actualizado.")

### 1.2.1. **PASOS PARA LA SOLUCIÓN DEL PROBLEMA (DE STACK OVEFLOW)**

> > Encontré una solución en Stack Overflow, pero aún no sé si funcione. La tendré
> > que probar. Por ahora, este es el enlace de dicha solución:
> >
> > - [ADB.exe is obsolete and has serious performance problems | Stack Overflow](https://stackoverflow.com/questions/51240223/adb-exe-is-obsolete-and-has-serious-performance-problems "ADB.exe is obsolete and has serious performance problems")
> >
> > La solución que por lo que veo me podría funcionar es la de: ***Kuya***
>
> Estos pasos se realizan desde Android Studio con el editor abierto, pero se
> puede hacer desde la pantalla inicial. Solo hay que abrir el "***`SDK Manager`***"
> en primera instancia, pero aquí se indica cómo abrirlo desde el editor como tal.
>
> 1. Presiona **dos veces shift para abrir el buscador de Android Studio**.
> 2. Escribe: "***`SDK Manager`***"
> 3. En los resultados que aparezcan da click en "***`SDK Manager`***".
> 4. En la ventana que aparece da click en la segunda pestaña: "***`SDK Tools`***".
>    - En esta pestaña verás que hay una actualización disponible para los "***`SDK Build-Tools`***" en la primera línea.
> 5. Palomea (check) el campo "***`Show Package Details`***" en la esquina inferior derecha.
> 6. Desplázate hasta el último item con el nombre de "***`SDK Build-Tools`***" y palomea el campo.
> 7. Da click en "**`Apply`**".
> 8. En el cuadro de diálogo que se te muestre, da click en "**`OK`**".
> 9. Cuando el instalador termine, da click en "**`Finish`**".
> 10. Uncheck (quita el palomeado) el campo de "***`Show Package Details`***" y revisa que en el campo "***`Android SDK Build-Tools`***" (primera línea) indique que no hay una actualización disponible, es decir, que diga "**`Installed`**".
> 11. Da click en "**`OK`**" para cerrar el "***`SDK Manager`***".

## 1.3. **LINTER**

Yo utilicé el siguiente linter:

> [Lint for Dart/Flutter <- El Linter que yo utilicé]
>
> "`lint` is a hand-picked, open-source, community-driven collection of lint
> rules for Dart and Flutter projects. The set of rules follows the [Effective
> Dart: Style Guide](https://dart.dev/guides/language/effective-dart/style
> "[Documentación] Effective Dart: Style").
>
> This package can be used as a replacement for
> [`package:pedantic`](https://github.com/google/pedantic
> "https://github.com/google/pedantic") for those who prefer stricter rules".

### 1.3.1. **CÓMO HACERLO FUNCIONAR**

1. Hay que **agregarlo a 2 archivos** en primera instancia:

    1. [*pubspec.yaml*](pubspec.yaml "The pusbspec file")

        > <cite>
        > "Every pub package needs some metadata so it can specify its
        > dependencies. Pubpackages that are shared with others also need to
        > provide some otherinformation so users can discover them. All of this
        > metadata goes in thepackage’s pubspec: a file named pubspec.yaml
        > that’s written in the YAML language".
        > </cite>
        >
        > En este archivo se encuentran definidas las dependencias, las
        > dependencias de desarrollador, los assets, y otras cosas. Por esta
        > razón, hay que agregarlo a las dependencias (`dependencies`) con el
        > nombre de `lint` de la siguiente forma:
        >
        > ```yaml
        > dependencies:
        >   foo:
        >     foo:
        >   lint:
        > ```

    2. [*analysis_options.yaml*](analysis_options.yaml "Archivo para establecer las reglas del linter")

        > Este archivo no se agrega de forma automática al inicializar un
        > proyecto de `Flutter`, por lo que hay que agregarlo manualmente.
        > Ya habiendo creado el archivo, hay que agregar la siguiente línea en
        > la parte superior del archivo:
        >
        > ```yaml
        > include: package:lint/analysis_options.yaml
        > ```
        >
        > Lo que hace es agregar las reglas establecidas en el linter
        > descargado.
        >
        > #### **Cambiar reglas de forma personalizada**
        >
        > > En el archivo podemos modificar las reglas que queramos de la
        > > siguiente forma como se indica en el enlace
        > > [Lint for Dart/Flutter: Enable/Disable rules](https://pub.dev/packages/lint#enabledisable-rules
        > > "Lint for Dart/Flutter: Enable/Disable rules"):
        > >
        > > ```yaml
        > > include: package:lint/analysis_options.yaml
        > > 
        > > linter:
        > >   rules:
        > >     # ------ Disable individual rules ----- #
        > >     #                 ---                   #
        > >     # Turn off what you don't like.         #
        > >     # ------------------------------------- #
        > > 
        > >     # Use parameter order as in json response
        > >     always_put_required_named_parameters_first: false
        > >     
        > >     # Util classes are awesome!
        > >     avoid_classes_with_only_static_members: false
        > > 
        > > 
        > >     # ------ Enable individual rules ------ #
        > >     #                 ---                   #
        > >     # These rules here are good but too     #
        > >     # opinionated to enable them by default #
        > >     # ------------------------------------- #
        > > 
        > >     # Make constructors the first thing in every class
        > >     sort_constructors_first: true
        > > 
        > >     # The new tabs vs. spaces. Choose wisely
        > >     prefer_single_quotes: true
        > >     prefer_double_quotes: true
        > > 
        > >     # Good packages document everything
        > >     public_member_api_docs: true
        > >     
        > >     # Blindly follow the Flutter code style, which prefers types everywhere
        > >     always_specify_types: true
        > > 
        > >     # Back to the 80s
        > >     lines_longer_than_80_chars: true
        > > ```

2. Finalmente, hay que **ejecutar el siguiente comando** para poder obtener los
   paquetes que hemos especificado.
    <!-- https://stackoverflow.com/questions/20303826/highlight-bash-shell-code-in-markdown-files -->

    ```properties
    flutter pub get
    ```

    Después de ejecutarlo, si todo sale bien, el paquete estará activo y
    mostrará los errores o warnings que tenga tu programa dependiendo de las
    reglas que hayas establecido. Si no modificaste las reglas, entonces te
    mostrará los errores dependiendo de las reglas del paquete base.

### 1.3.2. **ENLACES**

> - [Lint for Dart/Flutter <- El Linter que yo utilicé]
> - [Linter for Dart: Supported Lint Rules](https://dart-lang.github.io/linter/lints/index.html "Supported Dart Lint Rules")
> - [Analysis Options - Opciones posibles para el linter](https://dart-lang.github.io/linter/lints/options/options.html "Todas las opciones posibles para el linter base")

[Lint for Dart/Flutter <- El Linter que yo utilicé]: <https://pub.dev/packages/lint> "El Linter que yo utilicé"

## 1.4. *Getting Started <- Venía por default al crear el proyecto*

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
