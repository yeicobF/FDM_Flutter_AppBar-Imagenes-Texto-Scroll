# [T2.1] MAQUETA CON APPBAR, IMÁGENES, TEXTO Y SCROLL

Maquetación para la primera tarea del 2do parcial de FDM, en el que estamos
trabajando con Flutter. Hay que hacer la maquetación que nos dijo el profesor,
la cual deberá contener: Imágenes, texto y un scroll con diversos elementos.

- [[T2.1] MAQUETA CON APPBAR, IMÁGENES, TEXTO Y SCROLL](#t21-maqueta-con-appbar-imágenes-texto-y-scroll)
  - [FECHA DE ENTREGA](#fecha-de-entrega)
  - [LINTER](#linter)
    - [CÓMO HACERLO FUNCIONAR](#cómo-hacerlo-funcionar)
    - [ENLACES](#enlaces)
  - [Getting Started](#getting-started)

## ***FECHA DE ENCARGO***

> Martes, 27 ABRIL 2021

## **LINTER**

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

### **CÓMO HACERLO FUNCIONAR**

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

### **ENLACES**

> - [Lint for Dart/Flutter <- El Linter que yo utilicé]
> - [Linter for Dart: Supported Lint Rules](https://dart-lang.github.io/linter/lints/index.html "Supported Dart Lint Rules")
> - [Analysis Options - Opciones posibles para el linter](https://dart-lang.github.io/linter/lints/options/options.html "Todas las opciones posibles para el linter base")

[Lint for Dart/Flutter <- El Linter que yo utilicé]: <https://pub.dev/packages/lint> "El Linter que yo utilicé"

## *Getting Started <- Venía por default al crear el proyecto*

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
