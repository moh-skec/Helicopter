if (WIN32)
    set(APP_ICON_RESOURCE_FILES "app_icon.rc")
endif()

qt_add_resources(${CMAKE_PROJECT_NAME} "resources"
    PREFIX "/"
    FILES "resources.qrc" "icons/favicon.ico"
)

target_sources(${CMAKE_PROJECT_NAME} PUBLIC
    "main.cpp" ${APP_ICON_RESOURCE_FILES}
)

target_link_libraries(${CMAKE_PROJECT_NAME} PRIVATE
    Qt${QT_VERSION_MAJOR}::Core
    Qt${QT_VERSION_MAJOR}::Gui
    Qt${QT_VERSION_MAJOR}::Quick
    Qt${QT_VERSION_MAJOR}::Qml
)
