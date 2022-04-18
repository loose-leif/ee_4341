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
FINAL_IMAGE=${DISTDIR}/take3.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/take3.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=../src/app.c ../src/main.c ../../../../../../../../microchip/harmony/v2_06/third_party/decoder/jidctint/src/jidctint.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_jpg_common.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_jpg_internal.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_jpg_external.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_png_external.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_png_internal.c ../../../../../../../../microchip/harmony/v2_06/third_party/decoder/lodepng/lodepng.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_raw_external.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_raw_internal.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_rle_external.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_rle_internal.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_utils.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_palette.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_string.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_string_external.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_stringbuffer_external.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_string_internal.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_string_query.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_string_utils.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_array.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_context.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_context_paint.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_draw.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_editwidget.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_event.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_input.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_layer.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_list.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_rectarray.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_scheme.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_screen.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_string.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_utils.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_skin_classic.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_skin_classic_common.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_arc.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_arc_skin_classic.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_bar_graph.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_bar_graph_skin_classic.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_button.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_button_skin_classic.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_checkbox.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_checkbox_skin_classic.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_circle.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_circle_skin_classic.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_circular_gauge.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_circular_gauge_skin_classic.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_circular_slider.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_circular_slider_skin_classic.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_drawsurface.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_drawsurface_skin_classic.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_gradient.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_gradient_skin_classic.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_groupbox.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_groupbox_skin_classic.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_image.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_image_skin_classic.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_imageplus.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_imageplus_skin_classic.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_imagesequence.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_imagesequence_skin_classic.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_keypad.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_keypad_skin_classic.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_label.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_label_skin_classic.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_line.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_line_skin_classic.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_line_graph.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_line_graph_skin_classic.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_list.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_list_skin_classic.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_listwheel.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_listwheel_skin_classic.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_pie_chart.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_pie_chart_skin_classic.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_progressbar.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_progressbar_skin_classic.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_radial_menu.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_radial_menu_skin_classic.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_radiobutton.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_radiobutton_skin_classic.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_radiobutton_group.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_rectangle.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_rectangle_skin_classic.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_scrollbar.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_scrollbar_skin_classic.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_slider.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_slider_skin_classic.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_textfield.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_textfield_skin_classic.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_touchtest.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_touchtest_skin_classic.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_window.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_window_skin_classic.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_color.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_context.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_default_impl.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_display.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_driver_interface.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_get.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_interface.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_layer.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_pixel_buffer.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_processor_interface.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_rect.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_util.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_set.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_color_blend.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_color_convert.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_color_lerp.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_color_value.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_arc.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_blit.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_circle.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_ellipse.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_line.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_pixel.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_rect.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_stretchblit.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_math.c ../../../../../../../../microchip/harmony/v2_06/framework/system/int/src/sys_int_pic32.c ../src/system_config/default/framework/driver/pmp/src/drv_pmp_static.c ../src/system_config/default/framework/gfx/driver/controller/ssd1926/drv_gfx_ssd1926.c ../src/system_config/default/framework/gfx/driver/tcon/ssd1289/drv_gfx_ssd1289.c ../src/system_config/default/framework/gfx/libaria/libaria_harmony.c ../src/system_config/default/framework/gfx/libaria/libaria_init.c ../src/system_config/default/framework/gfx/libaria/libaria_events.c ../src/system_config/default/framework/gfx/libaria/libaria_macros.c ../src/system_config/default/framework/gfx/hal/gfx_display_def.c ../src/system_config/default/framework/gfx/hal/gfx_driver_def.c ../src/system_config/default/framework/gfx/hal/gfx_processor_def.c ../src/system_config/default/framework/system/clk/src/sys_clk_pic32mx.c ../src/system_config/default/framework/system/devcon/src/sys_devcon.c ../src/system_config/default/framework/system/devcon/src/sys_devcon_pic32mx.c ../src/system_config/default/framework/system/ports/src/sys_ports_static.c ../src/system_config/default/bsp/bsp.c ../src/system_config/default/system_init.c ../src/system_config/default/system_interrupt.c ../src/system_config/default/system_exceptions.c ../src/system_config/default/system_tasks.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1808658248/jidctint.o ${OBJECTDIR}/_ext/462527183/gfxu_image_jpg_common.o ${OBJECTDIR}/_ext/462527183/gfxu_image_jpg_internal.o ${OBJECTDIR}/_ext/462527183/gfxu_image_jpg_external.o ${OBJECTDIR}/_ext/462527183/gfxu_image_png_external.o ${OBJECTDIR}/_ext/462527183/gfxu_image_png_internal.o ${OBJECTDIR}/_ext/1403093931/lodepng.o ${OBJECTDIR}/_ext/462527183/gfxu_image.o ${OBJECTDIR}/_ext/462527183/gfxu_image_raw_external.o ${OBJECTDIR}/_ext/462527183/gfxu_image_raw_internal.o ${OBJECTDIR}/_ext/462527183/gfxu_image_rle_external.o ${OBJECTDIR}/_ext/462527183/gfxu_image_rle_internal.o ${OBJECTDIR}/_ext/462527183/gfxu_image_utils.o ${OBJECTDIR}/_ext/462527183/gfxu_palette.o ${OBJECTDIR}/_ext/462527183/gfxu_string.o ${OBJECTDIR}/_ext/462527183/gfxu_string_external.o ${OBJECTDIR}/_ext/462527183/gfxu_stringbuffer_external.o ${OBJECTDIR}/_ext/462527183/gfxu_string_internal.o ${OBJECTDIR}/_ext/462527183/gfxu_string_query.o ${OBJECTDIR}/_ext/462527183/gfxu_string_utils.o ${OBJECTDIR}/_ext/1872939086/libaria.o ${OBJECTDIR}/_ext/1872939086/libaria_array.o ${OBJECTDIR}/_ext/1872939086/libaria_context.o ${OBJECTDIR}/_ext/1872939086/libaria_context_paint.o ${OBJECTDIR}/_ext/1872939086/libaria_draw.o ${OBJECTDIR}/_ext/1872939086/libaria_editwidget.o ${OBJECTDIR}/_ext/1872939086/libaria_event.o ${OBJECTDIR}/_ext/1872939086/libaria_input.o ${OBJECTDIR}/_ext/1872939086/libaria_layer.o ${OBJECTDIR}/_ext/1872939086/libaria_list.o ${OBJECTDIR}/_ext/1872939086/libaria_rectarray.o ${OBJECTDIR}/_ext/1872939086/libaria_scheme.o ${OBJECTDIR}/_ext/1872939086/libaria_screen.o ${OBJECTDIR}/_ext/1872939086/libaria_string.o ${OBJECTDIR}/_ext/1872939086/libaria_utils.o ${OBJECTDIR}/_ext/1872939086/libaria_widget.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_skin_classic.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_skin_classic_common.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_arc.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_arc_skin_classic.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_bar_graph.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_bar_graph_skin_classic.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_button.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_button_skin_classic.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_checkbox.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_checkbox_skin_classic.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_circle.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_circle_skin_classic.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_circular_gauge.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_circular_gauge_skin_classic.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_circular_slider.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_circular_slider_skin_classic.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_drawsurface.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_drawsurface_skin_classic.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_gradient.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_gradient_skin_classic.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_groupbox.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_groupbox_skin_classic.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_image.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_image_skin_classic.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_imageplus.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_imageplus_skin_classic.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_imagesequence.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_imagesequence_skin_classic.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_keypad.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_keypad_skin_classic.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_label.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_label_skin_classic.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_line.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_line_skin_classic.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_line_graph.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_line_graph_skin_classic.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_list.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_list_skin_classic.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_listwheel.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_listwheel_skin_classic.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_pie_chart.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_pie_chart_skin_classic.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_progressbar.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_progressbar_skin_classic.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_radial_menu.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_radial_menu_skin_classic.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_radiobutton.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_radiobutton_skin_classic.o ${OBJECTDIR}/_ext/1872939086/libaria_radiobutton_group.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_rectangle.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_rectangle_skin_classic.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_scrollbar.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_scrollbar_skin_classic.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_slider.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_slider_skin_classic.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_textfield.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_textfield_skin_classic.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_touchtest.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_touchtest_skin_classic.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_window.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_window_skin_classic.o ${OBJECTDIR}/_ext/973706451/gfx.o ${OBJECTDIR}/_ext/973706451/gfx_color.o ${OBJECTDIR}/_ext/973706451/gfx_context.o ${OBJECTDIR}/_ext/973706451/gfx_default_impl.o ${OBJECTDIR}/_ext/973706451/gfx_display.o ${OBJECTDIR}/_ext/973706451/gfx_driver_interface.o ${OBJECTDIR}/_ext/973706451/gfx_get.o ${OBJECTDIR}/_ext/973706451/gfx_interface.o ${OBJECTDIR}/_ext/973706451/gfx_layer.o ${OBJECTDIR}/_ext/973706451/gfx_pixel_buffer.o ${OBJECTDIR}/_ext/973706451/gfx_processor_interface.o ${OBJECTDIR}/_ext/973706451/gfx_rect.o ${OBJECTDIR}/_ext/973706451/gfx_util.o ${OBJECTDIR}/_ext/973706451/gfx_set.o ${OBJECTDIR}/_ext/973706451/gfx_color_blend.o ${OBJECTDIR}/_ext/973706451/gfx_color_convert.o ${OBJECTDIR}/_ext/973706451/gfx_color_lerp.o ${OBJECTDIR}/_ext/973706451/gfx_color_value.o ${OBJECTDIR}/_ext/973706451/gfx_draw_arc.o ${OBJECTDIR}/_ext/973706451/gfx_draw_blit.o ${OBJECTDIR}/_ext/973706451/gfx_draw_circle.o ${OBJECTDIR}/_ext/973706451/gfx_draw_ellipse.o ${OBJECTDIR}/_ext/973706451/gfx_draw_line.o ${OBJECTDIR}/_ext/973706451/gfx_draw_pixel.o ${OBJECTDIR}/_ext/973706451/gfx_draw_rect.o ${OBJECTDIR}/_ext/973706451/gfx_draw_stretchblit.o ${OBJECTDIR}/_ext/973706451/gfx_math.o ${OBJECTDIR}/_ext/1872847683/sys_int_pic32.o ${OBJECTDIR}/_ext/664138601/drv_pmp_static.o ${OBJECTDIR}/_ext/347121368/drv_gfx_ssd1926.o ${OBJECTDIR}/_ext/1689523328/drv_gfx_ssd1289.o ${OBJECTDIR}/_ext/458109090/libaria_harmony.o ${OBJECTDIR}/_ext/458109090/libaria_init.o ${OBJECTDIR}/_ext/458109090/libaria_events.o ${OBJECTDIR}/_ext/458109090/libaria_macros.o ${OBJECTDIR}/_ext/2065038297/gfx_display_def.o ${OBJECTDIR}/_ext/2065038297/gfx_driver_def.o ${OBJECTDIR}/_ext/2065038297/gfx_processor_def.o ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o ${OBJECTDIR}/_ext/340578644/sys_devcon.o ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o ${OBJECTDIR}/_ext/822048611/sys_ports_static.o ${OBJECTDIR}/_ext/74298950/bsp.o ${OBJECTDIR}/_ext/1688732426/system_init.o ${OBJECTDIR}/_ext/1688732426/system_interrupt.o ${OBJECTDIR}/_ext/1688732426/system_exceptions.o ${OBJECTDIR}/_ext/1688732426/system_tasks.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1360937237/app.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1808658248/jidctint.o.d ${OBJECTDIR}/_ext/462527183/gfxu_image_jpg_common.o.d ${OBJECTDIR}/_ext/462527183/gfxu_image_jpg_internal.o.d ${OBJECTDIR}/_ext/462527183/gfxu_image_jpg_external.o.d ${OBJECTDIR}/_ext/462527183/gfxu_image_png_external.o.d ${OBJECTDIR}/_ext/462527183/gfxu_image_png_internal.o.d ${OBJECTDIR}/_ext/1403093931/lodepng.o.d ${OBJECTDIR}/_ext/462527183/gfxu_image.o.d ${OBJECTDIR}/_ext/462527183/gfxu_image_raw_external.o.d ${OBJECTDIR}/_ext/462527183/gfxu_image_raw_internal.o.d ${OBJECTDIR}/_ext/462527183/gfxu_image_rle_external.o.d ${OBJECTDIR}/_ext/462527183/gfxu_image_rle_internal.o.d ${OBJECTDIR}/_ext/462527183/gfxu_image_utils.o.d ${OBJECTDIR}/_ext/462527183/gfxu_palette.o.d ${OBJECTDIR}/_ext/462527183/gfxu_string.o.d ${OBJECTDIR}/_ext/462527183/gfxu_string_external.o.d ${OBJECTDIR}/_ext/462527183/gfxu_stringbuffer_external.o.d ${OBJECTDIR}/_ext/462527183/gfxu_string_internal.o.d ${OBJECTDIR}/_ext/462527183/gfxu_string_query.o.d ${OBJECTDIR}/_ext/462527183/gfxu_string_utils.o.d ${OBJECTDIR}/_ext/1872939086/libaria.o.d ${OBJECTDIR}/_ext/1872939086/libaria_array.o.d ${OBJECTDIR}/_ext/1872939086/libaria_context.o.d ${OBJECTDIR}/_ext/1872939086/libaria_context_paint.o.d ${OBJECTDIR}/_ext/1872939086/libaria_draw.o.d ${OBJECTDIR}/_ext/1872939086/libaria_editwidget.o.d ${OBJECTDIR}/_ext/1872939086/libaria_event.o.d ${OBJECTDIR}/_ext/1872939086/libaria_input.o.d ${OBJECTDIR}/_ext/1872939086/libaria_layer.o.d ${OBJECTDIR}/_ext/1872939086/libaria_list.o.d ${OBJECTDIR}/_ext/1872939086/libaria_rectarray.o.d ${OBJECTDIR}/_ext/1872939086/libaria_scheme.o.d ${OBJECTDIR}/_ext/1872939086/libaria_screen.o.d ${OBJECTDIR}/_ext/1872939086/libaria_string.o.d ${OBJECTDIR}/_ext/1872939086/libaria_utils.o.d ${OBJECTDIR}/_ext/1872939086/libaria_widget.o.d ${OBJECTDIR}/_ext/1872939086/libaria_widget_skin_classic.o.d ${OBJECTDIR}/_ext/1872939086/libaria_widget_skin_classic_common.o.d ${OBJECTDIR}/_ext/1872939086/libaria_widget_arc.o.d ${OBJECTDIR}/_ext/1872939086/libaria_widget_arc_skin_classic.o.d ${OBJECTDIR}/_ext/1872939086/libaria_widget_bar_graph.o.d ${OBJECTDIR}/_ext/1872939086/libaria_widget_bar_graph_skin_classic.o.d ${OBJECTDIR}/_ext/1872939086/libaria_widget_button.o.d ${OBJECTDIR}/_ext/1872939086/libaria_widget_button_skin_classic.o.d ${OBJECTDIR}/_ext/1872939086/libaria_widget_checkbox.o.d ${OBJECTDIR}/_ext/1872939086/libaria_widget_checkbox_skin_classic.o.d ${OBJECTDIR}/_ext/1872939086/libaria_widget_circle.o.d ${OBJECTDIR}/_ext/1872939086/libaria_widget_circle_skin_classic.o.d ${OBJECTDIR}/_ext/1872939086/libaria_widget_circular_gauge.o.d ${OBJECTDIR}/_ext/1872939086/libaria_widget_circular_gauge_skin_classic.o.d ${OBJECTDIR}/_ext/1872939086/libaria_widget_circular_slider.o.d ${OBJECTDIR}/_ext/1872939086/libaria_widget_circular_slider_skin_classic.o.d ${OBJECTDIR}/_ext/1872939086/libaria_widget_drawsurface.o.d ${OBJECTDIR}/_ext/1872939086/libaria_widget_drawsurface_skin_classic.o.d ${OBJECTDIR}/_ext/1872939086/libaria_widget_gradient.o.d ${OBJECTDIR}/_ext/1872939086/libaria_widget_gradient_skin_classic.o.d ${OBJECTDIR}/_ext/1872939086/libaria_widget_groupbox.o.d ${OBJECTDIR}/_ext/1872939086/libaria_widget_groupbox_skin_classic.o.d ${OBJECTDIR}/_ext/1872939086/libaria_widget_image.o.d ${OBJECTDIR}/_ext/1872939086/libaria_widget_image_skin_classic.o.d ${OBJECTDIR}/_ext/1872939086/libaria_widget_imageplus.o.d ${OBJECTDIR}/_ext/1872939086/libaria_widget_imageplus_skin_classic.o.d ${OBJECTDIR}/_ext/1872939086/libaria_widget_imagesequence.o.d ${OBJECTDIR}/_ext/1872939086/libaria_widget_imagesequence_skin_classic.o.d ${OBJECTDIR}/_ext/1872939086/libaria_widget_keypad.o.d ${OBJECTDIR}/_ext/1872939086/libaria_widget_keypad_skin_classic.o.d ${OBJECTDIR}/_ext/1872939086/libaria_widget_label.o.d ${OBJECTDIR}/_ext/1872939086/libaria_widget_label_skin_classic.o.d ${OBJECTDIR}/_ext/1872939086/libaria_widget_line.o.d ${OBJECTDIR}/_ext/1872939086/libaria_widget_line_skin_classic.o.d ${OBJECTDIR}/_ext/1872939086/libaria_widget_line_graph.o.d ${OBJECTDIR}/_ext/1872939086/libaria_widget_line_graph_skin_classic.o.d ${OBJECTDIR}/_ext/1872939086/libaria_widget_list.o.d ${OBJECTDIR}/_ext/1872939086/libaria_widget_list_skin_classic.o.d ${OBJECTDIR}/_ext/1872939086/libaria_widget_listwheel.o.d ${OBJECTDIR}/_ext/1872939086/libaria_widget_listwheel_skin_classic.o.d ${OBJECTDIR}/_ext/1872939086/libaria_widget_pie_chart.o.d ${OBJECTDIR}/_ext/1872939086/libaria_widget_pie_chart_skin_classic.o.d ${OBJECTDIR}/_ext/1872939086/libaria_widget_progressbar.o.d ${OBJECTDIR}/_ext/1872939086/libaria_widget_progressbar_skin_classic.o.d ${OBJECTDIR}/_ext/1872939086/libaria_widget_radial_menu.o.d ${OBJECTDIR}/_ext/1872939086/libaria_widget_radial_menu_skin_classic.o.d ${OBJECTDIR}/_ext/1872939086/libaria_widget_radiobutton.o.d ${OBJECTDIR}/_ext/1872939086/libaria_widget_radiobutton_skin_classic.o.d ${OBJECTDIR}/_ext/1872939086/libaria_radiobutton_group.o.d ${OBJECTDIR}/_ext/1872939086/libaria_widget_rectangle.o.d ${OBJECTDIR}/_ext/1872939086/libaria_widget_rectangle_skin_classic.o.d ${OBJECTDIR}/_ext/1872939086/libaria_widget_scrollbar.o.d ${OBJECTDIR}/_ext/1872939086/libaria_widget_scrollbar_skin_classic.o.d ${OBJECTDIR}/_ext/1872939086/libaria_widget_slider.o.d ${OBJECTDIR}/_ext/1872939086/libaria_widget_slider_skin_classic.o.d ${OBJECTDIR}/_ext/1872939086/libaria_widget_textfield.o.d ${OBJECTDIR}/_ext/1872939086/libaria_widget_textfield_skin_classic.o.d ${OBJECTDIR}/_ext/1872939086/libaria_widget_touchtest.o.d ${OBJECTDIR}/_ext/1872939086/libaria_widget_touchtest_skin_classic.o.d ${OBJECTDIR}/_ext/1872939086/libaria_widget_window.o.d ${OBJECTDIR}/_ext/1872939086/libaria_widget_window_skin_classic.o.d ${OBJECTDIR}/_ext/973706451/gfx.o.d ${OBJECTDIR}/_ext/973706451/gfx_color.o.d ${OBJECTDIR}/_ext/973706451/gfx_context.o.d ${OBJECTDIR}/_ext/973706451/gfx_default_impl.o.d ${OBJECTDIR}/_ext/973706451/gfx_display.o.d ${OBJECTDIR}/_ext/973706451/gfx_driver_interface.o.d ${OBJECTDIR}/_ext/973706451/gfx_get.o.d ${OBJECTDIR}/_ext/973706451/gfx_interface.o.d ${OBJECTDIR}/_ext/973706451/gfx_layer.o.d ${OBJECTDIR}/_ext/973706451/gfx_pixel_buffer.o.d ${OBJECTDIR}/_ext/973706451/gfx_processor_interface.o.d ${OBJECTDIR}/_ext/973706451/gfx_rect.o.d ${OBJECTDIR}/_ext/973706451/gfx_util.o.d ${OBJECTDIR}/_ext/973706451/gfx_set.o.d ${OBJECTDIR}/_ext/973706451/gfx_color_blend.o.d ${OBJECTDIR}/_ext/973706451/gfx_color_convert.o.d ${OBJECTDIR}/_ext/973706451/gfx_color_lerp.o.d ${OBJECTDIR}/_ext/973706451/gfx_color_value.o.d ${OBJECTDIR}/_ext/973706451/gfx_draw_arc.o.d ${OBJECTDIR}/_ext/973706451/gfx_draw_blit.o.d ${OBJECTDIR}/_ext/973706451/gfx_draw_circle.o.d ${OBJECTDIR}/_ext/973706451/gfx_draw_ellipse.o.d ${OBJECTDIR}/_ext/973706451/gfx_draw_line.o.d ${OBJECTDIR}/_ext/973706451/gfx_draw_pixel.o.d ${OBJECTDIR}/_ext/973706451/gfx_draw_rect.o.d ${OBJECTDIR}/_ext/973706451/gfx_draw_stretchblit.o.d ${OBJECTDIR}/_ext/973706451/gfx_math.o.d ${OBJECTDIR}/_ext/1872847683/sys_int_pic32.o.d ${OBJECTDIR}/_ext/664138601/drv_pmp_static.o.d ${OBJECTDIR}/_ext/347121368/drv_gfx_ssd1926.o.d ${OBJECTDIR}/_ext/1689523328/drv_gfx_ssd1289.o.d ${OBJECTDIR}/_ext/458109090/libaria_harmony.o.d ${OBJECTDIR}/_ext/458109090/libaria_init.o.d ${OBJECTDIR}/_ext/458109090/libaria_events.o.d ${OBJECTDIR}/_ext/458109090/libaria_macros.o.d ${OBJECTDIR}/_ext/2065038297/gfx_display_def.o.d ${OBJECTDIR}/_ext/2065038297/gfx_driver_def.o.d ${OBJECTDIR}/_ext/2065038297/gfx_processor_def.o.d ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o.d ${OBJECTDIR}/_ext/340578644/sys_devcon.o.d ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o.d ${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d ${OBJECTDIR}/_ext/74298950/bsp.o.d ${OBJECTDIR}/_ext/1688732426/system_init.o.d ${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d ${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d ${OBJECTDIR}/_ext/1688732426/system_tasks.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1808658248/jidctint.o ${OBJECTDIR}/_ext/462527183/gfxu_image_jpg_common.o ${OBJECTDIR}/_ext/462527183/gfxu_image_jpg_internal.o ${OBJECTDIR}/_ext/462527183/gfxu_image_jpg_external.o ${OBJECTDIR}/_ext/462527183/gfxu_image_png_external.o ${OBJECTDIR}/_ext/462527183/gfxu_image_png_internal.o ${OBJECTDIR}/_ext/1403093931/lodepng.o ${OBJECTDIR}/_ext/462527183/gfxu_image.o ${OBJECTDIR}/_ext/462527183/gfxu_image_raw_external.o ${OBJECTDIR}/_ext/462527183/gfxu_image_raw_internal.o ${OBJECTDIR}/_ext/462527183/gfxu_image_rle_external.o ${OBJECTDIR}/_ext/462527183/gfxu_image_rle_internal.o ${OBJECTDIR}/_ext/462527183/gfxu_image_utils.o ${OBJECTDIR}/_ext/462527183/gfxu_palette.o ${OBJECTDIR}/_ext/462527183/gfxu_string.o ${OBJECTDIR}/_ext/462527183/gfxu_string_external.o ${OBJECTDIR}/_ext/462527183/gfxu_stringbuffer_external.o ${OBJECTDIR}/_ext/462527183/gfxu_string_internal.o ${OBJECTDIR}/_ext/462527183/gfxu_string_query.o ${OBJECTDIR}/_ext/462527183/gfxu_string_utils.o ${OBJECTDIR}/_ext/1872939086/libaria.o ${OBJECTDIR}/_ext/1872939086/libaria_array.o ${OBJECTDIR}/_ext/1872939086/libaria_context.o ${OBJECTDIR}/_ext/1872939086/libaria_context_paint.o ${OBJECTDIR}/_ext/1872939086/libaria_draw.o ${OBJECTDIR}/_ext/1872939086/libaria_editwidget.o ${OBJECTDIR}/_ext/1872939086/libaria_event.o ${OBJECTDIR}/_ext/1872939086/libaria_input.o ${OBJECTDIR}/_ext/1872939086/libaria_layer.o ${OBJECTDIR}/_ext/1872939086/libaria_list.o ${OBJECTDIR}/_ext/1872939086/libaria_rectarray.o ${OBJECTDIR}/_ext/1872939086/libaria_scheme.o ${OBJECTDIR}/_ext/1872939086/libaria_screen.o ${OBJECTDIR}/_ext/1872939086/libaria_string.o ${OBJECTDIR}/_ext/1872939086/libaria_utils.o ${OBJECTDIR}/_ext/1872939086/libaria_widget.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_skin_classic.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_skin_classic_common.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_arc.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_arc_skin_classic.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_bar_graph.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_bar_graph_skin_classic.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_button.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_button_skin_classic.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_checkbox.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_checkbox_skin_classic.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_circle.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_circle_skin_classic.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_circular_gauge.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_circular_gauge_skin_classic.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_circular_slider.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_circular_slider_skin_classic.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_drawsurface.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_drawsurface_skin_classic.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_gradient.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_gradient_skin_classic.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_groupbox.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_groupbox_skin_classic.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_image.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_image_skin_classic.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_imageplus.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_imageplus_skin_classic.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_imagesequence.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_imagesequence_skin_classic.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_keypad.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_keypad_skin_classic.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_label.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_label_skin_classic.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_line.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_line_skin_classic.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_line_graph.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_line_graph_skin_classic.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_list.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_list_skin_classic.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_listwheel.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_listwheel_skin_classic.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_pie_chart.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_pie_chart_skin_classic.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_progressbar.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_progressbar_skin_classic.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_radial_menu.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_radial_menu_skin_classic.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_radiobutton.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_radiobutton_skin_classic.o ${OBJECTDIR}/_ext/1872939086/libaria_radiobutton_group.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_rectangle.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_rectangle_skin_classic.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_scrollbar.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_scrollbar_skin_classic.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_slider.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_slider_skin_classic.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_textfield.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_textfield_skin_classic.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_touchtest.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_touchtest_skin_classic.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_window.o ${OBJECTDIR}/_ext/1872939086/libaria_widget_window_skin_classic.o ${OBJECTDIR}/_ext/973706451/gfx.o ${OBJECTDIR}/_ext/973706451/gfx_color.o ${OBJECTDIR}/_ext/973706451/gfx_context.o ${OBJECTDIR}/_ext/973706451/gfx_default_impl.o ${OBJECTDIR}/_ext/973706451/gfx_display.o ${OBJECTDIR}/_ext/973706451/gfx_driver_interface.o ${OBJECTDIR}/_ext/973706451/gfx_get.o ${OBJECTDIR}/_ext/973706451/gfx_interface.o ${OBJECTDIR}/_ext/973706451/gfx_layer.o ${OBJECTDIR}/_ext/973706451/gfx_pixel_buffer.o ${OBJECTDIR}/_ext/973706451/gfx_processor_interface.o ${OBJECTDIR}/_ext/973706451/gfx_rect.o ${OBJECTDIR}/_ext/973706451/gfx_util.o ${OBJECTDIR}/_ext/973706451/gfx_set.o ${OBJECTDIR}/_ext/973706451/gfx_color_blend.o ${OBJECTDIR}/_ext/973706451/gfx_color_convert.o ${OBJECTDIR}/_ext/973706451/gfx_color_lerp.o ${OBJECTDIR}/_ext/973706451/gfx_color_value.o ${OBJECTDIR}/_ext/973706451/gfx_draw_arc.o ${OBJECTDIR}/_ext/973706451/gfx_draw_blit.o ${OBJECTDIR}/_ext/973706451/gfx_draw_circle.o ${OBJECTDIR}/_ext/973706451/gfx_draw_ellipse.o ${OBJECTDIR}/_ext/973706451/gfx_draw_line.o ${OBJECTDIR}/_ext/973706451/gfx_draw_pixel.o ${OBJECTDIR}/_ext/973706451/gfx_draw_rect.o ${OBJECTDIR}/_ext/973706451/gfx_draw_stretchblit.o ${OBJECTDIR}/_ext/973706451/gfx_math.o ${OBJECTDIR}/_ext/1872847683/sys_int_pic32.o ${OBJECTDIR}/_ext/664138601/drv_pmp_static.o ${OBJECTDIR}/_ext/347121368/drv_gfx_ssd1926.o ${OBJECTDIR}/_ext/1689523328/drv_gfx_ssd1289.o ${OBJECTDIR}/_ext/458109090/libaria_harmony.o ${OBJECTDIR}/_ext/458109090/libaria_init.o ${OBJECTDIR}/_ext/458109090/libaria_events.o ${OBJECTDIR}/_ext/458109090/libaria_macros.o ${OBJECTDIR}/_ext/2065038297/gfx_display_def.o ${OBJECTDIR}/_ext/2065038297/gfx_driver_def.o ${OBJECTDIR}/_ext/2065038297/gfx_processor_def.o ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o ${OBJECTDIR}/_ext/340578644/sys_devcon.o ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o ${OBJECTDIR}/_ext/822048611/sys_ports_static.o ${OBJECTDIR}/_ext/74298950/bsp.o ${OBJECTDIR}/_ext/1688732426/system_init.o ${OBJECTDIR}/_ext/1688732426/system_interrupt.o ${OBJECTDIR}/_ext/1688732426/system_exceptions.o ${OBJECTDIR}/_ext/1688732426/system_tasks.o

# Source Files
SOURCEFILES=../src/app.c ../src/main.c ../../../../../../../../microchip/harmony/v2_06/third_party/decoder/jidctint/src/jidctint.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_jpg_common.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_jpg_internal.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_jpg_external.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_png_external.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_png_internal.c ../../../../../../../../microchip/harmony/v2_06/third_party/decoder/lodepng/lodepng.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_raw_external.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_raw_internal.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_rle_external.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_rle_internal.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_utils.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_palette.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_string.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_string_external.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_stringbuffer_external.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_string_internal.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_string_query.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_string_utils.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_array.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_context.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_context_paint.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_draw.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_editwidget.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_event.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_input.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_layer.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_list.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_rectarray.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_scheme.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_screen.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_string.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_utils.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_skin_classic.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_skin_classic_common.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_arc.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_arc_skin_classic.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_bar_graph.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_bar_graph_skin_classic.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_button.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_button_skin_classic.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_checkbox.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_checkbox_skin_classic.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_circle.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_circle_skin_classic.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_circular_gauge.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_circular_gauge_skin_classic.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_circular_slider.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_circular_slider_skin_classic.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_drawsurface.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_drawsurface_skin_classic.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_gradient.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_gradient_skin_classic.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_groupbox.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_groupbox_skin_classic.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_image.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_image_skin_classic.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_imageplus.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_imageplus_skin_classic.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_imagesequence.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_imagesequence_skin_classic.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_keypad.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_keypad_skin_classic.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_label.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_label_skin_classic.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_line.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_line_skin_classic.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_line_graph.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_line_graph_skin_classic.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_list.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_list_skin_classic.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_listwheel.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_listwheel_skin_classic.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_pie_chart.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_pie_chart_skin_classic.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_progressbar.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_progressbar_skin_classic.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_radial_menu.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_radial_menu_skin_classic.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_radiobutton.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_radiobutton_skin_classic.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_radiobutton_group.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_rectangle.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_rectangle_skin_classic.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_scrollbar.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_scrollbar_skin_classic.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_slider.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_slider_skin_classic.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_textfield.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_textfield_skin_classic.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_touchtest.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_touchtest_skin_classic.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_window.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_window_skin_classic.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_color.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_context.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_default_impl.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_display.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_driver_interface.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_get.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_interface.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_layer.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_pixel_buffer.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_processor_interface.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_rect.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_util.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_set.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_color_blend.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_color_convert.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_color_lerp.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_color_value.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_arc.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_blit.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_circle.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_ellipse.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_line.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_pixel.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_rect.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_stretchblit.c ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_math.c ../../../../../../../../microchip/harmony/v2_06/framework/system/int/src/sys_int_pic32.c ../src/system_config/default/framework/driver/pmp/src/drv_pmp_static.c ../src/system_config/default/framework/gfx/driver/controller/ssd1926/drv_gfx_ssd1926.c ../src/system_config/default/framework/gfx/driver/tcon/ssd1289/drv_gfx_ssd1289.c ../src/system_config/default/framework/gfx/libaria/libaria_harmony.c ../src/system_config/default/framework/gfx/libaria/libaria_init.c ../src/system_config/default/framework/gfx/libaria/libaria_events.c ../src/system_config/default/framework/gfx/libaria/libaria_macros.c ../src/system_config/default/framework/gfx/hal/gfx_display_def.c ../src/system_config/default/framework/gfx/hal/gfx_driver_def.c ../src/system_config/default/framework/gfx/hal/gfx_processor_def.c ../src/system_config/default/framework/system/clk/src/sys_clk_pic32mx.c ../src/system_config/default/framework/system/devcon/src/sys_devcon.c ../src/system_config/default/framework/system/devcon/src/sys_devcon_pic32mx.c ../src/system_config/default/framework/system/ports/src/sys_ports_static.c ../src/system_config/default/bsp/bsp.c ../src/system_config/default/system_init.c ../src/system_config/default/system_interrupt.c ../src/system_config/default/system_exceptions.c ../src/system_config/default/system_tasks.c



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
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/take3.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

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
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/default/b901fc122b969a717b6c19995971496a970480a6 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/default/df09614bdd6e6cbf604e13face8ea1e60c1c3b20 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1808658248/jidctint.o: ../../../../../../../../microchip/harmony/v2_06/third_party/decoder/jidctint/src/jidctint.c  .generated_files/flags/default/186427aca4daf2ee7af023eaad92343830637c7d .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1808658248" 
	@${RM} ${OBJECTDIR}/_ext/1808658248/jidctint.o.d 
	@${RM} ${OBJECTDIR}/_ext/1808658248/jidctint.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1808658248/jidctint.o.d" -o ${OBJECTDIR}/_ext/1808658248/jidctint.o ../../../../../../../../microchip/harmony/v2_06/third_party/decoder/jidctint/src/jidctint.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/462527183/gfxu_image_jpg_common.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_jpg_common.c  .generated_files/flags/default/68e27de4a533b685389c35089a527a6d8470a66f .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/462527183" 
	@${RM} ${OBJECTDIR}/_ext/462527183/gfxu_image_jpg_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/462527183/gfxu_image_jpg_common.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/462527183/gfxu_image_jpg_common.o.d" -o ${OBJECTDIR}/_ext/462527183/gfxu_image_jpg_common.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_jpg_common.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/462527183/gfxu_image_jpg_internal.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_jpg_internal.c  .generated_files/flags/default/9f32c5a563b3f91c6908060b399bc3c041ab7dd .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/462527183" 
	@${RM} ${OBJECTDIR}/_ext/462527183/gfxu_image_jpg_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/462527183/gfxu_image_jpg_internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/462527183/gfxu_image_jpg_internal.o.d" -o ${OBJECTDIR}/_ext/462527183/gfxu_image_jpg_internal.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_jpg_internal.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/462527183/gfxu_image_jpg_external.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_jpg_external.c  .generated_files/flags/default/205e1c739a9b4f12b4d1bda39df402be5c2825e8 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/462527183" 
	@${RM} ${OBJECTDIR}/_ext/462527183/gfxu_image_jpg_external.o.d 
	@${RM} ${OBJECTDIR}/_ext/462527183/gfxu_image_jpg_external.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/462527183/gfxu_image_jpg_external.o.d" -o ${OBJECTDIR}/_ext/462527183/gfxu_image_jpg_external.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_jpg_external.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/462527183/gfxu_image_png_external.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_png_external.c  .generated_files/flags/default/682e86644406007b8330dad00930997c7ac07434 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/462527183" 
	@${RM} ${OBJECTDIR}/_ext/462527183/gfxu_image_png_external.o.d 
	@${RM} ${OBJECTDIR}/_ext/462527183/gfxu_image_png_external.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/462527183/gfxu_image_png_external.o.d" -o ${OBJECTDIR}/_ext/462527183/gfxu_image_png_external.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_png_external.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/462527183/gfxu_image_png_internal.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_png_internal.c  .generated_files/flags/default/9adf4227c58d693a76b4ed893d84c9f556f5efcb .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/462527183" 
	@${RM} ${OBJECTDIR}/_ext/462527183/gfxu_image_png_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/462527183/gfxu_image_png_internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/462527183/gfxu_image_png_internal.o.d" -o ${OBJECTDIR}/_ext/462527183/gfxu_image_png_internal.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_png_internal.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1403093931/lodepng.o: ../../../../../../../../microchip/harmony/v2_06/third_party/decoder/lodepng/lodepng.c  .generated_files/flags/default/c61c551179545ebfee04066ddda1c274a0c9d0b7 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1403093931" 
	@${RM} ${OBJECTDIR}/_ext/1403093931/lodepng.o.d 
	@${RM} ${OBJECTDIR}/_ext/1403093931/lodepng.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1403093931/lodepng.o.d" -o ${OBJECTDIR}/_ext/1403093931/lodepng.o ../../../../../../../../microchip/harmony/v2_06/third_party/decoder/lodepng/lodepng.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/462527183/gfxu_image.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image.c  .generated_files/flags/default/f1b22fdbe6e126f2dcc675ae4fc2bfcbb36ae63 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/462527183" 
	@${RM} ${OBJECTDIR}/_ext/462527183/gfxu_image.o.d 
	@${RM} ${OBJECTDIR}/_ext/462527183/gfxu_image.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/462527183/gfxu_image.o.d" -o ${OBJECTDIR}/_ext/462527183/gfxu_image.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/462527183/gfxu_image_raw_external.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_raw_external.c  .generated_files/flags/default/c165f663fc1067a766e88c85f5f36cd55f954277 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/462527183" 
	@${RM} ${OBJECTDIR}/_ext/462527183/gfxu_image_raw_external.o.d 
	@${RM} ${OBJECTDIR}/_ext/462527183/gfxu_image_raw_external.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/462527183/gfxu_image_raw_external.o.d" -o ${OBJECTDIR}/_ext/462527183/gfxu_image_raw_external.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_raw_external.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/462527183/gfxu_image_raw_internal.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_raw_internal.c  .generated_files/flags/default/f05629a64c7bc8fa6b81a5ef460e3a8bd9b66f4b .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/462527183" 
	@${RM} ${OBJECTDIR}/_ext/462527183/gfxu_image_raw_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/462527183/gfxu_image_raw_internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/462527183/gfxu_image_raw_internal.o.d" -o ${OBJECTDIR}/_ext/462527183/gfxu_image_raw_internal.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_raw_internal.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/462527183/gfxu_image_rle_external.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_rle_external.c  .generated_files/flags/default/37a4b196bf0d289b2c3f24227146c548109968b .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/462527183" 
	@${RM} ${OBJECTDIR}/_ext/462527183/gfxu_image_rle_external.o.d 
	@${RM} ${OBJECTDIR}/_ext/462527183/gfxu_image_rle_external.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/462527183/gfxu_image_rle_external.o.d" -o ${OBJECTDIR}/_ext/462527183/gfxu_image_rle_external.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_rle_external.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/462527183/gfxu_image_rle_internal.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_rle_internal.c  .generated_files/flags/default/cbe356af3075229e16cec741dc883674512e100c .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/462527183" 
	@${RM} ${OBJECTDIR}/_ext/462527183/gfxu_image_rle_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/462527183/gfxu_image_rle_internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/462527183/gfxu_image_rle_internal.o.d" -o ${OBJECTDIR}/_ext/462527183/gfxu_image_rle_internal.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_rle_internal.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/462527183/gfxu_image_utils.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_utils.c  .generated_files/flags/default/375b62d65de81588575e958ba70a1b57a3671d8f .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/462527183" 
	@${RM} ${OBJECTDIR}/_ext/462527183/gfxu_image_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/462527183/gfxu_image_utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/462527183/gfxu_image_utils.o.d" -o ${OBJECTDIR}/_ext/462527183/gfxu_image_utils.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_utils.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/462527183/gfxu_palette.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_palette.c  .generated_files/flags/default/47b1b45dd2e8a60926fb60ed8e309737d70ffe51 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/462527183" 
	@${RM} ${OBJECTDIR}/_ext/462527183/gfxu_palette.o.d 
	@${RM} ${OBJECTDIR}/_ext/462527183/gfxu_palette.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/462527183/gfxu_palette.o.d" -o ${OBJECTDIR}/_ext/462527183/gfxu_palette.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_palette.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/462527183/gfxu_string.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_string.c  .generated_files/flags/default/9fde99141479287f8c38de6ed5f4f6bebd5a5841 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/462527183" 
	@${RM} ${OBJECTDIR}/_ext/462527183/gfxu_string.o.d 
	@${RM} ${OBJECTDIR}/_ext/462527183/gfxu_string.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/462527183/gfxu_string.o.d" -o ${OBJECTDIR}/_ext/462527183/gfxu_string.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_string.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/462527183/gfxu_string_external.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_string_external.c  .generated_files/flags/default/c304605c9e8eb814bcea1ea05f7e38d0b0016d6 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/462527183" 
	@${RM} ${OBJECTDIR}/_ext/462527183/gfxu_string_external.o.d 
	@${RM} ${OBJECTDIR}/_ext/462527183/gfxu_string_external.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/462527183/gfxu_string_external.o.d" -o ${OBJECTDIR}/_ext/462527183/gfxu_string_external.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_string_external.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/462527183/gfxu_stringbuffer_external.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_stringbuffer_external.c  .generated_files/flags/default/7a3c6981f99015521ad0d8522eab2e0b72546fd3 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/462527183" 
	@${RM} ${OBJECTDIR}/_ext/462527183/gfxu_stringbuffer_external.o.d 
	@${RM} ${OBJECTDIR}/_ext/462527183/gfxu_stringbuffer_external.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/462527183/gfxu_stringbuffer_external.o.d" -o ${OBJECTDIR}/_ext/462527183/gfxu_stringbuffer_external.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_stringbuffer_external.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/462527183/gfxu_string_internal.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_string_internal.c  .generated_files/flags/default/2edefd31547d222d52b038edb688e36a9bcff9b4 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/462527183" 
	@${RM} ${OBJECTDIR}/_ext/462527183/gfxu_string_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/462527183/gfxu_string_internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/462527183/gfxu_string_internal.o.d" -o ${OBJECTDIR}/_ext/462527183/gfxu_string_internal.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_string_internal.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/462527183/gfxu_string_query.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_string_query.c  .generated_files/flags/default/b8f3c0e0f2d1127b0806a44e984e731e6af1d758 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/462527183" 
	@${RM} ${OBJECTDIR}/_ext/462527183/gfxu_string_query.o.d 
	@${RM} ${OBJECTDIR}/_ext/462527183/gfxu_string_query.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/462527183/gfxu_string_query.o.d" -o ${OBJECTDIR}/_ext/462527183/gfxu_string_query.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_string_query.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/462527183/gfxu_string_utils.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_string_utils.c  .generated_files/flags/default/97cd355a9888fbd8518d566b419199472de8e96e .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/462527183" 
	@${RM} ${OBJECTDIR}/_ext/462527183/gfxu_string_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/462527183/gfxu_string_utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/462527183/gfxu_string_utils.o.d" -o ${OBJECTDIR}/_ext/462527183/gfxu_string_utils.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_string_utils.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria.c  .generated_files/flags/default/4167ef3b0630c50c06299d982eae15a8b3556a76 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_array.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_array.c  .generated_files/flags/default/4d9911e81108b214c712afd3114eefdc2db74e8b .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_array.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_array.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_array.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_array.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_array.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_context.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_context.c  .generated_files/flags/default/d0cb8c1392c9d90f9fea1a60fdd1fc6a6a972e1e .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_context.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_context.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_context.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_context.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_context.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_context_paint.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_context_paint.c  .generated_files/flags/default/d18e61b02162f8866d19a3ef3f05044c158f8c8b .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_context_paint.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_context_paint.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_context_paint.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_context_paint.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_context_paint.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_draw.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_draw.c  .generated_files/flags/default/17910bac0154b7095a720b8a2ce6c9aad7a8656d .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_draw.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_draw.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_draw.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_draw.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_draw.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_editwidget.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_editwidget.c  .generated_files/flags/default/3dbb3701e479d5523bb046e06452f7e9f210bb78 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_editwidget.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_editwidget.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_editwidget.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_editwidget.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_editwidget.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_event.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_event.c  .generated_files/flags/default/c779b2696b5b8023022eb007f0226eaf0eb7ea6 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_event.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_event.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_event.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_event.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_event.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_input.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_input.c  .generated_files/flags/default/dddb63cdc16679bf862cce63e5d6596bf74542e7 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_input.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_input.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_input.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_input.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_input.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_layer.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_layer.c  .generated_files/flags/default/ccda66ef74b66ac3beed2709c14677770a49f382 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_layer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_layer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_layer.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_layer.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_layer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_list.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_list.c  .generated_files/flags/default/132a50a28350bcb18dbc209fb2f2b5f95aa63a8e .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_list.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_list.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_list.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_rectarray.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_rectarray.c  .generated_files/flags/default/625f496ea0e14b1f9b557bcea369e47f6bb6707e .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_rectarray.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_rectarray.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_rectarray.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_rectarray.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_rectarray.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_scheme.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_scheme.c  .generated_files/flags/default/cbad2fe54c6c40dbec509bf5d24ac1526ddf3906 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_scheme.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_scheme.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_scheme.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_scheme.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_scheme.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_screen.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_screen.c  .generated_files/flags/default/399f2f4eb700d44b963af171ba9860ac5e4de5fd .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_screen.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_screen.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_screen.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_screen.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_screen.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_string.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_string.c  .generated_files/flags/default/b5294e224b6b0bee703cfb5e73fe09a902776ec9 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_string.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_string.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_string.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_string.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_string.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_utils.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_utils.c  .generated_files/flags/default/45620b5d8eded9b79ed60ee65b40ae9596c10c2b .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_utils.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_utils.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_utils.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget.c  .generated_files/flags/default/94750e1bccf0d6998c645ae0418b5372ca5e9fb6 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_skin_classic.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_skin_classic.c  .generated_files/flags/default/e76fe52cb8c49a82e796a90f6cabe868d9727555 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_skin_classic.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_skin_classic_common.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_skin_classic_common.c  .generated_files/flags/default/332c7c1f560f0a84b76cf6ea3e5adb50a5351e3f .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_skin_classic_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_skin_classic_common.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_skin_classic_common.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_skin_classic_common.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_skin_classic_common.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_arc.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_arc.c  .generated_files/flags/default/e9f92914f9d6f8bc79792f6caa706f271c767f43 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_arc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_arc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_arc.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_arc.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_arc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_arc_skin_classic.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_arc_skin_classic.c  .generated_files/flags/default/88fb2803febee9078536aad615fde31686858516 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_arc_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_arc_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_arc_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_arc_skin_classic.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_arc_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_bar_graph.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_bar_graph.c  .generated_files/flags/default/62abd6f6a1950b3781a3d089d6aedbb1857d7313 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_bar_graph.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_bar_graph.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_bar_graph.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_bar_graph.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_bar_graph.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_bar_graph_skin_classic.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_bar_graph_skin_classic.c  .generated_files/flags/default/6defd1f50e33ddbd0cba55c24ef99ee2fd4d34c3 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_bar_graph_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_bar_graph_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_bar_graph_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_bar_graph_skin_classic.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_bar_graph_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_button.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_button.c  .generated_files/flags/default/653b42cf6cf3cd3e85b4660d209af559616804a1 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_button.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_button.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_button.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_button.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_button.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_button_skin_classic.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_button_skin_classic.c  .generated_files/flags/default/388a190753bb6e8c69358ee795cbf182a3d62b5f .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_button_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_button_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_button_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_button_skin_classic.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_button_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_checkbox.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_checkbox.c  .generated_files/flags/default/e100d3107e7a80cd52c57226eae55941e85725d4 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_checkbox.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_checkbox.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_checkbox.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_checkbox.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_checkbox.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_checkbox_skin_classic.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_checkbox_skin_classic.c  .generated_files/flags/default/adab110121799b573719b40cd853fc3eb6e10e9 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_checkbox_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_checkbox_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_checkbox_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_checkbox_skin_classic.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_checkbox_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_circle.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_circle.c  .generated_files/flags/default/a885ee81b44914a5336b5f4a20fc7577689b53ec .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_circle.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_circle.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_circle.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_circle.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_circle.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_circle_skin_classic.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_circle_skin_classic.c  .generated_files/flags/default/821f11ee9fd8f00faefc04e27422efabf581eb6a .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_circle_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_circle_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_circle_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_circle_skin_classic.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_circle_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_circular_gauge.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_circular_gauge.c  .generated_files/flags/default/dfad4ddd3c6765fd23d10d865ab37fc35784b571 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_circular_gauge.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_circular_gauge.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_circular_gauge.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_circular_gauge.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_circular_gauge.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_circular_gauge_skin_classic.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_circular_gauge_skin_classic.c  .generated_files/flags/default/c71e0e17446c9437ece3817d2e403961229ab49c .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_circular_gauge_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_circular_gauge_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_circular_gauge_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_circular_gauge_skin_classic.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_circular_gauge_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_circular_slider.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_circular_slider.c  .generated_files/flags/default/48a7684c6225f4635d7769bb4abce702fb75b63b .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_circular_slider.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_circular_slider.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_circular_slider.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_circular_slider.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_circular_slider.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_circular_slider_skin_classic.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_circular_slider_skin_classic.c  .generated_files/flags/default/901d828085fbe132d49ed5eec93326095ab0f79f .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_circular_slider_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_circular_slider_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_circular_slider_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_circular_slider_skin_classic.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_circular_slider_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_drawsurface.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_drawsurface.c  .generated_files/flags/default/865c3235c693f1dec3809b94151c3e06343212a4 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_drawsurface.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_drawsurface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_drawsurface.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_drawsurface.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_drawsurface.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_drawsurface_skin_classic.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_drawsurface_skin_classic.c  .generated_files/flags/default/b82e7b416b2ace4a6cb88e1a5d4eba7c6ba22753 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_drawsurface_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_drawsurface_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_drawsurface_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_drawsurface_skin_classic.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_drawsurface_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_gradient.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_gradient.c  .generated_files/flags/default/1b2be52378383eec00f6644d8d1f526b91d06c1d .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_gradient.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_gradient.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_gradient.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_gradient.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_gradient.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_gradient_skin_classic.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_gradient_skin_classic.c  .generated_files/flags/default/8c1fbb868a2763a945b7b9a634edd3e4c855724a .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_gradient_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_gradient_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_gradient_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_gradient_skin_classic.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_gradient_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_groupbox.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_groupbox.c  .generated_files/flags/default/f72ac3ad26ec507f8c71230c9772080e14219d64 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_groupbox.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_groupbox.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_groupbox.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_groupbox.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_groupbox.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_groupbox_skin_classic.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_groupbox_skin_classic.c  .generated_files/flags/default/86f41204546c8c96ce55c6c0343a0beedb5681e .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_groupbox_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_groupbox_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_groupbox_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_groupbox_skin_classic.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_groupbox_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_image.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_image.c  .generated_files/flags/default/d0d2883a2ffab95f4f09015b6be239e945a348aa .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_image.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_image.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_image.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_image.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_image.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_image_skin_classic.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_image_skin_classic.c  .generated_files/flags/default/ed529edd1901e50eafdd6b5a17a1914120134822 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_image_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_image_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_image_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_image_skin_classic.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_image_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_imageplus.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_imageplus.c  .generated_files/flags/default/62d38722f9a7078ae984cd141fb96fb1ee408af9 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_imageplus.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_imageplus.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_imageplus.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_imageplus.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_imageplus.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_imageplus_skin_classic.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_imageplus_skin_classic.c  .generated_files/flags/default/7cd0b716233f089bea3e21d26065e096279653dd .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_imageplus_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_imageplus_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_imageplus_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_imageplus_skin_classic.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_imageplus_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_imagesequence.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_imagesequence.c  .generated_files/flags/default/e457966e5edf654e2f6d6d58b6181b056d324237 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_imagesequence.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_imagesequence.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_imagesequence.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_imagesequence.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_imagesequence.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_imagesequence_skin_classic.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_imagesequence_skin_classic.c  .generated_files/flags/default/df0aab0cf032247a2cc83aad36aa1afc77a0be09 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_imagesequence_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_imagesequence_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_imagesequence_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_imagesequence_skin_classic.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_imagesequence_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_keypad.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_keypad.c  .generated_files/flags/default/d5d944e866ea61effd7db4a979c4ca21e1a596f8 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_keypad.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_keypad.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_keypad.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_keypad.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_keypad.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_keypad_skin_classic.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_keypad_skin_classic.c  .generated_files/flags/default/b16014639715bfe8bac9a5051832926a637562ef .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_keypad_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_keypad_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_keypad_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_keypad_skin_classic.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_keypad_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_label.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_label.c  .generated_files/flags/default/e9324bc3a53e43a1538b60b720540c1f1c55677a .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_label.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_label.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_label.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_label.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_label.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_label_skin_classic.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_label_skin_classic.c  .generated_files/flags/default/2af9d6bd527ea566ef6761c22381f29b192158f4 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_label_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_label_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_label_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_label_skin_classic.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_label_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_line.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_line.c  .generated_files/flags/default/f5a6dac5af59c75b78675cf849eb056b8492a82c .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_line.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_line.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_line.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_line.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_line.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_line_skin_classic.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_line_skin_classic.c  .generated_files/flags/default/f682fdbb35bfc29bf455db226d6b80d4bc04527e .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_line_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_line_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_line_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_line_skin_classic.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_line_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_line_graph.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_line_graph.c  .generated_files/flags/default/5c00dd5b497d4985785e4c8fde5efefcabb37 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_line_graph.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_line_graph.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_line_graph.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_line_graph.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_line_graph.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_line_graph_skin_classic.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_line_graph_skin_classic.c  .generated_files/flags/default/c0e1068da091b1756bba6e4d3617090f75045903 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_line_graph_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_line_graph_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_line_graph_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_line_graph_skin_classic.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_line_graph_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_list.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_list.c  .generated_files/flags/default/9178dad6fa40d5b8d105ec1c862d724fa4590d08 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_list.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_list.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_list.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_list_skin_classic.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_list_skin_classic.c  .generated_files/flags/default/4a77fdff67156fa76ba1ff98c4a08a152032c6ea .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_list_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_list_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_list_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_list_skin_classic.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_list_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_listwheel.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_listwheel.c  .generated_files/flags/default/c67aad40534bb9dd65ed2784d6385d4809aefc53 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_listwheel.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_listwheel.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_listwheel.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_listwheel.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_listwheel.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_listwheel_skin_classic.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_listwheel_skin_classic.c  .generated_files/flags/default/5b509e82c639da77de40c7aeba90385b3467a585 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_listwheel_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_listwheel_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_listwheel_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_listwheel_skin_classic.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_listwheel_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_pie_chart.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_pie_chart.c  .generated_files/flags/default/a218f2e664b0fe5b80c43a2813c3b433c0bb9d9e .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_pie_chart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_pie_chart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_pie_chart.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_pie_chart.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_pie_chart.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_pie_chart_skin_classic.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_pie_chart_skin_classic.c  .generated_files/flags/default/8c0cdc752cd834386a9f2ad9891c53cbcfcd686b .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_pie_chart_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_pie_chart_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_pie_chart_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_pie_chart_skin_classic.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_pie_chart_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_progressbar.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_progressbar.c  .generated_files/flags/default/e0ce34de46335c5c3f89c577a7202d93655134b2 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_progressbar.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_progressbar.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_progressbar.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_progressbar.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_progressbar.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_progressbar_skin_classic.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_progressbar_skin_classic.c  .generated_files/flags/default/b377c4b06cfc49d26c0d299ad5a0582cfe559839 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_progressbar_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_progressbar_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_progressbar_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_progressbar_skin_classic.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_progressbar_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_radial_menu.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_radial_menu.c  .generated_files/flags/default/c7801cd4462d771bd6ab21e869160caa10f7441b .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_radial_menu.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_radial_menu.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_radial_menu.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_radial_menu.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_radial_menu.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_radial_menu_skin_classic.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_radial_menu_skin_classic.c  .generated_files/flags/default/a4af5218123322cc1301d97eddb171a057c1a2ca .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_radial_menu_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_radial_menu_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_radial_menu_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_radial_menu_skin_classic.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_radial_menu_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_radiobutton.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_radiobutton.c  .generated_files/flags/default/bb40479375f6c23175de5612e5344c248afe99f3 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_radiobutton.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_radiobutton.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_radiobutton.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_radiobutton.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_radiobutton.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_radiobutton_skin_classic.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_radiobutton_skin_classic.c  .generated_files/flags/default/a8a4fca3040d89b7447e3d6fcf02311030c042c4 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_radiobutton_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_radiobutton_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_radiobutton_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_radiobutton_skin_classic.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_radiobutton_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_radiobutton_group.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_radiobutton_group.c  .generated_files/flags/default/945ca437be8711f66812340fcd4a01f4ab950f83 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_radiobutton_group.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_radiobutton_group.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_radiobutton_group.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_radiobutton_group.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_radiobutton_group.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_rectangle.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_rectangle.c  .generated_files/flags/default/635bb2f040fd0e70483941c9ee8ebfa6ae01a027 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_rectangle.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_rectangle.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_rectangle.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_rectangle.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_rectangle.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_rectangle_skin_classic.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_rectangle_skin_classic.c  .generated_files/flags/default/8b1a624f7a176a79eaa0a5a37e243a6c4034dee6 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_rectangle_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_rectangle_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_rectangle_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_rectangle_skin_classic.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_rectangle_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_scrollbar.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_scrollbar.c  .generated_files/flags/default/fd396b356a764d5ceb37283757b3252fa3910b70 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_scrollbar.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_scrollbar.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_scrollbar.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_scrollbar.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_scrollbar.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_scrollbar_skin_classic.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_scrollbar_skin_classic.c  .generated_files/flags/default/5ae3cc21abf7aac01f1d7ce66a9664bdedbdfc1b .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_scrollbar_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_scrollbar_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_scrollbar_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_scrollbar_skin_classic.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_scrollbar_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_slider.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_slider.c  .generated_files/flags/default/60df6374a98fa5bbe103007f96693c62a0b412c .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_slider.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_slider.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_slider.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_slider.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_slider.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_slider_skin_classic.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_slider_skin_classic.c  .generated_files/flags/default/c987f632adf96d4beadd24c11672cc8d89808849 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_slider_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_slider_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_slider_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_slider_skin_classic.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_slider_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_textfield.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_textfield.c  .generated_files/flags/default/3adcd89b46030f5203885490215fa85443b3db4a .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_textfield.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_textfield.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_textfield.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_textfield.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_textfield.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_textfield_skin_classic.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_textfield_skin_classic.c  .generated_files/flags/default/6ef4987dd20079e4881596c1cc04fbcb6cbdfac5 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_textfield_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_textfield_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_textfield_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_textfield_skin_classic.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_textfield_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_touchtest.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_touchtest.c  .generated_files/flags/default/60e70d021bef295f483c701dac59284f62478767 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_touchtest.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_touchtest.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_touchtest.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_touchtest.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_touchtest.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_touchtest_skin_classic.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_touchtest_skin_classic.c  .generated_files/flags/default/fcf12547ab95f0e48170fe2c0578ab71dc30f9bd .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_touchtest_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_touchtest_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_touchtest_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_touchtest_skin_classic.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_touchtest_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_window.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_window.c  .generated_files/flags/default/7f8fcd6eb1d26dbe759358260a0e14d4d00f36eb .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_window.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_window.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_window.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_window.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_window.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_window_skin_classic.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_window_skin_classic.c  .generated_files/flags/default/9c432b524d931ac450b43dda58e9c84f54117053 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_window_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_window_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_window_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_window_skin_classic.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_window_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/973706451/gfx.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx.c  .generated_files/flags/default/9afaffe71fdc65e85655703619bc16e922c90f14 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/973706451" 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx.o.d 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/973706451/gfx.o.d" -o ${OBJECTDIR}/_ext/973706451/gfx.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/973706451/gfx_color.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_color.c  .generated_files/flags/default/97cde41d3eec15e8b593f45c3b8b8601596a41bc .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/973706451" 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_color.o.d 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_color.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/973706451/gfx_color.o.d" -o ${OBJECTDIR}/_ext/973706451/gfx_color.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_color.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/973706451/gfx_context.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_context.c  .generated_files/flags/default/279ce35adccdc30b2540bc4eb835a9969af2c517 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/973706451" 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_context.o.d 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_context.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/973706451/gfx_context.o.d" -o ${OBJECTDIR}/_ext/973706451/gfx_context.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_context.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/973706451/gfx_default_impl.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_default_impl.c  .generated_files/flags/default/bedf576444713a044143433bb6238b4e285ccb08 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/973706451" 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_default_impl.o.d 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_default_impl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/973706451/gfx_default_impl.o.d" -o ${OBJECTDIR}/_ext/973706451/gfx_default_impl.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_default_impl.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/973706451/gfx_display.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_display.c  .generated_files/flags/default/41eaa5382adceb90e3a88cf9b4eba06150421ea1 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/973706451" 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_display.o.d 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_display.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/973706451/gfx_display.o.d" -o ${OBJECTDIR}/_ext/973706451/gfx_display.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_display.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/973706451/gfx_driver_interface.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_driver_interface.c  .generated_files/flags/default/35e4b3b8e27d541c1990b096350616a6f869d305 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/973706451" 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_driver_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_driver_interface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/973706451/gfx_driver_interface.o.d" -o ${OBJECTDIR}/_ext/973706451/gfx_driver_interface.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_driver_interface.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/973706451/gfx_get.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_get.c  .generated_files/flags/default/31dfc4fbe54568726cdf1be0ed64f17b50136c38 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/973706451" 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_get.o.d 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_get.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/973706451/gfx_get.o.d" -o ${OBJECTDIR}/_ext/973706451/gfx_get.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_get.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/973706451/gfx_interface.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_interface.c  .generated_files/flags/default/f82f37c5b7d8e5bab26467f4663dec3c5e90f59c .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/973706451" 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_interface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/973706451/gfx_interface.o.d" -o ${OBJECTDIR}/_ext/973706451/gfx_interface.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_interface.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/973706451/gfx_layer.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_layer.c  .generated_files/flags/default/68b6a720036271b3d09b9a72c60c468988387da .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/973706451" 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_layer.o.d 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_layer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/973706451/gfx_layer.o.d" -o ${OBJECTDIR}/_ext/973706451/gfx_layer.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_layer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/973706451/gfx_pixel_buffer.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_pixel_buffer.c  .generated_files/flags/default/c81d33f391326dd2a2fd331c1e2df72978a531d9 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/973706451" 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_pixel_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_pixel_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/973706451/gfx_pixel_buffer.o.d" -o ${OBJECTDIR}/_ext/973706451/gfx_pixel_buffer.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_pixel_buffer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/973706451/gfx_processor_interface.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_processor_interface.c  .generated_files/flags/default/e70b9a8e4c3f21167d3bf10ef02d987e862874ec .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/973706451" 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_processor_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_processor_interface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/973706451/gfx_processor_interface.o.d" -o ${OBJECTDIR}/_ext/973706451/gfx_processor_interface.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_processor_interface.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/973706451/gfx_rect.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_rect.c  .generated_files/flags/default/501adba3a56a5fcaf7feb59b16d6ae1f42be9a82 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/973706451" 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_rect.o.d 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_rect.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/973706451/gfx_rect.o.d" -o ${OBJECTDIR}/_ext/973706451/gfx_rect.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_rect.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/973706451/gfx_util.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_util.c  .generated_files/flags/default/55ca55a5ae71fda95eb613d10f76c77c27bcabe .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/973706451" 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_util.o.d 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_util.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/973706451/gfx_util.o.d" -o ${OBJECTDIR}/_ext/973706451/gfx_util.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_util.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/973706451/gfx_set.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_set.c  .generated_files/flags/default/1fd87ed79b6ae98cb2aa401546cf3c5302d1c3f8 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/973706451" 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_set.o.d 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_set.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/973706451/gfx_set.o.d" -o ${OBJECTDIR}/_ext/973706451/gfx_set.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_set.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/973706451/gfx_color_blend.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_color_blend.c  .generated_files/flags/default/c7f1f0e876589e80feb895695b014a49d92e9356 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/973706451" 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_color_blend.o.d 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_color_blend.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/973706451/gfx_color_blend.o.d" -o ${OBJECTDIR}/_ext/973706451/gfx_color_blend.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_color_blend.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/973706451/gfx_color_convert.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_color_convert.c  .generated_files/flags/default/22fda429776ebd14bb6c980c8da85e5f5751199c .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/973706451" 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_color_convert.o.d 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_color_convert.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/973706451/gfx_color_convert.o.d" -o ${OBJECTDIR}/_ext/973706451/gfx_color_convert.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_color_convert.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/973706451/gfx_color_lerp.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_color_lerp.c  .generated_files/flags/default/ee56809ec1e98972b1cbfa61c74d0e5f06039bc8 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/973706451" 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_color_lerp.o.d 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_color_lerp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/973706451/gfx_color_lerp.o.d" -o ${OBJECTDIR}/_ext/973706451/gfx_color_lerp.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_color_lerp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/973706451/gfx_color_value.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_color_value.c  .generated_files/flags/default/72e3bb92fd9795e08bca3d191676c70cc646e8e6 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/973706451" 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_color_value.o.d 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_color_value.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/973706451/gfx_color_value.o.d" -o ${OBJECTDIR}/_ext/973706451/gfx_color_value.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_color_value.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/973706451/gfx_draw_arc.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_arc.c  .generated_files/flags/default/22f34547a487dd916a5ee1a879302de86b0503d6 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/973706451" 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_draw_arc.o.d 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_draw_arc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/973706451/gfx_draw_arc.o.d" -o ${OBJECTDIR}/_ext/973706451/gfx_draw_arc.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_arc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/973706451/gfx_draw_blit.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_blit.c  .generated_files/flags/default/68fad8dbbdf5de6d170f2978871b905a772caa53 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/973706451" 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_draw_blit.o.d 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_draw_blit.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/973706451/gfx_draw_blit.o.d" -o ${OBJECTDIR}/_ext/973706451/gfx_draw_blit.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_blit.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/973706451/gfx_draw_circle.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_circle.c  .generated_files/flags/default/b06cc231d74b04fee533d9ab07265001e301212f .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/973706451" 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_draw_circle.o.d 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_draw_circle.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/973706451/gfx_draw_circle.o.d" -o ${OBJECTDIR}/_ext/973706451/gfx_draw_circle.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_circle.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/973706451/gfx_draw_ellipse.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_ellipse.c  .generated_files/flags/default/add2e3e79f7fdf1c7f91151866f7c594022df6c3 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/973706451" 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_draw_ellipse.o.d 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_draw_ellipse.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/973706451/gfx_draw_ellipse.o.d" -o ${OBJECTDIR}/_ext/973706451/gfx_draw_ellipse.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_ellipse.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/973706451/gfx_draw_line.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_line.c  .generated_files/flags/default/1d3bf945dbfbeff83a8c77f8719274787e8b5f26 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/973706451" 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_draw_line.o.d 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_draw_line.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/973706451/gfx_draw_line.o.d" -o ${OBJECTDIR}/_ext/973706451/gfx_draw_line.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_line.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/973706451/gfx_draw_pixel.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_pixel.c  .generated_files/flags/default/e8c848c7686dd1e35ba67b94a239a501352072c6 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/973706451" 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_draw_pixel.o.d 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_draw_pixel.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/973706451/gfx_draw_pixel.o.d" -o ${OBJECTDIR}/_ext/973706451/gfx_draw_pixel.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_pixel.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/973706451/gfx_draw_rect.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_rect.c  .generated_files/flags/default/1d21dfca90bec3a6f7d1c3240cedf38fc4c815c9 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/973706451" 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_draw_rect.o.d 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_draw_rect.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/973706451/gfx_draw_rect.o.d" -o ${OBJECTDIR}/_ext/973706451/gfx_draw_rect.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_rect.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/973706451/gfx_draw_stretchblit.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_stretchblit.c  .generated_files/flags/default/5e1963df25fe34b06f40015e28865404d3579af9 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/973706451" 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_draw_stretchblit.o.d 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_draw_stretchblit.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/973706451/gfx_draw_stretchblit.o.d" -o ${OBJECTDIR}/_ext/973706451/gfx_draw_stretchblit.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_stretchblit.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/973706451/gfx_math.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_math.c  .generated_files/flags/default/2ab5ea5197a73f468df1511b3542bc81599418fd .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/973706451" 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_math.o.d 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_math.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/973706451/gfx_math.o.d" -o ${OBJECTDIR}/_ext/973706451/gfx_math.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_math.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872847683/sys_int_pic32.o: ../../../../../../../../microchip/harmony/v2_06/framework/system/int/src/sys_int_pic32.c  .generated_files/flags/default/ee5724556a59e6a9a54be4852bb70bf0883da2ed .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872847683" 
	@${RM} ${OBJECTDIR}/_ext/1872847683/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872847683/sys_int_pic32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872847683/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/1872847683/sys_int_pic32.o ../../../../../../../../microchip/harmony/v2_06/framework/system/int/src/sys_int_pic32.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/664138601/drv_pmp_static.o: ../src/system_config/default/framework/driver/pmp/src/drv_pmp_static.c  .generated_files/flags/default/41432c34b02d5a4cb0c2ca6cc940e28cab8ac62 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/664138601" 
	@${RM} ${OBJECTDIR}/_ext/664138601/drv_pmp_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/664138601/drv_pmp_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/664138601/drv_pmp_static.o.d" -o ${OBJECTDIR}/_ext/664138601/drv_pmp_static.o ../src/system_config/default/framework/driver/pmp/src/drv_pmp_static.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/347121368/drv_gfx_ssd1926.o: ../src/system_config/default/framework/gfx/driver/controller/ssd1926/drv_gfx_ssd1926.c  .generated_files/flags/default/76e5ad55a1834761b514f8b758825edf5719c4f1 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/347121368" 
	@${RM} ${OBJECTDIR}/_ext/347121368/drv_gfx_ssd1926.o.d 
	@${RM} ${OBJECTDIR}/_ext/347121368/drv_gfx_ssd1926.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/347121368/drv_gfx_ssd1926.o.d" -o ${OBJECTDIR}/_ext/347121368/drv_gfx_ssd1926.o ../src/system_config/default/framework/gfx/driver/controller/ssd1926/drv_gfx_ssd1926.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1689523328/drv_gfx_ssd1289.o: ../src/system_config/default/framework/gfx/driver/tcon/ssd1289/drv_gfx_ssd1289.c  .generated_files/flags/default/b8f2639c06b88f304b67a2e19fa5e9c1a1c09a1b .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1689523328" 
	@${RM} ${OBJECTDIR}/_ext/1689523328/drv_gfx_ssd1289.o.d 
	@${RM} ${OBJECTDIR}/_ext/1689523328/drv_gfx_ssd1289.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1689523328/drv_gfx_ssd1289.o.d" -o ${OBJECTDIR}/_ext/1689523328/drv_gfx_ssd1289.o ../src/system_config/default/framework/gfx/driver/tcon/ssd1289/drv_gfx_ssd1289.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/458109090/libaria_harmony.o: ../src/system_config/default/framework/gfx/libaria/libaria_harmony.c  .generated_files/flags/default/3625f947dbae648820a76cc6fcb8ebbdb85ff71 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/458109090" 
	@${RM} ${OBJECTDIR}/_ext/458109090/libaria_harmony.o.d 
	@${RM} ${OBJECTDIR}/_ext/458109090/libaria_harmony.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/458109090/libaria_harmony.o.d" -o ${OBJECTDIR}/_ext/458109090/libaria_harmony.o ../src/system_config/default/framework/gfx/libaria/libaria_harmony.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/458109090/libaria_init.o: ../src/system_config/default/framework/gfx/libaria/libaria_init.c  .generated_files/flags/default/928d8e8d86c5337df5ca40a7118e1611dbfb285a .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/458109090" 
	@${RM} ${OBJECTDIR}/_ext/458109090/libaria_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/458109090/libaria_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/458109090/libaria_init.o.d" -o ${OBJECTDIR}/_ext/458109090/libaria_init.o ../src/system_config/default/framework/gfx/libaria/libaria_init.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/458109090/libaria_events.o: ../src/system_config/default/framework/gfx/libaria/libaria_events.c  .generated_files/flags/default/97a2c1c8c81c1eae950ca183ac09303e62c82eec .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/458109090" 
	@${RM} ${OBJECTDIR}/_ext/458109090/libaria_events.o.d 
	@${RM} ${OBJECTDIR}/_ext/458109090/libaria_events.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/458109090/libaria_events.o.d" -o ${OBJECTDIR}/_ext/458109090/libaria_events.o ../src/system_config/default/framework/gfx/libaria/libaria_events.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/458109090/libaria_macros.o: ../src/system_config/default/framework/gfx/libaria/libaria_macros.c  .generated_files/flags/default/70275d660abc4f453b21b80cada45dcfea506038 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/458109090" 
	@${RM} ${OBJECTDIR}/_ext/458109090/libaria_macros.o.d 
	@${RM} ${OBJECTDIR}/_ext/458109090/libaria_macros.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/458109090/libaria_macros.o.d" -o ${OBJECTDIR}/_ext/458109090/libaria_macros.o ../src/system_config/default/framework/gfx/libaria/libaria_macros.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2065038297/gfx_display_def.o: ../src/system_config/default/framework/gfx/hal/gfx_display_def.c  .generated_files/flags/default/d0e9bfb0c477ea60bffbb7e9850fe73e92adc39a .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/2065038297" 
	@${RM} ${OBJECTDIR}/_ext/2065038297/gfx_display_def.o.d 
	@${RM} ${OBJECTDIR}/_ext/2065038297/gfx_display_def.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/2065038297/gfx_display_def.o.d" -o ${OBJECTDIR}/_ext/2065038297/gfx_display_def.o ../src/system_config/default/framework/gfx/hal/gfx_display_def.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2065038297/gfx_driver_def.o: ../src/system_config/default/framework/gfx/hal/gfx_driver_def.c  .generated_files/flags/default/8be92402274a765064124e35fd3422a19aea8085 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/2065038297" 
	@${RM} ${OBJECTDIR}/_ext/2065038297/gfx_driver_def.o.d 
	@${RM} ${OBJECTDIR}/_ext/2065038297/gfx_driver_def.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/2065038297/gfx_driver_def.o.d" -o ${OBJECTDIR}/_ext/2065038297/gfx_driver_def.o ../src/system_config/default/framework/gfx/hal/gfx_driver_def.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2065038297/gfx_processor_def.o: ../src/system_config/default/framework/gfx/hal/gfx_processor_def.c  .generated_files/flags/default/7c294179da932d390858791a796ec996d336c5fa .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/2065038297" 
	@${RM} ${OBJECTDIR}/_ext/2065038297/gfx_processor_def.o.d 
	@${RM} ${OBJECTDIR}/_ext/2065038297/gfx_processor_def.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/2065038297/gfx_processor_def.o.d" -o ${OBJECTDIR}/_ext/2065038297/gfx_processor_def.o ../src/system_config/default/framework/gfx/hal/gfx_processor_def.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o: ../src/system_config/default/framework/system/clk/src/sys_clk_pic32mx.c  .generated_files/flags/default/69a8d8f746f9961f0df7862343ee2bbb15fde6ac .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/639803181" 
	@${RM} ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o.d" -o ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o ../src/system_config/default/framework/system/clk/src/sys_clk_pic32mx.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/340578644/sys_devcon.o: ../src/system_config/default/framework/system/devcon/src/sys_devcon.c  .generated_files/flags/default/5471641b72c031d428851ce3f7893d2c3921f258 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/340578644" 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/340578644/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/340578644/sys_devcon.o ../src/system_config/default/framework/system/devcon/src/sys_devcon.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o: ../src/system_config/default/framework/system/devcon/src/sys_devcon_pic32mx.c  .generated_files/flags/default/94ba595083dcff558e6e8304e2a8867d79d13e48 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/340578644" 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o.d" -o ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o ../src/system_config/default/framework/system/devcon/src/sys_devcon_pic32mx.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/822048611/sys_ports_static.o: ../src/system_config/default/framework/system/ports/src/sys_ports_static.c  .generated_files/flags/default/4f8fe6dd8b159cb2e8c03db7cd527bdddb4b22e4 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/822048611" 
	@${RM} ${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/822048611/sys_ports_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/822048611/sys_ports_static.o ../src/system_config/default/framework/system/ports/src/sys_ports_static.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/74298950/bsp.o: ../src/system_config/default/bsp/bsp.c  .generated_files/flags/default/818a8890e18d65fa2b4b46275a7140870a813b25 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/74298950" 
	@${RM} ${OBJECTDIR}/_ext/74298950/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/74298950/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/74298950/bsp.o.d" -o ${OBJECTDIR}/_ext/74298950/bsp.o ../src/system_config/default/bsp/bsp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1688732426/system_init.o: ../src/system_config/default/system_init.c  .generated_files/flags/default/ce5970d606f34779f8c5e501ad1ada13630a388d .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_init.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_init.o ../src/system_config/default/system_init.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1688732426/system_interrupt.o: ../src/system_config/default/system_interrupt.c  .generated_files/flags/default/479bca35bc8a2a3baff790a486ca1d922053fbbb .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_interrupt.o ../src/system_config/default/system_interrupt.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1688732426/system_exceptions.o: ../src/system_config/default/system_exceptions.c  .generated_files/flags/default/41484b48c3acb3ee95f5886a7df006090a3d5632 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_exceptions.o ../src/system_config/default/system_exceptions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1688732426/system_tasks.o: ../src/system_config/default/system_tasks.c  .generated_files/flags/default/38b63704ff22ef5e93b776b7c8d09aeaaeb5e713 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_tasks.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_tasks.o ../src/system_config/default/system_tasks.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/default/ff72b6c7ab6abe3606a3718aa91c71f671b2d7a1 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/default/90090f321b340d50affc6d4a719f4230ada59d59 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1808658248/jidctint.o: ../../../../../../../../microchip/harmony/v2_06/third_party/decoder/jidctint/src/jidctint.c  .generated_files/flags/default/5b5ccbfec93c6bac194a53fb9aaf7c3da8d7c078 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1808658248" 
	@${RM} ${OBJECTDIR}/_ext/1808658248/jidctint.o.d 
	@${RM} ${OBJECTDIR}/_ext/1808658248/jidctint.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1808658248/jidctint.o.d" -o ${OBJECTDIR}/_ext/1808658248/jidctint.o ../../../../../../../../microchip/harmony/v2_06/third_party/decoder/jidctint/src/jidctint.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/462527183/gfxu_image_jpg_common.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_jpg_common.c  .generated_files/flags/default/6df734e416b620f583c760a580c27876b810a28b .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/462527183" 
	@${RM} ${OBJECTDIR}/_ext/462527183/gfxu_image_jpg_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/462527183/gfxu_image_jpg_common.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/462527183/gfxu_image_jpg_common.o.d" -o ${OBJECTDIR}/_ext/462527183/gfxu_image_jpg_common.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_jpg_common.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/462527183/gfxu_image_jpg_internal.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_jpg_internal.c  .generated_files/flags/default/c72eb050f2247294bdec5f7c308254b50f5ffb70 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/462527183" 
	@${RM} ${OBJECTDIR}/_ext/462527183/gfxu_image_jpg_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/462527183/gfxu_image_jpg_internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/462527183/gfxu_image_jpg_internal.o.d" -o ${OBJECTDIR}/_ext/462527183/gfxu_image_jpg_internal.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_jpg_internal.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/462527183/gfxu_image_jpg_external.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_jpg_external.c  .generated_files/flags/default/8e4eba9045b0aa9aa7668930b92a3bb4a1b10c23 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/462527183" 
	@${RM} ${OBJECTDIR}/_ext/462527183/gfxu_image_jpg_external.o.d 
	@${RM} ${OBJECTDIR}/_ext/462527183/gfxu_image_jpg_external.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/462527183/gfxu_image_jpg_external.o.d" -o ${OBJECTDIR}/_ext/462527183/gfxu_image_jpg_external.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_jpg_external.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/462527183/gfxu_image_png_external.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_png_external.c  .generated_files/flags/default/136f18e9e4785dd81ee1eb7d329d7d6e073febed .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/462527183" 
	@${RM} ${OBJECTDIR}/_ext/462527183/gfxu_image_png_external.o.d 
	@${RM} ${OBJECTDIR}/_ext/462527183/gfxu_image_png_external.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/462527183/gfxu_image_png_external.o.d" -o ${OBJECTDIR}/_ext/462527183/gfxu_image_png_external.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_png_external.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/462527183/gfxu_image_png_internal.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_png_internal.c  .generated_files/flags/default/af6d442818d531105185e00899df8cbb13d69b50 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/462527183" 
	@${RM} ${OBJECTDIR}/_ext/462527183/gfxu_image_png_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/462527183/gfxu_image_png_internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/462527183/gfxu_image_png_internal.o.d" -o ${OBJECTDIR}/_ext/462527183/gfxu_image_png_internal.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_png_internal.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1403093931/lodepng.o: ../../../../../../../../microchip/harmony/v2_06/third_party/decoder/lodepng/lodepng.c  .generated_files/flags/default/d97c44b20b41aeb1dedb7472e4f4ac6b175af32d .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1403093931" 
	@${RM} ${OBJECTDIR}/_ext/1403093931/lodepng.o.d 
	@${RM} ${OBJECTDIR}/_ext/1403093931/lodepng.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1403093931/lodepng.o.d" -o ${OBJECTDIR}/_ext/1403093931/lodepng.o ../../../../../../../../microchip/harmony/v2_06/third_party/decoder/lodepng/lodepng.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/462527183/gfxu_image.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image.c  .generated_files/flags/default/3cbb0e6eed75cd8c8f2326ccd3676d90df1d8ff6 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/462527183" 
	@${RM} ${OBJECTDIR}/_ext/462527183/gfxu_image.o.d 
	@${RM} ${OBJECTDIR}/_ext/462527183/gfxu_image.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/462527183/gfxu_image.o.d" -o ${OBJECTDIR}/_ext/462527183/gfxu_image.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/462527183/gfxu_image_raw_external.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_raw_external.c  .generated_files/flags/default/769a384c39a93598b96633ba30eef823f6d63b85 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/462527183" 
	@${RM} ${OBJECTDIR}/_ext/462527183/gfxu_image_raw_external.o.d 
	@${RM} ${OBJECTDIR}/_ext/462527183/gfxu_image_raw_external.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/462527183/gfxu_image_raw_external.o.d" -o ${OBJECTDIR}/_ext/462527183/gfxu_image_raw_external.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_raw_external.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/462527183/gfxu_image_raw_internal.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_raw_internal.c  .generated_files/flags/default/659156792229b01c245edd0dea952fd369872ab6 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/462527183" 
	@${RM} ${OBJECTDIR}/_ext/462527183/gfxu_image_raw_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/462527183/gfxu_image_raw_internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/462527183/gfxu_image_raw_internal.o.d" -o ${OBJECTDIR}/_ext/462527183/gfxu_image_raw_internal.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_raw_internal.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/462527183/gfxu_image_rle_external.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_rle_external.c  .generated_files/flags/default/fc88c526d2626130f016fed4a53a737f14b757a8 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/462527183" 
	@${RM} ${OBJECTDIR}/_ext/462527183/gfxu_image_rle_external.o.d 
	@${RM} ${OBJECTDIR}/_ext/462527183/gfxu_image_rle_external.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/462527183/gfxu_image_rle_external.o.d" -o ${OBJECTDIR}/_ext/462527183/gfxu_image_rle_external.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_rle_external.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/462527183/gfxu_image_rle_internal.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_rle_internal.c  .generated_files/flags/default/796a9e57c86931c3024d2a1f1707368892946ad .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/462527183" 
	@${RM} ${OBJECTDIR}/_ext/462527183/gfxu_image_rle_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/462527183/gfxu_image_rle_internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/462527183/gfxu_image_rle_internal.o.d" -o ${OBJECTDIR}/_ext/462527183/gfxu_image_rle_internal.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_rle_internal.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/462527183/gfxu_image_utils.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_utils.c  .generated_files/flags/default/ba2ef35203c2d5a2938e63a2853933d9a4ab7f19 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/462527183" 
	@${RM} ${OBJECTDIR}/_ext/462527183/gfxu_image_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/462527183/gfxu_image_utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/462527183/gfxu_image_utils.o.d" -o ${OBJECTDIR}/_ext/462527183/gfxu_image_utils.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_image_utils.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/462527183/gfxu_palette.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_palette.c  .generated_files/flags/default/15eacc62d079819215717219bfd55f53017fd719 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/462527183" 
	@${RM} ${OBJECTDIR}/_ext/462527183/gfxu_palette.o.d 
	@${RM} ${OBJECTDIR}/_ext/462527183/gfxu_palette.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/462527183/gfxu_palette.o.d" -o ${OBJECTDIR}/_ext/462527183/gfxu_palette.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_palette.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/462527183/gfxu_string.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_string.c  .generated_files/flags/default/9b1b78a6b93d4bae24a0fe918d8efda558fcc26d .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/462527183" 
	@${RM} ${OBJECTDIR}/_ext/462527183/gfxu_string.o.d 
	@${RM} ${OBJECTDIR}/_ext/462527183/gfxu_string.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/462527183/gfxu_string.o.d" -o ${OBJECTDIR}/_ext/462527183/gfxu_string.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_string.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/462527183/gfxu_string_external.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_string_external.c  .generated_files/flags/default/4db73318d3709157d4bd06602c7c2d528bc03d58 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/462527183" 
	@${RM} ${OBJECTDIR}/_ext/462527183/gfxu_string_external.o.d 
	@${RM} ${OBJECTDIR}/_ext/462527183/gfxu_string_external.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/462527183/gfxu_string_external.o.d" -o ${OBJECTDIR}/_ext/462527183/gfxu_string_external.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_string_external.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/462527183/gfxu_stringbuffer_external.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_stringbuffer_external.c  .generated_files/flags/default/fe88412c2ef86340e2cbfc56e8425fe3760c12a9 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/462527183" 
	@${RM} ${OBJECTDIR}/_ext/462527183/gfxu_stringbuffer_external.o.d 
	@${RM} ${OBJECTDIR}/_ext/462527183/gfxu_stringbuffer_external.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/462527183/gfxu_stringbuffer_external.o.d" -o ${OBJECTDIR}/_ext/462527183/gfxu_stringbuffer_external.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_stringbuffer_external.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/462527183/gfxu_string_internal.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_string_internal.c  .generated_files/flags/default/97980ffc44c41e17b401d9c5536906a371758f1b .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/462527183" 
	@${RM} ${OBJECTDIR}/_ext/462527183/gfxu_string_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/462527183/gfxu_string_internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/462527183/gfxu_string_internal.o.d" -o ${OBJECTDIR}/_ext/462527183/gfxu_string_internal.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_string_internal.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/462527183/gfxu_string_query.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_string_query.c  .generated_files/flags/default/8ac06f51c59ac89d119656f30c13b6df3f3efd1b .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/462527183" 
	@${RM} ${OBJECTDIR}/_ext/462527183/gfxu_string_query.o.d 
	@${RM} ${OBJECTDIR}/_ext/462527183/gfxu_string_query.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/462527183/gfxu_string_query.o.d" -o ${OBJECTDIR}/_ext/462527183/gfxu_string_query.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_string_query.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/462527183/gfxu_string_utils.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_string_utils.c  .generated_files/flags/default/e8a4e9c8bff16c3951c79ef1339e3f5140cc6881 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/462527183" 
	@${RM} ${OBJECTDIR}/_ext/462527183/gfxu_string_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/462527183/gfxu_string_utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/462527183/gfxu_string_utils.o.d" -o ${OBJECTDIR}/_ext/462527183/gfxu_string_utils.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/utils/src/gfxu_string_utils.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria.c  .generated_files/flags/default/2a4240fc874c8019ac4f77de6f657f506fcd2e2d .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_array.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_array.c  .generated_files/flags/default/f56b1cabf6542d90c5f9fd5a7bf136bbba4b687e .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_array.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_array.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_array.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_array.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_array.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_context.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_context.c  .generated_files/flags/default/179277d585d489f479a97dead7b45723c9ba79a3 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_context.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_context.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_context.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_context.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_context.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_context_paint.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_context_paint.c  .generated_files/flags/default/4e44a0bf2bac1a35c9c93b139d4c37cb29c98f41 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_context_paint.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_context_paint.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_context_paint.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_context_paint.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_context_paint.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_draw.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_draw.c  .generated_files/flags/default/fb68b8d1d6b2ade35ad8be1e8c6e3237eb510e60 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_draw.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_draw.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_draw.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_draw.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_draw.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_editwidget.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_editwidget.c  .generated_files/flags/default/dac8300d17e45a6065b494bb77d99d0c63be6eea .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_editwidget.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_editwidget.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_editwidget.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_editwidget.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_editwidget.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_event.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_event.c  .generated_files/flags/default/eaed90b41bdcda7461c542ea74bdd34463865a64 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_event.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_event.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_event.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_event.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_event.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_input.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_input.c  .generated_files/flags/default/801d9ee8ef477aec2201422ad858b320eb4b7d30 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_input.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_input.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_input.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_input.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_input.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_layer.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_layer.c  .generated_files/flags/default/128a8b5160524cccda4bd9011a88739dc17a8cfa .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_layer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_layer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_layer.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_layer.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_layer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_list.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_list.c  .generated_files/flags/default/933b5ee41cc99f8e92ccdeb20fb2d8be6d950936 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_list.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_list.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_list.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_rectarray.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_rectarray.c  .generated_files/flags/default/c15347629d51bf3adeae719419778092e052b747 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_rectarray.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_rectarray.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_rectarray.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_rectarray.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_rectarray.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_scheme.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_scheme.c  .generated_files/flags/default/44bac3f10d7b1abdddb59bde38ce625c85d5f3b7 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_scheme.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_scheme.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_scheme.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_scheme.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_scheme.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_screen.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_screen.c  .generated_files/flags/default/47444a7859c5ccdd17d4759d04597c29c024eaed .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_screen.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_screen.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_screen.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_screen.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_screen.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_string.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_string.c  .generated_files/flags/default/105e1ae145dcdd3ac07c53e26efc894f21ee59bb .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_string.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_string.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_string.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_string.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_string.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_utils.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_utils.c  .generated_files/flags/default/f578f269de63162d9dbb06c975fac2869731acfe .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_utils.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_utils.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_utils.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget.c  .generated_files/flags/default/f1333d33fb5f95c78a453acb562edbf64410cda3 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_skin_classic.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_skin_classic.c  .generated_files/flags/default/77406f39c99f89215f9d0c0604cfefbce0fcc7fa .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_skin_classic.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_skin_classic_common.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_skin_classic_common.c  .generated_files/flags/default/ce650d89858f13e34aaa4da05aad374cd90e598e .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_skin_classic_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_skin_classic_common.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_skin_classic_common.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_skin_classic_common.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_skin_classic_common.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_arc.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_arc.c  .generated_files/flags/default/5eaf81249a4b11fdd3b5ea8badcfb763855f982e .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_arc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_arc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_arc.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_arc.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_arc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_arc_skin_classic.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_arc_skin_classic.c  .generated_files/flags/default/c862aab240a6c4c67e32a41d4853a0d4e3cc1f9 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_arc_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_arc_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_arc_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_arc_skin_classic.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_arc_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_bar_graph.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_bar_graph.c  .generated_files/flags/default/4097e69e1538f57510baa2521a23270967c97401 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_bar_graph.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_bar_graph.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_bar_graph.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_bar_graph.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_bar_graph.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_bar_graph_skin_classic.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_bar_graph_skin_classic.c  .generated_files/flags/default/c36cc50368d387773628d1849391e30901af3d65 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_bar_graph_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_bar_graph_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_bar_graph_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_bar_graph_skin_classic.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_bar_graph_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_button.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_button.c  .generated_files/flags/default/d811357db444ab4b0fb04d802a4db2e5e5d604de .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_button.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_button.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_button.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_button.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_button.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_button_skin_classic.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_button_skin_classic.c  .generated_files/flags/default/6bc74a07ada34b7a377f0e28238e4d6851bbc5fd .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_button_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_button_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_button_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_button_skin_classic.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_button_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_checkbox.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_checkbox.c  .generated_files/flags/default/2dd645581959b3f5ae3c35b47d9f5f4199863495 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_checkbox.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_checkbox.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_checkbox.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_checkbox.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_checkbox.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_checkbox_skin_classic.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_checkbox_skin_classic.c  .generated_files/flags/default/cd8702f269157bba03a2eb48d1186bb6de9a263 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_checkbox_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_checkbox_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_checkbox_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_checkbox_skin_classic.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_checkbox_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_circle.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_circle.c  .generated_files/flags/default/74d88a13bb4c02283cbbcbb4a45b0ee328a04621 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_circle.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_circle.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_circle.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_circle.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_circle.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_circle_skin_classic.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_circle_skin_classic.c  .generated_files/flags/default/7b2f24756d8ef1e7123bf2dc872f90be1b6a1469 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_circle_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_circle_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_circle_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_circle_skin_classic.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_circle_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_circular_gauge.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_circular_gauge.c  .generated_files/flags/default/d2c958b944e1ee1ce37c92191bcb26afccd3d42e .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_circular_gauge.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_circular_gauge.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_circular_gauge.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_circular_gauge.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_circular_gauge.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_circular_gauge_skin_classic.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_circular_gauge_skin_classic.c  .generated_files/flags/default/c36c407e53b8c18c73a7c59af5d2eff784c76f88 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_circular_gauge_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_circular_gauge_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_circular_gauge_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_circular_gauge_skin_classic.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_circular_gauge_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_circular_slider.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_circular_slider.c  .generated_files/flags/default/b9787a75fe8ee1567ddca46bf687dbf37a9cf854 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_circular_slider.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_circular_slider.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_circular_slider.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_circular_slider.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_circular_slider.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_circular_slider_skin_classic.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_circular_slider_skin_classic.c  .generated_files/flags/default/17a65ea57b2a8971f4c827f5c96936b80a3eea29 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_circular_slider_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_circular_slider_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_circular_slider_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_circular_slider_skin_classic.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_circular_slider_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_drawsurface.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_drawsurface.c  .generated_files/flags/default/3de2d5573ef88a5c9b6db0f2f27e3c3423dada09 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_drawsurface.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_drawsurface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_drawsurface.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_drawsurface.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_drawsurface.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_drawsurface_skin_classic.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_drawsurface_skin_classic.c  .generated_files/flags/default/55f823ca0c0c33b6b3e02572340d5eb28f7e61a2 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_drawsurface_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_drawsurface_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_drawsurface_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_drawsurface_skin_classic.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_drawsurface_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_gradient.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_gradient.c  .generated_files/flags/default/8ef0d66bd9210dd94693054b22d5cf248a295141 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_gradient.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_gradient.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_gradient.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_gradient.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_gradient.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_gradient_skin_classic.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_gradient_skin_classic.c  .generated_files/flags/default/823ccc9cda464c4bf356178dd38ba0554c145bb .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_gradient_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_gradient_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_gradient_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_gradient_skin_classic.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_gradient_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_groupbox.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_groupbox.c  .generated_files/flags/default/cbacf5c57ddf333f98eb08174fac57830842744b .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_groupbox.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_groupbox.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_groupbox.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_groupbox.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_groupbox.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_groupbox_skin_classic.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_groupbox_skin_classic.c  .generated_files/flags/default/15e26bbbabb64a4996945096f68768b913226541 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_groupbox_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_groupbox_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_groupbox_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_groupbox_skin_classic.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_groupbox_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_image.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_image.c  .generated_files/flags/default/33c8260887778a8356276573e059075cf44339ce .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_image.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_image.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_image.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_image.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_image.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_image_skin_classic.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_image_skin_classic.c  .generated_files/flags/default/8d0108ac16d867544dfd9a553f4d7b5d47a88288 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_image_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_image_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_image_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_image_skin_classic.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_image_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_imageplus.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_imageplus.c  .generated_files/flags/default/af2f926cabdc6e796f56ce4888278d7181d39a3e .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_imageplus.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_imageplus.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_imageplus.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_imageplus.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_imageplus.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_imageplus_skin_classic.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_imageplus_skin_classic.c  .generated_files/flags/default/e09bac57a25dfc15a4c99addfdfdc11e0264db43 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_imageplus_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_imageplus_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_imageplus_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_imageplus_skin_classic.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_imageplus_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_imagesequence.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_imagesequence.c  .generated_files/flags/default/dae86679780b264c194c9fe215ae65d59d91b37b .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_imagesequence.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_imagesequence.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_imagesequence.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_imagesequence.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_imagesequence.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_imagesequence_skin_classic.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_imagesequence_skin_classic.c  .generated_files/flags/default/c4cb572898a893c54d95c17cf0ab5d5fe9f94dff .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_imagesequence_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_imagesequence_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_imagesequence_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_imagesequence_skin_classic.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_imagesequence_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_keypad.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_keypad.c  .generated_files/flags/default/9b64091e506cb445ee387d1cb0b93bfb07d2d727 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_keypad.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_keypad.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_keypad.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_keypad.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_keypad.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_keypad_skin_classic.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_keypad_skin_classic.c  .generated_files/flags/default/7ed6a0875ca32642e4d1815263d5fba883156410 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_keypad_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_keypad_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_keypad_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_keypad_skin_classic.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_keypad_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_label.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_label.c  .generated_files/flags/default/3b956f7cc165b5c59355d2bead1efd3b9ea37962 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_label.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_label.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_label.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_label.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_label.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_label_skin_classic.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_label_skin_classic.c  .generated_files/flags/default/2218181a49f7c66e46b9b3fdd3d18346b999f531 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_label_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_label_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_label_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_label_skin_classic.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_label_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_line.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_line.c  .generated_files/flags/default/2289c4cdecfe3339322313d6177c1365b9e4ef3a .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_line.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_line.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_line.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_line.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_line.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_line_skin_classic.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_line_skin_classic.c  .generated_files/flags/default/9f9a8476bb1147aed96e35cee01d20e0a1ef3988 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_line_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_line_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_line_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_line_skin_classic.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_line_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_line_graph.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_line_graph.c  .generated_files/flags/default/b52fe3b57894fcc9a6541fa2a7c8a6d6480c45e4 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_line_graph.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_line_graph.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_line_graph.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_line_graph.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_line_graph.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_line_graph_skin_classic.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_line_graph_skin_classic.c  .generated_files/flags/default/82f8fcfe948e82b9b3c9c1a1b53b5cbd377b7c02 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_line_graph_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_line_graph_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_line_graph_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_line_graph_skin_classic.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_line_graph_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_list.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_list.c  .generated_files/flags/default/39cb19a7511c29d5d1999e7aea43867178270129 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_list.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_list.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_list.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_list_skin_classic.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_list_skin_classic.c  .generated_files/flags/default/3cb060fce3adc4575a4542aa909ea09aadd9ae2c .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_list_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_list_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_list_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_list_skin_classic.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_list_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_listwheel.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_listwheel.c  .generated_files/flags/default/8f47fb13584487ace351ad498bc1103163a269c8 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_listwheel.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_listwheel.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_listwheel.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_listwheel.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_listwheel.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_listwheel_skin_classic.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_listwheel_skin_classic.c  .generated_files/flags/default/a956e826d6cb8e3e255e7e0db5b88b8750a32975 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_listwheel_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_listwheel_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_listwheel_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_listwheel_skin_classic.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_listwheel_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_pie_chart.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_pie_chart.c  .generated_files/flags/default/be399312ba06c4b10eb0d23b218f0361467c5d93 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_pie_chart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_pie_chart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_pie_chart.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_pie_chart.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_pie_chart.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_pie_chart_skin_classic.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_pie_chart_skin_classic.c  .generated_files/flags/default/df51c69bcc76e861cdc8014db2d13cac150d445d .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_pie_chart_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_pie_chart_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_pie_chart_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_pie_chart_skin_classic.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_pie_chart_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_progressbar.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_progressbar.c  .generated_files/flags/default/ff87e211d1c91931a2c0efc1d3a168a683d3e3bf .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_progressbar.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_progressbar.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_progressbar.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_progressbar.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_progressbar.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_progressbar_skin_classic.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_progressbar_skin_classic.c  .generated_files/flags/default/85c764e775115783789f5d9bf863cfc32f15e23d .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_progressbar_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_progressbar_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_progressbar_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_progressbar_skin_classic.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_progressbar_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_radial_menu.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_radial_menu.c  .generated_files/flags/default/b4ca95faaa916b52ba555d161f2b3377d9d14ab2 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_radial_menu.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_radial_menu.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_radial_menu.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_radial_menu.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_radial_menu.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_radial_menu_skin_classic.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_radial_menu_skin_classic.c  .generated_files/flags/default/9e19df8c94042defb88353f87e7404bd31f41565 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_radial_menu_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_radial_menu_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_radial_menu_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_radial_menu_skin_classic.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_radial_menu_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_radiobutton.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_radiobutton.c  .generated_files/flags/default/b3a5ba0756edb3a63c6b01e839c0262bedf5fd8e .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_radiobutton.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_radiobutton.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_radiobutton.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_radiobutton.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_radiobutton.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_radiobutton_skin_classic.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_radiobutton_skin_classic.c  .generated_files/flags/default/204ef46ba41fd57d015a84982e9ced7b9ae6c36 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_radiobutton_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_radiobutton_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_radiobutton_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_radiobutton_skin_classic.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_radiobutton_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_radiobutton_group.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_radiobutton_group.c  .generated_files/flags/default/33bf03df319cb014ace310b21efbcdc42c0ac461 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_radiobutton_group.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_radiobutton_group.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_radiobutton_group.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_radiobutton_group.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_radiobutton_group.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_rectangle.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_rectangle.c  .generated_files/flags/default/372741bfcebd64ce37ddab35de213c82d8b38162 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_rectangle.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_rectangle.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_rectangle.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_rectangle.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_rectangle.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_rectangle_skin_classic.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_rectangle_skin_classic.c  .generated_files/flags/default/1e1dd185282d627250a2917e7d1ac91d42f854a5 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_rectangle_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_rectangle_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_rectangle_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_rectangle_skin_classic.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_rectangle_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_scrollbar.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_scrollbar.c  .generated_files/flags/default/7d9beab22777487f3d69b631120c21ca2b4b3ffa .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_scrollbar.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_scrollbar.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_scrollbar.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_scrollbar.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_scrollbar.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_scrollbar_skin_classic.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_scrollbar_skin_classic.c  .generated_files/flags/default/4411419246c030cbde4354b83a2261262a8c4fd1 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_scrollbar_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_scrollbar_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_scrollbar_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_scrollbar_skin_classic.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_scrollbar_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_slider.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_slider.c  .generated_files/flags/default/d2915fe893ddd1974640d37ba718f79b5c5b7ff8 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_slider.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_slider.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_slider.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_slider.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_slider.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_slider_skin_classic.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_slider_skin_classic.c  .generated_files/flags/default/1429751c5ed32575789bec9c3b717577be562752 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_slider_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_slider_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_slider_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_slider_skin_classic.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_slider_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_textfield.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_textfield.c  .generated_files/flags/default/d4b04991a7c97b6acb88c0380bf68c0fc1699c8a .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_textfield.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_textfield.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_textfield.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_textfield.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_textfield.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_textfield_skin_classic.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_textfield_skin_classic.c  .generated_files/flags/default/9c6a4d04efc03464ab38bd7d0ba59fd016ad2c96 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_textfield_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_textfield_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_textfield_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_textfield_skin_classic.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_textfield_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_touchtest.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_touchtest.c  .generated_files/flags/default/e20a0fa7c8a111acb769740ba7f4645a3fa6da6d .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_touchtest.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_touchtest.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_touchtest.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_touchtest.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_touchtest.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_touchtest_skin_classic.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_touchtest_skin_classic.c  .generated_files/flags/default/3f2fd7c6d128c3cc5baead83a6a568b2dae2f1dc .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_touchtest_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_touchtest_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_touchtest_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_touchtest_skin_classic.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_touchtest_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_window.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_window.c  .generated_files/flags/default/9dc5121e7be7967436a3c217b8fff2b6ec3e5010 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_window.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_window.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_window.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_window.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_window.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872939086/libaria_widget_window_skin_classic.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_window_skin_classic.c  .generated_files/flags/default/877c9b3417c3d8335aa2809eb0f8f9947c69a156 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872939086" 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_window_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872939086/libaria_widget_window_skin_classic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872939086/libaria_widget_window_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1872939086/libaria_widget_window_skin_classic.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/libaria/src/libaria_widget_window_skin_classic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/973706451/gfx.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx.c  .generated_files/flags/default/10ccf07113decacfe34739229e6345c46867c3d3 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/973706451" 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx.o.d 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/973706451/gfx.o.d" -o ${OBJECTDIR}/_ext/973706451/gfx.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/973706451/gfx_color.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_color.c  .generated_files/flags/default/8f0fbe81dabf5125efa8b114254c56d579fa7b84 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/973706451" 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_color.o.d 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_color.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/973706451/gfx_color.o.d" -o ${OBJECTDIR}/_ext/973706451/gfx_color.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_color.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/973706451/gfx_context.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_context.c  .generated_files/flags/default/e938b0150e80a00dcce41c6655c7f6e193e1cc55 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/973706451" 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_context.o.d 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_context.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/973706451/gfx_context.o.d" -o ${OBJECTDIR}/_ext/973706451/gfx_context.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_context.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/973706451/gfx_default_impl.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_default_impl.c  .generated_files/flags/default/3ae9958ae138545b1f446f02682f9d0601c1dd51 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/973706451" 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_default_impl.o.d 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_default_impl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/973706451/gfx_default_impl.o.d" -o ${OBJECTDIR}/_ext/973706451/gfx_default_impl.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_default_impl.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/973706451/gfx_display.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_display.c  .generated_files/flags/default/4ca6793b2befd4a999d61f8dc3a4a8bdfbdfeec8 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/973706451" 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_display.o.d 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_display.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/973706451/gfx_display.o.d" -o ${OBJECTDIR}/_ext/973706451/gfx_display.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_display.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/973706451/gfx_driver_interface.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_driver_interface.c  .generated_files/flags/default/5326dc13f2851c4000fb0deb844666be8f04a167 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/973706451" 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_driver_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_driver_interface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/973706451/gfx_driver_interface.o.d" -o ${OBJECTDIR}/_ext/973706451/gfx_driver_interface.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_driver_interface.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/973706451/gfx_get.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_get.c  .generated_files/flags/default/2921947b2fda9cdd2f0f27afafebb551c1f80076 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/973706451" 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_get.o.d 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_get.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/973706451/gfx_get.o.d" -o ${OBJECTDIR}/_ext/973706451/gfx_get.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_get.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/973706451/gfx_interface.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_interface.c  .generated_files/flags/default/becf154f7da1f25a47b62f5cff4866d6b558a57d .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/973706451" 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_interface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/973706451/gfx_interface.o.d" -o ${OBJECTDIR}/_ext/973706451/gfx_interface.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_interface.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/973706451/gfx_layer.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_layer.c  .generated_files/flags/default/2d047afaf1660892c50c7fa1cc4a5e3deddcae33 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/973706451" 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_layer.o.d 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_layer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/973706451/gfx_layer.o.d" -o ${OBJECTDIR}/_ext/973706451/gfx_layer.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_layer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/973706451/gfx_pixel_buffer.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_pixel_buffer.c  .generated_files/flags/default/65330a9632aff7455ed5ac43f7c3244f413fb406 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/973706451" 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_pixel_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_pixel_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/973706451/gfx_pixel_buffer.o.d" -o ${OBJECTDIR}/_ext/973706451/gfx_pixel_buffer.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_pixel_buffer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/973706451/gfx_processor_interface.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_processor_interface.c  .generated_files/flags/default/8a2a143c8005afe9f18b395cd471a4e6ef77e1b7 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/973706451" 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_processor_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_processor_interface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/973706451/gfx_processor_interface.o.d" -o ${OBJECTDIR}/_ext/973706451/gfx_processor_interface.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_processor_interface.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/973706451/gfx_rect.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_rect.c  .generated_files/flags/default/f78394418ea57648d5280c9419f51698187f31ed .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/973706451" 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_rect.o.d 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_rect.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/973706451/gfx_rect.o.d" -o ${OBJECTDIR}/_ext/973706451/gfx_rect.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_rect.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/973706451/gfx_util.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_util.c  .generated_files/flags/default/397a1c0b37a042048efe4fe5cb272e9cc2883af3 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/973706451" 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_util.o.d 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_util.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/973706451/gfx_util.o.d" -o ${OBJECTDIR}/_ext/973706451/gfx_util.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_util.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/973706451/gfx_set.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_set.c  .generated_files/flags/default/140407af7e508ed40beb7ab3e72953b74ddd6d73 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/973706451" 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_set.o.d 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_set.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/973706451/gfx_set.o.d" -o ${OBJECTDIR}/_ext/973706451/gfx_set.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_set.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/973706451/gfx_color_blend.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_color_blend.c  .generated_files/flags/default/c859b5e3bff3aeb9c9d64120010573b1e2cb0de0 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/973706451" 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_color_blend.o.d 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_color_blend.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/973706451/gfx_color_blend.o.d" -o ${OBJECTDIR}/_ext/973706451/gfx_color_blend.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_color_blend.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/973706451/gfx_color_convert.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_color_convert.c  .generated_files/flags/default/67a37cbaa07a726742e7efd8dede005086605834 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/973706451" 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_color_convert.o.d 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_color_convert.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/973706451/gfx_color_convert.o.d" -o ${OBJECTDIR}/_ext/973706451/gfx_color_convert.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_color_convert.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/973706451/gfx_color_lerp.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_color_lerp.c  .generated_files/flags/default/ba81063780f19589f013a9597aeb5a1c9315799b .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/973706451" 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_color_lerp.o.d 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_color_lerp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/973706451/gfx_color_lerp.o.d" -o ${OBJECTDIR}/_ext/973706451/gfx_color_lerp.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_color_lerp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/973706451/gfx_color_value.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_color_value.c  .generated_files/flags/default/b5db30dedd0c8ec84f6ba55476c7284994c9e336 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/973706451" 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_color_value.o.d 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_color_value.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/973706451/gfx_color_value.o.d" -o ${OBJECTDIR}/_ext/973706451/gfx_color_value.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_color_value.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/973706451/gfx_draw_arc.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_arc.c  .generated_files/flags/default/a7893db303e595b09587faf724cd4f4170d7863c .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/973706451" 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_draw_arc.o.d 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_draw_arc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/973706451/gfx_draw_arc.o.d" -o ${OBJECTDIR}/_ext/973706451/gfx_draw_arc.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_arc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/973706451/gfx_draw_blit.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_blit.c  .generated_files/flags/default/29d9ac5de17ff09ac3aadc3793e71dcae573f811 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/973706451" 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_draw_blit.o.d 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_draw_blit.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/973706451/gfx_draw_blit.o.d" -o ${OBJECTDIR}/_ext/973706451/gfx_draw_blit.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_blit.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/973706451/gfx_draw_circle.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_circle.c  .generated_files/flags/default/b6352b0b9721d785351df4494f9052a84b9f3c3a .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/973706451" 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_draw_circle.o.d 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_draw_circle.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/973706451/gfx_draw_circle.o.d" -o ${OBJECTDIR}/_ext/973706451/gfx_draw_circle.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_circle.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/973706451/gfx_draw_ellipse.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_ellipse.c  .generated_files/flags/default/70f6ff0743d462cc873fc1c2a5973d70c1b112f0 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/973706451" 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_draw_ellipse.o.d 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_draw_ellipse.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/973706451/gfx_draw_ellipse.o.d" -o ${OBJECTDIR}/_ext/973706451/gfx_draw_ellipse.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_ellipse.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/973706451/gfx_draw_line.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_line.c  .generated_files/flags/default/f0517d0119108ff5a8bbf3d73ddf6ddbaf6244c6 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/973706451" 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_draw_line.o.d 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_draw_line.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/973706451/gfx_draw_line.o.d" -o ${OBJECTDIR}/_ext/973706451/gfx_draw_line.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_line.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/973706451/gfx_draw_pixel.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_pixel.c  .generated_files/flags/default/5916812405f915006c11c5bfcae844313e25f41e .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/973706451" 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_draw_pixel.o.d 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_draw_pixel.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/973706451/gfx_draw_pixel.o.d" -o ${OBJECTDIR}/_ext/973706451/gfx_draw_pixel.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_pixel.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/973706451/gfx_draw_rect.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_rect.c  .generated_files/flags/default/605d0d470db4c337529fdec7cfdf711268f3a55b .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/973706451" 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_draw_rect.o.d 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_draw_rect.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/973706451/gfx_draw_rect.o.d" -o ${OBJECTDIR}/_ext/973706451/gfx_draw_rect.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_rect.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/973706451/gfx_draw_stretchblit.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_stretchblit.c  .generated_files/flags/default/7a56c60c278d7a718b3aed17a6701b318d73e56 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/973706451" 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_draw_stretchblit.o.d 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_draw_stretchblit.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/973706451/gfx_draw_stretchblit.o.d" -o ${OBJECTDIR}/_ext/973706451/gfx_draw_stretchblit.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_draw_stretchblit.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/973706451/gfx_math.o: ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_math.c  .generated_files/flags/default/64c3282b6af15f29f2ed2c2ba6b46d8c8ac01c24 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/973706451" 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_math.o.d 
	@${RM} ${OBJECTDIR}/_ext/973706451/gfx_math.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/973706451/gfx_math.o.d" -o ${OBJECTDIR}/_ext/973706451/gfx_math.o ../../../../../../../../microchip/harmony/v2_06/framework/gfx/hal/src/gfx_math.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1872847683/sys_int_pic32.o: ../../../../../../../../microchip/harmony/v2_06/framework/system/int/src/sys_int_pic32.c  .generated_files/flags/default/c68a64759cc195dc1ebdc4d9edd93f5bc16149d1 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1872847683" 
	@${RM} ${OBJECTDIR}/_ext/1872847683/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1872847683/sys_int_pic32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1872847683/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/1872847683/sys_int_pic32.o ../../../../../../../../microchip/harmony/v2_06/framework/system/int/src/sys_int_pic32.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/664138601/drv_pmp_static.o: ../src/system_config/default/framework/driver/pmp/src/drv_pmp_static.c  .generated_files/flags/default/9e6be6528360f25c2a28ebd8b7be447461d0bebc .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/664138601" 
	@${RM} ${OBJECTDIR}/_ext/664138601/drv_pmp_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/664138601/drv_pmp_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/664138601/drv_pmp_static.o.d" -o ${OBJECTDIR}/_ext/664138601/drv_pmp_static.o ../src/system_config/default/framework/driver/pmp/src/drv_pmp_static.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/347121368/drv_gfx_ssd1926.o: ../src/system_config/default/framework/gfx/driver/controller/ssd1926/drv_gfx_ssd1926.c  .generated_files/flags/default/cf63a2ac3e0ec36b4ac84a7e02810906694c9c81 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/347121368" 
	@${RM} ${OBJECTDIR}/_ext/347121368/drv_gfx_ssd1926.o.d 
	@${RM} ${OBJECTDIR}/_ext/347121368/drv_gfx_ssd1926.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/347121368/drv_gfx_ssd1926.o.d" -o ${OBJECTDIR}/_ext/347121368/drv_gfx_ssd1926.o ../src/system_config/default/framework/gfx/driver/controller/ssd1926/drv_gfx_ssd1926.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1689523328/drv_gfx_ssd1289.o: ../src/system_config/default/framework/gfx/driver/tcon/ssd1289/drv_gfx_ssd1289.c  .generated_files/flags/default/e6230eb559586365e7a9f8b9f3b021e387244f96 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1689523328" 
	@${RM} ${OBJECTDIR}/_ext/1689523328/drv_gfx_ssd1289.o.d 
	@${RM} ${OBJECTDIR}/_ext/1689523328/drv_gfx_ssd1289.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1689523328/drv_gfx_ssd1289.o.d" -o ${OBJECTDIR}/_ext/1689523328/drv_gfx_ssd1289.o ../src/system_config/default/framework/gfx/driver/tcon/ssd1289/drv_gfx_ssd1289.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/458109090/libaria_harmony.o: ../src/system_config/default/framework/gfx/libaria/libaria_harmony.c  .generated_files/flags/default/38696a8298de00d5a6f39a4638d70a501c8121b0 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/458109090" 
	@${RM} ${OBJECTDIR}/_ext/458109090/libaria_harmony.o.d 
	@${RM} ${OBJECTDIR}/_ext/458109090/libaria_harmony.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/458109090/libaria_harmony.o.d" -o ${OBJECTDIR}/_ext/458109090/libaria_harmony.o ../src/system_config/default/framework/gfx/libaria/libaria_harmony.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/458109090/libaria_init.o: ../src/system_config/default/framework/gfx/libaria/libaria_init.c  .generated_files/flags/default/28a6e78edc3267e8e52de4484eb44b7d011e0d1f .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/458109090" 
	@${RM} ${OBJECTDIR}/_ext/458109090/libaria_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/458109090/libaria_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/458109090/libaria_init.o.d" -o ${OBJECTDIR}/_ext/458109090/libaria_init.o ../src/system_config/default/framework/gfx/libaria/libaria_init.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/458109090/libaria_events.o: ../src/system_config/default/framework/gfx/libaria/libaria_events.c  .generated_files/flags/default/c24264bec08f957aca9e54f3bee6674a2a3713db .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/458109090" 
	@${RM} ${OBJECTDIR}/_ext/458109090/libaria_events.o.d 
	@${RM} ${OBJECTDIR}/_ext/458109090/libaria_events.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/458109090/libaria_events.o.d" -o ${OBJECTDIR}/_ext/458109090/libaria_events.o ../src/system_config/default/framework/gfx/libaria/libaria_events.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/458109090/libaria_macros.o: ../src/system_config/default/framework/gfx/libaria/libaria_macros.c  .generated_files/flags/default/b2fa8d062dedc859678127e39fe128a9899f1025 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/458109090" 
	@${RM} ${OBJECTDIR}/_ext/458109090/libaria_macros.o.d 
	@${RM} ${OBJECTDIR}/_ext/458109090/libaria_macros.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/458109090/libaria_macros.o.d" -o ${OBJECTDIR}/_ext/458109090/libaria_macros.o ../src/system_config/default/framework/gfx/libaria/libaria_macros.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2065038297/gfx_display_def.o: ../src/system_config/default/framework/gfx/hal/gfx_display_def.c  .generated_files/flags/default/35de55cea8ad35381d678e58004ba929da4f3195 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/2065038297" 
	@${RM} ${OBJECTDIR}/_ext/2065038297/gfx_display_def.o.d 
	@${RM} ${OBJECTDIR}/_ext/2065038297/gfx_display_def.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/2065038297/gfx_display_def.o.d" -o ${OBJECTDIR}/_ext/2065038297/gfx_display_def.o ../src/system_config/default/framework/gfx/hal/gfx_display_def.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2065038297/gfx_driver_def.o: ../src/system_config/default/framework/gfx/hal/gfx_driver_def.c  .generated_files/flags/default/97ceb511caca69ac00274776dd955b57d8565125 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/2065038297" 
	@${RM} ${OBJECTDIR}/_ext/2065038297/gfx_driver_def.o.d 
	@${RM} ${OBJECTDIR}/_ext/2065038297/gfx_driver_def.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/2065038297/gfx_driver_def.o.d" -o ${OBJECTDIR}/_ext/2065038297/gfx_driver_def.o ../src/system_config/default/framework/gfx/hal/gfx_driver_def.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2065038297/gfx_processor_def.o: ../src/system_config/default/framework/gfx/hal/gfx_processor_def.c  .generated_files/flags/default/3c4c63c23e5d51fa7ba80225dd965cd213e13774 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/2065038297" 
	@${RM} ${OBJECTDIR}/_ext/2065038297/gfx_processor_def.o.d 
	@${RM} ${OBJECTDIR}/_ext/2065038297/gfx_processor_def.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/2065038297/gfx_processor_def.o.d" -o ${OBJECTDIR}/_ext/2065038297/gfx_processor_def.o ../src/system_config/default/framework/gfx/hal/gfx_processor_def.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o: ../src/system_config/default/framework/system/clk/src/sys_clk_pic32mx.c  .generated_files/flags/default/b7793c7f43ee9632317988f1506264838518631a .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/639803181" 
	@${RM} ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o.d" -o ${OBJECTDIR}/_ext/639803181/sys_clk_pic32mx.o ../src/system_config/default/framework/system/clk/src/sys_clk_pic32mx.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/340578644/sys_devcon.o: ../src/system_config/default/framework/system/devcon/src/sys_devcon.c  .generated_files/flags/default/f4d2df702d9e6f9278b65f3d04a888f4ae94acce .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/340578644" 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/340578644/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/340578644/sys_devcon.o ../src/system_config/default/framework/system/devcon/src/sys_devcon.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o: ../src/system_config/default/framework/system/devcon/src/sys_devcon_pic32mx.c  .generated_files/flags/default/4f1c86f7d95cc49233bf3eb616f360d830578dd4 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/340578644" 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o.d" -o ${OBJECTDIR}/_ext/340578644/sys_devcon_pic32mx.o ../src/system_config/default/framework/system/devcon/src/sys_devcon_pic32mx.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/822048611/sys_ports_static.o: ../src/system_config/default/framework/system/ports/src/sys_ports_static.c  .generated_files/flags/default/1de195550a4f47f3fd9d32f13415dbe1eaacb218 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/822048611" 
	@${RM} ${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/822048611/sys_ports_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/822048611/sys_ports_static.o ../src/system_config/default/framework/system/ports/src/sys_ports_static.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/74298950/bsp.o: ../src/system_config/default/bsp/bsp.c  .generated_files/flags/default/7430c19420457d9f8d568a454825b7d3df03533e .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/74298950" 
	@${RM} ${OBJECTDIR}/_ext/74298950/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/74298950/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/74298950/bsp.o.d" -o ${OBJECTDIR}/_ext/74298950/bsp.o ../src/system_config/default/bsp/bsp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1688732426/system_init.o: ../src/system_config/default/system_init.c  .generated_files/flags/default/a732adee02609540b2869d829c753c42223bea60 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_init.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_init.o ../src/system_config/default/system_init.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1688732426/system_interrupt.o: ../src/system_config/default/system_interrupt.c  .generated_files/flags/default/7b2af9742e6996abc891117d5c39b02f5276cf40 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_interrupt.o ../src/system_config/default/system_interrupt.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1688732426/system_exceptions.o: ../src/system_config/default/system_exceptions.c  .generated_files/flags/default/3da0e514c28613047d5d82db65ff96740146f975 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_exceptions.o ../src/system_config/default/system_exceptions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1688732426/system_tasks.o: ../src/system_config/default/system_tasks.c  .generated_files/flags/default/3a7227ebd5f262bca160cfecc0eeefd89d2428b5 .generated_files/flags/default/8745ad97b176766356acb69d287b7157ab13b58b
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/default" -I"../src/default" -I"../../../../../../../../microchip/harmony/v2_06/framework" -I"../src/system_config/default/framework" -I"../src/system_config/default/bsp" -MP -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_tasks.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_tasks.o ../src/system_config/default/system_tasks.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/take3.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../../../../../microchip/harmony/v2_06/bin/framework/peripheral/PIC32MX795F512L_peripherals.a  
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_PIC32MXSK=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/take3.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\..\..\..\..\..\microchip\harmony\v2_06\bin\framework\peripheral\PIC32MX795F512L_peripherals.a      -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_PIC32MXSK=1,--defsym=_min_heap_size=102400,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/take3.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../../../../../microchip/harmony/v2_06/bin/framework/peripheral/PIC32MX795F512L_peripherals.a 
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/take3.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\..\..\..\..\..\microchip\harmony\v2_06\bin\framework\peripheral\PIC32MX795F512L_peripherals.a      -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=102400,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/take3.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
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
