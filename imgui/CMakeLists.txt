SET(TARGET_NAME imgui)
SET(IMGUI_DIR ${CMAKE_CURRENT_LIST_DIR}/../dependencies/imgui)

ADD_LIBRARY(${TARGET_NAME}
    helper.cpp
    ${IMGUI_DIR}/imgui.cpp
    ${IMGUI_DIR}/imgui_draw.cpp
    ${IMGUI_DIR}/imgui_widgets.cpp
    ${IMGUI_DIR}/imgui_demo.cpp
    ${IMGUI_DIR}/examples/imgui_impl_win32.cpp
    ${IMGUI_DIR}/examples/imgui_impl_dx11.cpp
    )

TARGET_INCLUDE_DIRECTORIES(${TARGET_NAME} PRIVATE
    ${IMGUI_DIR}
    )
TARGET_LINK_LIBRARIES(${TARGET_NAME} PRIVATE
    )
