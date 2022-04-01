build_files = files(
    'OSArborist.vala',
    'MainWindow.vala'
)

executable(
    meson.project_name(),
    build_files,
    dependencies: [
        dependency('gtk4'),
        dependency('libadwaita-1')
    ],
    install: true
)
