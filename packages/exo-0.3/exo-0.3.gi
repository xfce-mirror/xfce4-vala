<?xml version="1.0"?>
<api version="1.0">
	<namespace name="Exo">
		<function name="md5_str_to_digest" symbol="exo_md5_str_to_digest">
			<return-type type="ExoMd5Digest*"/>
			<parameters>
				<parameter name="str_digest" type="gchar*"/>
			</parameters>
		</function>
		<function name="str_get_md5_digest" symbol="exo_str_get_md5_digest">
			<return-type type="ExoMd5Digest*"/>
			<parameters>
				<parameter name="contents" type="gchar*"/>
			</parameters>
		</function>
		<function name="str_get_md5_str" symbol="exo_str_get_md5_str">
			<return-type type="gchar*"/>
			<parameters>
				<parameter name="contents" type="gchar*"/>
			</parameters>
		</function>
		<function name="url_about_dialog_hook" symbol="exo_url_about_dialog_hook">
			<return-type type="void"/>
			<parameters>
				<parameter name="about_dialog" type="GtkAboutDialog*"/>
				<parameter name="link" type="gchar*"/>
				<parameter name="user_data" type="gpointer"/>
			</parameters>
		</function>
		<function name="url_error_quark" symbol="exo_url_error_quark">
			<return-type type="GQuark"/>
		</function>
		<function name="url_show" symbol="exo_url_show">
			<return-type type="gboolean"/>
			<parameters>
				<parameter name="url" type="gchar*"/>
				<parameter name="envp" type="gchar**"/>
				<parameter name="error" type="GError**"/>
			</parameters>
		</function>
		<function name="url_show_on_screen" symbol="exo_url_show_on_screen">
			<return-type type="gboolean"/>
			<parameters>
				<parameter name="url" type="gchar*"/>
				<parameter name="envp" type="gchar**"/>
				<parameter name="screen" type="GdkScreen*"/>
				<parameter name="error" type="GError**"/>
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
			<field name="src_object" type="GObject*"/>
			<field name="base" type="ExoBindingBase"/>
			<field name="link" type="ExoBindingLink"/>
		</struct>
		<struct name="ExoBindingBase">
			<field name="destroy" type="GDestroyNotify"/>
		</struct>
		<struct name="ExoBindingLink">
			<field name="dst_object" type="GObject*"/>
			<field name="dst_pspec" type="GParamSpec*"/>
			<field name="dst_handler" type="gulong"/>
			<field name="handler" type="gulong"/>
			<field name="transform" type="ExoBindingTransform"/>
			<field name="user_data" type="gpointer"/>
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
			<field name="base" type="ExoBindingBase"/>
			<field name="direct" type="ExoBindingLink"/>
			<field name="reverse" type="ExoBindingLink"/>
		</struct>
		<boxed name="ExoMd5Digest" type-name="ExoMd5Digest" get-type="exo_md5_digest_get_type">
			<method name="dup" symbol="exo_md5_digest_dup">
				<return-type type="ExoMd5Digest*"/>
				<parameters>
					<parameter name="digest" type="ExoMd5Digest*"/>
				</parameters>
			</method>
			<method name="equal" symbol="exo_md5_digest_equal">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="digest1" type="gconstpointer"/>
					<parameter name="digest2" type="gconstpointer"/>
				</parameters>
			</method>
			<method name="free" symbol="exo_md5_digest_free">
				<return-type type="void"/>
				<parameters>
					<parameter name="digest" type="ExoMd5Digest*"/>
				</parameters>
			</method>
			<method name="hash" symbol="exo_md5_digest_hash">
				<return-type type="guint"/>
				<parameters>
					<parameter name="digest" type="gconstpointer"/>
				</parameters>
			</method>
			<method name="to_str" symbol="exo_md5_digest_to_str">
				<return-type type="gchar*"/>
				<parameters>
					<parameter name="digest" type="ExoMd5Digest*"/>
				</parameters>
			</method>
			<field name="digest" type="guchar[]"/>
		</boxed>
		<boxed name="ExoMountPoint" type-name="ExoMountPoint" get-type="exo_mount_point_get_type">
			<method name="dup" symbol="exo_mount_point_dup">
				<return-type type="ExoMountPoint*"/>
				<parameters>
					<parameter name="mount_point" type="ExoMountPoint*"/>
				</parameters>
			</method>
			<method name="free" symbol="exo_mount_point_free">
				<return-type type="void"/>
				<parameters>
					<parameter name="mount_point" type="ExoMountPoint*"/>
				</parameters>
			</method>
			<method name="list_matched" symbol="exo_mount_point_list_matched">
				<return-type type="GSList*"/>
				<parameters>
					<parameter name="mask" type="ExoMountPointMatchMask"/>
					<parameter name="device" type="gchar*"/>
					<parameter name="folder" type="gchar*"/>
					<parameter name="fstype" type="gchar*"/>
					<parameter name="error" type="GError**"/>
				</parameters>
			</method>
			<field name="flags" type="ExoMountPointFlags"/>
			<field name="device" type="gchar*"/>
			<field name="folder" type="gchar*"/>
			<field name="fstype" type="gchar*"/>
		</boxed>
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
		<enum name="ExoMountPointMatchMask">
			<member name="EXO_MOUNT_POINT_MATCH_ACTIVE" value="0"/>
			<member name="EXO_MOUNT_POINT_MATCH_CONFIGURED" value="1"/>
			<member name="EXO_MOUNT_POINT_MATCH_DEVICE" value="2"/>
			<member name="EXO_MOUNT_POINT_MATCH_FOLDER" value="4"/>
			<member name="EXO_MOUNT_POINT_MATCH_FSTYPE" value="8"/>
		</enum>
		<enum name="ExoUrlError">
			<member name="EXO_URL_ERROR_NOT_SUPPORTED" value="0"/>
		</enum>
		<flags name="ExoMountPointFlags" type-name="ExoMountPointFlags" get-type="exo_mount_point_flags_get_type">
			<member name="EXO_MOUNT_POINT_READ_ONLY" value="1"/>
		</flags>
		<flags name="ExoToolbarsModelFlags" type-name="ExoToolbarsModelFlags" get-type="exo_toolbars_model_flags_get_type">
			<member name="EXO_TOOLBARS_MODEL_NOT_REMOVABLE" value="1"/>
			<member name="EXO_TOOLBARS_MODEL_ACCEPT_ITEMS_ONLY" value="2"/>
			<member name="EXO_TOOLBARS_MODEL_OVERRIDE_STYLE" value="4"/>
		</flags>
		<object name="ExoCellRendererEllipsizedText" parent="GtkCellRendererText" type-name="ExoCellRendererEllipsizedText" get-type="exo_cell_renderer_ellipsized_text_get_type">
			<constructor name="new" symbol="exo_cell_renderer_ellipsized_text_new">
				<return-type type="GtkCellRenderer*"/>
			</constructor>
			<property name="follow-state" type="gboolean" readable="1" writable="1" construct="0" construct-only="0"/>
		</object>
		<object name="ExoCellRendererIcon" parent="GtkCellRenderer" type-name="ExoCellRendererIcon" get-type="exo_cell_renderer_icon_get_type">
			<constructor name="new" symbol="exo_cell_renderer_icon_new">
				<return-type type="GtkCellRenderer*"/>
			</constructor>
			<property name="follow-state" type="gboolean" readable="1" writable="1" construct="1" construct-only="0"/>
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
		<object name="ExoIconBar" parent="GtkContainer" type-name="ExoIconBar" get-type="exo_icon_bar_get_type">
			<implements>
				<interface name="AtkImplementor"/>
				<interface name="GtkBuildable"/>
			</implements>
			<method name="get_active" symbol="exo_icon_bar_get_active">
				<return-type type="gint"/>
				<parameters>
					<parameter name="icon_bar" type="ExoIconBar*"/>
				</parameters>
			</method>
			<method name="get_active_iter" symbol="exo_icon_bar_get_active_iter">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="icon_bar" type="ExoIconBar*"/>
					<parameter name="iter" type="GtkTreeIter*"/>
				</parameters>
			</method>
			<method name="get_model" symbol="exo_icon_bar_get_model">
				<return-type type="GtkTreeModel*"/>
				<parameters>
					<parameter name="icon_bar" type="ExoIconBar*"/>
				</parameters>
			</method>
			<method name="get_orientation" symbol="exo_icon_bar_get_orientation">
				<return-type type="GtkOrientation"/>
				<parameters>
					<parameter name="icon_bar" type="ExoIconBar*"/>
				</parameters>
			</method>
			<method name="get_pixbuf_column" symbol="exo_icon_bar_get_pixbuf_column">
				<return-type type="gint"/>
				<parameters>
					<parameter name="icon_bar" type="ExoIconBar*"/>
				</parameters>
			</method>
			<method name="get_text_column" symbol="exo_icon_bar_get_text_column">
				<return-type type="gint"/>
				<parameters>
					<parameter name="icon_bar" type="ExoIconBar*"/>
				</parameters>
			</method>
			<constructor name="new" symbol="exo_icon_bar_new">
				<return-type type="GtkWidget*"/>
			</constructor>
			<constructor name="new_with_model" symbol="exo_icon_bar_new_with_model">
				<return-type type="GtkWidget*"/>
				<parameters>
					<parameter name="model" type="GtkTreeModel*"/>
				</parameters>
			</constructor>
			<method name="set_active" symbol="exo_icon_bar_set_active">
				<return-type type="void"/>
				<parameters>
					<parameter name="icon_bar" type="ExoIconBar*"/>
					<parameter name="index" type="gint"/>
				</parameters>
			</method>
			<method name="set_active_iter" symbol="exo_icon_bar_set_active_iter">
				<return-type type="void"/>
				<parameters>
					<parameter name="icon_bar" type="ExoIconBar*"/>
					<parameter name="iter" type="GtkTreeIter*"/>
				</parameters>
			</method>
			<method name="set_model" symbol="exo_icon_bar_set_model">
				<return-type type="void"/>
				<parameters>
					<parameter name="icon_bar" type="ExoIconBar*"/>
					<parameter name="model" type="GtkTreeModel*"/>
				</parameters>
			</method>
			<method name="set_orientation" symbol="exo_icon_bar_set_orientation">
				<return-type type="void"/>
				<parameters>
					<parameter name="icon_bar" type="ExoIconBar*"/>
					<parameter name="orientation" type="GtkOrientation"/>
				</parameters>
			</method>
			<method name="set_pixbuf_column" symbol="exo_icon_bar_set_pixbuf_column">
				<return-type type="void"/>
				<parameters>
					<parameter name="icon_bar" type="ExoIconBar*"/>
					<parameter name="column" type="gint"/>
				</parameters>
			</method>
			<method name="set_text_column" symbol="exo_icon_bar_set_text_column">
				<return-type type="void"/>
				<parameters>
					<parameter name="icon_bar" type="ExoIconBar*"/>
					<parameter name="column" type="gint"/>
				</parameters>
			</method>
			<property name="active" type="gint" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="model" type="GtkTreeModel*" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="orientation" type="GtkOrientation" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="pixbuf-column" type="gint" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="text-column" type="gint" readable="1" writable="1" construct="0" construct-only="0"/>
			<signal name="selection-changed" when="FIRST">
				<return-type type="void"/>
				<parameters>
					<parameter name="icon_bar" type="ExoIconBar*"/>
				</parameters>
			</signal>
			<signal name="set-scroll-adjustments" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="icon_bar" type="ExoIconBar*"/>
					<parameter name="hadjustment" type="GtkAdjustment*"/>
					<parameter name="vadjustment" type="GtkAdjustment*"/>
				</parameters>
			</signal>
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
			</implements>
			<method name="create_drag_icon" symbol="exo_icon_view_create_drag_icon">
				<return-type type="GdkPixmap*"/>
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
			<signal name="set-scroll-adjustments" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="icon_view" type="ExoIconView*"/>
					<parameter name="hadjustment" type="GtkAdjustment*"/>
					<parameter name="vadjustment" type="GtkAdjustment*"/>
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
		</object>
		<object name="ExoToolbarsEditor" parent="GtkVBox" type-name="ExoToolbarsEditor" get-type="exo_toolbars_editor_get_type">
			<implements>
				<interface name="AtkImplementor"/>
				<interface name="GtkBuildable"/>
			</implements>
			<method name="get_model" symbol="exo_toolbars_editor_get_model">
				<return-type type="ExoToolbarsModel*"/>
				<parameters>
					<parameter name="editor" type="ExoToolbarsEditor*"/>
				</parameters>
			</method>
			<method name="get_ui_manager" symbol="exo_toolbars_editor_get_ui_manager">
				<return-type type="GtkUIManager*"/>
				<parameters>
					<parameter name="editor" type="ExoToolbarsEditor*"/>
				</parameters>
			</method>
			<constructor name="new" symbol="exo_toolbars_editor_new">
				<return-type type="GtkWidget*"/>
				<parameters>
					<parameter name="ui_manager" type="GtkUIManager*"/>
				</parameters>
			</constructor>
			<constructor name="new_with_model" symbol="exo_toolbars_editor_new_with_model">
				<return-type type="GtkWidget*"/>
				<parameters>
					<parameter name="ui_manager" type="GtkUIManager*"/>
					<parameter name="model" type="ExoToolbarsModel*"/>
				</parameters>
			</constructor>
			<method name="set_model" symbol="exo_toolbars_editor_set_model">
				<return-type type="void"/>
				<parameters>
					<parameter name="editor" type="ExoToolbarsEditor*"/>
					<parameter name="model" type="ExoToolbarsModel*"/>
				</parameters>
			</method>
			<method name="set_ui_manager" symbol="exo_toolbars_editor_set_ui_manager">
				<return-type type="void"/>
				<parameters>
					<parameter name="editor" type="ExoToolbarsEditor*"/>
					<parameter name="ui_manager" type="GtkUIManager*"/>
				</parameters>
			</method>
			<property name="model" type="ExoToolbarsModel*" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="ui-manager" type="GtkUIManager*" readable="1" writable="1" construct="0" construct-only="0"/>
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
		</object>
		<object name="ExoToolbarsEditorDialog" parent="GtkDialog" type-name="ExoToolbarsEditorDialog" get-type="exo_toolbars_editor_dialog_get_type">
			<implements>
				<interface name="AtkImplementor"/>
				<interface name="GtkBuildable"/>
			</implements>
			<constructor name="new_with_model" symbol="exo_toolbars_editor_dialog_new_with_model">
				<return-type type="GtkWidget*"/>
				<parameters>
					<parameter name="ui_manager" type="GtkUIManager*"/>
					<parameter name="model" type="ExoToolbarsModel*"/>
				</parameters>
			</constructor>
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
		</object>
		<object name="ExoToolbarsModel" parent="GObject" type-name="ExoToolbarsModel" get-type="exo_toolbars_model_get_type">
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
			<constructor name="new" symbol="exo_toolbars_model_new">
				<return-type type="ExoToolbarsModel*"/>
			</constructor>
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
			<signal name="get-item-data" when="FIRST">
				<return-type type="char*"/>
				<parameters>
					<parameter name="model" type="ExoToolbarsModel*"/>
					<parameter name="type" type="char*"/>
					<parameter name="id" type="char*"/>
				</parameters>
			</signal>
			<signal name="get-item-id" when="FIRST">
				<return-type type="char*"/>
				<parameters>
					<parameter name="model" type="ExoToolbarsModel*"/>
					<parameter name="type" type="char*"/>
					<parameter name="data" type="char*"/>
				</parameters>
			</signal>
			<signal name="get-item-type" when="FIRST">
				<return-type type="char*"/>
				<parameters>
					<parameter name="model" type="ExoToolbarsModel*"/>
					<parameter name="dnd_type" type="gpointer"/>
				</parameters>
			</signal>
			<signal name="item-added" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="model" type="ExoToolbarsModel*"/>
					<parameter name="toolbar_position" type="gint"/>
					<parameter name="item_position" type="gint"/>
				</parameters>
			</signal>
			<signal name="item-removed" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="model" type="ExoToolbarsModel*"/>
					<parameter name="toolbar_position" type="gint"/>
					<parameter name="item_position" type="gint"/>
				</parameters>
			</signal>
			<signal name="toolbar-added" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="model" type="ExoToolbarsModel*"/>
					<parameter name="toolbar_position" type="gint"/>
				</parameters>
			</signal>
			<signal name="toolbar-changed" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="model" type="ExoToolbarsModel*"/>
					<parameter name="toolbar_position" type="gint"/>
				</parameters>
			</signal>
			<signal name="toolbar-removed" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="model" type="ExoToolbarsModel*"/>
					<parameter name="toolbar_position" type="gint"/>
				</parameters>
			</signal>
			<vfunc name="add_item">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="model" type="ExoToolbarsModel*"/>
					<parameter name="toolbar_position" type="gint"/>
					<parameter name="item_position" type="gint"/>
					<parameter name="id" type="gchar*"/>
					<parameter name="type" type="gchar*"/>
				</parameters>
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
		</object>
		<object name="ExoToolbarsView" parent="GtkVBox" type-name="ExoToolbarsView" get-type="exo_toolbars_view_get_type">
			<implements>
				<interface name="AtkImplementor"/>
				<interface name="GtkBuildable"/>
			</implements>
			<method name="get_editing" symbol="exo_toolbars_view_get_editing">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="view" type="ExoToolbarsView*"/>
				</parameters>
			</method>
			<method name="get_model" symbol="exo_toolbars_view_get_model">
				<return-type type="ExoToolbarsModel*"/>
				<parameters>
					<parameter name="view" type="ExoToolbarsView*"/>
				</parameters>
			</method>
			<method name="get_ui_manager" symbol="exo_toolbars_view_get_ui_manager">
				<return-type type="GtkUIManager*"/>
				<parameters>
					<parameter name="view" type="ExoToolbarsView*"/>
				</parameters>
			</method>
			<constructor name="new" symbol="exo_toolbars_view_new">
				<return-type type="GtkWidget*"/>
				<parameters>
					<parameter name="ui_manager" type="GtkUIManager*"/>
				</parameters>
			</constructor>
			<constructor name="new_with_model" symbol="exo_toolbars_view_new_with_model">
				<return-type type="GtkWidget*"/>
				<parameters>
					<parameter name="ui_manager" type="GtkUIManager*"/>
					<parameter name="model" type="ExoToolbarsModel*"/>
				</parameters>
			</constructor>
			<method name="set_editing" symbol="exo_toolbars_view_set_editing">
				<return-type type="void"/>
				<parameters>
					<parameter name="view" type="ExoToolbarsView*"/>
					<parameter name="editing" type="gboolean"/>
				</parameters>
			</method>
			<method name="set_model" symbol="exo_toolbars_view_set_model">
				<return-type type="void"/>
				<parameters>
					<parameter name="view" type="ExoToolbarsView*"/>
					<parameter name="model" type="ExoToolbarsModel*"/>
				</parameters>
			</method>
			<method name="set_ui_manager" symbol="exo_toolbars_view_set_ui_manager">
				<return-type type="void"/>
				<parameters>
					<parameter name="view" type="ExoToolbarsView*"/>
					<parameter name="ui_manager" type="GtkUIManager*"/>
				</parameters>
			</method>
			<property name="editing" type="gboolean" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="model" type="ExoToolbarsModel*" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="ui-manager" type="GtkUIManager*" readable="1" writable="1" construct="0" construct-only="0"/>
			<signal name="action-request" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="view" type="ExoToolbarsView*"/>
					<parameter name="action_name" type="char*"/>
				</parameters>
			</signal>
			<signal name="customize" when="LAST">
				<return-type type="void"/>
				<parameters>
					<parameter name="view" type="ExoToolbarsView*"/>
				</parameters>
			</signal>
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
		</object>
		<object name="ExoTreeView" parent="GtkTreeView" type-name="ExoTreeView" get-type="exo_tree_view_get_type">
			<implements>
				<interface name="AtkImplementor"/>
				<interface name="GtkBuildable"/>
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
		<object name="ExoWrapTable" parent="GtkContainer" type-name="ExoWrapTable" get-type="exo_wrap_table_get_type">
			<implements>
				<interface name="AtkImplementor"/>
				<interface name="GtkBuildable"/>
			</implements>
			<method name="get_col_spacing" symbol="exo_wrap_table_get_col_spacing">
				<return-type type="guint"/>
				<parameters>
					<parameter name="table" type="ExoWrapTable*"/>
				</parameters>
			</method>
			<method name="get_homogeneous" symbol="exo_wrap_table_get_homogeneous">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="table" type="ExoWrapTable*"/>
				</parameters>
			</method>
			<method name="get_row_spacing" symbol="exo_wrap_table_get_row_spacing">
				<return-type type="guint"/>
				<parameters>
					<parameter name="table" type="ExoWrapTable*"/>
				</parameters>
			</method>
			<constructor name="new" symbol="exo_wrap_table_new">
				<return-type type="GtkWidget*"/>
				<parameters>
					<parameter name="homogeneous" type="gboolean"/>
				</parameters>
			</constructor>
			<method name="set_col_spacing" symbol="exo_wrap_table_set_col_spacing">
				<return-type type="void"/>
				<parameters>
					<parameter name="table" type="ExoWrapTable*"/>
					<parameter name="col_spacing" type="guint"/>
				</parameters>
			</method>
			<method name="set_homogeneous" symbol="exo_wrap_table_set_homogeneous">
				<return-type type="void"/>
				<parameters>
					<parameter name="table" type="ExoWrapTable*"/>
					<parameter name="homogeneous" type="gboolean"/>
				</parameters>
			</method>
			<method name="set_row_spacing" symbol="exo_wrap_table_set_row_spacing">
				<return-type type="void"/>
				<parameters>
					<parameter name="table" type="ExoWrapTable*"/>
					<parameter name="row_spacing" type="guint"/>
				</parameters>
			</method>
			<property name="col-spacing" type="guint" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="homogeneous" type="gboolean" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="row-spacing" type="guint" readable="1" writable="1" construct="0" construct-only="0"/>
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
		</object>
		<object name="ExoXsessionClient" parent="GObject" type-name="ExoXsessionClient" get-type="exo_xsession_client_get_type">
			<method name="get_group" symbol="exo_xsession_client_get_group">
				<return-type type="GdkWindow*"/>
				<parameters>
					<parameter name="client" type="ExoXsessionClient*"/>
				</parameters>
			</method>
			<method name="get_restart_command" symbol="exo_xsession_client_get_restart_command">
				<return-type type="gboolean"/>
				<parameters>
					<parameter name="client" type="ExoXsessionClient*"/>
					<parameter name="argv" type="gchar***"/>
					<parameter name="argc" type="gint*"/>
				</parameters>
			</method>
			<constructor name="new_with_group" symbol="exo_xsession_client_new_with_group">
				<return-type type="ExoXsessionClient*"/>
				<parameters>
					<parameter name="leader" type="GdkWindow*"/>
				</parameters>
			</constructor>
			<method name="set_group" symbol="exo_xsession_client_set_group">
				<return-type type="void"/>
				<parameters>
					<parameter name="client" type="ExoXsessionClient*"/>
					<parameter name="leader" type="GdkWindow*"/>
				</parameters>
			</method>
			<method name="set_restart_command" symbol="exo_xsession_client_set_restart_command">
				<return-type type="void"/>
				<parameters>
					<parameter name="client" type="ExoXsessionClient*"/>
					<parameter name="argv" type="gchar**"/>
					<parameter name="argc" type="gint"/>
				</parameters>
			</method>
			<property name="group" type="GdkWindow*" readable="1" writable="1" construct="0" construct-only="0"/>
			<property name="restart-command" type="GStrv*" readable="1" writable="1" construct="0" construct-only="0"/>
			<signal name="save-yourself" when="FIRST">
				<return-type type="void"/>
				<parameters>
					<parameter name="client" type="ExoXsessionClient*"/>
				</parameters>
			</signal>
			<vfunc name="reserved1">
				<return-type type="void"/>
			</vfunc>
			<vfunc name="reserved2">
				<return-type type="void"/>
			</vfunc>
		</object>
		<constant name="EXO_TOOLBARS_ITEM_TYPE" type="char*" value="application/x-exo-toolbars-item"/>
	</namespace>
</api>
