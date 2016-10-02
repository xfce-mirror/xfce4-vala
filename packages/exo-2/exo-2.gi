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
		<callback name="ExoSimpleJobFunc">
			<return-type type="gboolean"/>
			<parameters>
				<parameter name="job" type="ExoJob*"/>
				<parameter name="param_values" type="GValueArray*"/>
				<parameter name="error" type="GError**"/>
			</parameters>
		</callback>
		<struct name="ExoSimpleJobClass">
		</struct>
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
		<constant name="EXO_MAJOR_VERSION" type="int" value="0"/>
		<constant name="EXO_MICRO_VERSION" type="int" value="7"/>
		<constant name="EXO_MINOR_VERSION" type="int" value="10"/>
		<constant name="EXO_PARAM_READABLE" type="int" value="0"/>
		<constant name="EXO_PARAM_READWRITE" type="int" value="0"/>
		<constant name="EXO_PARAM_WRITABLE" type="int" value="0"/>
	</namespace>
</api>
