#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/take4.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/take4.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/app.c ../src/main.c ../../../../../../microchip/harmony/v2_06/third_party/decoder/jidctint/src/jidctint.c ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_jpg_common.c ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_jpg_internal.c ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_jpg_external.c ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_png_external.c ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_png_internal.c ../../../../../../microchip/harmony/v2_06/third_party/decoder/lodepng/lodepng.c ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image.c ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_raw_external.c ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_raw_internal.c ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_rle_external.c ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_rle_internal.c ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_utils.c ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_palette.c ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_string.c ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_string_external.c ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_stringbuffer_external.c ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_string_internal.c ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_string_query.c ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_string_utils.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_array.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_context.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_context_paint.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_draw.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_editwidget.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_event.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_input.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_layer.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_list.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_rectarray.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_scheme.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_screen.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_string.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_utils.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_skin_classic.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_skin_classic_common.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_arc.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_arc_skin_classic.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_bar_graph.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_bar_graph_skin_classic.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_button.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_button_skin_classic.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_checkbox.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_checkbox_skin_classic.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_circle.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_circle_skin_classic.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_circular_gauge.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_circular_gauge_skin_classic.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_circular_slider.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_circular_slider_skin_classic.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_drawsurface.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_drawsurface_skin_classic.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_gradient.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_gradient_skin_classic.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_groupbox.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_groupbox_skin_classic.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_image.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_image_skin_classic.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_imageplus.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_imageplus_skin_classic.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_imagesequence.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_imagesequence_skin_classic.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_keypad.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_keypad_skin_classic.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_label.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_label_skin_classic.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_line.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_line_skin_classic.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_line_graph.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_line_graph_skin_classic.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_list.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_list_skin_classic.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_listwheel.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_listwheel_skin_classic.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_pie_chart.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_pie_chart_skin_classic.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_progressbar.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_progressbar_skin_classic.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_radial_menu.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_radial_menu_skin_classic.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_radiobutton.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_radiobutton_skin_classic.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_radiobutton_group.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_rectangle.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_rectangle_skin_classic.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_scrollbar.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_scrollbar_skin_classic.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_slider.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_slider_skin_classic.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_textfield.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_textfield_skin_classic.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_touchtest.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_touchtest_skin_classic.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_window.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_window_skin_classic.c ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx.c ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_color.c ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_context.c ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_default_impl.c ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_display.c ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_driver_interface.c ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_get.c ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_interface.c ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_layer.c ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_pixel_buffer.c ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_processor_interface.c ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_rect.c ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_util.c ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_set.c ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_color_blend.c ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_color_convert.c ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_color_lerp.c ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_color_value.c ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_arc.c ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_blit.c ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_circle.c ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_ellipse.c ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_line.c ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_pixel.c ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_rect.c ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_stretchblit.c ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_math.c ../../../../../../microchip/harmony/v2_06/framework/system/int/src/sys_int_pic32.c ../src/system_config/default/framework/driver/pmp/src/drv_pmp_static.c ../src/system_config/default/framework/gfx/driver/controller/ssd1926/drv_gfx_ssd1926.c ../src/system_config/default/framework/gfx/driver/tcon/ssd1289/drv_gfx_ssd1289.c ../src/system_config/default/framework/gfx/libaria/libaria_harmony.c ../src/system_config/default/framework/gfx/libaria/libaria_init.c ../src/system_config/default/framework/gfx/libaria/libaria_events.c ../src/system_config/default/framework/gfx/libaria/libaria_macros.c ../src/system_config/default/framework/gfx/hal/gfx_display_def.c ../src/system_config/default/framework/gfx/hal/gfx_driver_def.c ../src/system_config/default/framework/gfx/hal/gfx_processor_def.c ../src/system_config/default/framework/system/clk/src/sys_clk_pic32mx.c ../src/system_config/default/framework/system/devcon/src/sys_devcon.c ../src/system_config/default/framework/system/devcon/src/sys_devcon_pic32mx.c ../src/system_config/default/framework/system/ports/src/sys_ports_static.c ../src/system_config/default/bsp/bsp.c ../src/system_config/default/system_init.c ../src/system_config/default/system_interrupt.c ../src/system_config/default/system_exceptions.c ../src/system_config/default/system_tasks.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/658260392/jidctint.o ${OBJECTDIR}/_ext/1963452113/gfxu_image_jpg_common.o ${OBJECTDIR}/_ext/1963452113/gfxu_image_jpg_internal.o ${OBJECTDIR}/_ext/1963452113/gfxu_image_jpg_external.o ${OBJECTDIR}/_ext/1963452113/gfxu_image_png_external.o ${OBJECTDIR}/_ext/1963452113/gfxu_image_png_internal.o ${OBJECTDIR}/_ext/308360523/lodepng.o ${OBJECTDIR}/_ext/1963452113/gfxu_image.o ${OBJECTDIR}/_ext/1963452113/gfxu_image_raw_external.o ${OBJECTDIR}/_ext/1963452113/gfxu_image_raw_internal.o ${OBJECTDIR}/_ext/1963452113/gfxu_image_rle_external.o ${OBJECTDIR}/_ext/1963452113/gfxu_image_rle_internal.o ${OBJECTDIR}/_ext/1963452113/gfxu_image_utils.o ${OBJECTDIR}/_ext/1963452113/gfxu_palette.o ${OBJECTDIR}/_ext/1963452113/gfxu_string.o ${OBJECTDIR}/_ext/1963452113/gfxu_string_external.o ${OBJECTDIR}/_ext/1963452113/gfxu_stringbuffer_external.o ${OBJECTDIR}/_ext/1963452113/gfxu_string_internal.o ${OBJECTDIR}/_ext/1963452113/gfxu_string_query.o ${OBJECTDIR}/_ext/1963452113/gfxu_string_utils.o ${OBJECTDIR}/_ext/1071800814/libaria.o ${OBJECTDIR}/_ext/1071800814/libaria_array.o ${OBJECTDIR}/_ext/1071800814/libaria_context.o ${OBJECTDIR}/_ext/1071800814/libaria_context_paint.o ${OBJECTDIR}/_ext/1071800814/libaria_draw.o ${OBJECTDIR}/_ext/1071800814/libaria_editwidget.o ${OBJECTDIR}/_ext/1071800814/libaria_event.o ${OBJECTDIR}/_ext/1071800814/libaria_input.o ${OBJECTDIR}/_ext/1071800814/libaria_layer.o ${OBJECTDIR}/_ext/1071800814/libaria_list.o ${OBJECTDIR}/_ext/1071800814/libaria_rectarray.o ${OBJECTDIR}/_ext/1071800814/libaria_scheme.o ${OBJECTDIR}/_ext/1071800814/libaria_screen.o ${OBJECTDIR}/_ext/1071800814/libaria_string.o ${OBJECTDIR}/_ext/1071800814/libaria_utils.o ${OBJECTDIR}/_ext/1071800814/libaria_widget.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_skin_classic.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_skin_classic_common.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_arc.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_arc_skin_classic.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_bar_graph.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_bar_graph_skin_classic.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_button.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_button_skin_classic.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_checkbox.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_checkbox_skin_classic.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_circle.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_circle_skin_classic.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_circular_gauge.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_circular_gauge_skin_classic.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_circular_slider.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_circular_slider_skin_classic.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_drawsurface.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_drawsurface_skin_classic.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_gradient.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_gradient_skin_classic.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_groupbox.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_groupbox_skin_classic.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_image.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_image_skin_classic.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_imageplus.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_imageplus_skin_classic.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_imagesequence.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_imagesequence_skin_classic.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_keypad.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_keypad_skin_classic.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_label.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_label_skin_classic.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_line.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_line_skin_classic.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_line_graph.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_line_graph_skin_classic.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_list.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_list_skin_classic.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_listwheel.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_listwheel_skin_classic.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_pie_chart.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_pie_chart_skin_classic.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_progressbar.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_progressbar_skin_classic.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_radial_menu.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_radial_menu_skin_classic.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_radiobutton.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_radiobutton_skin_classic.o ${OBJECTDIR}/_ext/1071800814/libaria_radiobutton_group.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_rectangle.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_rectangle_skin_classic.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_scrollbar.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_scrollbar_skin_classic.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_slider.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_slider_skin_classic.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_textfield.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_textfield_skin_classic.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_touchtest.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_touchtest_skin_classic.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_window.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_window_skin_classic.o ${OBJECTDIR}/_ext/676789875/gfx.o ${OBJECTDIR}/_ext/676789875/gfx_color.o ${OBJECTDIR}/_ext/676789875/gfx_context.o ${OBJECTDIR}/_ext/676789875/gfx_default_impl.o ${OBJECTDIR}/_ext/676789875/gfx_display.o ${OBJECTDIR}/_ext/676789875/gfx_driver_interface.o ${OBJECTDIR}/_ext/676789875/gfx_get.o ${OBJECTDIR}/_ext/676789875/gfx_interface.o ${OBJECTDIR}/_ext/676789875/gfx_layer.o ${OBJECTDIR}/_ext/676789875/gfx_pixel_buffer.o ${OBJECTDIR}/_ext/676789875/gfx_processor_interface.o ${OBJECTDIR}/_ext/676789875/gfx_rect.o ${OBJECTDIR}/_ext/676789875/gfx_util.o ${OBJECTDIR}/_ext/676789875/gfx_set.o ${OBJECTDIR}/_ext/676789875/gfx_color_blend.o ${OBJECTDIR}/_ext/676789875/gfx_color_convert.o ${OBJECTDIR}/_ext/676789875/gfx_color_lerp.o ${OBJECTDIR}/_ext/676789875/gfx_color_value.o ${OBJECTDIR}/_ext/676789875/gfx_draw_arc.o ${OBJECTDIR}/_ext/676789875/gfx_draw_blit.o ${OBJECTDIR}/_ext/676789875/gfx_draw_circle.o ${OBJECTDIR}/_ext/676789875/gfx_draw_ellipse.o ${OBJECTDIR}/_ext/676789875/gfx_draw_line.o ${OBJECTDIR}/_ext/676789875/gfx_draw_pixel.o ${OBJECTDIR}/_ext/676789875/gfx_draw_rect.o ${OBJECTDIR}/_ext/676789875/gfx_draw_stretchblit.o ${OBJECTDIR}/_ext/676789875/gfx_math.o ${OBJECTDIR}/_ext/231205469/sys_int_pic32.o ${OBJECTDIR}/_ext/664138601/drv_pmp_static.o ${OBJECTDIR}/_ext/347121368/drv_gfx_ssd1926.o ${OBJECTDIR}/_ext/1689523328/drv_gfx_ssd1289.o ${OBJECTDIR}/_ext/458109090/libaria_harmony.o ${OBJECTDIR}/_ext/458109090/libaria_init.o ${OBJECTDIR}/_ext/458109090/libaria_events.o ${OBJECTDIR}/_ext/458109090/libaria_macros.o ${OBJECTDIR}/_ext/2065038297/gfx_display_def.o ${OBJECTDIR}/_ext/2065038297/gfx_driver_def.o ${OBJECTDIR}/_ext/2065038297/gfx_processor_def.o ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o ${OBJECTDIR}/_ext/340578644/sys_devcon.o ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o ${OBJECTDIR}/_ext/822048611/sys_ports_static.o ${OBJECTDIR}/_ext/74298950/bsp.o ${OBJECTDIR}/_ext/1688732426/system_init.o ${OBJECTDIR}/_ext/1688732426/system_interrupt.o ${OBJECTDIR}/_ext/1688732426/system_exceptions.o ${OBJECTDIR}/_ext/1688732426/system_tasks.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1360937237/app.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/658260392/jidctint.o.d ${OBJECTDIR}/_ext/1963452113/gfxu_image_jpg_common.o.d ${OBJECTDIR}/_ext/1963452113/gfxu_image_jpg_internal.o.d ${OBJECTDIR}/_ext/1963452113/gfxu_image_jpg_external.o.d ${OBJECTDIR}/_ext/1963452113/gfxu_image_png_external.o.d ${OBJECTDIR}/_ext/1963452113/gfxu_image_png_internal.o.d ${OBJECTDIR}/_ext/308360523/lodepng.o.d ${OBJECTDIR}/_ext/1963452113/gfxu_image.o.d ${OBJECTDIR}/_ext/1963452113/gfxu_image_raw_external.o.d ${OBJECTDIR}/_ext/1963452113/gfxu_image_raw_internal.o.d ${OBJECTDIR}/_ext/1963452113/gfxu_image_rle_external.o.d ${OBJECTDIR}/_ext/1963452113/gfxu_image_rle_internal.o.d ${OBJECTDIR}/_ext/1963452113/gfxu_image_utils.o.d ${OBJECTDIR}/_ext/1963452113/gfxu_palette.o.d ${OBJECTDIR}/_ext/1963452113/gfxu_string.o.d ${OBJECTDIR}/_ext/1963452113/gfxu_string_external.o.d ${OBJECTDIR}/_ext/1963452113/gfxu_stringbuffer_external.o.d ${OBJECTDIR}/_ext/1963452113/gfxu_string_internal.o.d ${OBJECTDIR}/_ext/1963452113/gfxu_string_query.o.d ${OBJECTDIR}/_ext/1963452113/gfxu_string_utils.o.d ${OBJECTDIR}/_ext/1071800814/libaria.o.d ${OBJECTDIR}/_ext/1071800814/libaria_array.o.d ${OBJECTDIR}/_ext/1071800814/libaria_context.o.d ${OBJECTDIR}/_ext/1071800814/libaria_context_paint.o.d ${OBJECTDIR}/_ext/1071800814/libaria_draw.o.d ${OBJECTDIR}/_ext/1071800814/libaria_editwidget.o.d ${OBJECTDIR}/_ext/1071800814/libaria_event.o.d ${OBJECTDIR}/_ext/1071800814/libaria_input.o.d ${OBJECTDIR}/_ext/1071800814/libaria_layer.o.d ${OBJECTDIR}/_ext/1071800814/libaria_list.o.d ${OBJECTDIR}/_ext/1071800814/libaria_rectarray.o.d ${OBJECTDIR}/_ext/1071800814/libaria_scheme.o.d ${OBJECTDIR}/_ext/1071800814/libaria_screen.o.d ${OBJECTDIR}/_ext/1071800814/libaria_string.o.d ${OBJECTDIR}/_ext/1071800814/libaria_utils.o.d ${OBJECTDIR}/_ext/1071800814/libaria_widget.o.d ${OBJECTDIR}/_ext/1071800814/libaria_widget_skin_classic.o.d ${OBJECTDIR}/_ext/1071800814/libaria_widget_skin_classic_common.o.d ${OBJECTDIR}/_ext/1071800814/libaria_widget_arc.o.d ${OBJECTDIR}/_ext/1071800814/libaria_widget_arc_skin_classic.o.d ${OBJECTDIR}/_ext/1071800814/libaria_widget_bar_graph.o.d ${OBJECTDIR}/_ext/1071800814/libaria_widget_bar_graph_skin_classic.o.d ${OBJECTDIR}/_ext/1071800814/libaria_widget_button.o.d ${OBJECTDIR}/_ext/1071800814/libaria_widget_button_skin_classic.o.d ${OBJECTDIR}/_ext/1071800814/libaria_widget_checkbox.o.d ${OBJECTDIR}/_ext/1071800814/libaria_widget_checkbox_skin_classic.o.d ${OBJECTDIR}/_ext/1071800814/libaria_widget_circle.o.d ${OBJECTDIR}/_ext/1071800814/libaria_widget_circle_skin_classic.o.d ${OBJECTDIR}/_ext/1071800814/libaria_widget_circular_gauge.o.d ${OBJECTDIR}/_ext/1071800814/libaria_widget_circular_gauge_skin_classic.o.d ${OBJECTDIR}/_ext/1071800814/libaria_widget_circular_slider.o.d ${OBJECTDIR}/_ext/1071800814/libaria_widget_circular_slider_skin_classic.o.d ${OBJECTDIR}/_ext/1071800814/libaria_widget_drawsurface.o.d ${OBJECTDIR}/_ext/1071800814/libaria_widget_drawsurface_skin_classic.o.d ${OBJECTDIR}/_ext/1071800814/libaria_widget_gradient.o.d ${OBJECTDIR}/_ext/1071800814/libaria_widget_gradient_skin_classic.o.d ${OBJECTDIR}/_ext/1071800814/libaria_widget_groupbox.o.d ${OBJECTDIR}/_ext/1071800814/libaria_widget_groupbox_skin_classic.o.d ${OBJECTDIR}/_ext/1071800814/libaria_widget_image.o.d ${OBJECTDIR}/_ext/1071800814/libaria_widget_image_skin_classic.o.d ${OBJECTDIR}/_ext/1071800814/libaria_widget_imageplus.o.d ${OBJECTDIR}/_ext/1071800814/libaria_widget_imageplus_skin_classic.o.d ${OBJECTDIR}/_ext/1071800814/libaria_widget_imagesequence.o.d ${OBJECTDIR}/_ext/1071800814/libaria_widget_imagesequence_skin_classic.o.d ${OBJECTDIR}/_ext/1071800814/libaria_widget_keypad.o.d ${OBJECTDIR}/_ext/1071800814/libaria_widget_keypad_skin_classic.o.d ${OBJECTDIR}/_ext/1071800814/libaria_widget_label.o.d ${OBJECTDIR}/_ext/1071800814/libaria_widget_label_skin_classic.o.d ${OBJECTDIR}/_ext/1071800814/libaria_widget_line.o.d ${OBJECTDIR}/_ext/1071800814/libaria_widget_line_skin_classic.o.d ${OBJECTDIR}/_ext/1071800814/libaria_widget_line_graph.o.d ${OBJECTDIR}/_ext/1071800814/libaria_widget_line_graph_skin_classic.o.d ${OBJECTDIR}/_ext/1071800814/libaria_widget_list.o.d ${OBJECTDIR}/_ext/1071800814/libaria_widget_list_skin_classic.o.d ${OBJECTDIR}/_ext/1071800814/libaria_widget_listwheel.o.d ${OBJECTDIR}/_ext/1071800814/libaria_widget_listwheel_skin_classic.o.d ${OBJECTDIR}/_ext/1071800814/libaria_widget_pie_chart.o.d ${OBJECTDIR}/_ext/1071800814/libaria_widget_pie_chart_skin_classic.o.d ${OBJECTDIR}/_ext/1071800814/libaria_widget_progressbar.o.d ${OBJECTDIR}/_ext/1071800814/libaria_widget_progressbar_skin_classic.o.d ${OBJECTDIR}/_ext/1071800814/libaria_widget_radial_menu.o.d ${OBJECTDIR}/_ext/1071800814/libaria_widget_radial_menu_skin_classic.o.d ${OBJECTDIR}/_ext/1071800814/libaria_widget_radiobutton.o.d ${OBJECTDIR}/_ext/1071800814/libaria_widget_radiobutton_skin_classic.o.d ${OBJECTDIR}/_ext/1071800814/libaria_radiobutton_group.o.d ${OBJECTDIR}/_ext/1071800814/libaria_widget_rectangle.o.d ${OBJECTDIR}/_ext/1071800814/libaria_widget_rectangle_skin_classic.o.d ${OBJECTDIR}/_ext/1071800814/libaria_widget_scrollbar.o.d ${OBJECTDIR}/_ext/1071800814/libaria_widget_scrollbar_skin_classic.o.d ${OBJECTDIR}/_ext/1071800814/libaria_widget_slider.o.d ${OBJECTDIR}/_ext/1071800814/libaria_widget_slider_skin_classic.o.d ${OBJECTDIR}/_ext/1071800814/libaria_widget_textfield.o.d ${OBJECTDIR}/_ext/1071800814/libaria_widget_textfield_skin_classic.o.d ${OBJECTDIR}/_ext/1071800814/libaria_widget_touchtest.o.d ${OBJECTDIR}/_ext/1071800814/libaria_widget_touchtest_skin_classic.o.d ${OBJECTDIR}/_ext/1071800814/libaria_widget_window.o.d ${OBJECTDIR}/_ext/1071800814/libaria_widget_window_skin_classic.o.d ${OBJECTDIR}/_ext/676789875/gfx.o.d ${OBJECTDIR}/_ext/676789875/gfx_color.o.d ${OBJECTDIR}/_ext/676789875/gfx_context.o.d ${OBJECTDIR}/_ext/676789875/gfx_default_impl.o.d ${OBJECTDIR}/_ext/676789875/gfx_display.o.d ${OBJECTDIR}/_ext/676789875/gfx_driver_interface.o.d ${OBJECTDIR}/_ext/676789875/gfx_get.o.d ${OBJECTDIR}/_ext/676789875/gfx_interface.o.d ${OBJECTDIR}/_ext/676789875/gfx_layer.o.d ${OBJECTDIR}/_ext/676789875/gfx_pixel_buffer.o.d ${OBJECTDIR}/_ext/676789875/gfx_processor_interface.o.d ${OBJECTDIR}/_ext/676789875/gfx_rect.o.d ${OBJECTDIR}/_ext/676789875/gfx_util.o.d ${OBJECTDIR}/_ext/676789875/gfx_set.o.d ${OBJECTDIR}/_ext/676789875/gfx_color_blend.o.d ${OBJECTDIR}/_ext/676789875/gfx_color_convert.o.d ${OBJECTDIR}/_ext/676789875/gfx_color_lerp.o.d ${OBJECTDIR}/_ext/676789875/gfx_color_value.o.d ${OBJECTDIR}/_ext/676789875/gfx_draw_arc.o.d ${OBJECTDIR}/_ext/676789875/gfx_draw_blit.o.d ${OBJECTDIR}/_ext/676789875/gfx_draw_circle.o.d ${OBJECTDIR}/_ext/676789875/gfx_draw_ellipse.o.d ${OBJECTDIR}/_ext/676789875/gfx_draw_line.o.d ${OBJECTDIR}/_ext/676789875/gfx_draw_pixel.o.d ${OBJECTDIR}/_ext/676789875/gfx_draw_rect.o.d ${OBJECTDIR}/_ext/676789875/gfx_draw_stretchblit.o.d ${OBJECTDIR}/_ext/676789875/gfx_math.o.d ${OBJECTDIR}/_ext/231205469/sys_int_pic32.o.d ${OBJECTDIR}/_ext/664138601/drv_pmp_static.o.d ${OBJECTDIR}/_ext/347121368/drv_gfx_ssd1926.o.d ${OBJECTDIR}/_ext/1689523328/drv_gfx_ssd1289.o.d ${OBJECTDIR}/_ext/458109090/libaria_harmony.o.d ${OBJECTDIR}/_ext/458109090/libaria_init.o.d ${OBJECTDIR}/_ext/458109090/libaria_events.o.d ${OBJECTDIR}/_ext/458109090/libaria_macros.o.d ${OBJECTDIR}/_ext/2065038297/gfx_display_def.o.d ${OBJECTDIR}/_ext/2065038297/gfx_driver_def.o.d ${OBJECTDIR}/_ext/2065038297/gfx_processor_def.o.d ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o.d ${OBJECTDIR}/_ext/340578644/sys_devcon.o.d ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o.d ${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d ${OBJECTDIR}/_ext/74298950/bsp.o.d ${OBJECTDIR}/_ext/1688732426/system_init.o.d ${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d ${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d ${OBJECTDIR}/_ext/1688732426/system_tasks.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/658260392/jidctint.o ${OBJECTDIR}/_ext/1963452113/gfxu_image_jpg_common.o ${OBJECTDIR}/_ext/1963452113/gfxu_image_jpg_internal.o ${OBJECTDIR}/_ext/1963452113/gfxu_image_jpg_external.o ${OBJECTDIR}/_ext/1963452113/gfxu_image_png_external.o ${OBJECTDIR}/_ext/1963452113/gfxu_image_png_internal.o ${OBJECTDIR}/_ext/308360523/lodepng.o ${OBJECTDIR}/_ext/1963452113/gfxu_image.o ${OBJECTDIR}/_ext/1963452113/gfxu_image_raw_external.o ${OBJECTDIR}/_ext/1963452113/gfxu_image_raw_internal.o ${OBJECTDIR}/_ext/1963452113/gfxu_image_rle_external.o ${OBJECTDIR}/_ext/1963452113/gfxu_image_rle_internal.o ${OBJECTDIR}/_ext/1963452113/gfxu_image_utils.o ${OBJECTDIR}/_ext/1963452113/gfxu_palette.o ${OBJECTDIR}/_ext/1963452113/gfxu_string.o ${OBJECTDIR}/_ext/1963452113/gfxu_string_external.o ${OBJECTDIR}/_ext/1963452113/gfxu_stringbuffer_external.o ${OBJECTDIR}/_ext/1963452113/gfxu_string_internal.o ${OBJECTDIR}/_ext/1963452113/gfxu_string_query.o ${OBJECTDIR}/_ext/1963452113/gfxu_string_utils.o ${OBJECTDIR}/_ext/1071800814/libaria.o ${OBJECTDIR}/_ext/1071800814/libaria_array.o ${OBJECTDIR}/_ext/1071800814/libaria_context.o ${OBJECTDIR}/_ext/1071800814/libaria_context_paint.o ${OBJECTDIR}/_ext/1071800814/libaria_draw.o ${OBJECTDIR}/_ext/1071800814/libaria_editwidget.o ${OBJECTDIR}/_ext/1071800814/libaria_event.o ${OBJECTDIR}/_ext/1071800814/libaria_input.o ${OBJECTDIR}/_ext/1071800814/libaria_layer.o ${OBJECTDIR}/_ext/1071800814/libaria_list.o ${OBJECTDIR}/_ext/1071800814/libaria_rectarray.o ${OBJECTDIR}/_ext/1071800814/libaria_scheme.o ${OBJECTDIR}/_ext/1071800814/libaria_screen.o ${OBJECTDIR}/_ext/1071800814/libaria_string.o ${OBJECTDIR}/_ext/1071800814/libaria_utils.o ${OBJECTDIR}/_ext/1071800814/libaria_widget.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_skin_classic.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_skin_classic_common.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_arc.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_arc_skin_classic.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_bar_graph.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_bar_graph_skin_classic.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_button.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_button_skin_classic.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_checkbox.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_checkbox_skin_classic.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_circle.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_circle_skin_classic.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_circular_gauge.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_circular_gauge_skin_classic.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_circular_slider.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_circular_slider_skin_classic.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_drawsurface.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_drawsurface_skin_classic.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_gradient.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_gradient_skin_classic.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_groupbox.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_groupbox_skin_classic.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_image.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_image_skin_classic.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_imageplus.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_imageplus_skin_classic.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_imagesequence.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_imagesequence_skin_classic.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_keypad.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_keypad_skin_classic.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_label.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_label_skin_classic.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_line.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_line_skin_classic.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_line_graph.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_line_graph_skin_classic.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_list.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_list_skin_classic.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_listwheel.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_listwheel_skin_classic.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_pie_chart.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_pie_chart_skin_classic.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_progressbar.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_progressbar_skin_classic.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_radial_menu.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_radial_menu_skin_classic.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_radiobutton.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_radiobutton_skin_classic.o ${OBJECTDIR}/_ext/1071800814/libaria_radiobutton_group.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_rectangle.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_rectangle_skin_classic.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_scrollbar.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_scrollbar_skin_classic.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_slider.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_slider_skin_classic.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_textfield.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_textfield_skin_classic.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_touchtest.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_touchtest_skin_classic.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_window.o ${OBJECTDIR}/_ext/1071800814/libaria_widget_window_skin_classic.o ${OBJECTDIR}/_ext/676789875/gfx.o ${OBJECTDIR}/_ext/676789875/gfx_color.o ${OBJECTDIR}/_ext/676789875/gfx_context.o ${OBJECTDIR}/_ext/676789875/gfx_default_impl.o ${OBJECTDIR}/_ext/676789875/gfx_display.o ${OBJECTDIR}/_ext/676789875/gfx_driver_interface.o ${OBJECTDIR}/_ext/676789875/gfx_get.o ${OBJECTDIR}/_ext/676789875/gfx_interface.o ${OBJECTDIR}/_ext/676789875/gfx_layer.o ${OBJECTDIR}/_ext/676789875/gfx_pixel_buffer.o ${OBJECTDIR}/_ext/676789875/gfx_processor_interface.o ${OBJECTDIR}/_ext/676789875/gfx_rect.o ${OBJECTDIR}/_ext/676789875/gfx_util.o ${OBJECTDIR}/_ext/676789875/gfx_set.o ${OBJECTDIR}/_ext/676789875/gfx_color_blend.o ${OBJECTDIR}/_ext/676789875/gfx_color_convert.o ${OBJECTDIR}/_ext/676789875/gfx_color_lerp.o ${OBJECTDIR}/_ext/676789875/gfx_color_value.o ${OBJECTDIR}/_ext/676789875/gfx_draw_arc.o ${OBJECTDIR}/_ext/676789875/gfx_draw_blit.o ${OBJECTDIR}/_ext/676789875/gfx_draw_circle.o ${OBJECTDIR}/_ext/676789875/gfx_draw_ellipse.o ${OBJECTDIR}/_ext/676789875/gfx_draw_line.o ${OBJECTDIR}/_ext/676789875/gfx_draw_pixel.o ${OBJECTDIR}/_ext/676789875/gfx_draw_rect.o ${OBJECTDIR}/_ext/676789875/gfx_draw_stretchblit.o ${OBJECTDIR}/_ext/676789875/gfx_math.o ${OBJECTDIR}/_ext/231205469/sys_int_pic32.o ${OBJECTDIR}/_ext/664138601/drv_pmp_static.o ${OBJECTDIR}/_ext/347121368/drv_gfx_ssd1926.o ${OBJECTDIR}/_ext/1689523328/drv_gfx_ssd1289.o ${OBJECTDIR}/_ext/458109090/libaria_harmony.o ${OBJECTDIR}/_ext/458109090/libaria_init.o ${OBJECTDIR}/_ext/458109090/libaria_events.o ${OBJECTDIR}/_ext/458109090/libaria_macros.o ${OBJECTDIR}/_ext/2065038297/gfx_display_def.o ${OBJECTDIR}/_ext/2065038297/gfx_driver_def.o ${OBJECTDIR}/_ext/2065038297/gfx_processor_def.o ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o ${OBJECTDIR}/_ext/340578644/sys_devcon.o ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o ${OBJECTDIR}/_ext/822048611/sys_ports_static.o ${OBJECTDIR}/_ext/74298950/bsp.o ${OBJECTDIR}/_ext/1688732426/system_init.o ${OBJECTDIR}/_ext/1688732426/system_interrupt.o ${OBJECTDIR}/_ext/1688732426/system_exceptions.o ${OBJECTDIR}/_ext/1688732426/system_tasks.o

# Source Files
SOURCEFILES=../src/app.c ../src/main.c ../../../../../../microchip/harmony/v2_06/third_party/decoder/jidctint/src/jidctint.c ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_jpg_common.c ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_jpg_internal.c ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_jpg_external.c ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_png_external.c ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_png_internal.c ../../../../../../microchip/harmony/v2_06/third_party/decoder/lodepng/lodepng.c ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image.c ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_raw_external.c ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_raw_internal.c ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_rle_external.c ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_rle_internal.c ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_utils.c ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_palette.c ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_string.c ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_string_external.c ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_stringbuffer_external.c ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_string_internal.c ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_string_query.c ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_string_utils.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_array.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_context.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_context_paint.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_draw.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_editwidget.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_event.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_input.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_layer.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_list.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_rectarray.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_scheme.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_screen.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_string.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_utils.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_skin_classic.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_skin_classic_common.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_arc.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_arc_skin_classic.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_bar_graph.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_bar_graph_skin_classic.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_button.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_button_skin_classic.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_checkbox.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_checkbox_skin_classic.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_circle.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_circle_skin_classic.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_circular_gauge.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_circular_gauge_skin_classic.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_circular_slider.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_circular_slider_skin_classic.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_drawsurface.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_drawsurface_skin_classic.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_gradient.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_gradient_skin_classic.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_groupbox.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_groupbox_skin_classic.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_image.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_image_skin_classic.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_imageplus.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_imageplus_skin_classic.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_imagesequence.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_imagesequence_skin_classic.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_keypad.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_keypad_skin_classic.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_label.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_label_skin_classic.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_line.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_line_skin_classic.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_line_graph.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_line_graph_skin_classic.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_list.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_list_skin_classic.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_listwheel.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_listwheel_skin_classic.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_pie_chart.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_pie_chart_skin_classic.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_progressbar.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_progressbar_skin_classic.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_radial_menu.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_radial_menu_skin_classic.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_radiobutton.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_radiobutton_skin_classic.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_radiobutton_group.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_rectangle.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_rectangle_skin_classic.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_scrollbar.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_scrollbar_skin_classic.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_slider.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_slider_skin_classic.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_textfield.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_textfield_skin_classic.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_touchtest.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_touchtest_skin_classic.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_window.c ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_window_skin_classic.c ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx.c ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_color.c ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_context.c ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_default_impl.c ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_display.c ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_driver_interface.c ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_get.c ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_interface.c ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_layer.c ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_pixel_buffer.c ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_processor_interface.c ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_rect.c ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_util.c ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_set.c ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_color_blend.c ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_color_convert.c ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_color_lerp.c ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_color_value.c ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_arc.c ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_blit.c ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_circle.c ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_ellipse.c ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_line.c ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_pixel.c ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_rect.c ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_stretchblit.c ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_math.c ../../../../../../microchip/harmony/v2_06/framework/system/int/src/sys_int_pic32.c ../src/system_config/default/framework/driver/pmp/src/drv_pmp_static.c ../src/system_config/default/framework/gfx/driver/controller/ssd1926/drv_gfx_ssd1926.c ../src/system_config/default/framework/gfx/driver/tcon/ssd1289/drv_gfx_ssd1289.c ../src/system_config/default/framework/gfx/libaria/libaria_harmony.c ../src/system_config/default/framework/gfx/libaria/libaria_init.c ../src/system_config/default/framework/gfx/libaria/libaria_events.c ../src/system_config/default/framework/gfx/libaria/libaria_macros.c ../src/system_config/default/framework/gfx/hal/gfx_display_def.c ../src/system_config/default/framework/gfx/hal/gfx_driver_def.c ../src/system_config/default/framework/gfx/hal/gfx_processor_def.c ../src/system_config/default/framework/system/clk/src/sys_clk_pic32mx.c ../src/system_config/default/framework/system/devcon/src/sys_devcon.c ../src/system_config/default/framework/system/devcon/src/sys_devcon_pic32mx.c ../src/system_config/default/framework/system/ports/src/sys_ports_static.c ../src/system_config/default/bsp/bsp.c ../src/system_config/default/system_init.c ../src/system_config/default/system_interrupt.c ../src/system_config/default/system_exceptions.c ../src/system_config/default/system_tasks.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/take4.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX795F512L
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/default/ef5e40327fc8f9a4550afd019635452806056a4e .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/default/e40a4e60a74ab9b4d47fcb6ab8b8eac45dce759d .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/658260392/jidctint.o: ../../../../../../microchip/harmony/v2_06/third_party/decoder/jidctint/src/jidctint.c  .generated_files/flags/default/f809d2851133beb4ecd30034181289a188d9f64b .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/658260392" 
	@${RM} ${OBJECTDIR}/_ext/658260392/jidctint.o.d 
	@${RM} ${OBJECTDIR}/_ext/658260392/jidctint.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/658260392/jidctint.o.d" -o ${OBJECTDIR}/_ext/658260392/jidctint.o ../../../../../../microchip/harmony/v2_06/third_party/decoder/jidctint/src/jidctint.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1963452113/gfxu_image_jpg_common.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_jpg_common.c  .generated_files/flags/default/acb83b2b44f8c94a084b40356d3e37877211952d .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1963452113" 
	@${RM} ${OBJECTDIR}/_ext/1963452113/gfxu_image_jpg_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/1963452113/gfxu_image_jpg_common.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1963452113/gfxu_image_jpg_common.o.d" -o ${OBJECTDIR}/_ext/1963452113/gfxu_image_jpg_common.o ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_jpg_common.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1963452113/gfxu_image_jpg_internal.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_jpg_internal.c  .generated_files/flags/default/461b3ea1ec1d3e74af1ea67e6833c1af921332ba .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1963452113" 
	@${RM} ${OBJECTDIR}/_ext/1963452113/gfxu_image_jpg_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1963452113/gfxu_image_jpg_internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1963452113/gfxu_image_jpg_internal.o.d" -o ${OBJECTDIR}/_ext/1963452113/gfxu_image_jpg_internal.o ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_jpg_internal.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1963452113/gfxu_image_jpg_external.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_jpg_external.c  .generated_files/flags/default/bd29f0d0a195d9cc021737f0d5d5ef6e4ac8f59 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1963452113" 
	@${RM} ${OBJECTDIR}/_ext/1963452113/gfxu_image_jpg_external.o.d 
	@${RM} ${OBJECTDIR}/_ext/1963452113/gfxu_image_jpg_external.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1963452113/gfxu_image_jpg_external.o.d" -o ${OBJECTDIR}/_ext/1963452113/gfxu_image_jpg_external.o ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_jpg_external.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1963452113/gfxu_image_png_external.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_png_external.c  .generated_files/flags/default/c8351f80a854e2194298b027247e35a5c38662a5 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1963452113" 
	@${RM} ${OBJECTDIR}/_ext/1963452113/gfxu_image_png_external.o.d 
	@${RM} ${OBJECTDIR}/_ext/1963452113/gfxu_image_png_external.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1963452113/gfxu_image_png_external.o.d" -o ${OBJECTDIR}/_ext/1963452113/gfxu_image_png_external.o ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_png_external.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1963452113/gfxu_image_png_internal.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_png_internal.c  .generated_files/flags/default/f9d80c4d4174582c12a99beb28d4426792da4dfe .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1963452113" 
	@${RM} ${OBJECTDIR}/_ext/1963452113/gfxu_image_png_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1963452113/gfxu_image_png_internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1963452113/gfxu_image_png_internal.o.d" -o ${OBJECTDIR}/_ext/1963452113/gfxu_image_png_internal.o ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_png_internal.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/308360523/lodepng.o: ../../../../../../microchip/harmony/v2_06/third_party/decoder/lodepng/lodepng.c  .generated_files/flags/default/5b664dfbb3a81ee0e9caf237e0776860407aa17 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/308360523" 
	@${RM} ${OBJECTDIR}/_ext/308360523/lodepng.o.d 
	@${RM} ${OBJECTDIR}/_ext/308360523/lodepng.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/308360523/lodepng.o.d" -o ${OBJECTDIR}/_ext/308360523/lodepng.o ../../../../../../microchip/harmony/v2_06/third_party/decoder/lodepng/lodepng.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1963452113/gfxu_image.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image.c  .generated_files/flags/default/d59599fff41e1710f1f3cd64260fb01003a1a4e .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1963452113" 
	@${RM} ${OBJECTDIR}/_ext/1963452113/gfxu_image.o.d 
	@${RM} ${OBJECTDIR}/_ext/1963452113/gfxu_image.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1963452113/gfxu_image.o.d" -o ${OBJECTDIR}/_ext/1963452113/gfxu_image.o ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1963452113/gfxu_image_raw_external.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_raw_external.c  .generated_files/flags/default/8343abf44aff7fee70a8f442e8388da2137e5357 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1963452113" 
	@${RM} ${OBJECTDIR}/_ext/1963452113/gfxu_image_raw_external.o.d 
	@${RM} ${OBJECTDIR}/_ext/1963452113/gfxu_image_raw_external.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1963452113/gfxu_image_raw_external.o.d" -o ${OBJECTDIR}/_ext/1963452113/gfxu_image_raw_external.o ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_raw_external.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1963452113/gfxu_image_raw_internal.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_raw_internal.c  .generated_files/flags/default/a5f3364e53b4452bebaccb1422eaac64405ffce0 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1963452113" 
	@${RM} ${OBJECTDIR}/_ext/1963452113/gfxu_image_raw_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1963452113/gfxu_image_raw_internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1963452113/gfxu_image_raw_internal.o.d" -o ${OBJECTDIR}/_ext/1963452113/gfxu_image_raw_internal.o ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_raw_internal.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1963452113/gfxu_image_rle_external.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_rle_external.c  .generated_files/flags/default/a4a212af2fbcdb1a2b696589c8cdb1ef83a63bab .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1963452113" 
	@${RM} ${OBJECTDIR}/_ext/1963452113/gfxu_image_rle_external.o.d 
	@${RM} ${OBJECTDIR}/_ext/1963452113/gfxu_image_rle_external.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1963452113/gfxu_image_rle_external.o.d" -o ${OBJECTDIR}/_ext/1963452113/gfxu_image_rle_external.o ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_rle_external.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1963452113/gfxu_image_rle_internal.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_rle_internal.c  .generated_files/flags/default/9e656898385ebaee7092bdc8d99ca6694e9911ad .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1963452113" 
	@${RM} ${OBJECTDIR}/_ext/1963452113/gfxu_image_rle_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1963452113/gfxu_image_rle_internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1963452113/gfxu_image_rle_internal.o.d" -o ${OBJECTDIR}/_ext/1963452113/gfxu_image_rle_internal.o ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_rle_internal.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1963452113/gfxu_image_utils.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_utils.c  .generated_files/flags/default/9663aced3a8c088fa980f466b957a115a58c0fec .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1963452113" 
	@${RM} ${OBJECTDIR}/_ext/1963452113/gfxu_image_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1963452113/gfxu_image_utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1963452113/gfxu_image_utils.o.d" -o ${OBJECTDIR}/_ext/1963452113/gfxu_image_utils.o ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_utils.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1963452113/gfxu_palette.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_palette.c  .generated_files/flags/default/2fa1f973ee471fbe7b1d84d9d67818f5489a3e4e .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1963452113" 
	@${RM} ${OBJECTDIR}/_ext/1963452113/gfxu_palette.o.d 
	@${RM} ${OBJECTDIR}/_ext/1963452113/gfxu_palette.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1963452113/gfxu_palette.o.d" -o ${OBJECTDIR}/_ext/1963452113/gfxu_palette.o ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_palette.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1963452113/gfxu_string.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_string.c  .generated_files/flags/default/10a9255369fa7cc7c86c5b9600d418d37db30046 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1963452113" 
	@${RM} ${OBJECTDIR}/_ext/1963452113/gfxu_string.o.d 
	@${RM} ${OBJECTDIR}/_ext/1963452113/gfxu_string.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1963452113/gfxu_string.o.d" -o ${OBJECTDIR}/_ext/1963452113/gfxu_string.o ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_string.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1963452113/gfxu_string_external.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_string_external.c  .generated_files/flags/default/208477226d28df1904933154033ee0b53ead8e1a .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1963452113" 
	@${RM} ${OBJECTDIR}/_ext/1963452113/gfxu_string_external.o.d 
	@${RM} ${OBJECTDIR}/_ext/1963452113/gfxu_string_external.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1963452113/gfxu_string_external.o.d" -o ${OBJECTDIR}/_ext/1963452113/gfxu_string_external.o ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_string_external.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1963452113/gfxu_stringbuffer_external.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_stringbuffer_external.c  .generated_files/flags/default/f8cc86618473c03e8f038c5a1a3af4847797ac1d .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1963452113" 
	@${RM} ${OBJECTDIR}/_ext/1963452113/gfxu_stringbuffer_external.o.d 
	@${RM} ${OBJECTDIR}/_ext/1963452113/gfxu_stringbuffer_external.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1963452113/gfxu_stringbuffer_external.o.d" -o ${OBJECTDIR}/_ext/1963452113/gfxu_stringbuffer_external.o ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_stringbuffer_external.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1963452113/gfxu_string_internal.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_string_internal.c  .generated_files/flags/default/4b087b53a35de67b193ede494b0bad8b667df05d .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1963452113" 
	@${RM} ${OBJECTDIR}/_ext/1963452113/gfxu_string_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1963452113/gfxu_string_internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1963452113/gfxu_string_internal.o.d" -o ${OBJECTDIR}/_ext/1963452113/gfxu_string_internal.o ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_string_internal.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1963452113/gfxu_string_query.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_string_query.c  .generated_files/flags/default/91cd2738c7afb4e04f566eadfb4f1ad12f6c57c1 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1963452113" 
	@${RM} ${OBJECTDIR}/_ext/1963452113/gfxu_string_query.o.d 
	@${RM} ${OBJECTDIR}/_ext/1963452113/gfxu_string_query.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1963452113/gfxu_string_query.o.d" -o ${OBJECTDIR}/_ext/1963452113/gfxu_string_query.o ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_string_query.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1963452113/gfxu_string_utils.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_string_utils.c  .generated_files/flags/default/122ef8afd0f36077c4c34815386cbe71db00336a .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1963452113" 
	@${RM} ${OBJECTDIR}/_ext/1963452113/gfxu_string_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1963452113/gfxu_string_utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1963452113/gfxu_string_utils.o.d" -o ${OBJECTDIR}/_ext/1963452113/gfxu_string_utils.o ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_string_utils.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria.c  .generated_files/flags/default/38bbd136d37d209d7a031392b881a98a9c98c9bd .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_array.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_array.c  .generated_files/flags/default/af36afb96a540c94b81d8dbe031b9ff6d96727ac .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_array.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_array.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_array.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_array.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_array.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_context.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_context.c  .generated_files/flags/default/7cc169934be8cdb532721a0b56d3815e9c3ed92 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_context.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_context.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_context.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_context.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_context.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_context_paint.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_context_paint.c  .generated_files/flags/default/e39f13c7e5c67303a55828792e37a5d6ad2dcb4f .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_context_paint.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_context_paint.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_context_paint.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_context_paint.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_context_paint.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_draw.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_draw.c  .generated_files/flags/default/5ada062ec01a917357b363600489563beef70618 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_draw.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_draw.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_draw.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_draw.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_draw.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_editwidget.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_editwidget.c  .generated_files/flags/default/86cfc7877a10a03b709220782b564881c1d70863 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_editwidget.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_editwidget.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_editwidget.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_editwidget.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_editwidget.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_event.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_event.c  .generated_files/flags/default/d45b770484699b91f4f2dfd79ab43d259c30b944 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_event.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_event.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_event.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_event.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_event.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_input.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_input.c  .generated_files/flags/default/c92bed4ef4d37a58caf719120787d2e383186643 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_input.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_input.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_input.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_input.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_input.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_layer.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_layer.c  .generated_files/flags/default/b345a8463f0103930847c1bc5f5004baa8e54522 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_layer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_layer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_layer.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_layer.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_layer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_list.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_list.c  .generated_files/flags/default/1522e613b93d222d92d1c2f62c1feb81747e8767 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_list.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_list.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_list.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_rectarray.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_rectarray.c  .generated_files/flags/default/5d5a2f647e9e5e3fa1ae12748e162ebb2e6f6c86 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_rectarray.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_rectarray.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_rectarray.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_rectarray.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_rectarray.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_scheme.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_scheme.c  .generated_files/flags/default/6acc5d836f763640759222b1bdad351700dacae3 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_scheme.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_scheme.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_scheme.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_scheme.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_scheme.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_screen.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_screen.c  .generated_files/flags/default/aeff48de8e3cb63cc52a2ecc7bf1494dac8dcd7e .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_screen.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_screen.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_screen.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_screen.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_screen.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_string.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_string.c  .generated_files/flags/default/7811e1db26835f2b01cc9189379394a2b83824ac .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_string.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_string.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_string.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_string.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_string.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_utils.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_utils.c  .generated_files/flags/default/102094b7d6d3898e2f6af38a9a9b9c164250be38 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_utils.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_utils.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_utils.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget.c  .generated_files/flags/default/8a607385460ef0e2fafac13518f0f498c0674b2c .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_skin_classic.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_skin_classic.c  .generated_files/flags/default/82f98fec8d291daa0e81481bdbe37394a7842559 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_skin_classic.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_skin_classic_common.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_skin_classic_common.c  .generated_files/flags/default/d3c2dd3ba7a72ccf00858add16c77be22c4f64ec .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_skin_classic_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_skin_classic_common.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_skin_classic_common.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_skin_classic_common.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_skin_classic_common.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_arc.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_arc.c  .generated_files/flags/default/f20e3b5d9258e732d860bd9c067d7b5ca607d789 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_arc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_arc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_arc.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_arc.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_arc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_arc_skin_classic.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_arc_skin_classic.c  .generated_files/flags/default/2813a71e0126bfaee866ed4be7a072571aea1610 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_arc_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_arc_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_arc_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_arc_skin_classic.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_arc_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_bar_graph.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_bar_graph.c  .generated_files/flags/default/bbdfdc956c0c49690514fdc9febf1305ffccce56 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_bar_graph.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_bar_graph.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_bar_graph.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_bar_graph.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_bar_graph.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_bar_graph_skin_classic.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_bar_graph_skin_classic.c  .generated_files/flags/default/cc20f128f2f2d72cc872ec004d1953a38dc955a9 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_bar_graph_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_bar_graph_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_bar_graph_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_bar_graph_skin_classic.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_bar_graph_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_button.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_button.c  .generated_files/flags/default/94d4659c52f29372d231d251a86f22324d26f6eb .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_button.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_button.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_button.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_button.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_button.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_button_skin_classic.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_button_skin_classic.c  .generated_files/flags/default/aeb2fe44a229a0396471382d10da8d3ef3fa44e9 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_button_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_button_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_button_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_button_skin_classic.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_button_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_checkbox.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_checkbox.c  .generated_files/flags/default/5acb3947ac352e2759ccdc07aca5a758c2796665 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_checkbox.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_checkbox.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_checkbox.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_checkbox.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_checkbox.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_checkbox_skin_classic.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_checkbox_skin_classic.c  .generated_files/flags/default/35dcdd3530be969f4c8ba3a9052f7f7b99e33143 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_checkbox_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_checkbox_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_checkbox_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_checkbox_skin_classic.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_checkbox_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_circle.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_circle.c  .generated_files/flags/default/d8c23b0243153a57a555e4fb29a690fe78331cb1 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_circle.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_circle.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_circle.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_circle.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_circle.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_circle_skin_classic.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_circle_skin_classic.c  .generated_files/flags/default/163213dcbefc15f6cadd6247e926f1111e83b9f9 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_circle_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_circle_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_circle_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_circle_skin_classic.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_circle_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_circular_gauge.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_circular_gauge.c  .generated_files/flags/default/752681bb83d120453ae4596babb69a7fb9be9c8e .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_circular_gauge.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_circular_gauge.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_circular_gauge.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_circular_gauge.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_circular_gauge.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_circular_gauge_skin_classic.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_circular_gauge_skin_classic.c  .generated_files/flags/default/f36618bdf4ba99d19feb9db627b239884f68fb0 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_circular_gauge_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_circular_gauge_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_circular_gauge_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_circular_gauge_skin_classic.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_circular_gauge_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_circular_slider.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_circular_slider.c  .generated_files/flags/default/775234c7cb20b1fdf93b5bafa95b6e17c8f436f8 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_circular_slider.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_circular_slider.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_circular_slider.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_circular_slider.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_circular_slider.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_circular_slider_skin_classic.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_circular_slider_skin_classic.c  .generated_files/flags/default/a93341e81d223e45ad42393a5662645d54a8ec17 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_circular_slider_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_circular_slider_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_circular_slider_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_circular_slider_skin_classic.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_circular_slider_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_drawsurface.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_drawsurface.c  .generated_files/flags/default/22e02e38dc22e9b8a4b4fb728ab41913f5b6a081 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_drawsurface.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_drawsurface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_drawsurface.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_drawsurface.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_drawsurface.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_drawsurface_skin_classic.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_drawsurface_skin_classic.c  .generated_files/flags/default/fa70523cb10886ed31ce0e4d83ebea643e3590e2 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_drawsurface_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_drawsurface_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_drawsurface_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_drawsurface_skin_classic.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_drawsurface_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_gradient.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_gradient.c  .generated_files/flags/default/fdff77d92d5f7eb1ecdc5382cfe50768ccf32e39 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_gradient.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_gradient.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_gradient.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_gradient.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_gradient.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_gradient_skin_classic.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_gradient_skin_classic.c  .generated_files/flags/default/f12737d901a9636850aad6fe8e7c7ebdf06d155a .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_gradient_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_gradient_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_gradient_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_gradient_skin_classic.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_gradient_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_groupbox.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_groupbox.c  .generated_files/flags/default/98bff558a845e57095d34bae9f5a8fe175e4b31 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_groupbox.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_groupbox.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_groupbox.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_groupbox.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_groupbox.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_groupbox_skin_classic.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_groupbox_skin_classic.c  .generated_files/flags/default/77d4ff13d41924edd87760c8412d674bfc8392ad .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_groupbox_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_groupbox_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_groupbox_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_groupbox_skin_classic.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_groupbox_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_image.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_image.c  .generated_files/flags/default/41ca87eb76e4744d80aae1c8b33a92e9b1625a0b .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_image.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_image.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_image.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_image.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_image.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_image_skin_classic.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_image_skin_classic.c  .generated_files/flags/default/843f33533eb6d81374da43335c528af226a08344 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_image_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_image_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_image_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_image_skin_classic.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_image_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_imageplus.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_imageplus.c  .generated_files/flags/default/aaeb0ed3c5d220ac2967384c8d0eeb18fd637d51 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_imageplus.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_imageplus.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_imageplus.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_imageplus.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_imageplus.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_imageplus_skin_classic.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_imageplus_skin_classic.c  .generated_files/flags/default/10eacc21bb0b8ee91ae6039af4c2a63dfa5c7ea2 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_imageplus_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_imageplus_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_imageplus_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_imageplus_skin_classic.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_imageplus_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_imagesequence.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_imagesequence.c  .generated_files/flags/default/6fa26d94fd92fbe33f388d6406e99ba117ca4ad4 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_imagesequence.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_imagesequence.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_imagesequence.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_imagesequence.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_imagesequence.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_imagesequence_skin_classic.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_imagesequence_skin_classic.c  .generated_files/flags/default/4d8397f15b2af65a34d791f159110a3b8f5fd613 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_imagesequence_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_imagesequence_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_imagesequence_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_imagesequence_skin_classic.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_imagesequence_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_keypad.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_keypad.c  .generated_files/flags/default/e7cc1bc52855af940d80f15d1ede111c32f5d097 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_keypad.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_keypad.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_keypad.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_keypad.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_keypad.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_keypad_skin_classic.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_keypad_skin_classic.c  .generated_files/flags/default/e9125ff2aee9e731be6b069c822732792989b162 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_keypad_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_keypad_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_keypad_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_keypad_skin_classic.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_keypad_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_label.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_label.c  .generated_files/flags/default/47bfd1d8ab2aa044fc9403b4bbd8c63d00b558ce .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_label.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_label.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_label.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_label.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_label.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_label_skin_classic.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_label_skin_classic.c  .generated_files/flags/default/be72c2b041218a976ebb17283ed6d5f06ec3c57e .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_label_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_label_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_label_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_label_skin_classic.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_label_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_line.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_line.c  .generated_files/flags/default/693f05a109efa4f33ec5fb2e80b5110318c2ad21 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_line.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_line.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_line.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_line.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_line.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_line_skin_classic.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_line_skin_classic.c  .generated_files/flags/default/f16c8ab7c2c45dcb2f26927b7f83ab39c49cca33 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_line_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_line_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_line_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_line_skin_classic.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_line_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_line_graph.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_line_graph.c  .generated_files/flags/default/ff8f290469e228e4d1597cd66aea7bd38a216e1c .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_line_graph.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_line_graph.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_line_graph.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_line_graph.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_line_graph.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_line_graph_skin_classic.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_line_graph_skin_classic.c  .generated_files/flags/default/7098177a6d973b20cb2a8303f85f7d52c501d2d4 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_line_graph_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_line_graph_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_line_graph_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_line_graph_skin_classic.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_line_graph_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_list.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_list.c  .generated_files/flags/default/1918a78fdc5c5ef1695fc203d00a1fc140b446eb .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_list.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_list.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_list.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_list_skin_classic.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_list_skin_classic.c  .generated_files/flags/default/741f38676a7de7263724a102b7ae601e9baa9232 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_list_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_list_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_list_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_list_skin_classic.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_list_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_listwheel.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_listwheel.c  .generated_files/flags/default/51ef6fba3b1a0a965da9e4bb6f357c6393fd9050 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_listwheel.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_listwheel.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_listwheel.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_listwheel.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_listwheel.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_listwheel_skin_classic.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_listwheel_skin_classic.c  .generated_files/flags/default/aa889f2352c9c188f90b2be79c04f46c6e82eb40 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_listwheel_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_listwheel_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_listwheel_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_listwheel_skin_classic.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_listwheel_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_pie_chart.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_pie_chart.c  .generated_files/flags/default/ec3e9615d033b1448be38b674a5661d72565df1d .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_pie_chart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_pie_chart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_pie_chart.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_pie_chart.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_pie_chart.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_pie_chart_skin_classic.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_pie_chart_skin_classic.c  .generated_files/flags/default/f1b37a08959396eca64974d8021a49723c9603d9 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_pie_chart_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_pie_chart_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_pie_chart_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_pie_chart_skin_classic.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_pie_chart_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_progressbar.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_progressbar.c  .generated_files/flags/default/6d818c432ecba3e2243fc004abdb324358699d88 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_progressbar.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_progressbar.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_progressbar.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_progressbar.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_progressbar.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_progressbar_skin_classic.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_progressbar_skin_classic.c  .generated_files/flags/default/b8e382b11a77ad143ce641c3921187b83861ed78 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_progressbar_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_progressbar_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_progressbar_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_progressbar_skin_classic.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_progressbar_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_radial_menu.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_radial_menu.c  .generated_files/flags/default/522d1a3b9c63d22243cb10a0a63d371923c4a2ac .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_radial_menu.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_radial_menu.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_radial_menu.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_radial_menu.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_radial_menu.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_radial_menu_skin_classic.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_radial_menu_skin_classic.c  .generated_files/flags/default/52d8cfd7fdb42ae34b3065ca4c8dc6635deda1dc .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_radial_menu_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_radial_menu_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_radial_menu_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_radial_menu_skin_classic.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_radial_menu_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_radiobutton.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_radiobutton.c  .generated_files/flags/default/23be4a267c5a89f46de6c60d38f9a34e74aa2a78 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_radiobutton.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_radiobutton.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_radiobutton.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_radiobutton.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_radiobutton.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_radiobutton_skin_classic.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_radiobutton_skin_classic.c  .generated_files/flags/default/c0de55f0baffe2539b52a2ece330becd408e4b0c .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_radiobutton_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_radiobutton_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_radiobutton_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_radiobutton_skin_classic.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_radiobutton_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_radiobutton_group.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_radiobutton_group.c  .generated_files/flags/default/a385d9d374e67093e3b7942f808d6e3dc2ba282a .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_radiobutton_group.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_radiobutton_group.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_radiobutton_group.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_radiobutton_group.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_radiobutton_group.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_rectangle.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_rectangle.c  .generated_files/flags/default/58a1f1797dc8e806981001c09d68e464191feff0 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_rectangle.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_rectangle.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_rectangle.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_rectangle.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_rectangle.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_rectangle_skin_classic.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_rectangle_skin_classic.c  .generated_files/flags/default/57aacf223165a648a84170c82bf98dd42ca69ec .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_rectangle_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_rectangle_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_rectangle_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_rectangle_skin_classic.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_rectangle_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_scrollbar.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_scrollbar.c  .generated_files/flags/default/8aa29238fa940940630484fe9bee4f12568380c .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_scrollbar.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_scrollbar.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_scrollbar.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_scrollbar.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_scrollbar.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_scrollbar_skin_classic.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_scrollbar_skin_classic.c  .generated_files/flags/default/de7bba9e9f4bea7512b3dd31349edd475c2870da .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_scrollbar_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_scrollbar_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_scrollbar_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_scrollbar_skin_classic.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_scrollbar_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_slider.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_slider.c  .generated_files/flags/default/57b7bc46a92d88a251da1590efd242aec0d76d08 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_slider.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_slider.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_slider.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_slider.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_slider.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_slider_skin_classic.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_slider_skin_classic.c  .generated_files/flags/default/f6afdf2c9dda942d6dba7e674a83737224a5fbf3 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_slider_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_slider_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_slider_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_slider_skin_classic.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_slider_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_textfield.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_textfield.c  .generated_files/flags/default/c9decc1165347f2037e0d3f7d9ca9f505b04ac18 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_textfield.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_textfield.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_textfield.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_textfield.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_textfield.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_textfield_skin_classic.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_textfield_skin_classic.c  .generated_files/flags/default/4b753c89ba94ed87273bd6ed7042948ddee0593b .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_textfield_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_textfield_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_textfield_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_textfield_skin_classic.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_textfield_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_touchtest.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_touchtest.c  .generated_files/flags/default/239e3f78e5e51001de2414ebf18b0f32230c845c .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_touchtest.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_touchtest.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_touchtest.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_touchtest.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_touchtest.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_touchtest_skin_classic.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_touchtest_skin_classic.c  .generated_files/flags/default/aa0caaa2471f0f730f4daec5e2faaf0d633aa5aa .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_touchtest_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_touchtest_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_touchtest_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_touchtest_skin_classic.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_touchtest_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_window.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_window.c  .generated_files/flags/default/23a006f983fb944b78fe1f2715b648a8edd18db0 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_window.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_window.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_window.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_window.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_window.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_window_skin_classic.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_window_skin_classic.c  .generated_files/flags/default/dd6d34cb467b7558a6287e6be9a1d9bcce1933a6 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_window_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_window_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_window_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_window_skin_classic.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_window_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/676789875/gfx.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx.c  .generated_files/flags/default/84caf1fe4023f107afc3fdb1f025c86684789101 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/676789875" 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx.o.d 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/676789875/gfx.o.d" -o ${OBJECTDIR}/_ext/676789875/gfx.o ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/676789875/gfx_color.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_color.c  .generated_files/flags/default/5d8ce87877871cb32e7a7be6fa3ee190fa8c8113 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/676789875" 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_color.o.d 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_color.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/676789875/gfx_color.o.d" -o ${OBJECTDIR}/_ext/676789875/gfx_color.o ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_color.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/676789875/gfx_context.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_context.c  .generated_files/flags/default/f92d0265e7e6232771213831a0e3997a66177d14 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/676789875" 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_context.o.d 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_context.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/676789875/gfx_context.o.d" -o ${OBJECTDIR}/_ext/676789875/gfx_context.o ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_context.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/676789875/gfx_default_impl.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_default_impl.c  .generated_files/flags/default/bde66c65bd81aff56998ee8577b00ef76ce7c9ba .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/676789875" 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_default_impl.o.d 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_default_impl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/676789875/gfx_default_impl.o.d" -o ${OBJECTDIR}/_ext/676789875/gfx_default_impl.o ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_default_impl.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/676789875/gfx_display.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_display.c  .generated_files/flags/default/452d0c87bc9a2930e94a20daefd02b63d0f34ed9 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/676789875" 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_display.o.d 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_display.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/676789875/gfx_display.o.d" -o ${OBJECTDIR}/_ext/676789875/gfx_display.o ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_display.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/676789875/gfx_driver_interface.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_driver_interface.c  .generated_files/flags/default/118cc5cbb119ecd5f2233913b60947725f14e38b .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/676789875" 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_driver_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_driver_interface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/676789875/gfx_driver_interface.o.d" -o ${OBJECTDIR}/_ext/676789875/gfx_driver_interface.o ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_driver_interface.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/676789875/gfx_get.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_get.c  .generated_files/flags/default/eafdbecc69ea8cb00e6d6df4f6cedcc41a7b6961 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/676789875" 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_get.o.d 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_get.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/676789875/gfx_get.o.d" -o ${OBJECTDIR}/_ext/676789875/gfx_get.o ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_get.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/676789875/gfx_interface.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_interface.c  .generated_files/flags/default/99ec9efdc87e14b947738d750c9ac5b2e80d0c2c .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/676789875" 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_interface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/676789875/gfx_interface.o.d" -o ${OBJECTDIR}/_ext/676789875/gfx_interface.o ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_interface.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/676789875/gfx_layer.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_layer.c  .generated_files/flags/default/161081fc93d0dd6f323d91621cf1c450b374ac69 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/676789875" 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_layer.o.d 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_layer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/676789875/gfx_layer.o.d" -o ${OBJECTDIR}/_ext/676789875/gfx_layer.o ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_layer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/676789875/gfx_pixel_buffer.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_pixel_buffer.c  .generated_files/flags/default/d4ad4028aba7af972fedf2dc6e50014b9c41b13c .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/676789875" 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_pixel_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_pixel_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/676789875/gfx_pixel_buffer.o.d" -o ${OBJECTDIR}/_ext/676789875/gfx_pixel_buffer.o ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_pixel_buffer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/676789875/gfx_processor_interface.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_processor_interface.c  .generated_files/flags/default/4639205083f492bcb93669b61c5032c6b393c8a2 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/676789875" 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_processor_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_processor_interface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/676789875/gfx_processor_interface.o.d" -o ${OBJECTDIR}/_ext/676789875/gfx_processor_interface.o ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_processor_interface.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/676789875/gfx_rect.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_rect.c  .generated_files/flags/default/1d212dfae385dd6645a0074df1e91809beb5b4d9 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/676789875" 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_rect.o.d 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_rect.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/676789875/gfx_rect.o.d" -o ${OBJECTDIR}/_ext/676789875/gfx_rect.o ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_rect.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/676789875/gfx_util.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_util.c  .generated_files/flags/default/b038c1653353eef2ebec5edb7ad6958b7df3128f .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/676789875" 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_util.o.d 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_util.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/676789875/gfx_util.o.d" -o ${OBJECTDIR}/_ext/676789875/gfx_util.o ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_util.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/676789875/gfx_set.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_set.c  .generated_files/flags/default/5f89f2fe60540aafb28fdae2ae58dbecaf546707 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/676789875" 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_set.o.d 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_set.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/676789875/gfx_set.o.d" -o ${OBJECTDIR}/_ext/676789875/gfx_set.o ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_set.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/676789875/gfx_color_blend.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_color_blend.c  .generated_files/flags/default/b410e699760e4c6e52eb852f733d793e79ac6344 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/676789875" 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_color_blend.o.d 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_color_blend.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/676789875/gfx_color_blend.o.d" -o ${OBJECTDIR}/_ext/676789875/gfx_color_blend.o ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_color_blend.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/676789875/gfx_color_convert.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_color_convert.c  .generated_files/flags/default/6ce1c86753a45c7e9f443c3455356dbb5f4d1d4 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/676789875" 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_color_convert.o.d 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_color_convert.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/676789875/gfx_color_convert.o.d" -o ${OBJECTDIR}/_ext/676789875/gfx_color_convert.o ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_color_convert.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/676789875/gfx_color_lerp.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_color_lerp.c  .generated_files/flags/default/f4c249988d8c4889612a17668dee360a0ce14993 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/676789875" 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_color_lerp.o.d 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_color_lerp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/676789875/gfx_color_lerp.o.d" -o ${OBJECTDIR}/_ext/676789875/gfx_color_lerp.o ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_color_lerp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/676789875/gfx_color_value.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_color_value.c  .generated_files/flags/default/3c30c850358076fc0c503d1a9ba23eb80f641da3 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/676789875" 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_color_value.o.d 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_color_value.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/676789875/gfx_color_value.o.d" -o ${OBJECTDIR}/_ext/676789875/gfx_color_value.o ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_color_value.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/676789875/gfx_draw_arc.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_arc.c  .generated_files/flags/default/6e86bae98620f0efd11ddf3713943bdbd5274dd5 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/676789875" 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_draw_arc.o.d 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_draw_arc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/676789875/gfx_draw_arc.o.d" -o ${OBJECTDIR}/_ext/676789875/gfx_draw_arc.o ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_arc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/676789875/gfx_draw_blit.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_blit.c  .generated_files/flags/default/7188cafd60966cb904f6f1f71b75d443fdcf7859 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/676789875" 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_draw_blit.o.d 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_draw_blit.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/676789875/gfx_draw_blit.o.d" -o ${OBJECTDIR}/_ext/676789875/gfx_draw_blit.o ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_blit.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/676789875/gfx_draw_circle.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_circle.c  .generated_files/flags/default/af06806de16764a7c1f7b91eba303b13b78452d0 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/676789875" 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_draw_circle.o.d 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_draw_circle.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/676789875/gfx_draw_circle.o.d" -o ${OBJECTDIR}/_ext/676789875/gfx_draw_circle.o ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_circle.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/676789875/gfx_draw_ellipse.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_ellipse.c  .generated_files/flags/default/9b398204387b831b0d2232aec0e3578454a8e18c .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/676789875" 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_draw_ellipse.o.d 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_draw_ellipse.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/676789875/gfx_draw_ellipse.o.d" -o ${OBJECTDIR}/_ext/676789875/gfx_draw_ellipse.o ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_ellipse.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/676789875/gfx_draw_line.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_line.c  .generated_files/flags/default/e9f252c9d27db647e06928d8e475c879195c84f9 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/676789875" 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_draw_line.o.d 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_draw_line.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/676789875/gfx_draw_line.o.d" -o ${OBJECTDIR}/_ext/676789875/gfx_draw_line.o ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_line.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/676789875/gfx_draw_pixel.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_pixel.c  .generated_files/flags/default/cc303632adc89e144c6e8d50889cc941bd94d0f8 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/676789875" 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_draw_pixel.o.d 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_draw_pixel.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/676789875/gfx_draw_pixel.o.d" -o ${OBJECTDIR}/_ext/676789875/gfx_draw_pixel.o ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_pixel.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/676789875/gfx_draw_rect.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_rect.c  .generated_files/flags/default/2b4f2cdcb0ea8b7c482e1395bea609838ecdbcf6 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/676789875" 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_draw_rect.o.d 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_draw_rect.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/676789875/gfx_draw_rect.o.d" -o ${OBJECTDIR}/_ext/676789875/gfx_draw_rect.o ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_rect.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/676789875/gfx_draw_stretchblit.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_stretchblit.c  .generated_files/flags/default/fddb86fd041bc7630f107f15cfae225da735fa6b .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/676789875" 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_draw_stretchblit.o.d 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_draw_stretchblit.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/676789875/gfx_draw_stretchblit.o.d" -o ${OBJECTDIR}/_ext/676789875/gfx_draw_stretchblit.o ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_stretchblit.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/676789875/gfx_math.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_math.c  .generated_files/flags/default/51749fea1c2df2d73e1f92b1dc0f62d3faa65159 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/676789875" 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_math.o.d 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_math.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/676789875/gfx_math.o.d" -o ${OBJECTDIR}/_ext/676789875/gfx_math.o ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_math.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/231205469/sys_int_pic32.o: ../../../../../../microchip/harmony/v2_06/framework/system/int/src/sys_int_pic32.c  .generated_files/flags/default/595de487168774ced6bf7aa35f8a767a7a378ac4 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/231205469" 
	@${RM} ${OBJECTDIR}/_ext/231205469/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/231205469/sys_int_pic32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/231205469/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/231205469/sys_int_pic32.o ../../../../../../microchip/harmony/v2_06/framework/system/int/src/sys_int_pic32.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/664138601/drv_pmp_static.o: ../src/system_config/default/framework/driver/pmp/src/drv_pmp_static.c  .generated_files/flags/default/55449971162a07bf07929ab638594d1d5ed9cdd2 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/664138601" 
	@${RM} ${OBJECTDIR}/_ext/664138601/drv_pmp_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/664138601/drv_pmp_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/664138601/drv_pmp_static.o.d" -o ${OBJECTDIR}/_ext/664138601/drv_pmp_static.o ../src/system_config/default/framework/driver/pmp/src/drv_pmp_static.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/347121368/drv_gfx_ssd1926.o: ../src/system_config/default/framework/gfx/driver/controller/ssd1926/drv_gfx_ssd1926.c  .generated_files/flags/default/d8ee70c8629092848160fa1a844ff19c263d768e .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/347121368" 
	@${RM} ${OBJECTDIR}/_ext/347121368/drv_gfx_ssd1926.o.d 
	@${RM} ${OBJECTDIR}/_ext/347121368/drv_gfx_ssd1926.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/347121368/drv_gfx_ssd1926.o.d" -o ${OBJECTDIR}/_ext/347121368/drv_gfx_ssd1926.o ../src/system_config/default/framework/gfx/driver/controller/ssd1926/drv_gfx_ssd1926.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1689523328/drv_gfx_ssd1289.o: ../src/system_config/default/framework/gfx/driver/tcon/ssd1289/drv_gfx_ssd1289.c  .generated_files/flags/default/bf2e613741b155a186b11c711b5194784c1b5be1 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1689523328" 
	@${RM} ${OBJECTDIR}/_ext/1689523328/drv_gfx_ssd1289.o.d 
	@${RM} ${OBJECTDIR}/_ext/1689523328/drv_gfx_ssd1289.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1689523328/drv_gfx_ssd1289.o.d" -o ${OBJECTDIR}/_ext/1689523328/drv_gfx_ssd1289.o ../src/system_config/default/framework/gfx/driver/tcon/ssd1289/drv_gfx_ssd1289.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/458109090/libaria_harmony.o: ../src/system_config/default/framework/gfx/libaria/libaria_harmony.c  .generated_files/flags/default/356651dd4514b3ff5cbd973435449eeb6580818d .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/458109090" 
	@${RM} ${OBJECTDIR}/_ext/458109090/libaria_harmony.o.d 
	@${RM} ${OBJECTDIR}/_ext/458109090/libaria_harmony.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/458109090/libaria_harmony.o.d" -o ${OBJECTDIR}/_ext/458109090/libaria_harmony.o ../src/system_config/default/framework/gfx/libaria/libaria_harmony.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/458109090/libaria_init.o: ../src/system_config/default/framework/gfx/libaria/libaria_init.c  .generated_files/flags/default/4d70a4c00b274488ff6812980dff62807f6b6a50 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/458109090" 
	@${RM} ${OBJECTDIR}/_ext/458109090/libaria_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/458109090/libaria_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/458109090/libaria_init.o.d" -o ${OBJECTDIR}/_ext/458109090/libaria_init.o ../src/system_config/default/framework/gfx/libaria/libaria_init.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/458109090/libaria_events.o: ../src/system_config/default/framework/gfx/libaria/libaria_events.c  .generated_files/flags/default/6d52779526082f9281a5f22b2004890d2700ad2a .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/458109090" 
	@${RM} ${OBJECTDIR}/_ext/458109090/libaria_events.o.d 
	@${RM} ${OBJECTDIR}/_ext/458109090/libaria_events.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/458109090/libaria_events.o.d" -o ${OBJECTDIR}/_ext/458109090/libaria_events.o ../src/system_config/default/framework/gfx/libaria/libaria_events.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/458109090/libaria_macros.o: ../src/system_config/default/framework/gfx/libaria/libaria_macros.c  .generated_files/flags/default/30d104aba802e6638830785b6cbb82eb2aa2362 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/458109090" 
	@${RM} ${OBJECTDIR}/_ext/458109090/libaria_macros.o.d 
	@${RM} ${OBJECTDIR}/_ext/458109090/libaria_macros.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/458109090/libaria_macros.o.d" -o ${OBJECTDIR}/_ext/458109090/libaria_macros.o ../src/system_config/default/framework/gfx/libaria/libaria_macros.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2065038297/gfx_display_def.o: ../src/system_config/default/framework/gfx/hal/gfx_display_def.c  .generated_files/flags/default/6eda88302bb4be79d29280994606239a6279a10f .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/2065038297" 
	@${RM} ${OBJECTDIR}/_ext/2065038297/gfx_display_def.o.d 
	@${RM} ${OBJECTDIR}/_ext/2065038297/gfx_display_def.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/2065038297/gfx_display_def.o.d" -o ${OBJECTDIR}/_ext/2065038297/gfx_display_def.o ../src/system_config/default/framework/gfx/hal/gfx_display_def.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2065038297/gfx_driver_def.o: ../src/system_config/default/framework/gfx/hal/gfx_driver_def.c  .generated_files/flags/default/1f6fe9ec8f589d2d3cbbeea90f37e98a0ce58f30 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/2065038297" 
	@${RM} ${OBJECTDIR}/_ext/2065038297/gfx_driver_def.o.d 
	@${RM} ${OBJECTDIR}/_ext/2065038297/gfx_driver_def.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/2065038297/gfx_driver_def.o.d" -o ${OBJECTDIR}/_ext/2065038297/gfx_driver_def.o ../src/system_config/default/framework/gfx/hal/gfx_driver_def.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2065038297/gfx_processor_def.o: ../src/system_config/default/framework/gfx/hal/gfx_processor_def.c  .generated_files/flags/default/aaf6472dee12574d47d5aec0dedcc2c8dd55448c .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/2065038297" 
	@${RM} ${OBJECTDIR}/_ext/2065038297/gfx_processor_def.o.d 
	@${RM} ${OBJECTDIR}/_ext/2065038297/gfx_processor_def.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/2065038297/gfx_processor_def.o.d" -o ${OBJECTDIR}/_ext/2065038297/gfx_processor_def.o ../src/system_config/default/framework/gfx/hal/gfx_processor_def.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o: ../src/system_config/default/framework/system/clk/src/sys_clk_pic32mx.c  .generated_files/flags/default/43144dbf5a0629ad427a4602ac1657e3b01d228a .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/639803181" 
	@${RM} ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o.d" -o ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o ../src/system_config/default/framework/system/clk/src/sys_clk_pic32mx.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/340578644/sys_devcon.o: ../src/system_config/default/framework/system/devcon/src/sys_devcon.c  .generated_files/flags/default/6e2662a4b73beb1c36d485497b85778dc300a23 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/340578644" 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/340578644/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/340578644/sys_devcon.o ../src/system_config/default/framework/system/devcon/src/sys_devcon.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o: ../src/system_config/default/framework/system/devcon/src/sys_devcon_pic32mx.c  .generated_files/flags/default/571188945c20f46f211e36a4ba951d75e7c9b13b .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/340578644" 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o.d" -o ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o ../src/system_config/default/framework/system/devcon/src/sys_devcon_pic32mx.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/822048611/sys_ports_static.o: ../src/system_config/default/framework/system/ports/src/sys_ports_static.c  .generated_files/flags/default/7c5862081d90cc4d78d9b12624aa098ca9fd5eed .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/822048611" 
	@${RM} ${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/822048611/sys_ports_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/822048611/sys_ports_static.o ../src/system_config/default/framework/system/ports/src/sys_ports_static.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/74298950/bsp.o: ../src/system_config/default/bsp/bsp.c  .generated_files/flags/default/b3e6dc7abee29e860d5afb856774119257324dbf .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/74298950" 
	@${RM} ${OBJECTDIR}/_ext/74298950/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/74298950/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/74298950/bsp.o.d" -o ${OBJECTDIR}/_ext/74298950/bsp.o ../src/system_config/default/bsp/bsp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1688732426/system_init.o: ../src/system_config/default/system_init.c  .generated_files/flags/default/e127907b092610e25b355b71aa8536f636d808ad .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_init.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_init.o ../src/system_config/default/system_init.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1688732426/system_interrupt.o: ../src/system_config/default/system_interrupt.c  .generated_files/flags/default/f052615ec22603d2d1867e173fb09ca477c61cd7 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_interrupt.o ../src/system_config/default/system_interrupt.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1688732426/system_exceptions.o: ../src/system_config/default/system_exceptions.c  .generated_files/flags/default/da23d1ee4c8677d4c034c123afc4ed4a1de67f .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_exceptions.o ../src/system_config/default/system_exceptions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1688732426/system_tasks.o: ../src/system_config/default/system_tasks.c  .generated_files/flags/default/e697263b3875d198849451e58e48e91a66445224 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_tasks.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_tasks.o ../src/system_config/default/system_tasks.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/default/e5dd1d683e4e0cd56df3e5ed150779494fa5b248 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/default/d5c9aa75bfa524dd9b380e6328eb10f0f11325f7 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/658260392/jidctint.o: ../../../../../../microchip/harmony/v2_06/third_party/decoder/jidctint/src/jidctint.c  .generated_files/flags/default/c4eba50f698a7cbea8070ef62be60ac7a604b16a .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/658260392" 
	@${RM} ${OBJECTDIR}/_ext/658260392/jidctint.o.d 
	@${RM} ${OBJECTDIR}/_ext/658260392/jidctint.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/658260392/jidctint.o.d" -o ${OBJECTDIR}/_ext/658260392/jidctint.o ../../../../../../microchip/harmony/v2_06/third_party/decoder/jidctint/src/jidctint.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1963452113/gfxu_image_jpg_common.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_jpg_common.c  .generated_files/flags/default/4e175da8ce5207af1f4ecbcb3753e0bf0693c199 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1963452113" 
	@${RM} ${OBJECTDIR}/_ext/1963452113/gfxu_image_jpg_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/1963452113/gfxu_image_jpg_common.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1963452113/gfxu_image_jpg_common.o.d" -o ${OBJECTDIR}/_ext/1963452113/gfxu_image_jpg_common.o ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_jpg_common.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1963452113/gfxu_image_jpg_internal.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_jpg_internal.c  .generated_files/flags/default/6225321df5f1c8479bba4627aaac3cccb0eb1e0c .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1963452113" 
	@${RM} ${OBJECTDIR}/_ext/1963452113/gfxu_image_jpg_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1963452113/gfxu_image_jpg_internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1963452113/gfxu_image_jpg_internal.o.d" -o ${OBJECTDIR}/_ext/1963452113/gfxu_image_jpg_internal.o ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_jpg_internal.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1963452113/gfxu_image_jpg_external.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_jpg_external.c  .generated_files/flags/default/a76844ceb06e8679fd6bc537d8f2e62bded8a68 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1963452113" 
	@${RM} ${OBJECTDIR}/_ext/1963452113/gfxu_image_jpg_external.o.d 
	@${RM} ${OBJECTDIR}/_ext/1963452113/gfxu_image_jpg_external.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1963452113/gfxu_image_jpg_external.o.d" -o ${OBJECTDIR}/_ext/1963452113/gfxu_image_jpg_external.o ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_jpg_external.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1963452113/gfxu_image_png_external.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_png_external.c  .generated_files/flags/default/7c6ad3658d7267176bda697e177172a8405e1c8a .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1963452113" 
	@${RM} ${OBJECTDIR}/_ext/1963452113/gfxu_image_png_external.o.d 
	@${RM} ${OBJECTDIR}/_ext/1963452113/gfxu_image_png_external.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1963452113/gfxu_image_png_external.o.d" -o ${OBJECTDIR}/_ext/1963452113/gfxu_image_png_external.o ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_png_external.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1963452113/gfxu_image_png_internal.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_png_internal.c  .generated_files/flags/default/af935cbc3e9c8c030b70fdac490d4435dd4730cf .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1963452113" 
	@${RM} ${OBJECTDIR}/_ext/1963452113/gfxu_image_png_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1963452113/gfxu_image_png_internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1963452113/gfxu_image_png_internal.o.d" -o ${OBJECTDIR}/_ext/1963452113/gfxu_image_png_internal.o ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_png_internal.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/308360523/lodepng.o: ../../../../../../microchip/harmony/v2_06/third_party/decoder/lodepng/lodepng.c  .generated_files/flags/default/be58e2ab900e82f82f972f76731dabc2d2fbfed7 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/308360523" 
	@${RM} ${OBJECTDIR}/_ext/308360523/lodepng.o.d 
	@${RM} ${OBJECTDIR}/_ext/308360523/lodepng.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/308360523/lodepng.o.d" -o ${OBJECTDIR}/_ext/308360523/lodepng.o ../../../../../../microchip/harmony/v2_06/third_party/decoder/lodepng/lodepng.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1963452113/gfxu_image.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image.c  .generated_files/flags/default/1b8fc106a5642a5b6d2700b036b37f2786dc5b2d .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1963452113" 
	@${RM} ${OBJECTDIR}/_ext/1963452113/gfxu_image.o.d 
	@${RM} ${OBJECTDIR}/_ext/1963452113/gfxu_image.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1963452113/gfxu_image.o.d" -o ${OBJECTDIR}/_ext/1963452113/gfxu_image.o ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1963452113/gfxu_image_raw_external.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_raw_external.c  .generated_files/flags/default/ee645a2d99b76dac9caac932f9eeb0b7a01b5fc5 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1963452113" 
	@${RM} ${OBJECTDIR}/_ext/1963452113/gfxu_image_raw_external.o.d 
	@${RM} ${OBJECTDIR}/_ext/1963452113/gfxu_image_raw_external.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1963452113/gfxu_image_raw_external.o.d" -o ${OBJECTDIR}/_ext/1963452113/gfxu_image_raw_external.o ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_raw_external.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1963452113/gfxu_image_raw_internal.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_raw_internal.c  .generated_files/flags/default/51019cb7d19772cde01c482f139d3a38af8bcf2 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1963452113" 
	@${RM} ${OBJECTDIR}/_ext/1963452113/gfxu_image_raw_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1963452113/gfxu_image_raw_internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1963452113/gfxu_image_raw_internal.o.d" -o ${OBJECTDIR}/_ext/1963452113/gfxu_image_raw_internal.o ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_raw_internal.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1963452113/gfxu_image_rle_external.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_rle_external.c  .generated_files/flags/default/b2322b2484e5f9c64890e2c9c75c9a1ddb3290f5 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1963452113" 
	@${RM} ${OBJECTDIR}/_ext/1963452113/gfxu_image_rle_external.o.d 
	@${RM} ${OBJECTDIR}/_ext/1963452113/gfxu_image_rle_external.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1963452113/gfxu_image_rle_external.o.d" -o ${OBJECTDIR}/_ext/1963452113/gfxu_image_rle_external.o ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_rle_external.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1963452113/gfxu_image_rle_internal.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_rle_internal.c  .generated_files/flags/default/21fce35a159ce5e3a9970ff883ff4881884e2e71 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1963452113" 
	@${RM} ${OBJECTDIR}/_ext/1963452113/gfxu_image_rle_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1963452113/gfxu_image_rle_internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1963452113/gfxu_image_rle_internal.o.d" -o ${OBJECTDIR}/_ext/1963452113/gfxu_image_rle_internal.o ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_rle_internal.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1963452113/gfxu_image_utils.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_utils.c  .generated_files/flags/default/3c233b36a9f6aea47c37adff1c245055723daeb8 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1963452113" 
	@${RM} ${OBJECTDIR}/_ext/1963452113/gfxu_image_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1963452113/gfxu_image_utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1963452113/gfxu_image_utils.o.d" -o ${OBJECTDIR}/_ext/1963452113/gfxu_image_utils.o ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_utils.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1963452113/gfxu_palette.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_palette.c  .generated_files/flags/default/67f3756c9018468852d237ff6fd8be8b0448c2f .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1963452113" 
	@${RM} ${OBJECTDIR}/_ext/1963452113/gfxu_palette.o.d 
	@${RM} ${OBJECTDIR}/_ext/1963452113/gfxu_palette.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1963452113/gfxu_palette.o.d" -o ${OBJECTDIR}/_ext/1963452113/gfxu_palette.o ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_palette.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1963452113/gfxu_string.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_string.c  .generated_files/flags/default/b1923b58552eebff1b2fcbfd53e3705235acac53 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1963452113" 
	@${RM} ${OBJECTDIR}/_ext/1963452113/gfxu_string.o.d 
	@${RM} ${OBJECTDIR}/_ext/1963452113/gfxu_string.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1963452113/gfxu_string.o.d" -o ${OBJECTDIR}/_ext/1963452113/gfxu_string.o ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_string.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1963452113/gfxu_string_external.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_string_external.c  .generated_files/flags/default/d881cc3a62266e5c12dee6a88bc54f8b92c8dcd .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1963452113" 
	@${RM} ${OBJECTDIR}/_ext/1963452113/gfxu_string_external.o.d 
	@${RM} ${OBJECTDIR}/_ext/1963452113/gfxu_string_external.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1963452113/gfxu_string_external.o.d" -o ${OBJECTDIR}/_ext/1963452113/gfxu_string_external.o ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_string_external.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1963452113/gfxu_stringbuffer_external.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_stringbuffer_external.c  .generated_files/flags/default/1bc93c3054879f12eaae8094e286a037eab5d76b .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1963452113" 
	@${RM} ${OBJECTDIR}/_ext/1963452113/gfxu_stringbuffer_external.o.d 
	@${RM} ${OBJECTDIR}/_ext/1963452113/gfxu_stringbuffer_external.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1963452113/gfxu_stringbuffer_external.o.d" -o ${OBJECTDIR}/_ext/1963452113/gfxu_stringbuffer_external.o ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_stringbuffer_external.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1963452113/gfxu_string_internal.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_string_internal.c  .generated_files/flags/default/2de8e503ccdef5839c6012b4844d1079b5a7b59c .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1963452113" 
	@${RM} ${OBJECTDIR}/_ext/1963452113/gfxu_string_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1963452113/gfxu_string_internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1963452113/gfxu_string_internal.o.d" -o ${OBJECTDIR}/_ext/1963452113/gfxu_string_internal.o ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_string_internal.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1963452113/gfxu_string_query.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_string_query.c  .generated_files/flags/default/478d0a8abc38175fb5be6edc99c9af996796f203 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1963452113" 
	@${RM} ${OBJECTDIR}/_ext/1963452113/gfxu_string_query.o.d 
	@${RM} ${OBJECTDIR}/_ext/1963452113/gfxu_string_query.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1963452113/gfxu_string_query.o.d" -o ${OBJECTDIR}/_ext/1963452113/gfxu_string_query.o ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_string_query.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1963452113/gfxu_string_utils.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_string_utils.c  .generated_files/flags/default/5204e93baa256d0779fde56e5bdeab84a5388abb .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1963452113" 
	@${RM} ${OBJECTDIR}/_ext/1963452113/gfxu_string_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1963452113/gfxu_string_utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1963452113/gfxu_string_utils.o.d" -o ${OBJECTDIR}/_ext/1963452113/gfxu_string_utils.o ../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_string_utils.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria.c  .generated_files/flags/default/ed69bae52a322934873f0b61e6b966c3695b95fb .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_array.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_array.c  .generated_files/flags/default/752e37a21fa08ca65e1ac4f1a24f8d2ca66b08f4 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_array.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_array.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_array.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_array.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_array.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_context.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_context.c  .generated_files/flags/default/92d849178b91bd67530eeda17c7cb6583ccdf39a .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_context.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_context.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_context.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_context.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_context.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_context_paint.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_context_paint.c  .generated_files/flags/default/52f48249669fa43f69324540b545e6da848a9322 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_context_paint.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_context_paint.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_context_paint.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_context_paint.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_context_paint.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_draw.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_draw.c  .generated_files/flags/default/e8ddf73763a37c8c4f184b8a78b8b029c94d1681 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_draw.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_draw.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_draw.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_draw.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_draw.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_editwidget.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_editwidget.c  .generated_files/flags/default/a4cb86a7b41cebb4a8ac7a875a05d041dca652f3 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_editwidget.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_editwidget.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_editwidget.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_editwidget.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_editwidget.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_event.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_event.c  .generated_files/flags/default/8b4851873a43fdbf24b1c7663b32d5fd9ebc785f .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_event.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_event.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_event.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_event.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_event.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_input.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_input.c  .generated_files/flags/default/68e7de9cf9ee2aa59629927a411b2caba15531cf .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_input.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_input.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_input.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_input.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_input.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_layer.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_layer.c  .generated_files/flags/default/31ffeb1b48e65fa566289ac31fba2219304c470c .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_layer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_layer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_layer.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_layer.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_layer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_list.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_list.c  .generated_files/flags/default/fee1c7a8d978c99895d002ca541f1a3ca0730ed4 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_list.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_list.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_list.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_rectarray.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_rectarray.c  .generated_files/flags/default/1164641c2da1aa0640117f31f5655e5383ebbe4f .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_rectarray.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_rectarray.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_rectarray.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_rectarray.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_rectarray.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_scheme.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_scheme.c  .generated_files/flags/default/1541901b195fbc6867dadf4214b0b3eac4760465 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_scheme.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_scheme.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_scheme.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_scheme.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_scheme.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_screen.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_screen.c  .generated_files/flags/default/ea49e91818aabed9c06f5aa9a793b4f171623038 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_screen.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_screen.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_screen.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_screen.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_screen.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_string.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_string.c  .generated_files/flags/default/a71847bdaacb317bcec95f6af4ee486638ddef7e .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_string.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_string.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_string.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_string.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_string.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_utils.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_utils.c  .generated_files/flags/default/97fcee03b59fa21a1356ab42fb2b9ee92206877c .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_utils.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_utils.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_utils.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget.c  .generated_files/flags/default/55d7915910ea86768b2d21f1820f742d7d494362 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_skin_classic.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_skin_classic.c  .generated_files/flags/default/225c8d653f897d50943950010529f79ab4b89333 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_skin_classic.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_skin_classic_common.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_skin_classic_common.c  .generated_files/flags/default/4c8dc6c683a494e64f4ec52fd5a358328c1e01c4 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_skin_classic_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_skin_classic_common.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_skin_classic_common.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_skin_classic_common.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_skin_classic_common.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_arc.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_arc.c  .generated_files/flags/default/dbbbff80708835734ec6b62cc81d59d45de36575 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_arc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_arc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_arc.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_arc.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_arc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_arc_skin_classic.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_arc_skin_classic.c  .generated_files/flags/default/f2828d00916aa2e9a2320b6cb4b08fe027223feb .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_arc_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_arc_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_arc_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_arc_skin_classic.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_arc_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_bar_graph.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_bar_graph.c  .generated_files/flags/default/5a3f46c8128286135ea391b0f70eaacb3993150c .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_bar_graph.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_bar_graph.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_bar_graph.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_bar_graph.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_bar_graph.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_bar_graph_skin_classic.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_bar_graph_skin_classic.c  .generated_files/flags/default/65a8c5eb0ea55180cf1f3c120c32dfe8f5563780 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_bar_graph_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_bar_graph_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_bar_graph_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_bar_graph_skin_classic.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_bar_graph_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_button.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_button.c  .generated_files/flags/default/c222d5ec5ea2c166ce9276069239b70ea851e495 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_button.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_button.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_button.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_button.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_button.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_button_skin_classic.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_button_skin_classic.c  .generated_files/flags/default/6f17a33cb8930d7012d9f1547252e0bf3058225d .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_button_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_button_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_button_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_button_skin_classic.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_button_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_checkbox.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_checkbox.c  .generated_files/flags/default/9a22638e342de64fecff5a65cd0bab3ae5b1a55 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_checkbox.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_checkbox.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_checkbox.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_checkbox.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_checkbox.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_checkbox_skin_classic.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_checkbox_skin_classic.c  .generated_files/flags/default/47833fb882922939343dfc5c8a6d17564defbc4a .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_checkbox_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_checkbox_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_checkbox_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_checkbox_skin_classic.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_checkbox_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_circle.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_circle.c  .generated_files/flags/default/98c9919d8ac63d0c3274fb86cb79679d4ac1065d .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_circle.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_circle.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_circle.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_circle.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_circle.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_circle_skin_classic.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_circle_skin_classic.c  .generated_files/flags/default/6fe9d09c75053bf91352f9065c9f5e2a803dc25b .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_circle_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_circle_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_circle_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_circle_skin_classic.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_circle_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_circular_gauge.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_circular_gauge.c  .generated_files/flags/default/1dc6dd4bbed1352e4ffcba7d14e9e2523e093992 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_circular_gauge.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_circular_gauge.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_circular_gauge.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_circular_gauge.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_circular_gauge.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_circular_gauge_skin_classic.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_circular_gauge_skin_classic.c  .generated_files/flags/default/5f124397e84e1d48664d53fb8015c8ffd07eafd3 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_circular_gauge_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_circular_gauge_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_circular_gauge_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_circular_gauge_skin_classic.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_circular_gauge_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_circular_slider.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_circular_slider.c  .generated_files/flags/default/76b77b9aa3962b1d964af3266d00993c49d5c0a7 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_circular_slider.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_circular_slider.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_circular_slider.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_circular_slider.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_circular_slider.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_circular_slider_skin_classic.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_circular_slider_skin_classic.c  .generated_files/flags/default/90786fc3e280be5881743c983e4ec3064b9ca45e .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_circular_slider_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_circular_slider_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_circular_slider_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_circular_slider_skin_classic.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_circular_slider_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_drawsurface.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_drawsurface.c  .generated_files/flags/default/db1653e36b4e4f146552f617040fd14d4f2c6b77 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_drawsurface.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_drawsurface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_drawsurface.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_drawsurface.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_drawsurface.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_drawsurface_skin_classic.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_drawsurface_skin_classic.c  .generated_files/flags/default/8e499b7ef0e1ce169457cc87bfc43a618898ed22 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_drawsurface_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_drawsurface_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_drawsurface_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_drawsurface_skin_classic.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_drawsurface_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_gradient.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_gradient.c  .generated_files/flags/default/89ec59e07b2290463e2a8833bd9c6bd0f46d8abe .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_gradient.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_gradient.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_gradient.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_gradient.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_gradient.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_gradient_skin_classic.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_gradient_skin_classic.c  .generated_files/flags/default/f81eb59fea21372cd2399e54704a614a91d55851 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_gradient_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_gradient_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_gradient_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_gradient_skin_classic.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_gradient_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_groupbox.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_groupbox.c  .generated_files/flags/default/ccadb12bbbdc9ff78fe7d3ca60997e14777c249e .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_groupbox.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_groupbox.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_groupbox.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_groupbox.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_groupbox.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_groupbox_skin_classic.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_groupbox_skin_classic.c  .generated_files/flags/default/ee10c365328918fc3f3ce867823a856fa64a4df7 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_groupbox_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_groupbox_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_groupbox_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_groupbox_skin_classic.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_groupbox_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_image.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_image.c  .generated_files/flags/default/ad5c41abc3743147be5194fd7fe30fc401b156a7 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_image.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_image.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_image.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_image.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_image.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_image_skin_classic.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_image_skin_classic.c  .generated_files/flags/default/e324d33423cfc062c28296635922431c2e25c611 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_image_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_image_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_image_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_image_skin_classic.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_image_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_imageplus.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_imageplus.c  .generated_files/flags/default/3ac8c67bae2355bd91093e959b8f8af1f3162a92 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_imageplus.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_imageplus.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_imageplus.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_imageplus.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_imageplus.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_imageplus_skin_classic.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_imageplus_skin_classic.c  .generated_files/flags/default/dd733d0a848f3d70121b8f35c2a83561d7414d3e .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_imageplus_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_imageplus_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_imageplus_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_imageplus_skin_classic.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_imageplus_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_imagesequence.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_imagesequence.c  .generated_files/flags/default/65d1d8f7ade13940c9ae38c0a226af6c4142f4a6 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_imagesequence.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_imagesequence.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_imagesequence.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_imagesequence.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_imagesequence.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_imagesequence_skin_classic.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_imagesequence_skin_classic.c  .generated_files/flags/default/e5396bcbc7c37a77fcf3cac6dc5369b1214fece2 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_imagesequence_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_imagesequence_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_imagesequence_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_imagesequence_skin_classic.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_imagesequence_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_keypad.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_keypad.c  .generated_files/flags/default/fb246d5533dbad6ce05966c7112a2929d3d6c013 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_keypad.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_keypad.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_keypad.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_keypad.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_keypad.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_keypad_skin_classic.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_keypad_skin_classic.c  .generated_files/flags/default/3c42d268050b1c742191a2caa76faff41b2f0de .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_keypad_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_keypad_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_keypad_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_keypad_skin_classic.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_keypad_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_label.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_label.c  .generated_files/flags/default/bd3b0d364ccd703919164c6f8e34532b22fe50dc .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_label.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_label.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_label.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_label.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_label.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_label_skin_classic.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_label_skin_classic.c  .generated_files/flags/default/544e36e05e0917e56352b79bed32822a30fc74dd .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_label_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_label_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_label_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_label_skin_classic.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_label_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_line.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_line.c  .generated_files/flags/default/82034bd3fa19632fdb9e27bfb8782db831f479c6 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_line.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_line.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_line.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_line.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_line.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_line_skin_classic.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_line_skin_classic.c  .generated_files/flags/default/d221f32f5682a1917dfc2ac133202e66d43fad36 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_line_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_line_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_line_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_line_skin_classic.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_line_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_line_graph.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_line_graph.c  .generated_files/flags/default/1c6021d64df52c7456ac93a103f33c5e81dd9cad .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_line_graph.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_line_graph.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_line_graph.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_line_graph.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_line_graph.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_line_graph_skin_classic.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_line_graph_skin_classic.c  .generated_files/flags/default/fc1fee61083999dd470aed329413e4692352d604 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_line_graph_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_line_graph_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_line_graph_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_line_graph_skin_classic.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_line_graph_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_list.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_list.c  .generated_files/flags/default/bb380fca7b952239186651f6c3bd90f55916a2ce .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_list.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_list.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_list.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_list_skin_classic.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_list_skin_classic.c  .generated_files/flags/default/98f8ee2a01c87c646555adbf12301c39b42de3cc .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_list_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_list_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_list_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_list_skin_classic.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_list_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_listwheel.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_listwheel.c  .generated_files/flags/default/ffdd1b6a9d4727966803f178aa28278bb2e73354 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_listwheel.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_listwheel.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_listwheel.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_listwheel.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_listwheel.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_listwheel_skin_classic.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_listwheel_skin_classic.c  .generated_files/flags/default/67229c706c8cc4cfece6aebfd1ad294c1a062a9b .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_listwheel_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_listwheel_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_listwheel_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_listwheel_skin_classic.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_listwheel_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_pie_chart.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_pie_chart.c  .generated_files/flags/default/18140c9d97a7f812f74d6d830599dfecf467c2b .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_pie_chart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_pie_chart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_pie_chart.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_pie_chart.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_pie_chart.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_pie_chart_skin_classic.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_pie_chart_skin_classic.c  .generated_files/flags/default/1a1b4954d50e2f0752816366bfb13c38537690e2 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_pie_chart_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_pie_chart_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_pie_chart_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_pie_chart_skin_classic.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_pie_chart_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_progressbar.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_progressbar.c  .generated_files/flags/default/8e9cf29f2dd64a9948dc9a80aa0b98b668c371f1 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_progressbar.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_progressbar.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_progressbar.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_progressbar.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_progressbar.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_progressbar_skin_classic.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_progressbar_skin_classic.c  .generated_files/flags/default/9e37b3b78fef356f6cebef053fbbc7adcceca12e .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_progressbar_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_progressbar_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_progressbar_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_progressbar_skin_classic.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_progressbar_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_radial_menu.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_radial_menu.c  .generated_files/flags/default/d12a60a021c409e77ad40c5d21d79feeea99a062 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_radial_menu.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_radial_menu.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_radial_menu.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_radial_menu.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_radial_menu.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_radial_menu_skin_classic.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_radial_menu_skin_classic.c  .generated_files/flags/default/d625b344d1e57ec387fd17a8d1eb3c4b190b214d .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_radial_menu_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_radial_menu_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_radial_menu_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_radial_menu_skin_classic.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_radial_menu_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_radiobutton.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_radiobutton.c  .generated_files/flags/default/67eaa2280feab4f0724b0fe541fc557d1c1f8f17 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_radiobutton.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_radiobutton.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_radiobutton.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_radiobutton.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_radiobutton.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_radiobutton_skin_classic.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_radiobutton_skin_classic.c  .generated_files/flags/default/d72e83df2301ca446ed5bf44b2007af55b32a36c .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_radiobutton_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_radiobutton_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_radiobutton_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_radiobutton_skin_classic.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_radiobutton_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_radiobutton_group.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_radiobutton_group.c  .generated_files/flags/default/182e78aa4aaa6aa7e7824115e927db300fc013d4 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_radiobutton_group.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_radiobutton_group.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_radiobutton_group.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_radiobutton_group.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_radiobutton_group.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_rectangle.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_rectangle.c  .generated_files/flags/default/9336b79b0e0954eb53dde2795c5bfb0f1f87bd01 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_rectangle.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_rectangle.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_rectangle.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_rectangle.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_rectangle.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_rectangle_skin_classic.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_rectangle_skin_classic.c  .generated_files/flags/default/922531b269167c417c8de8bc823ee47517576fca .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_rectangle_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_rectangle_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_rectangle_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_rectangle_skin_classic.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_rectangle_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_scrollbar.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_scrollbar.c  .generated_files/flags/default/ce1dc7000789c3cd66d8aed5c4c9f9c38f979dba .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_scrollbar.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_scrollbar.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_scrollbar.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_scrollbar.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_scrollbar.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_scrollbar_skin_classic.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_scrollbar_skin_classic.c  .generated_files/flags/default/7abca33b069e3d2c7c3760f393ba96d017aa9008 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_scrollbar_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_scrollbar_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_scrollbar_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_scrollbar_skin_classic.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_scrollbar_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_slider.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_slider.c  .generated_files/flags/default/f153076aee6440a1836876fef915b08ef1e40d55 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_slider.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_slider.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_slider.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_slider.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_slider.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_slider_skin_classic.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_slider_skin_classic.c  .generated_files/flags/default/caef75800870b7f08e10a233501a29d8d1c9c2a .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_slider_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_slider_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_slider_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_slider_skin_classic.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_slider_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_textfield.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_textfield.c  .generated_files/flags/default/42d12279a80e4c8d4bd9d231b7f9e0801c5f3a0a .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_textfield.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_textfield.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_textfield.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_textfield.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_textfield.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_textfield_skin_classic.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_textfield_skin_classic.c  .generated_files/flags/default/3b8eeaca916a9e74156918461771983f3eb1b852 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_textfield_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_textfield_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_textfield_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_textfield_skin_classic.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_textfield_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_touchtest.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_touchtest.c  .generated_files/flags/default/f5f6a41413648bbd87abbbcbee61611e6e3b344d .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_touchtest.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_touchtest.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_touchtest.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_touchtest.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_touchtest.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_touchtest_skin_classic.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_touchtest_skin_classic.c  .generated_files/flags/default/fe63ee3efa86dba437b2895384a7af5cdced281a .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_touchtest_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_touchtest_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_touchtest_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_touchtest_skin_classic.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_touchtest_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_window.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_window.c  .generated_files/flags/default/e886a0b2545927eaa5f173a160cdb21ceb23b8c2 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_window.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_window.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_window.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_window.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_window.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1071800814/libaria_widget_window_skin_classic.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_window_skin_classic.c  .generated_files/flags/default/9495f2c90b307a105b9b3d17ad1c51e5e32121db .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1071800814" 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_window_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1071800814/libaria_widget_window_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1071800814/libaria_widget_window_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1071800814/libaria_widget_window_skin_classic.o ../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_window_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/676789875/gfx.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx.c  .generated_files/flags/default/7a9c7b940b1fc6350c6c42dcc9d2cbff13adde33 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/676789875" 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx.o.d 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/676789875/gfx.o.d" -o ${OBJECTDIR}/_ext/676789875/gfx.o ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/676789875/gfx_color.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_color.c  .generated_files/flags/default/9b369c1aa68073ca204efe6319f110aad1819540 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/676789875" 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_color.o.d 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_color.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/676789875/gfx_color.o.d" -o ${OBJECTDIR}/_ext/676789875/gfx_color.o ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_color.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/676789875/gfx_context.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_context.c  .generated_files/flags/default/3e523f260361a8753fe06349feaec6652aea9020 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/676789875" 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_context.o.d 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_context.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/676789875/gfx_context.o.d" -o ${OBJECTDIR}/_ext/676789875/gfx_context.o ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_context.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/676789875/gfx_default_impl.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_default_impl.c  .generated_files/flags/default/b8c4f32bbf6ecdb3cf07a3ed39874026df9066e7 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/676789875" 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_default_impl.o.d 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_default_impl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/676789875/gfx_default_impl.o.d" -o ${OBJECTDIR}/_ext/676789875/gfx_default_impl.o ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_default_impl.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/676789875/gfx_display.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_display.c  .generated_files/flags/default/b4af193201746c29ac581c8abfc72cc0eb363f0b .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/676789875" 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_display.o.d 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_display.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/676789875/gfx_display.o.d" -o ${OBJECTDIR}/_ext/676789875/gfx_display.o ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_display.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/676789875/gfx_driver_interface.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_driver_interface.c  .generated_files/flags/default/90d704c711b8f6f204ce5e9f811938bf8bcdcc11 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/676789875" 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_driver_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_driver_interface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/676789875/gfx_driver_interface.o.d" -o ${OBJECTDIR}/_ext/676789875/gfx_driver_interface.o ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_driver_interface.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/676789875/gfx_get.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_get.c  .generated_files/flags/default/bb3a8e331383d04af074e54c71eb8f7cd0ad988a .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/676789875" 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_get.o.d 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_get.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/676789875/gfx_get.o.d" -o ${OBJECTDIR}/_ext/676789875/gfx_get.o ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_get.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/676789875/gfx_interface.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_interface.c  .generated_files/flags/default/2ac5073c8c15b98e74a9e8a5f22c907c8b137908 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/676789875" 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_interface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/676789875/gfx_interface.o.d" -o ${OBJECTDIR}/_ext/676789875/gfx_interface.o ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_interface.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/676789875/gfx_layer.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_layer.c  .generated_files/flags/default/a8d224b6a7fcc8f217cece4c2097b8e1eb5fa31a .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/676789875" 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_layer.o.d 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_layer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/676789875/gfx_layer.o.d" -o ${OBJECTDIR}/_ext/676789875/gfx_layer.o ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_layer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/676789875/gfx_pixel_buffer.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_pixel_buffer.c  .generated_files/flags/default/6fab628a538dc6752f4478881686baec6720cbad .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/676789875" 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_pixel_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_pixel_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/676789875/gfx_pixel_buffer.o.d" -o ${OBJECTDIR}/_ext/676789875/gfx_pixel_buffer.o ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_pixel_buffer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/676789875/gfx_processor_interface.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_processor_interface.c  .generated_files/flags/default/4d37608b8878f4482366a6aa4447ca5713190f27 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/676789875" 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_processor_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_processor_interface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/676789875/gfx_processor_interface.o.d" -o ${OBJECTDIR}/_ext/676789875/gfx_processor_interface.o ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_processor_interface.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/676789875/gfx_rect.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_rect.c  .generated_files/flags/default/de117b3a56dfad7eb0845d4509d2b0d6466f0b0 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/676789875" 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_rect.o.d 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_rect.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/676789875/gfx_rect.o.d" -o ${OBJECTDIR}/_ext/676789875/gfx_rect.o ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_rect.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/676789875/gfx_util.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_util.c  .generated_files/flags/default/9bb2b0fae851d3d8cada386b50b3faad72ebff73 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/676789875" 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_util.o.d 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_util.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/676789875/gfx_util.o.d" -o ${OBJECTDIR}/_ext/676789875/gfx_util.o ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_util.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/676789875/gfx_set.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_set.c  .generated_files/flags/default/82df49882512615a17a911505572db427ae3cb69 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/676789875" 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_set.o.d 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_set.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/676789875/gfx_set.o.d" -o ${OBJECTDIR}/_ext/676789875/gfx_set.o ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_set.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/676789875/gfx_color_blend.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_color_blend.c  .generated_files/flags/default/71830712a5f26c0ca4ffb9a1f6e516d431982739 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/676789875" 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_color_blend.o.d 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_color_blend.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/676789875/gfx_color_blend.o.d" -o ${OBJECTDIR}/_ext/676789875/gfx_color_blend.o ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_color_blend.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/676789875/gfx_color_convert.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_color_convert.c  .generated_files/flags/default/b991e8d0e3ece4036cfff4366ec39a0383d77ff .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/676789875" 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_color_convert.o.d 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_color_convert.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/676789875/gfx_color_convert.o.d" -o ${OBJECTDIR}/_ext/676789875/gfx_color_convert.o ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_color_convert.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/676789875/gfx_color_lerp.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_color_lerp.c  .generated_files/flags/default/beb9b0f9e7d317474083076611ee010406664312 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/676789875" 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_color_lerp.o.d 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_color_lerp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/676789875/gfx_color_lerp.o.d" -o ${OBJECTDIR}/_ext/676789875/gfx_color_lerp.o ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_color_lerp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/676789875/gfx_color_value.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_color_value.c  .generated_files/flags/default/e4966a62c418433bf1fb215a56c4f9c01a369009 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/676789875" 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_color_value.o.d 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_color_value.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/676789875/gfx_color_value.o.d" -o ${OBJECTDIR}/_ext/676789875/gfx_color_value.o ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_color_value.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/676789875/gfx_draw_arc.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_arc.c  .generated_files/flags/default/b61cb320012bc3dedf7da944a8d7536e810c70ba .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/676789875" 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_draw_arc.o.d 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_draw_arc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/676789875/gfx_draw_arc.o.d" -o ${OBJECTDIR}/_ext/676789875/gfx_draw_arc.o ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_arc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/676789875/gfx_draw_blit.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_blit.c  .generated_files/flags/default/e5910287b35c85b32c7312eb09a747627403280c .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/676789875" 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_draw_blit.o.d 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_draw_blit.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/676789875/gfx_draw_blit.o.d" -o ${OBJECTDIR}/_ext/676789875/gfx_draw_blit.o ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_blit.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/676789875/gfx_draw_circle.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_circle.c  .generated_files/flags/default/4d9f28f3197e45ee9b41804f33f4958c61e3c4db .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/676789875" 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_draw_circle.o.d 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_draw_circle.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/676789875/gfx_draw_circle.o.d" -o ${OBJECTDIR}/_ext/676789875/gfx_draw_circle.o ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_circle.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/676789875/gfx_draw_ellipse.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_ellipse.c  .generated_files/flags/default/3c243979dbaaa2ef02cb73d82183a9c6a104d88a .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/676789875" 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_draw_ellipse.o.d 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_draw_ellipse.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/676789875/gfx_draw_ellipse.o.d" -o ${OBJECTDIR}/_ext/676789875/gfx_draw_ellipse.o ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_ellipse.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/676789875/gfx_draw_line.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_line.c  .generated_files/flags/default/2fe26b79a8b9ca38dc1aabcaac79f79bf992c1fe .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/676789875" 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_draw_line.o.d 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_draw_line.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/676789875/gfx_draw_line.o.d" -o ${OBJECTDIR}/_ext/676789875/gfx_draw_line.o ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_line.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/676789875/gfx_draw_pixel.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_pixel.c  .generated_files/flags/default/76be7e450c1cda7ee935036467e5b2c3fba797dc .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/676789875" 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_draw_pixel.o.d 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_draw_pixel.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/676789875/gfx_draw_pixel.o.d" -o ${OBJECTDIR}/_ext/676789875/gfx_draw_pixel.o ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_pixel.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/676789875/gfx_draw_rect.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_rect.c  .generated_files/flags/default/512121a74c34a7550a12b2c24256191f3ba464b7 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/676789875" 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_draw_rect.o.d 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_draw_rect.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/676789875/gfx_draw_rect.o.d" -o ${OBJECTDIR}/_ext/676789875/gfx_draw_rect.o ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_rect.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/676789875/gfx_draw_stretchblit.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_stretchblit.c  .generated_files/flags/default/15bd4a78c948ad1193c4b6633ae679478b7c5994 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/676789875" 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_draw_stretchblit.o.d 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_draw_stretchblit.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/676789875/gfx_draw_stretchblit.o.d" -o ${OBJECTDIR}/_ext/676789875/gfx_draw_stretchblit.o ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_stretchblit.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/676789875/gfx_math.o: ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_math.c  .generated_files/flags/default/5c044fa772d3b249df5afa1113a8c655d4d897d6 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/676789875" 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_math.o.d 
	@${RM} ${OBJECTDIR}/_ext/676789875/gfx_math.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/676789875/gfx_math.o.d" -o ${OBJECTDIR}/_ext/676789875/gfx_math.o ../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_math.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/231205469/sys_int_pic32.o: ../../../../../../microchip/harmony/v2_06/framework/system/int/src/sys_int_pic32.c  .generated_files/flags/default/72f36c4d43b0707ea36303698f095ed449a4a5a4 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/231205469" 
	@${RM} ${OBJECTDIR}/_ext/231205469/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/231205469/sys_int_pic32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/231205469/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/231205469/sys_int_pic32.o ../../../../../../microchip/harmony/v2_06/framework/system/int/src/sys_int_pic32.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/664138601/drv_pmp_static.o: ../src/system_config/default/framework/driver/pmp/src/drv_pmp_static.c  .generated_files/flags/default/ca4d3d0a413f80acaea44d19770ffa2f19ec4eb8 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/664138601" 
	@${RM} ${OBJECTDIR}/_ext/664138601/drv_pmp_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/664138601/drv_pmp_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/664138601/drv_pmp_static.o.d" -o ${OBJECTDIR}/_ext/664138601/drv_pmp_static.o ../src/system_config/default/framework/driver/pmp/src/drv_pmp_static.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/347121368/drv_gfx_ssd1926.o: ../src/system_config/default/framework/gfx/driver/controller/ssd1926/drv_gfx_ssd1926.c  .generated_files/flags/default/ce2bbd7bfd71476e6cc919b3647c56081c445992 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/347121368" 
	@${RM} ${OBJECTDIR}/_ext/347121368/drv_gfx_ssd1926.o.d 
	@${RM} ${OBJECTDIR}/_ext/347121368/drv_gfx_ssd1926.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/347121368/drv_gfx_ssd1926.o.d" -o ${OBJECTDIR}/_ext/347121368/drv_gfx_ssd1926.o ../src/system_config/default/framework/gfx/driver/controller/ssd1926/drv_gfx_ssd1926.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1689523328/drv_gfx_ssd1289.o: ../src/system_config/default/framework/gfx/driver/tcon/ssd1289/drv_gfx_ssd1289.c  .generated_files/flags/default/193dcfeafac3a9d6000ebfde60cb6ebd48313459 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1689523328" 
	@${RM} ${OBJECTDIR}/_ext/1689523328/drv_gfx_ssd1289.o.d 
	@${RM} ${OBJECTDIR}/_ext/1689523328/drv_gfx_ssd1289.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1689523328/drv_gfx_ssd1289.o.d" -o ${OBJECTDIR}/_ext/1689523328/drv_gfx_ssd1289.o ../src/system_config/default/framework/gfx/driver/tcon/ssd1289/drv_gfx_ssd1289.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/458109090/libaria_harmony.o: ../src/system_config/default/framework/gfx/libaria/libaria_harmony.c  .generated_files/flags/default/5640d611f17b06024a3f6b9169ebc0a745139a46 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/458109090" 
	@${RM} ${OBJECTDIR}/_ext/458109090/libaria_harmony.o.d 
	@${RM} ${OBJECTDIR}/_ext/458109090/libaria_harmony.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/458109090/libaria_harmony.o.d" -o ${OBJECTDIR}/_ext/458109090/libaria_harmony.o ../src/system_config/default/framework/gfx/libaria/libaria_harmony.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/458109090/libaria_init.o: ../src/system_config/default/framework/gfx/libaria/libaria_init.c  .generated_files/flags/default/213067ac2e8602cba7ac62633040e4537a6c96c1 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/458109090" 
	@${RM} ${OBJECTDIR}/_ext/458109090/libaria_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/458109090/libaria_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/458109090/libaria_init.o.d" -o ${OBJECTDIR}/_ext/458109090/libaria_init.o ../src/system_config/default/framework/gfx/libaria/libaria_init.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/458109090/libaria_events.o: ../src/system_config/default/framework/gfx/libaria/libaria_events.c  .generated_files/flags/default/ebb475bb6528a21322e86d15d758ce3d5aa8a749 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/458109090" 
	@${RM} ${OBJECTDIR}/_ext/458109090/libaria_events.o.d 
	@${RM} ${OBJECTDIR}/_ext/458109090/libaria_events.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/458109090/libaria_events.o.d" -o ${OBJECTDIR}/_ext/458109090/libaria_events.o ../src/system_config/default/framework/gfx/libaria/libaria_events.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/458109090/libaria_macros.o: ../src/system_config/default/framework/gfx/libaria/libaria_macros.c  .generated_files/flags/default/dd929b0d99fd6a779b073bd0a53da17077f3124c .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/458109090" 
	@${RM} ${OBJECTDIR}/_ext/458109090/libaria_macros.o.d 
	@${RM} ${OBJECTDIR}/_ext/458109090/libaria_macros.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/458109090/libaria_macros.o.d" -o ${OBJECTDIR}/_ext/458109090/libaria_macros.o ../src/system_config/default/framework/gfx/libaria/libaria_macros.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2065038297/gfx_display_def.o: ../src/system_config/default/framework/gfx/hal/gfx_display_def.c  .generated_files/flags/default/a4a9f22c311a57abde8e05ffb392d4f250b1ff50 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/2065038297" 
	@${RM} ${OBJECTDIR}/_ext/2065038297/gfx_display_def.o.d 
	@${RM} ${OBJECTDIR}/_ext/2065038297/gfx_display_def.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/2065038297/gfx_display_def.o.d" -o ${OBJECTDIR}/_ext/2065038297/gfx_display_def.o ../src/system_config/default/framework/gfx/hal/gfx_display_def.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2065038297/gfx_driver_def.o: ../src/system_config/default/framework/gfx/hal/gfx_driver_def.c  .generated_files/flags/default/1070b3288cb65e8e93231e0583ee88480ceedf11 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/2065038297" 
	@${RM} ${OBJECTDIR}/_ext/2065038297/gfx_driver_def.o.d 
	@${RM} ${OBJECTDIR}/_ext/2065038297/gfx_driver_def.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/2065038297/gfx_driver_def.o.d" -o ${OBJECTDIR}/_ext/2065038297/gfx_driver_def.o ../src/system_config/default/framework/gfx/hal/gfx_driver_def.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2065038297/gfx_processor_def.o: ../src/system_config/default/framework/gfx/hal/gfx_processor_def.c  .generated_files/flags/default/57d74f5f3e8fadb8597bc70457c8f8d42d743c22 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/2065038297" 
	@${RM} ${OBJECTDIR}/_ext/2065038297/gfx_processor_def.o.d 
	@${RM} ${OBJECTDIR}/_ext/2065038297/gfx_processor_def.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/2065038297/gfx_processor_def.o.d" -o ${OBJECTDIR}/_ext/2065038297/gfx_processor_def.o ../src/system_config/default/framework/gfx/hal/gfx_processor_def.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o: ../src/system_config/default/framework/system/clk/src/sys_clk_pic32mx.c  .generated_files/flags/default/75650141add6f8b7ba6a357d4883c56fb0e384b4 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/639803181" 
	@${RM} ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o.d" -o ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o ../src/system_config/default/framework/system/clk/src/sys_clk_pic32mx.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/340578644/sys_devcon.o: ../src/system_config/default/framework/system/devcon/src/sys_devcon.c  .generated_files/flags/default/d7a8ffdec6694db6d8ef465770dd3f5dee73e6f4 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/340578644" 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/340578644/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/340578644/sys_devcon.o ../src/system_config/default/framework/system/devcon/src/sys_devcon.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o: ../src/system_config/default/framework/system/devcon/src/sys_devcon_pic32mx.c  .generated_files/flags/default/2b1155b39d25d9b37187839278ed011142c0371 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/340578644" 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o.d" -o ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o ../src/system_config/default/framework/system/devcon/src/sys_devcon_pic32mx.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/822048611/sys_ports_static.o: ../src/system_config/default/framework/system/ports/src/sys_ports_static.c  .generated_files/flags/default/67ae385f99a38e21853e5cbb33915738b5c10b3d .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/822048611" 
	@${RM} ${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/822048611/sys_ports_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/822048611/sys_ports_static.o ../src/system_config/default/framework/system/ports/src/sys_ports_static.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/74298950/bsp.o: ../src/system_config/default/bsp/bsp.c  .generated_files/flags/default/161ea8dcdb01c78d1a4dcfb5fb7615ef1b656f27 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/74298950" 
	@${RM} ${OBJECTDIR}/_ext/74298950/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/74298950/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/74298950/bsp.o.d" -o ${OBJECTDIR}/_ext/74298950/bsp.o ../src/system_config/default/bsp/bsp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1688732426/system_init.o: ../src/system_config/default/system_init.c  .generated_files/flags/default/1d18db2eda180d3b627801d8c1d557e28915d921 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_init.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_init.o ../src/system_config/default/system_init.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1688732426/system_interrupt.o: ../src/system_config/default/system_interrupt.c  .generated_files/flags/default/c3478f85b655a347973e2908f93da843daff9eb .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_interrupt.o ../src/system_config/default/system_interrupt.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1688732426/system_exceptions.o: ../src/system_config/default/system_exceptions.c  .generated_files/flags/default/e138d0835724df4826aaca4580a51267877b8d22 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_exceptions.o ../src/system_config/default/system_exceptions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1688732426/system_tasks.o: ../src/system_config/default/system_tasks.c  .generated_files/flags/default/709fbb836a63a13186e62650fd139a819afd1d94 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_tasks.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_tasks.o ../src/system_config/default/system_tasks.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/take4.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../../../microchip/harmony/v2_06/bin/framework/peripheral/PIC32MX795F512L_peripherals.a  
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_PIC32MXSK=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/take4.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\..\..\..\microchip\harmony\v2_06\bin\framework\peripheral\PIC32MX795F512L_peripherals.a      -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_PIC32MXSK=1,--defsym=_min_heap_size=102400,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/take4.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../../../microchip/harmony/v2_06/bin/framework/peripheral/PIC32MX795F512L_peripherals.a 
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/take4.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\..\..\..\microchip\harmony\v2_06\bin\framework\peripheral\PIC32MX795F512L_peripherals.a      -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=102400,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/take4.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
