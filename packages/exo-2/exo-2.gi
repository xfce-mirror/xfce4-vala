<?xml version="1.0"?>
<api version="1.0">
	<namespace name="Exo">
		<function name="check_version" symbol="exo_check_version">
			<return-type type="gchar*"/>
			<parameters>
				<parameter name="required_major" type="guint"/>
				<parameter name="required_minor" type="guint"/>
				<parameter name="required_micro" type="guint"/>
			</parameters>
		</function>
		<function name="execute_preferred_application" symbol="exo_execute_preferred_application">
			<return-type type="gboolean"/>
			<parameters>
				<parameter name="category" type="gchar*"/>
				<parameter name="parameter" type="gchar*"/>
				<parameter name="working_directory" type="gchar*"/>
				<parameter name="envp" type="gchar**"/>
				<parameter name="error" type="GError**"/>
			</parameters>
		</function>
		<function name="execute_preferred_application_on_screen" symbol="exo_execute_preferred_application_on_screen">
			<return-type type="gboolean"/>
			<parameters>
				<parameter name="category" type="gchar*"/>
				<parameter name="parameter" type="gchar*"/>
				<parameter name="working_directory" type="gchar*"/>
				<parameter name="envp" type="gchar**"/>
				<parameter name="screen" type="GdkScreen*"/>
				<parameter name="error" type="GError**"/>
			</parameters>
		</function>
		<function name="execute_terminal_shell" symbol="exo_execute_terminal_shell">
			<return-type type="gboolean"/>
			<parameters>
				<parameter name="command_line" type="gchar*"/>
				<parameter name="working_directory" type="gchar*"/>
				<parameter name="envp" type="gchar**"/>
				<parameter name="error" type="GError**"/>
			</parameters>
		</function>
		<function name="execute_terminal_shell_on_screen" symbol="exo_execute_terminal_shell_on_screen">
			<return-type type="gboolean"/>
			<parameters>
				<parameter name="command_line" type="gchar*"/>
				<parameter name="working_directory" type="gchar*"/>
				<parameter name="envp" type="gchar**"/>
				<parameter name="screen" type="GdkScreen*"/>
				<parameter name="error" type="GError**"/>
			</parameters>
		</function>
		<function name="g_value_transform_negate" symbol="exo_g_value_transform_negate">
			<return-type type="gboolean"/>
			<parameters>
				<parameter name="src_value" type="GValue*"/>
				<parameter name="dst_value" type="GValue*"/>
			</parameters>
		</function>
		<function name="gtk_file_chooser_add_thumbnail_preview" symbol="exo_gtk_file_chooser_add_thumbnail_preview">
			<return-type type="void"/>
			<parameters>
				<parameter name="chooser" type="GtkFileChooser*"/>
			</parameters>
		</function>
		<function name="gtk_object_destroy_later" symbol="exo_gtk_object_destroy_later">
			<return-type type="void"/>
			<parameters>
				<parameter name="object" type="GtkWidget*"/>
			</parameters>
		</function>
		<function name="gtk_url_about_dialog_hook" symbol="exo_gtk_url_about_dialog_hook">
			<return-type type="void"/>
			<parameters>
				<parameter name="about_dialog" type="GtkAboutDialog*"/>
				<parameter name="link" type="gchar*"/>
				<parameter name="user_data" type="gpointer"/>
			</parameters>
		</function>
		<callback name="ExoBindingTransform">
			<return-type type="gboolean"/>
			<parameters>
				<parameter name="src_value" type="GValue*"/>
				<parameter name="dst_value" type="GValue*"/>
				<parameter name="user_data" type="gpointer"/>
			</parameters>
		</callback>
		<callback name="ExoIconViewForeachFunc">
			<return-type type="void"/>
			<parameters>
				<parameter name="icon_view" type="ExoIconView*"/>
				<parameter name="path" type="GtkTreePath*"/>
				<parameter name="user_data" type="gpointer"/>
			</parameters>
		</callback>
		<callback name="ExoIconViewSearchEqualFunc">
			<return-type type="gboolean"/>
			<parameters>
				<parameter name="model" type="GtkTreeModel*"/>
				<parameter name="column" type="gint"/>
				<parameter name="key" type="gchar*"/>
				<parameter name="iter" type="GtkTreeIter*"/>
				<parameter name="search_data" type="gpointer"/>
			</parameters>
		</callback>
		<callback name="ExoIconViewSearchPositionFunc">
			<return-type type="void"/>
			<parameters>
				<parameter name="icon_view" type="ExoIconView*"/>
				<parameter name="search_dialog" type="GtkWidget*"/>
				<parameter name="user_data" type="gpointer"/>
			</parameters>
		</callback>
		<callback name="ExoSimpleJobFunc">
			<return-type type="gboolean"/>
			<parameters>
				<parameter name="job" type="ExoJob*"/>
				<parameter name="param_values" type="GValueArray*"/>
				<parameter name="error" type="GError**"/>
			</parameters>
		</callback>
		<struct name="ExoBinding">
			<method name="new" symbol="exo_binding_new">
				<return-type type="ExoBinding*"/>
				<parameters>
					<parameter name="src_object" type="GObject*"/>
					<parameter name="src_property" type="gchar*"/>
					<parameter name="dst_object" type="GObject*"/>
					<parameter name="dst_property" type="gchar*"/>
				</parameters>
			</method>
			<method name="new_full" symbol="exo_binding_new_full">
				<return-type type="ExoBinding*"/>
				<parameters>
					<parameter name="src_object" type="GObject*"/>
					<parameter name="src_property" type="gchar*"/>
					<parameter name="dst_object" type="GObject*"/>
					<parameter name="dst_property" type="gchar*"/>
					<parameter name="transform" type="ExoBindingTransform"/>
					<parameter name="destroy_notify" type="GDestroyNotify"/>
					<parameter name="user_data" type="gpointer"/>
				</parameters>
			</method>
			<method name="new_with_negation" symbol="exo_binding_new_with_negation">
				<return-type type="ExoBinding*"/>
				<parameters>
					<parameter name="src_object" type="GObject*"/>
					<parameter name="src_property" type="gchar*"/>
					<parameter name="dst_object" type="GObject*"/>
					<parameter name="dst_property" type="gchar*"/>
				</parameters>
			</method>
			<method name="unbind" symbol="exo_binding_unbind">
				<return-type type="void"/>
				<parameters>
					<parameter name="binding" type="ExoBinding*"/>
				</parameters>
			</method>
		</struct>
		<struct name="ExoIconChooserModel">
		</struct>
		<struct name="ExoIconChooserModelClass">
		</struct>
		<struct name="ExoMutualBinding">
			<method name="new" symbol="exo_mutual_binding_new">
				<return-type type="ExoMutualBinding*"/>
				<parameters>
					<parameter name="object1" type="GObject*"/>
					<parameter name="property1" type="gchar*"/>
					<parameter name="object2" type="GObject*"/>
					<parameter name="property2" type="gchar*"/>
				</parameters>
			</method>
			<method name="new_full" symbol="exo_mutual_binding_new_full">
				<return-type type="ExoMutualBinding*"/>
				<parameters>
					<parameter name="object1" type="GObject*"/>
					<parameter name="property1" type="gchar*"/>
					<parameter name="object2" type="GObject*"/>
					<parameter name="property2" type="gchar*"/>
					<parameter name="transform" type="ExoBindingTransform"/>
					<parameter name="reverse_transform" type="ExoBindingTransform"/>
					<parameter name="destroy_notify" type="GDestroyNotify"/>
					<parameter name="user_data" type="gpointer"/>
				</parameters>
			</method>
			<method name="new_with_negation" symbol="exo_mutual_binding_new_with_negation">
				<return-type type="ExoMutualBinding*"/>
				<parameters>
					<parameter name="object1" type="GObject*"/>
					<parameter name="property1" type="gchar*"/>
					<parameter name="object2" type="GObject*"/>
					<parameter name="property2" type="gchar*"/>
				</parameters>
			</method>
			<method name="unbind" symbol="exo_mutual_binding_unbind">
				<return-type type="void"/>
				<parameters>
					<parameter name="binding" type="ExoMutualBinding*"/>
				</parameters>
			</method>
		</struct>
		<struct name="ExoSimpleJobClass">
		</struct>
		<struct name="ExoThumbnailPreview">
		</struct>
		<struct name="ExoThumbnailPreviewClass">
		</struct>
		<struct name="ExoToolbarsModel">
			<method name="add_item" symbol="exo_toolbars_model_add_item">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="model" type="ExoToolbarsModel*"/>
					<parameter name="toolbar_position" type="gint"/>
					<parameter name="item_position" type="gint"/>
					<parameter name="id" type="gchar*"/>
					<parameter name="type" type="gchar*"/>
				</parameters>
			</method>
			<method name="add_separator" symbol="exo_toolbars_model_add_separator">
				<return-type type="void"/>
				<parameters>
					<parameter name="model" type="ExoToolbarsModel*"/>
					<parameter name="toolbar_position" type="gint"/>
					<parameter name="item_position" type="gint"/>
				</parameters>
			</method>
			<method name="add_toolbar" symbol="exo_toolbars_model_add_toolbar">
				<return-type type="gint"/>
				<parameters>
					<parameter name="model" type="ExoToolbarsModel*"/>
					<parameter name="toolbar_position" type="gint"/>
					<parameter name="name" type="gchar*"/>
				</parameters>
			</method>
			<method name="get_actions" symbol="exo_toolbars_model_get_actions">
				<return-type type="gchar**"/>
				<parameters>
					<parameter name="model" type="ExoToolbarsModel*"/>
				</parameters>
			</method>
			<method name="get_flags" symbol="exo_toolbars_model_get_flags">
				<return-type type="ExoToolbarsModelFlags"/>
				<parameters>
					<parameter name="model" type="ExoToolbarsModel*"/>
					<parameter name="toolbar_position" type="gint"/>
				</parameters>
			</method>
			<method name="get_item_data" symbol="exo_toolbars_model_get_item_data">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="model" type="ExoToolbarsModel*"/>
					<parameter name="type" type="gchar*"/>
					<parameter name="id" type="gchar*"/>
				</parameters>
			</method>
			<method name="get_item_id" symbol="exo_toolbars_model_get_item_id">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="model" type="ExoToolbarsModel*"/>
					<parameter name="type" type="gchar*"/>
					<parameter name="name" type="gchar*"/>
				</parameters>
			</method>
			<method name="get_item_type" symbol="exo_toolbars_model_get_item_type">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="model" type="ExoToolbarsModel*"/>
					<parameter name="dnd_type" type="GdkAtom"/>
				</parameters>
			</method>
			<method name="get_style" symbol="exo_toolbars_model_get_style">
				<return-type type="GtkToolbarStyle"/>
				<parameters>
					<parameter name="model" type="ExoToolbarsModel*"/>
					<parameter name="toolbar_position" type="gint"/>
				</parameters>
			</method>
			<method name="item_nth" symbol="exo_toolbars_model_item_nth">
				<return-type type="void"/>
				<parameters>
					<parameter name="model" type="ExoToolbarsModel*"/>
					<parameter name="toolbar_position" type="gint"/>
					<parameter name="item_position" type="gint"/>
					<parameter name="is_separator" type="gboolean*"/>
					<parameter name="id" type="gchar**"/>
					<parameter name="type" type="gchar**"/>
				</parameters>
			</method>
			<method name="load_from_file" symbol="exo_toolbars_model_load_from_file">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="model" type="ExoToolbarsModel*"/>
					<parameter name="filename" type="gchar*"/>
					<parameter name="error" type="GError**"/>
				</parameters>
			</method>
			<method name="move_item" symbol="exo_toolbars_model_move_item">
				<return-type type="void"/>
				<parameters>
					<parameter name="model" type="ExoToolbarsModel*"/>
					<parameter name="toolbar_position" type="gint"/>
					<parameter name="item_position" type="gint"/>
					<parameter name="new_toolbar_position" type="gint"/>
					<parameter name="new_item_position" type="gint"/>
				</parameters>
			</method>
			<method name="n_items" symbol="exo_toolbars_model_n_items">
				<return-type type="gint"/>
				<parameters>
					<parameter name="model" type="ExoToolbarsModel*"/>
					<parameter name="toolbar_position" type="gint"/>
				</parameters>
			</method>
			<method name="n_toolbars" symbol="exo_toolbars_model_n_toolbars">
				<return-type type="gint"/>
				<parameters>
					<parameter name="model" type="ExoToolbarsModel*"/>
				</parameters>
			</method>
			<method name="new" symbol="exo_toolbars_model_new">
				<return-type type="ExoToolbarsModel*"/>
			</method>
			<method name="remove_item" symbol="exo_toolbars_model_remove_item">
				<return-type type="void"/>
				<parameters>
					<parameter name="model" type="ExoToolbarsModel*"/>
					<parameter name="toolbar_position" type="gint"/>
					<parameter name="item_position" type="gint"/>
				</parameters>
			</method>
			<method name="remove_toolbar" symbol="exo_toolbars_model_remove_toolbar">
				<return-type type="void"/>
				<parameters>
					<parameter name="model" type="ExoToolbarsModel*"/>
					<parameter name="toolbar_position" type="gint"/>
				</parameters>
			</method>
			<method name="save_to_file" symbol="exo_toolbars_model_save_to_file">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="model" type="ExoToolbarsModel*"/>
					<parameter name="filename" type="gchar*"/>
					<parameter name="error" type="GError**"/>
				</parameters>
			</method>
			<method name="set_actions" symbol="exo_toolbars_model_set_actions">
				<return-type type="void"/>
				<parameters>
					<parameter name="model" type="ExoToolbarsModel*"/>
					<parameter name="actions" type="gchar**"/>
					<parameter name="n_actions" type="guint"/>
				</parameters>
			</method>
			<method name="set_flags" symbol="exo_toolbars_model_set_flags">
				<return-type type="void"/>
				<parameters>
					<parameter name="model" type="ExoToolbarsModel*"/>
					<parameter name="flags" type="ExoToolbarsModelFlags"/>
					<parameter name="toolbar_position" type="gint"/>
				</parameters>
			</method>
			<method name="set_style" symbol="exo_toolbars_model_set_style">
				<return-type type="void"/>
				<parameters>
					<parameter name="model" type="ExoToolbarsModel*"/>
					<parameter name="style" type="GtkToolbarStyle"/>
					<parameter name="toolbar_position" type="gint"/>
				</parameters>
			</method>
			<method name="toolbar_nth" symbol="exo_toolbars_model_toolbar_nth">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="model" type="ExoToolbarsModel*"/>
					<parameter name="toolbar_position" type="gint"/>
				</parameters>
			</method>
			<method name="unset_style" symbol="exo_toolbars_model_unset_style">
				<return-type type="void"/>
				<parameters>
					<parameter name="model" type="ExoToolbarsModel*"/>
					<parameter name="toolbar_position" type="gint"/>
				</parameters>
			</method>
			<field name="__parent__" type="GObject"/>
			<field name="priv" type="ExoToolbarsModelPrivate*"/>
		</struct>
		<struct name="ExoToolbarsModelClass">
			<field name="__parent__" type="GObjectClass"/>
			<field name="add_item" type="GCallback"/>
			<field name="reserved1" type="GCallback"/>
			<field name="reserved2" type="GCallback"/>
			<field name="reserved3" type="GCallback"/>
			<field name="reserved4" type="GCallback"/>
			<field name="item_added" type="GCallback"/>
			<field name="item_removed" type="GCallback"/>
			<field name="toolbar_added" type="GCallback"/>
			<field name="toolbar_changed" type="GCallback"/>
			<field name="toolbar_removed" type="GCallback"/>
			<field name="get_item_type" type="GCallback"/>
			<field name="get_item_id" type="GCallback"/>
			<field name="get_item_data" type="GCallback"/>
			<field name="reserved5" type="GCallback"/>
			<field name="reserved6" type="GCallback"/>
			<field name="reserved7" type="GCallback"/>
			<field name="reserved8" type="GCallback"/>
		</struct>
		<enum name="ExoIconChooserContext">
			<member name="EXO_ICON_CHOOSER_CONTEXT_ACTIONS" value="0"/>
			<member name="EXO_ICON_CHOOSER_CONTEXT_ANIMATIONS" value="1"/>
			<member name="EXO_ICON_CHOOSER_CONTEXT_APPLICATIONS" value="2"/>
			<member name="EXO_ICON_CHOOSER_CONTEXT_CATEGORIES" value="3"/>
			<member name="EXO_ICON_CHOOSER_CONTEXT_DEVICES" value="4"/>
			<member name="EXO_ICON_CHOOSER_CONTEXT_EMBLEMS" value="5"/>
			<member name="EXO_ICON_CHOOSER_CONTEXT_EMOTES" value="6"/>
			<member name="EXO_ICON_CHOOSER_CONTEXT_INTERNATIONAL" value="7"/>
			<member name="EXO_ICON_CHOOSER_CONTEXT_MIME_TYPES" value="8"/>
			<member name="EXO_ICON_CHOOSER_CONTEXT_PLACES" value="9"/>
			<member name="EXO_ICON_CHOOSER_CONTEXT_STATUS" value="10"/>
			<member name="EXO_ICON_CHOOSER_CONTEXT_OTHER" value="11"/>
			<member name="EXO_ICON_CHOOSER_N_CONTEXTS" value="12"/>
			<member name="EXO_ICON_CHOOSER_CONTEXT_ALL" value="13"/>
			<member name="EXO_ICON_CHOOSER_CONTEXT_FILE" value="15"/>
		</enum>
		<enum name="ExoIconChooserModelColumn">
			<member name="EXO_ICON_CHOOSER_MODEL_COLUMN_CONTEXT" value="0"/>
			<member name="EXO_ICON_CHOOSER_MODEL_COLUMN_ICON_NAME" value="1"/>
			<member name="EXO_ICON_CHOOSER_MODEL_N_COLUMNS" value="2"/>
		</enum>
		<enum name="ExoIconViewDropPosition" type-name="ExoIconViewDropPosition" get-type="exo_icon_view_drop_position_get_type">
			<member name="EXO_ICON_VIEW_NO_DROP" value="0"/>
			<member name="EXO_ICON_VIEW_DROP_INTO" value="1"/>
			<member name="EXO_ICON_VIEW_DROP_LEFT" value="2"/>
			<member name="EXO_ICON_VIEW_DROP_RIGHT" value="3"/>
			<member name="EXO_ICON_VIEW_DROP_ABOVE" value="4"/>
			<member name="EXO_ICON_VIEW_DROP_BELOW" value="5"/>
		</enum>
		<enum name="ExoIconViewLayoutMode" type-name="ExoIconViewLayoutMode" get-type="exo_icon_view_layout_mode_get_type">
			<member name="EXO_ICON_VIEW_LAYOUT_ROWS" value="0"/>
			<member name="EXO_ICON_VIEW_LAYOUT_COLS" value="1"/>
		</enum>
		<enum name="ExoThumbnailSize">
			<member name="EXO_THUMBNAIL_SIZE_NORMAL" value="128"/>
			<member name="EXO_THUMBNAIL_SIZE_LARGE" value="256"/>
		</enum>
		<flags name="ExoToolbarsModelFlags" type-name="ExoToolbarsModelFlags" get-type="exo_toolbars_model_flags_get_type">
			<member name="EXO_TOOLBARS_MODEL_NOT_REMOVABLE" value="1"/>
			<member name="EXO_TOOLBARS_MODEL_ACCEPT_ITEMS_ONLY" value="2"/>
			<member name="EXO_TOOLBARS_MODEL_OVERRIDE_STYLE" value="4"/>
		</flags>
		<object name="ExoCellRendererIcon" parent="GtkCellRenderer" type-name="ExoCellRendererIcon" get-type="exo_cell_renderer_icon_get_type">
			<constructor name="new" symbol="exo_cell_renderer_icon_new">
				<return-type type="GtkCellRenderer*"/>
			</constructor>
			<property name="follow-state" type="gboolean" readable="1" writable="1" construct="1" construct-only="0"/>
			<property name="gicon" type="GIcon*" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="icon" type="char*" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="size" type="gint" readable="1" writable="1" construct="1" construct-only="0"/>
			<vfunc name="reserved1">
				<return-type type="void"/>
			</vfunc>
			<vfunc name="reserved2">
				<return-type type="void"/>
			</vfunc>
			<vfunc name="reserved3">
				<return-type type="void"/>
			</vfunc>
			<vfunc name="reserved4">
				<return-type type="void"/>
			</vfunc>
			<vfunc name="reserved5">
				<return-type type="void"/>
			</vfunc>
			<vfunc name="reserved6">
				<return-type type="void"/>
			</vfunc>
		</object>
		<object name="ExoIconChooserDialog" parent="GtkDialog" type-name="ExoIconChooserDialog" get-type="exo_icon_chooser_dialog_get_type">
			<implements>
				<interface name="AtkImplementor"/>
				<interface name="GtkBuildable"/>
			</implements>
			<method name="get_icon" symbol="exo_icon_chooser_dialog_get_icon">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="icon_chooser_dialog" type="ExoIconChooserDialog*"/>
				</parameters>
			</method>
			<constructor name="new" symbol="exo_icon_chooser_dialog_new">
				<return-type type="GtkWidget*"/>
				<parameters>
					<parameter name="title" type="gchar*"/>
					<parameter name="parent" type="GtkWindow*"/>
					<parameter name="first_button_text" type="gchar*"/>
				</parameters>
			</constructor>
			<method name="set_icon" symbol="exo_icon_chooser_dialog_set_icon">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="icon_chooser_dialog" type="ExoIconChooserDialog*"/>
					<parameter name="icon" type="gchar*"/>
				</parameters>
			</method>
			<vfunc name="reserved1">
				<return-type type="void"/>
			</vfunc>
			<vfunc name="reserved2">
				<return-type type="void"/>
			</vfunc>
			<vfunc name="reserved3">
				<return-type type="void"/>
			</vfunc>
			<vfunc name="reserved4">
				<return-type type="void"/>
			</vfunc>
			<vfunc name="reserved5">
				<return-type type="void"/>
			</vfunc>
			<vfunc name="reserved6">
				<return-type type="void"/>
			</vfunc>
		</object>
		<object name="ExoIconView" parent="GtkContainer" type-name="ExoIconView" get-type="exo_icon_view_get_type">
			<implements>
				<interface name="AtkImplementor"/>
				<interface name="GtkBuildable"/>
				<interface name="GtkCellLayout"/>
				<interface name="GtkScrollable"/>
			</implements>
			<method name="create_drag_icon" symbol="exo_icon_view_create_drag_icon">
				<return-type type="cairo_surface_t*"/>
				<parameters>
					<parameter name="icon_view" type="ExoIconView*"/>
					<parameter name="path" type="GtkTreePath*"/>
				</parameters>
			</method>
			<method name="enable_model_drag_dest" symbol="exo_icon_view_enable_model_drag_dest">
				<return-type type="void"/>
				<parameters>
					<parameter name="icon_view" type="ExoIconView*"/>
					<parameter name="targets" type="GtkTargetEntry*"/>
					<parameter name="n_targets" type="gint"/>
					<parameter name="actions" type="GdkDragAction"/>
				</parameters>
			</method>
			<method name="enable_model_drag_source" symbol="exo_icon_view_enable_model_drag_source">
				<return-type type="void"/>
				<parameters>
					<parameter name="icon_view" type="ExoIconView*"/>
					<parameter name="start_button_mask" type="GdkModifierType"/>
					<parameter name="targets" type="GtkTargetEntry*"/>
					<parameter name="n_targets" type="gint"/>
					<parameter name="actions" type="GdkDragAction"/>
				</parameters>
			</method>
			<method name="get_column_spacing" symbol="exo_icon_view_get_column_spacing">
				<return-type type="gint"/>
				<parameters>
					<parameter name="icon_view" type="ExoIconView*"/>
				</parameters>
			</method>
			<method name="get_columns" symbol="exo_icon_view_get_columns">
				<return-type type="gint"/>
				<parameters>
					<parameter name="icon_view" type="ExoIconView*"/>
				</parameters>
			</method>
			<method name="get_cursor" symbol="exo_icon_view_get_cursor">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="icon_view" type="ExoIconView*"/>
					<parameter name="path" type="GtkTreePath**"/>
					<parameter name="cell" type="GtkCellRenderer**"/>
				</parameters>
			</method>
			<method name="get_dest_item_at_pos" symbol="exo_icon_view_get_dest_item_at_pos">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="icon_view" type="ExoIconView*"/>
					<parameter name="drag_x" type="gint"/>
					<parameter name="drag_y" type="gint"/>
					<parameter name="path" type="GtkTreePath**"/>
					<parameter name="pos" type="ExoIconViewDropPosition*"/>
				</parameters>
			</method>
			<method name="get_drag_dest_item" symbol="exo_icon_view_get_drag_dest_item">
				<return-type type="void"/>
				<parameters>
					<parameter name="icon_view" type="ExoIconView*"/>
					<parameter name="path" type="GtkTreePath**"/>
					<parameter name="pos" type="ExoIconViewDropPosition*"/>
				</parameters>
			</method>
			<method name="get_enable_search" symbol="exo_icon_view_get_enable_search">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="icon_view" type="ExoIconView*"/>
				</parameters>
			</method>
			<method name="get_item_at_pos" symbol="exo_icon_view_get_item_at_pos">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="icon_view" type="ExoIconView*"/>
					<parameter name="x" type="gint"/>
					<parameter name="y" type="gint"/>
					<parameter name="path" type="GtkTreePath**"/>
					<parameter name="cell" type="GtkCellRenderer**"/>
				</parameters>
			</method>
			<method name="get_item_column" symbol="exo_icon_view_get_item_column">
				<return-type type="gint"/>
				<parameters>
					<parameter name="icon_view" type="ExoIconView*"/>
					<parameter name="path" type="GtkTreePath*"/>
				</parameters>
			</method>
			<method name="get_item_row" symbol="exo_icon_view_get_item_row">
				<return-type type="gint"/>
				<parameters>
					<parameter name="icon_view" type="ExoIconView*"/>
					<parameter name="path" type="GtkTreePath*"/>
				</parameters>
			</method>
			<method name="get_item_width" symbol="exo_icon_view_get_item_width">
				<return-type type="gint"/>
				<parameters>
					<parameter name="icon_view" type="ExoIconView*"/>
				</parameters>
			</method>
			<method name="get_layout_mode" symbol="exo_icon_view_get_layout_mode">
				<return-type type="ExoIconViewLayoutMode"/>
				<parameters>
					<parameter name="icon_view" type="ExoIconView*"/>
				</parameters>
			</method>
			<method name="get_margin" symbol="exo_icon_view_get_margin">
				<return-type type="gint"/>
				<parameters>
					<parameter name="icon_view" type="ExoIconView*"/>
				</parameters>
			</method>
			<method name="get_model" symbol="exo_icon_view_get_model">
				<return-type type="GtkTreeModel*"/>
				<parameters>
					<parameter name="icon_view" type="ExoIconView*"/>
				</parameters>
			</method>
			<method name="get_orientation" symbol="exo_icon_view_get_orientation">
				<return-type type="GtkOrientation"/>
				<parameters>
					<parameter name="icon_view" type="ExoIconView*"/>
				</parameters>
			</method>
			<method name="get_path_at_pos" symbol="exo_icon_view_get_path_at_pos">
				<return-type type="GtkTreePath*"/>
				<parameters>
					<parameter name="icon_view" type="ExoIconView*"/>
					<parameter name="x" type="gint"/>
					<parameter name="y" type="gint"/>
				</parameters>
			</method>
			<method name="get_reorderable" symbol="exo_icon_view_get_reorderable">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="icon_view" type="ExoIconView*"/>
				</parameters>
			</method>
			<method name="get_row_spacing" symbol="exo_icon_view_get_row_spacing">
				<return-type type="gint"/>
				<parameters>
					<parameter name="icon_view" type="ExoIconView*"/>
				</parameters>
			</method>
			<method name="get_search_column" symbol="exo_icon_view_get_search_column">
				<return-type type="gint"/>
				<parameters>
					<parameter name="icon_view" type="ExoIconView*"/>
				</parameters>
			</method>
			<method name="get_search_equal_func" symbol="exo_icon_view_get_search_equal_func">
				<return-type type="ExoIconViewSearchEqualFunc"/>
				<parameters>
					<parameter name="icon_view" type="ExoIconView*"/>
				</parameters>
			</method>
			<method name="get_search_position_func" symbol="exo_icon_view_get_search_position_func">
				<return-type type="ExoIconViewSearchPositionFunc"/>
				<parameters>
					<parameter name="icon_view" type="ExoIconView*"/>
				</parameters>
			</method>
			<method name="get_selected_items" symbol="exo_icon_view_get_selected_items">
				<return-type type="GList*"/>
				<parameters>
					<parameter name="icon_view" type="ExoIconView*"/>
				</parameters>
			</method>
			<method name="get_selection_mode" symbol="exo_icon_view_get_selection_mode">
				<return-type type="GtkSelectionMode"/>
				<parameters>
					<parameter name="icon_view" type="ExoIconView*"/>
				</parameters>
			</method>
			<method name="get_single_click" symbol="exo_icon_view_get_single_click">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="icon_view" type="ExoIconView*"/>
				</parameters>
			</method>
			<method name="get_single_click_timeout" symbol="exo_icon_view_get_single_click_timeout">
				<return-type type="guint"/>
				<parameters>
					<parameter name="icon_view" type="ExoIconView*"/>
				</parameters>
			</method>
			<method name="get_spacing" symbol="exo_icon_view_get_spacing">
				<return-type type="gint"/>
				<parameters>
					<parameter name="icon_view" type="ExoIconView*"/>
				</parameters>
			</method>
			<method name="get_visible_range" symbol="exo_icon_view_get_visible_range">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="icon_view" type="ExoIconView*"/>
					<parameter name="start_path" type="GtkTreePath**"/>
					<parameter name="end_path" type="GtkTreePath**"/>
				</parameters>
			</method>
			<method name="icon_to_widget_coords" symbol="exo_icon_view_icon_to_widget_coords">
				<return-type type="void"/>
				<parameters>
					<parameter name="icon_view" type="ExoIconView*"/>
					<parameter name="ix" type="gint"/>
					<parameter name="iy" type="gint"/>
					<parameter name="wx" type="gint*"/>
					<parameter name="wy" type="gint*"/>
				</parameters>
			</method>
			<method name="item_activated" symbol="exo_icon_view_item_activated">
				<return-type type="void"/>
				<parameters>
					<parameter name="icon_view" type="ExoIconView*"/>
					<parameter name="path" type="GtkTreePath*"/>
				</parameters>
			</method>
			<constructor name="new" symbol="exo_icon_view_new">
				<return-type type="GtkWidget*"/>
			</constructor>
			<constructor name="new_with_model" symbol="exo_icon_view_new_with_model">
				<return-type type="GtkWidget*"/>
				<parameters>
					<parameter name="model" type="GtkTreeModel*"/>
				</parameters>
			</constructor>
			<method name="path_is_selected" symbol="exo_icon_view_path_is_selected">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="icon_view" type="ExoIconView*"/>
					<parameter name="path" type="GtkTreePath*"/>
				</parameters>
			</method>
			<method name="scroll_to_path" symbol="exo_icon_view_scroll_to_path">
				<return-type type="void"/>
				<parameters>
					<parameter name="icon_view" type="ExoIconView*"/>
					<parameter name="path" type="GtkTreePath*"/>
					<parameter name="use_align" type="gboolean"/>
					<parameter name="row_align" type="gfloat"/>
					<parameter name="col_align" type="gfloat"/>
				</parameters>
			</method>
			<method name="select_all" symbol="exo_icon_view_select_all">
				<return-type type="void"/>
				<parameters>
					<parameter name="icon_view" type="ExoIconView*"/>
				</parameters>
			</method>
			<method name="select_path" symbol="exo_icon_view_select_path">
				<return-type type="void"/>
				<parameters>
					<parameter name="icon_view" type="ExoIconView*"/>
					<parameter name="path" type="GtkTreePath*"/>
				</parameters>
			</method>
			<method name="selected_foreach" symbol="exo_icon_view_selected_foreach">
				<return-type type="void"/>
				<parameters>
					<parameter name="icon_view" type="ExoIconView*"/>
					<parameter name="func" type="ExoIconViewForeachFunc"/>
					<parameter name="data" type="gpointer"/>
				</parameters>
			</method>
			<method name="selection_invert" symbol="exo_icon_view_selection_invert">
				<return-type type="void"/>
				<parameters>
					<parameter name="icon_view" type="ExoIconView*"/>
				</parameters>
			</method>
			<method name="set_column_spacing" symbol="exo_icon_view_set_column_spacing">
				<return-type type="void"/>
				<parameters>
					<parameter name="icon_view" type="ExoIconView*"/>
					<parameter name="column_spacing" type="gint"/>
				</parameters>
			</method>
			<method name="set_columns" symbol="exo_icon_view_set_columns">
				<return-type type="void"/>
				<parameters>
					<parameter name="icon_view" type="ExoIconView*"/>
					<parameter name="columns" type="gint"/>
				</parameters>
			</method>
			<method name="set_cursor" symbol="exo_icon_view_set_cursor">
				<return-type type="void"/>
				<parameters>
					<parameter name="icon_view" type="ExoIconView*"/>
					<parameter name="path" type="GtkTreePath*"/>
					<parameter name="cell" type="GtkCellRenderer*"/>
					<parameter name="start_editing" type="gboolean"/>
				</parameters>
			</method>
			<method name="set_drag_dest_item" symbol="exo_icon_view_set_drag_dest_item">
				<return-type type="void"/>
				<parameters>
					<parameter name="icon_view" type="ExoIconView*"/>
					<parameter name="path" type="GtkTreePath*"/>
					<parameter name="pos" type="ExoIconViewDropPosition"/>
				</parameters>
			</method>
			<method name="set_enable_search" symbol="exo_icon_view_set_enable_search">
				<return-type type="void"/>
				<parameters>
					<parameter name="icon_view" type="ExoIconView*"/>
					<parameter name="enable_search" type="gboolean"/>
				</parameters>
			</method>
			<method name="set_item_width" symbol="exo_icon_view_set_item_width">
				<return-type type="void"/>
				<parameters>
					<parameter name="icon_view" type="ExoIconView*"/>
					<parameter name="item_width" type="gint"/>
				</parameters>
			</method>
			<method name="set_layout_mode" symbol="exo_icon_view_set_layout_mode">
				<return-type type="void"/>
				<parameters>
					<parameter name="icon_view" type="ExoIconView*"/>
					<parameter name="layout_mode" type="ExoIconViewLayoutMode"/>
				</parameters>
			</method>
			<method name="set_margin" symbol="exo_icon_view_set_margin">
				<return-type type="void"/>
				<parameters>
					<parameter name="icon_view" type="ExoIconView*"/>
					<parameter name="margin" type="gint"/>
				</parameters>
			</method>
			<method name="set_model" symbol="exo_icon_view_set_model">
				<return-type type="void"/>
				<parameters>
					<parameter name="icon_view" type="ExoIconView*"/>
					<parameter name="model" type="GtkTreeModel*"/>
				</parameters>
			</method>
			<method name="set_orientation" symbol="exo_icon_view_set_orientation">
				<return-type type="void"/>
				<parameters>
					<parameter name="icon_view" type="ExoIconView*"/>
					<parameter name="orientation" type="GtkOrientation"/>
				</parameters>
			</method>
			<method name="set_reorderable" symbol="exo_icon_view_set_reorderable">
				<return-type type="void"/>
				<parameters>
					<parameter name="icon_view" type="ExoIconView*"/>
					<parameter name="reorderable" type="gboolean"/>
				</parameters>
			</method>
			<method name="set_row_spacing" symbol="exo_icon_view_set_row_spacing">
				<return-type type="void"/>
				<parameters>
					<parameter name="icon_view" type="ExoIconView*"/>
					<parameter name="row_spacing" type="gint"/>
				</parameters>
			</method>
			<method name="set_search_column" symbol="exo_icon_view_set_search_column">
				<return-type type="void"/>
				<parameters>
					<parameter name="icon_view" type="ExoIconView*"/>
					<parameter name="search_column" type="gint"/>
				</parameters>
			</method>
			<method name="set_search_equal_func" symbol="exo_icon_view_set_search_equal_func">
				<return-type type="void"/>
				<parameters>
					<parameter name="icon_view" type="ExoIconView*"/>
					<parameter name="search_equal_func" type="ExoIconViewSearchEqualFunc"/>
					<parameter name="search_equal_data" type="gpointer"/>
					<parameter name="search_equal_destroy" type="GDestroyNotify"/>
				</parameters>
			</method>
			<method name="set_search_position_func" symbol="exo_icon_view_set_search_position_func">
				<return-type type="void"/>
				<parameters>
					<parameter name="icon_view" type="ExoIconView*"/>
					<parameter name="search_position_func" type="ExoIconViewSearchPositionFunc"/>
					<parameter name="search_position_data" type="gpointer"/>
					<parameter name="search_position_destroy" type="GDestroyNotify"/>
				</parameters>
			</method>
			<method name="set_selection_mode" symbol="exo_icon_view_set_selection_mode">
				<return-type type="void"/>
				<parameters>
					<parameter name="icon_view" type="ExoIconView*"/>
					<parameter name="mode" type="GtkSelectionMode"/>
				</parameters>
			</method>
			<method name="set_single_click" symbol="exo_icon_view_set_single_click">
				<return-type type="void"/>
				<parameters>
					<parameter name="icon_view" type="ExoIconView*"/>
					<parameter name="single_click" type="gboolean"/>
				</parameters>
			</method>
			<method name="set_single_click_timeout" symbol="exo_icon_view_set_single_click_timeout">
				<return-type type="void"/>
				<parameters>
					<parameter name="icon_view" type="ExoIconView*"/>
					<parameter name="single_click_timeout" type="guint"/>
				</parameters>
			</method>
			<method name="set_spacing" symbol="exo_icon_view_set_spacing">
				<return-type type="void"/>
				<parameters>
					<parameter name="icon_view" type="ExoIconView*"/>
					<parameter name="spacing" type="gint"/>
				</parameters>
			</method>
			<method name="unselect_all" symbol="exo_icon_view_unselect_all">
				<return-type type="void"/>
				<parameters>
					<parameter name="icon_view" type="ExoIconView*"/>
				</parameters>
			</method>
			<method name="unselect_path" symbol="exo_icon_view_unselect_path">
				<return-type type="void"/>
				<parameters>
					<parameter name="icon_view" type="ExoIconView*"/>
					<parameter name="path" type="GtkTreePath*"/>
				</parameters>
			</method>
			<method name="unset_model_drag_dest" symbol="exo_icon_view_unset_model_drag_dest">
				<return-type type="void"/>
				<parameters>
					<parameter name="icon_view" type="ExoIconView*"/>
				</parameters>
			</method>
			<method name="unset_model_drag_source" symbol="exo_icon_view_unset_model_drag_source">
				<return-type type="void"/>
				<parameters>
					<parameter name="icon_view" type="ExoIconView*"/>
				</parameters>
			</method>
			<method name="widget_to_icon_coords" symbol="exo_icon_view_widget_to_icon_coords">
				<return-type type="void"/>
				<parameters>
					<parameter name="icon_view" type="ExoIconView*"/>
					<parameter name="wx" type="gint"/>
					<parameter name="wy" type="gint"/>
					<parameter name="ix" type="gint*"/>
					<parameter name="iy" type="gint*"/>
				</parameters>
			</method>
			<property name="column-spacing" type="gint" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="columns" type="gint" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="enable-search" type="gboolean" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="icon-column" type="gint" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="item-width" type="gint" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="layout-mode" type="ExoIconViewLayoutMode" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="margin" type="gint" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="markup-column" type="gint" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="model" type="GtkTreeModel*" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="orientation" type="GtkOrientation" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="pixbuf-column" type="gint" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="reorderable" type="gboolean" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="row-spacing" type="gint" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="search-column" type="gint" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="selection-mode" type="GtkSelectionMode" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="single-click" type="gboolean" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="single-click-timeout" type="guint" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="spacing" type="gint" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="text-column" type="gint" readable="1" writable="1" construct="0" construct-only="0"/>
			<signal name="activate-cursor-item" when="LAST">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="icon_view" type="ExoIconView*"/>
				</parameters>
			</signal>
			<signal name="item-activated" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="icon_view" type="ExoIconView*"/>
					<parameter name="path" type="GtkTreePath*"/>
				</parameters>
			</signal>
			<signal name="move-cursor" when="LAST">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="icon_view" type="ExoIconView*"/>
					<parameter name="step" type="GtkMovementStep"/>
					<parameter name="count" type="gint"/>
				</parameters>
			</signal>
			<signal name="select-all" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="icon_view" type="ExoIconView*"/>
				</parameters>
			</signal>
			<signal name="select-cursor-item" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="icon_view" type="ExoIconView*"/>
				</parameters>
			</signal>
			<signal name="selection-changed" when="FIRST">
				<return-type type="void"/>
				<parameters>
					<parameter name="icon_view" type="ExoIconView*"/>
				</parameters>
			</signal>
			<signal name="start-interactive-search" when="LAST">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="icon_view" type="ExoIconView*"/>
				</parameters>
			</signal>
			<signal name="toggle-cursor-item" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="icon_view" type="ExoIconView*"/>
				</parameters>
			</signal>
			<signal name="unselect-all" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="icon_view" type="ExoIconView*"/>
				</parameters>
			</signal>
			<vfunc name="reserved0">
				<return-type type="void"/>
			</vfunc>
			<vfunc name="reserved1">
				<return-type type="void"/>
			</vfunc>
			<vfunc name="reserved2">
				<return-type type="void"/>
			</vfunc>
			<vfunc name="reserved3">
				<return-type type="void"/>
			</vfunc>
			<vfunc name="reserved4">
				<return-type type="void"/>
			</vfunc>
			<vfunc name="reserved5">
				<return-type type="void"/>
			</vfunc>
			<vfunc name="reserved6">
				<return-type type="void"/>
			</vfunc>
			<vfunc name="reserved7">
				<return-type type="void"/>
			</vfunc>
			<vfunc name="reserved8">
				<return-type type="void"/>
			</vfunc>
			<vfunc name="reserved9">
				<return-type type="void"/>
			</vfunc>
			<vfunc name="set_scroll_adjustments">
				<return-type type="void"/>
				<parameters>
					<parameter name="icon_view" type="ExoIconView*"/>
					<parameter name="hadjustment" type="GtkAdjustment*"/>
					<parameter name="vadjustment" type="GtkAdjustment*"/>
				</parameters>
			</vfunc>
		</object>
		<object name="ExoJob" parent="GObject" type-name="ExoJob" get-type="exo_job_get_type">
			<method name="cancel" symbol="exo_job_cancel">
				<return-type type="void"/>
				<parameters>
					<parameter name="job" type="ExoJob*"/>
				</parameters>
			</method>
			<method name="emit" symbol="exo_job_emit">
				<return-type type="void"/>
				<parameters>
					<parameter name="job" type="ExoJob*"/>
					<parameter name="signal_id" type="guint"/>
					<parameter name="signal_detail" type="GQuark"/>
				</parameters>
			</method>
			<method name="get_cancellable" symbol="exo_job_get_cancellable">
				<return-type type="GCancellable*"/>
				<parameters>
					<parameter name="job" type="ExoJob*"/>
				</parameters>
			</method>
			<method name="info_message" symbol="exo_job_info_message">
				<return-type type="void"/>
				<parameters>
					<parameter name="job" type="ExoJob*"/>
					<parameter name="format" type="gchar*"/>
				</parameters>
			</method>
			<method name="is_cancelled" symbol="exo_job_is_cancelled">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="job" type="ExoJob*"/>
				</parameters>
			</method>
			<method name="launch" symbol="exo_job_launch">
				<return-type type="ExoJob*"/>
				<parameters>
					<parameter name="job" type="ExoJob*"/>
				</parameters>
			</method>
			<method name="percent" symbol="exo_job_percent">
				<return-type type="void"/>
				<parameters>
					<parameter name="job" type="ExoJob*"/>
					<parameter name="percent" type="gdouble"/>
				</parameters>
			</method>
			<method name="send_to_mainloop" symbol="exo_job_send_to_mainloop">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="job" type="ExoJob*"/>
					<parameter name="func" type="GSourceFunc"/>
					<parameter name="user_data" type="gpointer"/>
					<parameter name="destroy_notify" type="GDestroyNotify"/>
				</parameters>
			</method>
			<method name="set_error_if_cancelled" symbol="exo_job_set_error_if_cancelled">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="job" type="ExoJob*"/>
					<parameter name="error" type="GError**"/>
				</parameters>
			</method>
			<signal name="error" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="job" type="ExoJob*"/>
					<parameter name="error" type="gpointer"/>
				</parameters>
			</signal>
			<signal name="finished" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="job" type="ExoJob*"/>
				</parameters>
			</signal>
			<signal name="info-message" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="job" type="ExoJob*"/>
					<parameter name="message" type="char*"/>
				</parameters>
			</signal>
			<signal name="percent" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="job" type="ExoJob*"/>
					<parameter name="percent" type="gdouble"/>
				</parameters>
			</signal>
			<vfunc name="execute">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="job" type="ExoJob*"/>
					<parameter name="error" type="GError**"/>
				</parameters>
			</vfunc>
		</object>
		<object name="ExoSimpleJob" parent="ExoJob" type-name="ExoSimpleJob" get-type="exo_simple_job_get_type">
			<method name="launch" symbol="exo_simple_job_launch">
				<return-type type="ExoJob*"/>
				<parameters>
					<parameter name="func" type="ExoSimpleJobFunc"/>
					<parameter name="n_param_values" type="guint"/>
				</parameters>
			</method>
		</object>
		<object name="ExoTreeView" parent="GtkTreeView" type-name="ExoTreeView" get-type="exo_tree_view_get_type">
			<implements>
				<interface name="AtkImplementor"/>
				<interface name="GtkBuildable"/>
				<interface name="GtkScrollable"/>
			</implements>
			<method name="get_single_click" symbol="exo_tree_view_get_single_click">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="tree_view" type="ExoTreeView*"/>
				</parameters>
			</method>
			<method name="get_single_click_timeout" symbol="exo_tree_view_get_single_click_timeout">
				<return-type type="guint"/>
				<parameters>
					<parameter name="tree_view" type="ExoTreeView*"/>
				</parameters>
			</method>
			<constructor name="new" symbol="exo_tree_view_new">
				<return-type type="GtkWidget*"/>
			</constructor>
			<method name="set_single_click" symbol="exo_tree_view_set_single_click">
				<return-type type="void"/>
				<parameters>
					<parameter name="tree_view" type="ExoTreeView*"/>
					<parameter name="single_click" type="gboolean"/>
				</parameters>
			</method>
			<method name="set_single_click_timeout" symbol="exo_tree_view_set_single_click_timeout">
				<return-type type="void"/>
				<parameters>
					<parameter name="tree_view" type="ExoTreeView*"/>
					<parameter name="single_click_timeout" type="guint"/>
				</parameters>
			</method>
			<property name="single-click" type="gboolean" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="single-click-timeout" type="guint" readable="1" writable="1" construct="0" construct-only="0"/>
			<vfunc name="reserved1">
				<return-type type="void"/>
			</vfunc>
			<vfunc name="reserved2">
				<return-type type="void"/>
			</vfunc>
			<vfunc name="reserved3">
				<return-type type="void"/>
			</vfunc>
			<vfunc name="reserved4">
				<return-type type="void"/>
			</vfunc>
			<vfunc name="reserved5">
				<return-type type="void"/>
			</vfunc>
			<vfunc name="reserved6">
				<return-type type="void"/>
			</vfunc>
			<vfunc name="reserved7">
				<return-type type="void"/>
			</vfunc>
			<vfunc name="reserved8">
				<return-type type="void"/>
			</vfunc>
		</object>
		<constant name="EXO_MAJOR_VERSION" type="int" value="0"/>
		<constant name="EXO_MICRO_VERSION" type="int" value="2"/>
		<constant name="EXO_MINOR_VERSION" type="int" value="11"/>
		<constant name="EXO_PARAM_READABLE" type="int" value="0"/>
		<constant name="EXO_PARAM_READWRITE" type="int" value="0"/>
		<constant name="EXO_PARAM_WRITABLE" type="int" value="0"/>
		<constant name="EXO_TOOLBARS_ITEM_TYPE" type="char*" value="application/x-exo-toolbars-item"/>
	</namespace>
</api>
