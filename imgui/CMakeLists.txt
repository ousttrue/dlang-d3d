SET(TARGET_NAME imgui)
SET(IMGUI_DIR ${CMAKE_CURRENT_LIST_DIR}/../dependencies/imgui)

ADD_LIBRARY(${TARGET_NAME}
    ${IMGUI_DIR}/imgui.cpp
    ${IMGUI_DIR}/imgui_draw.cpp
    ${IMGUI_DIR}/imgui_widgets.cpp
    )

TARGET_INCLUDE_DIRECTORIES(${TARGET_NAME} PRIVATE
    )
TARGET_LINK_LIBRARIES(${TARGET_NAME} PRIVATE
    )
