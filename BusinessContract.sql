set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_050000 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2013.01.01'
,p_default_workspace_id=>311252674623462473
,p_default_application_id=>12162
,p_default_owner=>'CHARURI'
);
end;
/
prompt --application/set_environment
 
prompt APPLICATION 12162 - Business Contract
--
-- Application Export:
--   Application:     12162
--   Name:            Business Contract
--   Date and Time:   02:09 Wednesday April 23, 2014
--   Exported By:     CHARLINA.HUNG@GMAIL.COM
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         5.0.0.00.01
--   Instance ID:     69326320839772
--
 
-- Application Statistics:
--   Pages:                     24
--     Items:                  160
--     Processes:               49
--     Regions:                 59
--     Buttons:                 66
--     Dynamic Actions:         13
--   Shared Components:
--     Logic:
--     Navigation:
--       Tab Sets:               1
--         Tabs:                 5
--       Lists:                  1
--       Breadcrumbs:            1
--         Entries:             16
--       NavBar Entries:         1
--     Security:
--       Authentication:         1
--     User Interface:
--       Themes:                 1
--       Templates:
--         Page:                20
--         Region:              36
--         Label:                6
--         List:                19
--         Popup LOV:            1
--         Calendar:             3
--         Breadcrumb:           2
--         Button:              11
--         Report:              11
--       LOVs:                   8
--       Shortcuts:              1
--     Globalization:
--     Reports:
 
prompt --application/delete_application
begin
wwv_flow_api.remove_flow(wwv_flow.g_flow_id);
wwv_flow_audit.remove_audit_trail(wwv_flow.g_flow_id);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/create_application
begin
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_display_id=>nvl(wwv_flow_application_install.get_application_id,12162)
,p_owner=>nvl(wwv_flow_application_install.get_schema,'CHARURI')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Business Contract')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'F_12162')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'8263B0B3142F737E7DE5817A7FEEF940C7BDB2BB6A7A081D131EC8070474A20D'
,p_bookmark_checksum_function=>'SH1'
,p_compatibility_mode=>'4.2'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>350775884714179116+wwv_flow_api.g_id_offset
,p_application_tab_set=>0
,p_logo_image=>'TEXT:<img src="#APP_IMAGES#rsz_longhorn.png" id="ut_logo" style="height:30px;padding-left:10px" alt="My Logo"></ img> <span>Business Contract</ span>'
,p_proxy_server=> nvl(wwv_flow_application_install.get_proxy,'')
,p_flow_version=>'release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_csv_encoding=>'Y'
,p_last_updated_by=>'HANSURQUIA@UTEXAS.EDU'
,p_last_upd_yyyymmddhh24miss=>'20140421162055'
,p_files_version=>3
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists
begin
wwv_flow_api.create_list(
 p_id=>367633261614894604+wwv_flow_api.g_id_offset
,p_name=>'Vendor List'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>367633439321894605+wwv_flow_api.g_id_offset
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Vendors'
,p_list_item_link_target=>'f?p=&APP_ID.:16:&SESSION.:'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>350775614455179115+wwv_flow_api.g_id_offset
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>26
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:LOGIN_DESKTOP:&SESSION.'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/shared_components/files
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '68656164657223754865616465727B0A096261636B67726F756E642D636F6C6F723A20726762283230342C2038352C2030293B0A096261636B67726F756E642D73697A653A2031303025206175746F3B0A096261636B67726F756E642D696D6167653A20';
wwv_flow_api.g_varchar2_table(2) := '6C696E6561722D6772616469656E7428726762283230342C2038352C2030292C20726762283230342C203132342C203029293B0A09626F782D736861646F773A20307078202D31707820307078207267626128302C20302C20302C20302E31352920696E';
wwv_flow_api.g_varchar2_table(3) := '7365743B0A7D0A0A6865616465722375486561646572206E6176207B0A09706F736974696F6E3A2072656C61746976653B0A096261636B67726F756E642D636F6C6F723A20726762283138322C203230362C20323337293B0A096261636B67726F756E64';
wwv_flow_api.g_varchar2_table(4) := '2D73697A653A2031303025206175746F3B0A096261636B67726F756E642D696D6167653A206C696E6561722D6772616469656E7428726762283235352C3234332C323335292C20726762283234302C3232382C32323129293B0A09626F782D736861646F';
wwv_flow_api.g_varchar2_table(5) := '773A2030707820317078203070782072676261283235352C203235352C203235352C20302E32352920696E7365742C20307078202D31707820307078207267626128302C20302C20302C20302E31352920696E7365743B0A09626F726465722D746F703A';
wwv_flow_api.g_varchar2_table(6) := '2031707820736F6C6964207267622837392C203132342C20313833293B0A7D0A0A6865616465722375486561646572206469762E6C6F676F426172206123754C6F676F20696D67207B0A20202020766572746963616C2D616C69676E3A20626F74746F6D';
wwv_flow_api.g_varchar2_table(7) := '3B0A202020206865696768743A20333070783B0A2020202070616464696E672D72696768743A20313070783B0A7D0A0A236C6174655F6973737565732074722E6C617465207464207B0A6261636B67726F756E642D636F6C6F723A207267626128323039';
wwv_flow_api.g_varchar2_table(8) := '2C2032312C2032312C20302E3333293B0A7D0A0A3A3A2D7765626B69742D696E7075742D706C616365686F6C646572207B202F2A205765624B69742062726F7773657273202A2F0A2020636F6C6F723A207265643B0A2020666F6E742D7374796C653A20';
wwv_flow_api.g_varchar2_table(9) := '6974616C69633B0A7D0A3A2D6D6F7A2D706C616365686F6C646572207B202F2A204D6F7A696C6C612046697265666F78203420746F203138202A2F0A2020636F6C6F723A207265643B0A2020666F6E742D7374796C653A206974616C69633B0A7D0A3A3A';
wwv_flow_api.g_varchar2_table(10) := '2D6D6F7A2D706C616365686F6C646572207B202F2A204D6F7A696C6C612046697265666F782031392B202A2F0A2020636F6C6F723A207265643B0A2020666F6E742D7374796C653A206974616C69633B0A7D0A3A2D6D732D696E7075742D706C61636568';
wwv_flow_api.g_varchar2_table(11) := '6F6C646572207B202F2A20496E7465726E6574204578706C6F7265722031302B202A2F0A2020636F6C6F723A207265643B0A2020666F6E742D7374796C653A206974616C69633B0A7D';
wwv_flow_api.create_app_static_file(
 p_id=>351977633124773387+wwv_flow_api.g_id_offset
,p_file_name=>'creo.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D494844520000003A0000001E08030000004A58FD3A0000000467414D410000B18F0BFC6105000000017352474200AECE1CE9000000206348524D00007A26000080840000FA00000080E8000075300000EA6000003A980000';
wwv_flow_api.g_varchar2_table(2) := '17709CBA513C000001AA504C5445231F20000000231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F';
wwv_flow_api.g_varchar2_table(3) := '20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20';
wwv_flow_api.g_varchar2_table(4) := '231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F2023';
wwv_flow_api.g_varchar2_table(5) := '1F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F';
wwv_flow_api.g_varchar2_table(6) := '20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20231F20FFFFFFD21C2B060000008C74524E53000089E0F6FAEDCB8D3B030104020E4680ACC6CDB54DF8FDD06E0F3A9EE5F54E837981A8FEE970063DC1ECCEC5DFC307';
wwv_flow_api.g_varchar2_table(7) := 'FBFCD5401BAB47110563F19B106D3021F9E658CC728EC249279D8A9C99A13EB2D22F51E2A3BEF4E791A5DA93B65E1CCF2368F2C744BAA728D8EEF3E3328445B87E136243D6C46C52D7095F55DB0817F097E178267B0BBB8237B90A7FDB64DB9A00000001';
wwv_flow_api.g_varchar2_table(8) := '624B47448D1B0CE2D5000000097048597300002E2300002E230178A53F76000002634944415438CB95548956D44010AC15B3C2CC041085A878C146574420510444D0F5441405C503EFFB16C5FB44C5FBA88F7626D92CC962F4A5F35EDECB4C5757777577';
wwv_flow_api.g_varchar2_table(9) := 'B0A866B1955F525B27209504904B357D096103F50D8D4B9B962D6F460B037356AC5C055B201DAC6FCC7DEBEA3521622DD6AD6F6B2FD4902E376C2C42D929587D6CB2DAD4A11DC9CD9D5BBABA11584F73133D9F5BB745C4485898AB406F81B4E86DEFEB07';
wwv_flow_api.g_varchar2_table(10) := '8A03104A29A18BDC31C816973B87B48B29D956159365A03D3C48CB62F72EE813A99F20A25402BB9B58B2B867AFF18BE51D7C0AA973DD47BF85A5FD0883EB93483B0571808E263E38D2A3231E6A1F3DDC76646CB8F6E8F090FE54C7C66928278E43455A22';
wwv_flow_api.g_varchar2_table(11) := '2EDF89BC21E6E4F8C953A7033968E43B53983A7B8EF44B2ECFF760BE83882B88DE0B747D3F4078150B9B67399C1C3125573A80B8FCBA868B35741DDFF3CB9C5114C7A537558FC4D020D973854B97E9708139ECBC1252C6B8126DB771356F194F378E735D';
wwv_flow_api.g_varchar2_table(12) := '5DF1B5EB37F475C23D3132366ED2D2E955719A944BBC0591F4AE82DEEE34D2DEB9CB0AAFCBFC3DF3BEFF405FA7434D7FFBA61B1FE211FD08EA71E6F14C61F48969EF3FA1B61D8CC734BD79859EC2E823AB37030B5752A9225A2B093B7C569403E551CEA5';
wwv_flow_api.g_varchar2_table(13) := '43A30012CFA316F97C11902E5CC6BF2FA7C0CB32D4E1ABD7907FF7CAA5D0768442F97C6348334005DE065087EF6653487329A712EF3F18A53C7ED47A6784CECE996A3D7ED2D05C16A88DCF56C83A9615AAF025180A87735F2133B27E0B1576A947371354';
wwv_flow_api.g_varchar2_table(14) := 'E07B007539D99F8D3527F08366F74A1CCD5AAB84F8A90B7569D555ADDA7F5935F6D7EF2EC79F68A8FA35C4EC0F7081C87B8CF5FBFD0000002574455874646174653A63726561746500323031332D30372D30365431373A31353A32312D30343A3030201C';
wwv_flow_api.g_varchar2_table(15) := '9B090000002574455874646174653A6D6F6469667900323031332D30372D30365431373A31353A32312D30343A3030514123B50000001974455874536F6674776172650041646F626520496D616765526561647971C9653C0000000049454E44AE426082';
wwv_flow_api.create_app_static_file(
 p_id=>351977985903776066+wwv_flow_api.g_id_offset
,p_file_name=>'rsz_longhorn.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>350758519527179102+wwv_flow_api.g_id_offset
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
);
end;
/
prompt --application/shared_components/security/authorizations
begin
null;
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
wwv_flow_api.create_icon_bar_item(
 p_id=>350775729970179116+wwv_flow_api.g_id_offset
,p_icon_sequence=>200
,p_icon_subtext=>'Logout'
,p_icon_target=>'&LOGOUT_URL.'
,p_icon_image_alt=>'Logout'
,p_icon_height=>32
,p_icon_width=>32
,p_icon_height2=>24
,p_icon_width2=>24
,p_nav_entry_is_feedback_yn=>'N'
,p_cell_colspan=>1
);
end;
/
prompt --application/shared_components/logic/application_processes
begin
null;
end;
/
prompt --application/shared_components/logic/application_items
begin
null;
end;
/
prompt --application/shared_components/logic/application_computations
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
wwv_flow_api.create_tab(
 p_id=>350777244260179121+wwv_flow_api.g_id_offset
,p_tab_set=>'TS1'
,p_tab_sequence=>10
,p_tab_name=>'T_HOME'
,p_tab_text=>'Home'
,p_tab_step=>1
);
wwv_flow_api.create_tab(
 p_id=>350764269333226583+wwv_flow_api.g_id_offset
,p_tab_set=>'TS1'
,p_tab_sequence=>20
,p_tab_name=>'Contracts'
,p_tab_text=>'Contracts'
,p_tab_step=>2
,p_tab_also_current_for_pages=>'3,4,39'
);
wwv_flow_api.create_tab(
 p_id=>367188103005422087+wwv_flow_api.g_id_offset
,p_tab_set=>'TS1'
,p_tab_sequence=>30
,p_tab_name=>'Vendors'
,p_tab_text=>'Vendors'
,p_tab_step=>16
,p_tab_also_current_for_pages=>'34,17'
);
wwv_flow_api.create_tab(
 p_id=>370913520561570570+wwv_flow_api.g_id_offset
,p_tab_set=>'TS1'
,p_tab_sequence=>40
,p_tab_name=>'Customers'
,p_tab_text=>'Customers'
,p_tab_step=>30
,p_tab_also_current_for_pages=>'31,40,41'
);
wwv_flow_api.create_tab(
 p_id=>370968475536583708+wwv_flow_api.g_id_offset
,p_tab_set=>'TS1'
,p_tab_sequence=>50
,p_tab_name=>'Escalation'
,p_tab_text=>'Escalation'
,p_tab_step=>32
,p_tab_also_current_for_pages=>'33'
);
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs
begin
wwv_flow_api.create_list_of_values(
 p_id=>387204599800577546+wwv_flow_api.g_id_offset
,p_lov_name=>'LOVAMENDMENTIDS'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select DISTINCT a.id as ID,',
'    b.id as "Value"',
'  from bc_amendment a, bc_amendment b',
'where a.id = b.id and a.id !=0',
' order by 1'))
);
wwv_flow_api.create_list_of_values(
 p_id=>399041903651493625+wwv_flow_api.g_id_offset
,p_lov_name=>'LOVASSIGN'
,p_lov_query=>'.'||to_char(399041903651493625 + wwv_flow_api.g_id_offset)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>399042223726493625+wwv_flow_api.g_id_offset
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'LIS'
,p_lov_return_value=>'LIS'
);
wwv_flow_api.create_static_lov_data(
 p_id=>399042542951493627+wwv_flow_api.g_id_offset
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'TPY'
,p_lov_return_value=>'TPY'
);
wwv_flow_api.create_static_lov_data(
 p_id=>399044862752493627+wwv_flow_api.g_id_offset
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'TLS'
,p_lov_return_value=>'TLS'
);
wwv_flow_api.create_static_lov_data(
 p_id=>399045159128493628+wwv_flow_api.g_id_offset
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'OTHERS'
,p_lov_return_value=>'OTHERS'
);
wwv_flow_api.create_list_of_values(
 p_id=>370989739655591986+wwv_flow_api.g_id_offset
,p_lov_name=>'LOVPARTYIDS'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select FIRST_NAME || '' '' || LAST_NAME as d,',
'       id as r',
'  from bc_party',
' order by 1'))
);
wwv_flow_api.create_list_of_values(
 p_id=>398965268576456518+wwv_flow_api.g_id_offset
,p_lov_name=>'LOVRENEWABLE'
,p_lov_query=>'.'||to_char(398965268576456518 + wwv_flow_api.g_id_offset)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>398965535213456519+wwv_flow_api.g_id_offset
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Renewable'
,p_lov_return_value=>'1'
);
wwv_flow_api.create_list_of_values(
 p_id=>369553422621461248+wwv_flow_api.g_id_offset
,p_lov_name=>'LOVVENDORIDS'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select name as d,',
'       id as r',
'  from bc_vendor',
' order by 1'))
);
wwv_flow_api.create_list_of_values(
 p_id=>384492043769838602+wwv_flow_api.g_id_offset
,p_lov_name=>'P40_Report Row Per Page'
,p_lov_query=>'.'||to_char(384492043769838602 + wwv_flow_api.g_id_offset)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>384492398525838603+wwv_flow_api.g_id_offset
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'10'
,p_lov_return_value=>'10'
);
wwv_flow_api.create_static_lov_data(
 p_id=>384492657050838605+wwv_flow_api.g_id_offset
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'15'
,p_lov_return_value=>'15'
);
wwv_flow_api.create_static_lov_data(
 p_id=>384520999527838605+wwv_flow_api.g_id_offset
,p_lov_disp_sequence=>30
,p_lov_disp_value=>'20'
,p_lov_return_value=>'20'
);
wwv_flow_api.create_static_lov_data(
 p_id=>384521233436838605+wwv_flow_api.g_id_offset
,p_lov_disp_sequence=>40
,p_lov_disp_value=>'30'
,p_lov_return_value=>'30'
);
wwv_flow_api.create_static_lov_data(
 p_id=>384521537572838605+wwv_flow_api.g_id_offset
,p_lov_disp_sequence=>50
,p_lov_disp_value=>'50'
,p_lov_return_value=>'50'
);
wwv_flow_api.create_static_lov_data(
 p_id=>384521880936838605+wwv_flow_api.g_id_offset
,p_lov_disp_sequence=>60
,p_lov_disp_value=>'100'
,p_lov_return_value=>'100'
);
wwv_flow_api.create_static_lov_data(
 p_id=>384522196026838605+wwv_flow_api.g_id_offset
,p_lov_disp_sequence=>70
,p_lov_disp_value=>'200'
,p_lov_return_value=>'200'
);
wwv_flow_api.create_static_lov_data(
 p_id=>384522458078838605+wwv_flow_api.g_id_offset
,p_lov_disp_sequence=>80
,p_lov_disp_value=>'500'
,p_lov_return_value=>'500'
);
wwv_flow_api.create_static_lov_data(
 p_id=>384522793814838605+wwv_flow_api.g_id_offset
,p_lov_disp_sequence=>90
,p_lov_disp_value=>'1000'
,p_lov_return_value=>'1000'
);
wwv_flow_api.create_static_lov_data(
 p_id=>384523055444838606+wwv_flow_api.g_id_offset
,p_lov_disp_sequence=>100
,p_lov_disp_value=>'5000'
,p_lov_return_value=>'5000'
);
wwv_flow_api.create_list_of_values(
 p_id=>398699882340192179+wwv_flow_api.g_id_offset
,p_lov_name=>'SERVICES'
,p_lov_query=>'.'||to_char(398699882340192179 + wwv_flow_api.g_id_offset)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>398700164831192180+wwv_flow_api.g_id_offset
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Service'
,p_lov_return_value=>'Service'
);
wwv_flow_api.create_static_lov_data(
 p_id=>398700430542192181+wwv_flow_api.g_id_offset
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'--'
,p_lov_return_value=>'--'
);
wwv_flow_api.create_static_lov_data(
 p_id=>398700798753192181+wwv_flow_api.g_id_offset
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Receive'
,p_lov_return_value=>'Receive'
);
wwv_flow_api.create_static_lov_data(
 p_id=>398701065076192181+wwv_flow_api.g_id_offset
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Provide'
,p_lov_return_value=>'Provide'
);
wwv_flow_api.create_static_lov_data(
 p_id=>398701365751192181+wwv_flow_api.g_id_offset
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Receive & Provide'
,p_lov_return_value=>'Receive & Provide'
);
wwv_flow_api.create_list_of_values(
 p_id=>398577292276127722+wwv_flow_api.g_id_offset
,p_lov_name=>'STATES'
,p_lov_query=>'.'||to_char(398577292276127722 + wwv_flow_api.g_id_offset)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>398577528386127724+wwv_flow_api.g_id_offset
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'State'
,p_lov_return_value=>'State'
);
wwv_flow_api.create_static_lov_data(
 p_id=>398577835156127725+wwv_flow_api.g_id_offset
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'--'
,p_lov_return_value=>'--'
);
wwv_flow_api.create_static_lov_data(
 p_id=>398578107391127725+wwv_flow_api.g_id_offset
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'AK'
,p_lov_return_value=>'AK'
);
wwv_flow_api.create_static_lov_data(
 p_id=>398578482420127726+wwv_flow_api.g_id_offset
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'AL'
,p_lov_return_value=>'AL'
);
wwv_flow_api.create_static_lov_data(
 p_id=>398578703458127726+wwv_flow_api.g_id_offset
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'AR'
,p_lov_return_value=>'AR'
);
wwv_flow_api.create_static_lov_data(
 p_id=>398579040957127726+wwv_flow_api.g_id_offset
,p_lov_disp_sequence=>6
,p_lov_disp_value=>'AZ'
,p_lov_return_value=>'AZ'
);
wwv_flow_api.create_static_lov_data(
 p_id=>398579319874127726+wwv_flow_api.g_id_offset
,p_lov_disp_sequence=>7
,p_lov_disp_value=>'CA'
,p_lov_return_value=>'CA'
);
wwv_flow_api.create_static_lov_data(
 p_id=>398579604683127727+wwv_flow_api.g_id_offset
,p_lov_disp_sequence=>8
,p_lov_disp_value=>'CO'
,p_lov_return_value=>'CO'
);
wwv_flow_api.create_static_lov_data(
 p_id=>398579948594127727+wwv_flow_api.g_id_offset
,p_lov_disp_sequence=>9
,p_lov_disp_value=>'CT'
,p_lov_return_value=>'DC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>398580207939127727+wwv_flow_api.g_id_offset
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'DE'
,p_lov_return_value=>'DE'
);
wwv_flow_api.create_static_lov_data(
 p_id=>398580582133127727+wwv_flow_api.g_id_offset
,p_lov_disp_sequence=>11
,p_lov_disp_value=>'FL'
,p_lov_return_value=>'FL'
);
wwv_flow_api.create_static_lov_data(
 p_id=>398580898455127728+wwv_flow_api.g_id_offset
,p_lov_disp_sequence=>12
,p_lov_disp_value=>'GA'
,p_lov_return_value=>'GA'
);
wwv_flow_api.create_static_lov_data(
 p_id=>398581112122127728+wwv_flow_api.g_id_offset
,p_lov_disp_sequence=>13
,p_lov_disp_value=>'HI'
,p_lov_return_value=>'HI'
);
wwv_flow_api.create_static_lov_data(
 p_id=>398581470761127728+wwv_flow_api.g_id_offset
,p_lov_disp_sequence=>14
,p_lov_disp_value=>'IA'
,p_lov_return_value=>'IA'
);
wwv_flow_api.create_static_lov_data(
 p_id=>398581730733127729+wwv_flow_api.g_id_offset
,p_lov_disp_sequence=>15
,p_lov_disp_value=>'ID'
,p_lov_return_value=>'ID'
);
wwv_flow_api.create_static_lov_data(
 p_id=>398647160780167691+wwv_flow_api.g_id_offset
,p_lov_disp_sequence=>16
,p_lov_disp_value=>'IL'
,p_lov_return_value=>'IL'
);
wwv_flow_api.create_static_lov_data(
 p_id=>398647403234167693+wwv_flow_api.g_id_offset
,p_lov_disp_sequence=>17
,p_lov_disp_value=>'IN'
,p_lov_return_value=>'IN'
);
wwv_flow_api.create_static_lov_data(
 p_id=>398647782705167693+wwv_flow_api.g_id_offset
,p_lov_disp_sequence=>18
,p_lov_disp_value=>'KS'
,p_lov_return_value=>'KS'
);
wwv_flow_api.create_static_lov_data(
 p_id=>398648078483167693+wwv_flow_api.g_id_offset
,p_lov_disp_sequence=>19
,p_lov_disp_value=>'KY'
,p_lov_return_value=>'KY'
);
wwv_flow_api.create_static_lov_data(
 p_id=>398648310771167694+wwv_flow_api.g_id_offset
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'LA'
,p_lov_return_value=>'LA'
);
wwv_flow_api.create_static_lov_data(
 p_id=>398648677485167694+wwv_flow_api.g_id_offset
,p_lov_disp_sequence=>21
,p_lov_disp_value=>'MA'
,p_lov_return_value=>'MA'
);
wwv_flow_api.create_static_lov_data(
 p_id=>398648994479167694+wwv_flow_api.g_id_offset
,p_lov_disp_sequence=>22
,p_lov_disp_value=>'MD'
,p_lov_return_value=>'MD'
);
wwv_flow_api.create_static_lov_data(
 p_id=>398649275081167695+wwv_flow_api.g_id_offset
,p_lov_disp_sequence=>23
,p_lov_disp_value=>'ME'
,p_lov_return_value=>'ME'
);
wwv_flow_api.create_static_lov_data(
 p_id=>398649565482167695+wwv_flow_api.g_id_offset
,p_lov_disp_sequence=>24
,p_lov_disp_value=>'MI'
,p_lov_return_value=>'MI'
);
wwv_flow_api.create_static_lov_data(
 p_id=>398649846919167695+wwv_flow_api.g_id_offset
,p_lov_disp_sequence=>25
,p_lov_disp_value=>'MN'
,p_lov_return_value=>'MN'
);
wwv_flow_api.create_static_lov_data(
 p_id=>398650175752167696+wwv_flow_api.g_id_offset
,p_lov_disp_sequence=>26
,p_lov_disp_value=>'MO'
,p_lov_return_value=>'MO'
);
wwv_flow_api.create_static_lov_data(
 p_id=>398650429814167696+wwv_flow_api.g_id_offset
,p_lov_disp_sequence=>27
,p_lov_disp_value=>'MS'
,p_lov_return_value=>'MS'
);
wwv_flow_api.create_static_lov_data(
 p_id=>398650775472167696+wwv_flow_api.g_id_offset
,p_lov_disp_sequence=>28
,p_lov_disp_value=>'MT'
,p_lov_return_value=>'MT'
);
wwv_flow_api.create_static_lov_data(
 p_id=>398651051755167697+wwv_flow_api.g_id_offset
,p_lov_disp_sequence=>29
,p_lov_disp_value=>'NC'
,p_lov_return_value=>'NC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>398651342779167697+wwv_flow_api.g_id_offset
,p_lov_disp_sequence=>30
,p_lov_disp_value=>'ND'
,p_lov_return_value=>'ND'
);
wwv_flow_api.create_static_lov_data(
 p_id=>398651640458167697+wwv_flow_api.g_id_offset
,p_lov_disp_sequence=>31
,p_lov_disp_value=>'NE'
,p_lov_return_value=>'NE'
);
wwv_flow_api.create_static_lov_data(
 p_id=>398651954391167698+wwv_flow_api.g_id_offset
,p_lov_disp_sequence=>32
,p_lov_disp_value=>'NH'
,p_lov_return_value=>'NH'
);
wwv_flow_api.create_static_lov_data(
 p_id=>398652257486167698+wwv_flow_api.g_id_offset
,p_lov_disp_sequence=>33
,p_lov_disp_value=>'NJ'
,p_lov_return_value=>'NJ'
);
wwv_flow_api.create_static_lov_data(
 p_id=>398652504896167698+wwv_flow_api.g_id_offset
,p_lov_disp_sequence=>34
,p_lov_disp_value=>'NM'
,p_lov_return_value=>'NM'
);
wwv_flow_api.create_static_lov_data(
 p_id=>398652856795167699+wwv_flow_api.g_id_offset
,p_lov_disp_sequence=>35
,p_lov_disp_value=>'NV'
,p_lov_return_value=>'NV'
);
wwv_flow_api.create_static_lov_data(
 p_id=>398653173372167700+wwv_flow_api.g_id_offset
,p_lov_disp_sequence=>36
,p_lov_disp_value=>'NY'
,p_lov_return_value=>'NY'
);
wwv_flow_api.create_static_lov_data(
 p_id=>398653459605167700+wwv_flow_api.g_id_offset
,p_lov_disp_sequence=>37
,p_lov_disp_value=>'OH'
,p_lov_return_value=>'OH'
);
wwv_flow_api.create_static_lov_data(
 p_id=>398653797332167700+wwv_flow_api.g_id_offset
,p_lov_disp_sequence=>38
,p_lov_disp_value=>'OK'
,p_lov_return_value=>'OK'
);
wwv_flow_api.create_static_lov_data(
 p_id=>398654023784167701+wwv_flow_api.g_id_offset
,p_lov_disp_sequence=>39
,p_lov_disp_value=>'OR'
,p_lov_return_value=>'OR'
);
wwv_flow_api.create_static_lov_data(
 p_id=>398654307888167701+wwv_flow_api.g_id_offset
,p_lov_disp_sequence=>40
,p_lov_disp_value=>'PA'
,p_lov_return_value=>'PA'
);
wwv_flow_api.create_static_lov_data(
 p_id=>398654696251167701+wwv_flow_api.g_id_offset
,p_lov_disp_sequence=>41
,p_lov_disp_value=>'RI'
,p_lov_return_value=>'RI'
);
wwv_flow_api.create_static_lov_data(
 p_id=>398654905242167702+wwv_flow_api.g_id_offset
,p_lov_disp_sequence=>42
,p_lov_disp_value=>'SC'
,p_lov_return_value=>'SC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>398655202662167702+wwv_flow_api.g_id_offset
,p_lov_disp_sequence=>43
,p_lov_disp_value=>'SD'
,p_lov_return_value=>'SD'
);
wwv_flow_api.create_static_lov_data(
 p_id=>398655534091167704+wwv_flow_api.g_id_offset
,p_lov_disp_sequence=>44
,p_lov_disp_value=>'TN'
,p_lov_return_value=>'TN'
);
wwv_flow_api.create_static_lov_data(
 p_id=>398655866312167705+wwv_flow_api.g_id_offset
,p_lov_disp_sequence=>45
,p_lov_disp_value=>'TX'
,p_lov_return_value=>'TX'
);
wwv_flow_api.create_static_lov_data(
 p_id=>398656198519167705+wwv_flow_api.g_id_offset
,p_lov_disp_sequence=>46
,p_lov_disp_value=>'UT'
,p_lov_return_value=>'UT'
);
wwv_flow_api.create_static_lov_data(
 p_id=>398656483359167706+wwv_flow_api.g_id_offset
,p_lov_disp_sequence=>47
,p_lov_disp_value=>'VA'
,p_lov_return_value=>'VA'
);
wwv_flow_api.create_static_lov_data(
 p_id=>398656738536167706+wwv_flow_api.g_id_offset
,p_lov_disp_sequence=>48
,p_lov_disp_value=>'VT'
,p_lov_return_value=>'VT'
);
wwv_flow_api.create_static_lov_data(
 p_id=>398657073955167706+wwv_flow_api.g_id_offset
,p_lov_disp_sequence=>49
,p_lov_disp_value=>'WA'
,p_lov_return_value=>'WA'
);
wwv_flow_api.create_static_lov_data(
 p_id=>398657333395167707+wwv_flow_api.g_id_offset
,p_lov_disp_sequence=>50
,p_lov_disp_value=>'WI'
,p_lov_return_value=>'WI'
);
wwv_flow_api.create_static_lov_data(
 p_id=>398657649371167707+wwv_flow_api.g_id_offset
,p_lov_disp_sequence=>51
,p_lov_disp_value=>'WV'
,p_lov_return_value=>'WV'
);
wwv_flow_api.create_static_lov_data(
 p_id=>398657921124167707+wwv_flow_api.g_id_offset
,p_lov_disp_sequence=>52
,p_lov_disp_value=>'WY'
,p_lov_return_value=>'WY'
);
wwv_flow_api.create_static_lov_data(
 p_id=>398658280733167707+wwv_flow_api.g_id_offset
,p_lov_disp_sequence=>53
,p_lov_disp_value=>'Other'
,p_lov_return_value=>'Other'
);
end;
/
prompt --application/shared_components/navigation/trees
begin
null;
end;
/
prompt --application/pages/page_groups
begin
null;
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>350775614455179115+wwv_flow_api.g_id_offset
,p_tab_set=>'TS1'
,p_name=>'Home'
,p_page_mode=>'NORMAL'
,p_step_title=>'Home'
,p_step_sub_title=>'Home'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'STEVENZVONEK@YAHOO.COM'
,p_last_upd_yyyymmddhh24miss=>'20140421055546'
);
wwv_flow_api.create_page_plug(
 p_id=>350777410841179122+wwv_flow_api.g_id_offset
,p_plug_name=>'Breadcrumbs'
,p_plug_template=>350767175131179107+wwv_flow_api.g_id_offset
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>350776953040179121+wwv_flow_api.g_id_offset
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>350774911878179113+wwv_flow_api.g_id_offset
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>350796475040237903+wwv_flow_api.g_id_offset
,p_plug_name=>'Calendar'
,p_escape_on_http_output=>'Y'
,p_plug_template=>350767969444179108+wwv_flow_api.g_id_offset
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid=>true
,p_plug_new_grid_column=>false
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select *',
'from bc_contract'))
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_ajax_items_to_submit=>'P1_CONTRACT_ID'
,p_attribute_01=>'END_DATE'
,p_attribute_03=>'DESCRIPTION'
,p_attribute_04=>'ROWID'
,p_attribute_06=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::P4_CONTRACTNO:#id#:'
,p_attribute_07=>'N'
,p_attribute_09=>'FIXED_WIDTH'
,p_attribute_10=>'ICAL:XML:PDF:CSV'
,p_attribute_11=>'month:week:day:navigation:agendaList'
,p_attribute_13=>'date'
,p_attribute_16=>'DESCRIPTION'
);
wwv_flow_api.create_report_region(
 p_id=>369309808535410436+wwv_flow_api.g_id_offset
,p_name=>'Upcoming Events'
,p_template=>350767969444179108+wwv_flow_api.g_id_offset
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select c.start_date, c.end_date, v.name AS "Vendor", c.current_amount, c.description',
'from bc_contract c left outer join bc_vendor v',
'on c.vendor_id = v.id',
'where c.id != 0',
'order by end_date',
'',
''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>350770809258179110+wwv_flow_api.g_id_offset
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>390598340401414947+wwv_flow_api.g_id_offset
,p_query_column_id=>1
,p_column_alias=>'START_DATE'
,p_column_display_sequence=>1
,p_column_heading=>'Start Date'
);
wwv_flow_api.create_report_columns(
 p_id=>390598446852414947+wwv_flow_api.g_id_offset
,p_query_column_id=>2
,p_column_alias=>'END_DATE'
,p_column_display_sequence=>2
,p_column_heading=>'End Date'
);
wwv_flow_api.create_report_columns(
 p_id=>391379830661181192+wwv_flow_api.g_id_offset
,p_query_column_id=>3
,p_column_alias=>'Vendor'
,p_column_display_sequence=>3
,p_column_heading=>'Vendor'
);
wwv_flow_api.create_report_columns(
 p_id=>390598759278414947+wwv_flow_api.g_id_offset
,p_query_column_id=>4
,p_column_alias=>'CURRENT_AMOUNT'
,p_column_display_sequence=>4
,p_column_heading=>'Current Amount'
);
wwv_flow_api.create_report_columns(
 p_id=>390598558594414947+wwv_flow_api.g_id_offset
,p_query_column_id=>5
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>5
,p_column_heading=>'Description'
);
wwv_flow_api.create_report_region(
 p_id=>391123323265902412+wwv_flow_api.g_id_offset
,p_name=>'Notes'
,p_parent_plug_id=>369309808535410436+wwv_flow_api.g_id_offset
,p_template=>350766826722179107+wwv_flow_api.g_id_offset
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select c.start_date AS "Start Date", c.end_date AS "End Date", v.name AS "Vendor", n.note AS "Note" ',
'from bc_contract c left outer join bc_note n',
'on c.id = n.contract_id',
'left outer join bc_vendor v',
'on c.vendor_id = v.id',
'where n.tickler = ''Y''',
'order by c.end_date'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>350770809258179110+wwv_flow_api.g_id_offset
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>391189958223982931+wwv_flow_api.g_id_offset
,p_query_column_id=>1
,p_column_alias=>'Start Date'
,p_column_display_sequence=>1
,p_column_heading=>'Start Date'
);
wwv_flow_api.create_report_columns(
 p_id=>391190062803982932+wwv_flow_api.g_id_offset
,p_query_column_id=>2
,p_column_alias=>'End Date'
,p_column_display_sequence=>2
,p_column_heading=>'End Date'
);
wwv_flow_api.create_report_columns(
 p_id=>391385480631213510+wwv_flow_api.g_id_offset
,p_query_column_id=>3
,p_column_alias=>'Vendor'
,p_column_display_sequence=>3
,p_column_heading=>'Vendor'
);
wwv_flow_api.create_report_columns(
 p_id=>391190189931982932+wwv_flow_api.g_id_offset
,p_query_column_id=>4
,p_column_alias=>'Note'
,p_column_display_sequence=>4
,p_column_heading=>'Note'
);
wwv_flow_api.create_page_item(
 p_id=>391304144494094283+wwv_flow_api.g_id_offset
,p_name=>'P1_CONTRACT_ID'
,p_item_sequence=>10
,p_item_plug_id=>350796475040237903+wwv_flow_api.g_id_offset
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>350775614455179115+wwv_flow_api.g_id_offset
,p_tab_set=>'TS1'
,p_name=>'Contracts'
,p_page_mode=>'NORMAL'
,p_step_title=>'Contracts'
,p_step_sub_title=>'Contracts'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHARLINA.HUNG@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20140421010418'
);
wwv_flow_api.create_page_plug(
 p_id=>318533343277026909+wwv_flow_api.g_id_offset
,p_plug_name=>'Breadcrumbs'
,p_plug_template=>350767175131179107+wwv_flow_api.g_id_offset
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid=>true
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>350776953040179121+wwv_flow_api.g_id_offset
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>350774911878179113+wwv_flow_api.g_id_offset
);
wwv_flow_api.create_page_plug(
 p_id=>350764356401226584+wwv_flow_api.g_id_offset
,p_plug_name=>'Contract Report'
,p_plug_template=>350768259637179108+wwv_flow_api.g_id_offset
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'Select * from bc_contract where id != 0'
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>350764409460226584+wwv_flow_api.g_id_offset
,p_name=>'Report 1'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_sql_query=>wwv_flow_api.g_region_source
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::P4_CONTRACTNO,P4_VENDORNO:#ID#,#VENDOR_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#magnifying_glass_white_bg.gif" alt="">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'STEVENZVONEK@YAHOO.COM'
,p_internal_uid=>350764409460226584
);
wwv_flow_api.create_worksheet_column(
 p_id=>350764612693226585+wwv_flow_api.g_id_offset
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>350796707039226585+wwv_flow_api.g_id_offset
,p_db_column_name=>'START_DATE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>350796817183226586+wwv_flow_api.g_id_offset
,p_db_column_name=>'END_DATE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>350796950652226586+wwv_flow_api.g_id_offset
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>350797098453226586+wwv_flow_api.g_id_offset
,p_db_column_name=>'INITIAL_AMOUNT'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Initial Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>350797131673226587+wwv_flow_api.g_id_offset
,p_db_column_name=>'CURRENT_AMOUNT'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Current Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>350797224444226587+wwv_flow_api.g_id_offset
,p_db_column_name=>'DELETED'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Deleted'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>350797311229226587+wwv_flow_api.g_id_offset
,p_db_column_name=>'VENDOR_ID'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Vendor Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>350797401753226587+wwv_flow_api.g_id_offset
,p_db_column_name=>'DFLEX'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Dflex'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>350797595967226587+wwv_flow_api.g_id_offset
,p_db_column_name=>'IFLEX1'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Iflex1'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>350797640395226587+wwv_flow_api.g_id_offset
,p_db_column_name=>'IFLEX2'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Iflex2'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>350797776675226587+wwv_flow_api.g_id_offset
,p_db_column_name=>'VFLEX1'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Vflex1'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>350797855384226587+wwv_flow_api.g_id_offset
,p_db_column_name=>'VFLEX2'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Vflex2'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>350797913789226588+wwv_flow_api.g_id_offset
,p_db_column_name=>'VFLEX3'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Vflex3'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>350798043727226588+wwv_flow_api.g_id_offset
,p_db_column_name=>'CREATED'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>350798172186226588+wwv_flow_api.g_id_offset
,p_db_column_name=>'CREATED_BY'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>350798291766226588+wwv_flow_api.g_id_offset
,p_db_column_name=>'ROW_VERSION_NUMBER'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Row Version Number'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>350798353313226588+wwv_flow_api.g_id_offset
,p_db_column_name=>'UPDATED'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>350798492505226588+wwv_flow_api.g_id_offset
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>350798549683226826+wwv_flow_api.g_id_offset
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'3507986'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_view_mode=>'REPORT'
,p_report_columns=>'START_DATE:END_DATE:DESCRIPTION:INITIAL_AMOUNT:CURRENT_AMOUNT:'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>318533934320026915+wwv_flow_api.g_id_offset
,p_button_sequence=>10
,p_button_plug_id=>350764356401226584+wwv_flow_api.g_id_offset
,p_button_name=>'ADD_CONTRACT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_id=>350774095506179113+wwv_flow_api.g_id_offset
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Contract'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::::'
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_api.create_page(
 p_id=>3
,p_user_interface_id=>350775614455179115+wwv_flow_api.g_id_offset
,p_tab_set=>'TS1'
,p_name=>'Add Contract'
,p_page_mode=>'NORMAL'
,p_step_title=>'Add Contract'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHARLINA.HUNG@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20140421041511'
);
wwv_flow_api.create_page_plug(
 p_id=>351937296156684076+wwv_flow_api.g_id_offset
,p_plug_name=>'Breadcrumb'
,p_plug_template=>350767175131179107+wwv_flow_api.g_id_offset
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>350776953040179121+wwv_flow_api.g_id_offset
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>350774911878179113+wwv_flow_api.g_id_offset
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>369289602098366035+wwv_flow_api.g_id_offset
,p_plug_name=>'Add Contract'
,p_plug_template=>350767859800179108+wwv_flow_api.g_id_offset
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>371091731869664749+wwv_flow_api.g_id_offset
,p_plug_name=>'Rvendor id'
,p_parent_plug_id=>369289602098366035+wwv_flow_api.g_id_offset
,p_plug_template=>350767732491179108+wwv_flow_api.g_id_offset
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>369289999760366036+wwv_flow_api.g_id_offset
,p_button_sequence=>30
,p_button_plug_id=>369289602098366035+wwv_flow_api.g_id_offset
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_id=>350773866275179112+wwv_flow_api.g_id_offset
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P3_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>369290165567366036+wwv_flow_api.g_id_offset
,p_button_sequence=>10
,p_button_plug_id=>369289602098366035+wwv_flow_api.g_id_offset
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_id=>350773866275179112+wwv_flow_api.g_id_offset
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>369289802429366036+wwv_flow_api.g_id_offset
,p_button_sequence=>40
,p_button_plug_id=>369289602098366035+wwv_flow_api.g_id_offset
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_id=>350773866275179112+wwv_flow_api.g_id_offset
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P3_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>369290087430366036+wwv_flow_api.g_id_offset
,p_button_sequence=>20
,p_button_plug_id=>369289602098366035+wwv_flow_api.g_id_offset
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_id=>350773866275179112+wwv_flow_api.g_id_offset
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P3_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>370839621740543326+wwv_flow_api.g_id_offset
,p_button_sequence=>50
,p_button_plug_id=>371091731869664749+wwv_flow_api.g_id_offset
,p_button_name=>'BADD_Vendor'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_id=>350774226858179113+wwv_flow_api.g_id_offset
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Vendor'
,p_button_position=>'TEMPLATE_DEFAULT'
,p_button_redirect_url=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_branch(
 p_id=>367619285012847539+wwv_flow_api.g_id_offset
,p_branch_action=>'f?p=&APP_ID.:2:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_branch(
 p_id=>369294998441366038+wwv_flow_api.g_id_offset
,p_branch_action=>'f?p=&APP_ID.:2:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>369295166921366041+wwv_flow_api.g_id_offset
,p_name=>'P3_ID'
,p_item_sequence=>10
,p_item_plug_id=>369289602098366035+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>350773481339179112+wwv_flow_api.g_id_offset
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>369295336871366042+wwv_flow_api.g_id_offset
,p_name=>'P3_START_DATE'
,p_item_sequence=>20
,p_item_plug_id=>369289602098366035+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Start Date'
,p_source=>'START_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>369295545647366043+wwv_flow_api.g_id_offset
,p_name=>'P3_END_DATE'
,p_item_sequence=>30
,p_item_plug_id=>369289602098366035+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'End Date'
,p_source=>'END_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>369295767809366043+wwv_flow_api.g_id_offset
,p_name=>'P3_DESCRIPTION'
,p_item_sequence=>40
,p_item_plug_id=>369289602098366035+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Description'
,p_source=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>369295956807366043+wwv_flow_api.g_id_offset
,p_name=>'P3_INITIAL_AMOUNT'
,p_item_sequence=>50
,p_item_plug_id=>369289602098366035+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Initial Amount'
,p_source=>'INITIAL_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>369296100615366044+wwv_flow_api.g_id_offset
,p_name=>'P3_CURRENT_AMOUNT'
,p_item_sequence=>60
,p_item_plug_id=>369289602098366035+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Current Amount'
,p_source=>'CURRENT_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>369296368718366044+wwv_flow_api.g_id_offset
,p_name=>'P3_DELETED'
,p_item_sequence=>70
,p_item_plug_id=>369289602098366035+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Deleted'
,p_source=>'DELETED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>1
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>369296589477366044+wwv_flow_api.g_id_offset
,p_name=>'P3_VENDOR_ID'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>371091731869664749+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Vendor Id'
,p_source=>'VENDOR_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOVVENDORIDS'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select name as d,',
'       id as r',
'  from bc_vendor',
' order by 1'))
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350773755364179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>369297915730366046+wwv_flow_api.g_id_offset
,p_name=>'P3_CREATED'
,p_item_sequence=>150
,p_item_plug_id=>369289602098366035+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created'
,p_source=>'CREATED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>369298101259366046+wwv_flow_api.g_id_offset
,p_name=>'P3_CREATED_BY'
,p_item_sequence=>160
,p_item_plug_id=>369289602098366035+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created By'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>369298567433366046+wwv_flow_api.g_id_offset
,p_name=>'P3_UPDATED'
,p_item_sequence=>180
,p_item_plug_id=>369289602098366035+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updated'
,p_source=>'UPDATED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>369298742406366047+wwv_flow_api.g_id_offset
,p_name=>'P3_UPDATED_BY'
,p_item_sequence=>190
,p_item_plug_id=>369289602098366035+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updated By'
,p_source=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>369299183093366047+wwv_flow_api.g_id_offset
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from BC_CONTRACT'
,p_attribute_02=>'BC_CONTRACT'
,p_attribute_03=>'P3_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
);
wwv_flow_api.create_page_process(
 p_id=>369299334474366048+wwv_flow_api.g_id_offset
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of BC_CONTRACT'
,p_attribute_02=>'BC_CONTRACT'
,p_attribute_03=>'P3_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>369299512344366048+wwv_flow_api.g_id_offset
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>369290087430366036+wwv_flow_api.g_id_offset
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_api.create_page(
 p_id=>4
,p_user_interface_id=>350775614455179115+wwv_flow_api.g_id_offset
,p_tab_set=>'TS1'
,p_name=>'Contract Summary'
,p_page_mode=>'NORMAL'
,p_step_title=>'Contract Summary'
,p_step_sub_title=>'Contract'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHARLINA.HUNG@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20140421044456'
);
wwv_flow_api.create_page_plug(
 p_id=>318534007100026916+wwv_flow_api.g_id_offset
,p_plug_name=>'Breadcrumbs'
,p_plug_template=>350767175131179107+wwv_flow_api.g_id_offset
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid=>true
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>350776953040179121+wwv_flow_api.g_id_offset
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>350774911878179113+wwv_flow_api.g_id_offset
);
wwv_flow_api.create_report_region(
 p_id=>350853724894325415+wwv_flow_api.g_id_offset
,p_name=>'Contract Summary'
,p_template=>350767859800179108+wwv_flow_api.g_id_offset
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ',
' "ID",',
' "START_DATE",',
' "END_DATE",',
' "DESCRIPTION",',
' "INITIAL_AMOUNT",',
' "CURRENT_AMOUNT",',
' "DELETED",',
' "VENDOR_ID",',
' "DFLEX",',
' "IFLEX1",',
' "IFLEX2",',
' "VFLEX1",',
' "VFLEX2",',
' "VFLEX3",',
' "CREATED",',
' "CREATED_BY",',
' "ROW_VERSION_NUMBER",',
' "UPDATED",',
' "UPDATED_BY"',
'from #OWNER#.BC_CONTRACT',
'',
'where id = :P4_CONTRACTNO'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>350771281363179110+wwv_flow_api.g_id_offset
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download'
,p_prn_output=>'Y'
,p_prn_format=>'PDF'
,p_prn_output_show_link=>'Y'
,p_prn_output_link_text=>'Print'
,p_prn_output_file_name=>'contract_summary'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width_units=>'PERCENTAGE'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#ffffff'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>350854088525325416+wwv_flow_api.g_id_offset
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'ID'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>350854133601325418+wwv_flow_api.g_id_offset
,p_query_column_id=>2
,p_column_alias=>'START_DATE'
,p_column_display_sequence=>2
,p_column_heading=>'Start Date'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
,p_print_col_width=>'10'
);
wwv_flow_api.create_report_columns(
 p_id=>350854200908325418+wwv_flow_api.g_id_offset
,p_query_column_id=>3
,p_column_alias=>'END_DATE'
,p_column_display_sequence=>3
,p_column_heading=>'End Date'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
,p_print_col_width=>'10'
);
wwv_flow_api.create_report_columns(
 p_id=>350854346042325418+wwv_flow_api.g_id_offset
,p_query_column_id=>4
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>4
,p_column_heading=>'Description'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
,p_print_col_width=>'10'
);
wwv_flow_api.create_report_columns(
 p_id=>350854454274325418+wwv_flow_api.g_id_offset
,p_query_column_id=>5
,p_column_alias=>'INITIAL_AMOUNT'
,p_column_display_sequence=>5
,p_column_heading=>'Initial Amount'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
,p_print_col_width=>'10'
);
wwv_flow_api.create_report_columns(
 p_id=>350854579442325418+wwv_flow_api.g_id_offset
,p_query_column_id=>6
,p_column_alias=>'CURRENT_AMOUNT'
,p_column_display_sequence=>6
,p_column_heading=>'Current Amount'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
,p_print_col_width=>'10'
);
wwv_flow_api.create_report_columns(
 p_id=>350854691916325418+wwv_flow_api.g_id_offset
,p_query_column_id=>7
,p_column_alias=>'DELETED'
,p_column_display_sequence=>7
,p_column_heading=>'DELETED'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>350854719943325418+wwv_flow_api.g_id_offset
,p_query_column_id=>8
,p_column_alias=>'VENDOR_ID'
,p_column_display_sequence=>8
,p_column_heading=>'Vendor ID'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
,p_print_col_width=>'10'
);
wwv_flow_api.create_report_columns(
 p_id=>350854812645325418+wwv_flow_api.g_id_offset
,p_query_column_id=>9
,p_column_alias=>'DFLEX'
,p_column_display_sequence=>9
,p_column_heading=>'DFLEX'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>350854988653325418+wwv_flow_api.g_id_offset
,p_query_column_id=>10
,p_column_alias=>'IFLEX1'
,p_column_display_sequence=>10
,p_column_heading=>'IFLEX1'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>350855072715325418+wwv_flow_api.g_id_offset
,p_query_column_id=>11
,p_column_alias=>'IFLEX2'
,p_column_display_sequence=>11
,p_column_heading=>'IFLEX2'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>350855165147325418+wwv_flow_api.g_id_offset
,p_query_column_id=>12
,p_column_alias=>'VFLEX1'
,p_column_display_sequence=>12
,p_column_heading=>'VFLEX1'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>350855232202325419+wwv_flow_api.g_id_offset
,p_query_column_id=>13
,p_column_alias=>'VFLEX2'
,p_column_display_sequence=>13
,p_column_heading=>'VFLEX2'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>350855340784325419+wwv_flow_api.g_id_offset
,p_query_column_id=>14
,p_column_alias=>'VFLEX3'
,p_column_display_sequence=>14
,p_column_heading=>'VFLEX3'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>350855479727325419+wwv_flow_api.g_id_offset
,p_query_column_id=>15
,p_column_alias=>'CREATED'
,p_column_display_sequence=>15
,p_column_heading=>'Created'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_include_in_export=>'Y'
,p_print_col_width=>'10'
);
wwv_flow_api.create_report_columns(
 p_id=>350855561508325419+wwv_flow_api.g_id_offset
,p_query_column_id=>16
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>16
,p_column_heading=>'Created By'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_include_in_export=>'Y'
,p_print_col_width=>'10'
);
wwv_flow_api.create_report_columns(
 p_id=>350855610086325419+wwv_flow_api.g_id_offset
,p_query_column_id=>17
,p_column_alias=>'ROW_VERSION_NUMBER'
,p_column_display_sequence=>17
,p_column_heading=>'ROW_VERSION_NUMBER'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>350855761542325419+wwv_flow_api.g_id_offset
,p_query_column_id=>18
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>18
,p_column_heading=>'Updated'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_include_in_export=>'Y'
,p_print_col_width=>'10'
);
wwv_flow_api.create_report_columns(
 p_id=>350855879237325419+wwv_flow_api.g_id_offset
,p_query_column_id=>19
,p_column_alias=>'UPDATED_BY'
,p_column_display_sequence=>19
,p_column_heading=>'Updated By'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_include_in_export=>'Y'
,p_print_col_width=>'10'
);
wwv_flow_api.create_page_plug(
 p_id=>356586303408656201+wwv_flow_api.g_id_offset
,p_plug_name=>'Contract Details'
,p_plug_template=>350768564406179108+wwv_flow_api.g_id_offset
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>352590995338064168+wwv_flow_api.g_id_offset
,p_plug_name=>'Customers'
,p_parent_plug_id=>356586303408656201+wwv_flow_api.g_id_offset
,p_plug_template=>350767969444179108+wwv_flow_api.g_id_offset
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>356662077024830962+wwv_flow_api.g_id_offset
,p_plug_name=>'Customers Interactive Report'
,p_parent_plug_id=>352590995338064168+wwv_flow_api.g_id_offset
,p_plug_template=>350768259637179108+wwv_flow_api.g_id_offset
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select * from #OWNER#.BC_PARTY',
'',
'where VENDOR_ID = :P4_VENDORNO'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>356662146716830962+wwv_flow_api.g_id_offset
,p_name=>'Customers'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_sql_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select * from #OWNER#.BC_PARTY',
'',
'where VENDOR_ID = :P4_VENDORNO'))
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'HANSURQUIA@UTEXAS.EDU'
,p_internal_uid=>356662146716830962
);
wwv_flow_api.create_worksheet_column(
 p_id=>356662344620830964+wwv_flow_api.g_id_offset
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Customer ID'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>356662450522830964+wwv_flow_api.g_id_offset
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'First Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>356662511468830964+wwv_flow_api.g_id_offset
,p_db_column_name=>'LAST_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Last Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>356662625032830965+wwv_flow_api.g_id_offset
,p_db_column_name=>'CELL_PHONE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Cell Phone'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>356662791414830965+wwv_flow_api.g_id_offset
,p_db_column_name=>'FAX_NUMBER'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Fax Number'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>356662802421830965+wwv_flow_api.g_id_offset
,p_db_column_name=>'WORK_PHONE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Work Phone'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>356662900725830965+wwv_flow_api.g_id_offset
,p_db_column_name=>'EMAIL'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Email'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>356663024620830965+wwv_flow_api.g_id_offset
,p_db_column_name=>'DELETED'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Deleted'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>356663178075830965+wwv_flow_api.g_id_offset
,p_db_column_name=>'VENDOR_ID'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Vendor Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>356663212220830965+wwv_flow_api.g_id_offset
,p_db_column_name=>'DFLEX'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Dflex'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>356663350607830965+wwv_flow_api.g_id_offset
,p_db_column_name=>'IFLEX1'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Iflex1'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>356663495970830966+wwv_flow_api.g_id_offset
,p_db_column_name=>'IFLEX2'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Iflex2'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>356663545846830966+wwv_flow_api.g_id_offset
,p_db_column_name=>'VFLEX1'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Vflex1'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>356663627171830966+wwv_flow_api.g_id_offset
,p_db_column_name=>'VFLEX2'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Vflex2'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>356663705177830966+wwv_flow_api.g_id_offset
,p_db_column_name=>'VFLEX3'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Vflex3'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>356663842989830966+wwv_flow_api.g_id_offset
,p_db_column_name=>'CREATED'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>356663959965830966+wwv_flow_api.g_id_offset
,p_db_column_name=>'CREATED_BY'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>356664008805830966+wwv_flow_api.g_id_offset
,p_db_column_name=>'ROW_VERSION_NUMBER'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Row Version Number'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>356664109260830966+wwv_flow_api.g_id_offset
,p_db_column_name=>'UPDATED'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>356664295065830967+wwv_flow_api.g_id_offset
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>356664393513831274+wwv_flow_api.g_id_offset
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'3566644'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'ID:FIRST_NAME:LAST_NAME:CELL_PHONE:FAX_NUMBER:WORK_PHONE:EMAIL:DELETED:VENDOR_ID:DFLEX:IFLEX1:IFLEX2:VFLEX1:VFLEX2:VFLEX3:CREATED:CREATED_BY:ROW_VERSION_NUMBER:UPDATED:UPDATED_BY'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>358038589200732512+wwv_flow_api.g_id_offset
,p_plug_name=>'Documents'
,p_parent_plug_id=>356586303408656201+wwv_flow_api.g_id_offset
,p_plug_template=>350767969444179108+wwv_flow_api.g_id_offset
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>359371826743058761+wwv_flow_api.g_id_offset
,p_name=>'Documents'
,p_parent_plug_id=>358038589200732512+wwv_flow_api.g_id_offset
,p_template=>350767606470179108+wwv_flow_api.g_id_offset
,p_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'N'
,p_display_point=>'BODY'
,p_source=>'Select * from #OWNER#.BC_DOCUMENT where CONTRACT_ID = :P4_CONTRACTNO'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>350770809258179110+wwv_flow_api.g_id_offset
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>359372175335058763+wwv_flow_api.g_id_offset
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'Document ID'
);
wwv_flow_api.create_report_columns(
 p_id=>359372276328058764+wwv_flow_api.g_id_offset
,p_query_column_id=>2
,p_column_alias=>'NAME'
,p_column_display_sequence=>4
,p_column_heading=>'Name'
);
wwv_flow_api.create_report_columns(
 p_id=>359372398224058764+wwv_flow_api.g_id_offset
,p_query_column_id=>3
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>5
,p_column_heading=>'Description'
);
wwv_flow_api.create_report_columns(
 p_id=>359372426532058764+wwv_flow_api.g_id_offset
,p_query_column_id=>4
,p_column_alias=>'MIME_TYPE'
,p_column_display_sequence=>6
,p_column_heading=>'MIME_TYPE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>359372513158058764+wwv_flow_api.g_id_offset
,p_query_column_id=>5
,p_column_alias=>'CHAR_SET'
,p_column_display_sequence=>7
,p_column_heading=>'CHAR_SET'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>359493220889248013+wwv_flow_api.g_id_offset
,p_query_column_id=>6
,p_column_alias=>'FILE_BLOB'
,p_column_display_sequence=>21
,p_column_heading=>'File'
);
wwv_flow_api.create_report_columns(
 p_id=>359380786104058764+wwv_flow_api.g_id_offset
,p_query_column_id=>7
,p_column_alias=>'DATE_CREATED'
,p_column_display_sequence=>8
,p_column_heading=>'Date Created'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>359380855886058765+wwv_flow_api.g_id_offset
,p_query_column_id=>8
,p_column_alias=>'DELETED'
,p_column_display_sequence=>9
,p_column_heading=>'DELETED'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>359380976719058765+wwv_flow_api.g_id_offset
,p_query_column_id=>9
,p_column_alias=>'CONTRACT_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Contract ID'
);
wwv_flow_api.create_report_columns(
 p_id=>359381042374058765+wwv_flow_api.g_id_offset
,p_query_column_id=>10
,p_column_alias=>'AMENDMENT_ID'
,p_column_display_sequence=>3
,p_column_heading=>'Amendment ID'
);
wwv_flow_api.create_report_columns(
 p_id=>359381111814058765+wwv_flow_api.g_id_offset
,p_query_column_id=>11
,p_column_alias=>'DFLEX'
,p_column_display_sequence=>10
,p_column_heading=>'DFLEX'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>359381278618058765+wwv_flow_api.g_id_offset
,p_query_column_id=>12
,p_column_alias=>'IFLEX1'
,p_column_display_sequence=>11
,p_column_heading=>'IFLEX1'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>359381360775058765+wwv_flow_api.g_id_offset
,p_query_column_id=>13
,p_column_alias=>'IFLEX2'
,p_column_display_sequence=>12
,p_column_heading=>'IFLEX2'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>359381421652058765+wwv_flow_api.g_id_offset
,p_query_column_id=>14
,p_column_alias=>'VFLEX1'
,p_column_display_sequence=>13
,p_column_heading=>'VFLEX1'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>359381596317058765+wwv_flow_api.g_id_offset
,p_query_column_id=>15
,p_column_alias=>'VFLEX2'
,p_column_display_sequence=>14
,p_column_heading=>'VFLEX2'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>359381611526058765+wwv_flow_api.g_id_offset
,p_query_column_id=>16
,p_column_alias=>'VFLEX3'
,p_column_display_sequence=>15
,p_column_heading=>'VFLEX3'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>359381757076058765+wwv_flow_api.g_id_offset
,p_query_column_id=>17
,p_column_alias=>'CREATED'
,p_column_display_sequence=>16
,p_column_heading=>'Created'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>359381840041058765+wwv_flow_api.g_id_offset
,p_query_column_id=>18
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>17
,p_column_heading=>'Created By'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>359381979578058765+wwv_flow_api.g_id_offset
,p_query_column_id=>19
,p_column_alias=>'ROW_VERSION_NUMBER'
,p_column_display_sequence=>18
,p_column_heading=>'ROW_VERSION_NUMBER'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>359382032844058765+wwv_flow_api.g_id_offset
,p_query_column_id=>20
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>19
,p_column_heading=>'Updated'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>359382145889058765+wwv_flow_api.g_id_offset
,p_query_column_id=>21
,p_column_alias=>'UPDATED_BY'
,p_column_display_sequence=>20
,p_column_heading=>'Updated By'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>359493390208248013+wwv_flow_api.g_id_offset
,p_query_column_id=>22
,p_column_alias=>'FILE_DATA'
,p_column_display_sequence=>22
,p_column_heading=>'File Data'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>367434145947531247+wwv_flow_api.g_id_offset
,p_plug_name=>'Amendments'
,p_parent_plug_id=>356586303408656201+wwv_flow_api.g_id_offset
,p_plug_template=>350767969444179108+wwv_flow_api.g_id_offset
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>367467204233553757+wwv_flow_api.g_id_offset
,p_name=>'Amendment'
,p_parent_plug_id=>367434145947531247+wwv_flow_api.g_id_offset
,p_template=>350766937844179107+wwv_flow_api.g_id_offset
,p_display_sequence=>100
,p_include_in_reg_disp_sel_yn=>'N'
,p_display_point=>'BODY'
,p_source=>'Select * from #OWNER#.bc_amendment where CONTRACT_ID = :P4_CONTRACTNO'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>350770809258179110+wwv_flow_api.g_id_offset
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>367467509290553759+wwv_flow_api.g_id_offset
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'Amendment ID'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>367467695836553760+wwv_flow_api.g_id_offset
,p_query_column_id=>2
,p_column_alias=>'REASON'
,p_column_display_sequence=>4
,p_column_heading=>'Reason'
);
wwv_flow_api.create_report_columns(
 p_id=>367467741020553760+wwv_flow_api.g_id_offset
,p_query_column_id=>3
,p_column_alias=>'START_DATE'
,p_column_display_sequence=>5
,p_column_heading=>'Start Date'
);
wwv_flow_api.create_report_columns(
 p_id=>367467894575553760+wwv_flow_api.g_id_offset
,p_query_column_id=>4
,p_column_alias=>'END_DATE'
,p_column_display_sequence=>6
,p_column_heading=>'End Date'
);
wwv_flow_api.create_report_columns(
 p_id=>367467948667553760+wwv_flow_api.g_id_offset
,p_query_column_id=>5
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>7
,p_column_heading=>'Description'
);
wwv_flow_api.create_report_columns(
 p_id=>367468033978553760+wwv_flow_api.g_id_offset
,p_query_column_id=>6
,p_column_alias=>'AMOUNT'
,p_column_display_sequence=>8
,p_column_heading=>'Amount'
);
wwv_flow_api.create_report_columns(
 p_id=>367468122084553760+wwv_flow_api.g_id_offset
,p_query_column_id=>7
,p_column_alias=>'DATE_CREATED'
,p_column_display_sequence=>9
,p_column_heading=>'Date Created'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>367468264540553760+wwv_flow_api.g_id_offset
,p_query_column_id=>8
,p_column_alias=>'DELETED'
,p_column_display_sequence=>10
,p_column_heading=>'DELETED'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>367468313599553760+wwv_flow_api.g_id_offset
,p_query_column_id=>9
,p_column_alias=>'CONTRACT_TYPE'
,p_column_display_sequence=>11
,p_column_heading=>'Contract Type'
);
wwv_flow_api.create_report_columns(
 p_id=>367468482579553760+wwv_flow_api.g_id_offset
,p_query_column_id=>10
,p_column_alias=>'CONTRACT_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Contract ID'
);
wwv_flow_api.create_report_columns(
 p_id=>367468598401553760+wwv_flow_api.g_id_offset
,p_query_column_id=>11
,p_column_alias=>'DEPARTMENT_ID'
,p_column_display_sequence=>3
,p_column_heading=>'Department ID'
);
wwv_flow_api.create_report_columns(
 p_id=>367468693341553760+wwv_flow_api.g_id_offset
,p_query_column_id=>12
,p_column_alias=>'DFLEX'
,p_column_display_sequence=>12
,p_column_heading=>'DFLEX'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>367468784520553760+wwv_flow_api.g_id_offset
,p_query_column_id=>13
,p_column_alias=>'IFLEX1'
,p_column_display_sequence=>13
,p_column_heading=>'IFLEX1'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>367468888390553760+wwv_flow_api.g_id_offset
,p_query_column_id=>14
,p_column_alias=>'IFLEX2'
,p_column_display_sequence=>14
,p_column_heading=>'IFLEX2'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>367468976964553760+wwv_flow_api.g_id_offset
,p_query_column_id=>15
,p_column_alias=>'VFLEX1'
,p_column_display_sequence=>15
,p_column_heading=>'VFLEX1'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>367469018763553760+wwv_flow_api.g_id_offset
,p_query_column_id=>16
,p_column_alias=>'VFLEX2'
,p_column_display_sequence=>16
,p_column_heading=>'VFLEX2'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>367469177937553760+wwv_flow_api.g_id_offset
,p_query_column_id=>17
,p_column_alias=>'VFLEX3'
,p_column_display_sequence=>17
,p_column_heading=>'VFLEX3'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>367469295029553760+wwv_flow_api.g_id_offset
,p_query_column_id=>18
,p_column_alias=>'CREATED'
,p_column_display_sequence=>18
,p_column_heading=>'Created'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>367469369461553761+wwv_flow_api.g_id_offset
,p_query_column_id=>19
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>19
,p_column_heading=>'Created By'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>367469420212553761+wwv_flow_api.g_id_offset
,p_query_column_id=>20
,p_column_alias=>'ROW_VERSION_NUMBER'
,p_column_display_sequence=>20
,p_column_heading=>'ROW_VERSION_NUMBER'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>367469521749553761+wwv_flow_api.g_id_offset
,p_query_column_id=>21
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>21
,p_column_heading=>'Updated'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>367469635849553761+wwv_flow_api.g_id_offset
,p_query_column_id=>22
,p_column_alias=>'UPDATED_BY'
,p_column_display_sequence=>22
,p_column_heading=>'Updated By'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>367622463372867315+wwv_flow_api.g_id_offset
,p_plug_name=>'Notes'
,p_parent_plug_id=>356586303408656201+wwv_flow_api.g_id_offset
,p_plug_template=>350767969444179108+wwv_flow_api.g_id_offset
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>367630969924892529+wwv_flow_api.g_id_offset
,p_name=>'Notes subregion'
,p_parent_plug_id=>367622463372867315+wwv_flow_api.g_id_offset
,p_template=>350766937844179107+wwv_flow_api.g_id_offset
,p_display_sequence=>120
,p_include_in_reg_disp_sel_yn=>'N'
,p_display_point=>'BODY'
,p_source=>'Select ID, DATE_CREATED AS "Date Created", NOTE,CONTRACT_ID from #OWNER#.BC_NOTE where CONTRACT_ID = :P4_CONTRACTNO ORDER BY 2'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>350770809258179110+wwv_flow_api.g_id_offset
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>367631221930892531+wwv_flow_api.g_id_offset
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'Note ID'
);
wwv_flow_api.create_report_columns(
 p_id=>383274995208707187+wwv_flow_api.g_id_offset
,p_query_column_id=>2
,p_column_alias=>'Date Created'
,p_column_display_sequence=>3
,p_column_heading=>'Date Created'
);
wwv_flow_api.create_report_columns(
 p_id=>367631498833892532+wwv_flow_api.g_id_offset
,p_query_column_id=>3
,p_column_alias=>'NOTE'
,p_column_display_sequence=>4
,p_column_heading=>'Note'
);
wwv_flow_api.create_report_columns(
 p_id=>367631534076892532+wwv_flow_api.g_id_offset
,p_query_column_id=>4
,p_column_alias=>'CONTRACT_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Contract ID'
);
end;
/
begin
wwv_flow_api.create_page_button(
 p_id=>398736578759201149+wwv_flow_api.g_id_offset
,p_button_sequence=>135
,p_button_plug_id=>350853724894325415+wwv_flow_api.g_id_offset
,p_button_name=>'PRINT'
,p_button_action=>'REDIRECT_URL'
,p_button_template_id=>350773866275179112+wwv_flow_api.g_id_offset
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Print Summary'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&SESSION.:FLOW_XMLP_OUTPUT_R'||to_char(350853724894325415+wwv_flow_api.g_id_offset)||''
);
wwv_flow_api.create_page_button(
 p_id=>356773924831110014+wwv_flow_api.g_id_offset
,p_button_sequence=>25
,p_button_plug_id=>356586303408656201+wwv_flow_api.g_id_offset
,p_button_name=>'BSHOW_ALL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_id=>350773906519179113+wwv_flow_api.g_id_offset
,p_button_image_alt=>'Show All'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_alignment=>'LEFT'
);
wwv_flow_api.create_page_button(
 p_id=>358448353123821828+wwv_flow_api.g_id_offset
,p_button_sequence=>40
,p_button_plug_id=>358038589200732512+wwv_flow_api.g_id_offset
,p_button_name=>'BADD_DOC'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_id=>350774226858179113+wwv_flow_api.g_id_offset
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Document'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::P10_CONTRACT_ID:&P4_CONTRACTNO.'
);
wwv_flow_api.create_page_button(
 p_id=>356764475407047220+wwv_flow_api.g_id_offset
,p_button_sequence=>45
,p_button_plug_id=>356586303408656201+wwv_flow_api.g_id_offset
,p_button_name=>'BDOCUMENTS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_id=>350773906519179113+wwv_flow_api.g_id_offset
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Show Documents'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_alignment=>'LEFT'
);
wwv_flow_api.create_page_button(
 p_id=>365948158662307174+wwv_flow_api.g_id_offset
,p_button_sequence=>50
,p_button_plug_id=>350853724894325415+wwv_flow_api.g_id_offset
,p_button_name=>'BEDIT_CONTRACT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_id=>350774226858179113+wwv_flow_api.g_id_offset
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Edit Contract'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.::P14_ID:&P4_CONTRACTNO.'
);
wwv_flow_api.create_page_button(
 p_id=>356729576692954533+wwv_flow_api.g_id_offset
,p_button_sequence=>65
,p_button_plug_id=>356586303408656201+wwv_flow_api.g_id_offset
,p_button_name=>'BCUSTOMERS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_id=>350773906519179113+wwv_flow_api.g_id_offset
,p_button_image_alt=>'Show Customers'
,p_button_position=>'REGION_TEMPLATE_CREATE'
);
wwv_flow_api.create_page_button(
 p_id=>367535615029707110+wwv_flow_api.g_id_offset
,p_button_sequence=>75
,p_button_plug_id=>367434145947531247+wwv_flow_api.g_id_offset
,p_button_name=>'BADD_AMENDMENT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_id=>350774226858179113+wwv_flow_api.g_id_offset
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Amendment'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.::P18_CONTRACT_ID:&P4_CONTRACTNO.'
);
wwv_flow_api.create_page_button(
 p_id=>367593407557822443+wwv_flow_api.g_id_offset
,p_button_sequence=>85
,p_button_plug_id=>356586303408656201+wwv_flow_api.g_id_offset
,p_button_name=>'BSHOW_AMENDMENT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_id=>350773906519179113+wwv_flow_api.g_id_offset
,p_button_image_alt=>'Show Amendments'
,p_button_position=>'REGION_TEMPLATE_CREATE'
);
wwv_flow_api.create_page_button(
 p_id=>367687544607017127+wwv_flow_api.g_id_offset
,p_button_sequence=>95
,p_button_plug_id=>367622463372867315+wwv_flow_api.g_id_offset
,p_button_name=>'BADD_NOTE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_id=>350774226858179113+wwv_flow_api.g_id_offset
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Note'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.::P20_CONTRACT_ID:&P4_CONTRACTNO.'
);
wwv_flow_api.create_page_button(
 p_id=>367732214918130774+wwv_flow_api.g_id_offset
,p_button_sequence=>105
,p_button_plug_id=>352590995338064168+wwv_flow_api.g_id_offset
,p_button_name=>'BADD_CUSTOMER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_id=>350774226858179113+wwv_flow_api.g_id_offset
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Customer'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.::P21_VENDOR_ID:&P4_VENDORNO.'
);
wwv_flow_api.create_page_button(
 p_id=>368128515439192690+wwv_flow_api.g_id_offset
,p_button_sequence=>115
,p_button_plug_id=>356586303408656201+wwv_flow_api.g_id_offset
,p_button_name=>'BSHOW_NOTES'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_id=>350773906519179113+wwv_flow_api.g_id_offset
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Show Notes'
,p_button_position=>'REGION_TEMPLATE_CREATE'
);
wwv_flow_api.create_page_button(
 p_id=>391201051879979661+wwv_flow_api.g_id_offset
,p_button_sequence=>125
,p_button_plug_id=>367434145947531247+wwv_flow_api.g_id_offset
,p_button_name=>'BCHECKLIST'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_id=>350774226858179113+wwv_flow_api.g_id_offset
,p_button_is_hot=>'Y'
,p_button_image_alt=>'BC Procedure Checklist'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:39:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_item(
 p_id=>351910337847639487+wwv_flow_api.g_id_offset
,p_name=>'P4_CONTRACTNO'
,p_item_sequence=>10
,p_item_plug_id=>350853724894325415+wwv_flow_api.g_id_offset
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>356682546478865546+wwv_flow_api.g_id_offset
,p_name=>'P4_VENDORNO'
,p_item_sequence=>20
,p_item_plug_id=>352590995338064168+wwv_flow_api.g_id_offset
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>389442367042762499+wwv_flow_api.g_id_offset
,p_name=>'P4_AMENDMENT'
,p_item_sequence=>30
,p_item_plug_id=>350853724894325415+wwv_flow_api.g_id_offset
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>356770563630063233+wwv_flow_api.g_id_offset
,p_name=>'Show Documents DA'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>356764475407047220+wwv_flow_api.g_id_offset
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>356770895747063233+wwv_flow_api.g_id_offset
,p_event_id=>356770563630063233+wwv_flow_api.g_id_offset
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>358038589200732512+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>356771043319066316+wwv_flow_api.g_id_offset
,p_event_id=>356770563630063233+wwv_flow_api.g_id_offset
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>352590995338064168+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>367598054995832194+wwv_flow_api.g_id_offset
,p_event_id=>356770563630063233+wwv_flow_api.g_id_offset
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>367434145947531247+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>368142777250199442+wwv_flow_api.g_id_offset
,p_event_id=>356770563630063233+wwv_flow_api.g_id_offset
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>367622463372867315+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>356772374800081290+wwv_flow_api.g_id_offset
,p_name=>'Show Customers DA'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>356729576692954533+wwv_flow_api.g_id_offset
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>356772665179081291+wwv_flow_api.g_id_offset
,p_event_id=>356772374800081290+wwv_flow_api.g_id_offset
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>352590995338064168+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>356772809668084297+wwv_flow_api.g_id_offset
,p_event_id=>356772374800081290+wwv_flow_api.g_id_offset
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>358038589200732512+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>367611076125843645+wwv_flow_api.g_id_offset
,p_event_id=>356772374800081290+wwv_flow_api.g_id_offset
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>367434145947531247+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>368143749906201989+wwv_flow_api.g_id_offset
,p_event_id=>356772374800081290+wwv_flow_api.g_id_offset
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>367622463372867315+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>356787856193118337+wwv_flow_api.g_id_offset
,p_name=>'Show All DA'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>356773924831110014+wwv_flow_api.g_id_offset
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>356788178876118338+wwv_flow_api.g_id_offset
,p_event_id=>356787856193118337+wwv_flow_api.g_id_offset
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>352590995338064168+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>356788554593121062+wwv_flow_api.g_id_offset
,p_event_id=>356787856193118337+wwv_flow_api.g_id_offset
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>358038589200732512+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>367598689446835718+wwv_flow_api.g_id_offset
,p_event_id=>356787856193118337+wwv_flow_api.g_id_offset
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>367434145947531247+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>368150051459211254+wwv_flow_api.g_id_offset
,p_event_id=>356787856193118337+wwv_flow_api.g_id_offset
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>367622463372867315+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>367597042837816485+wwv_flow_api.g_id_offset
,p_name=>'Show Amendment DA'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>367593407557822443+wwv_flow_api.g_id_offset
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>367597335500816486+wwv_flow_api.g_id_offset
,p_event_id=>367597042837816485+wwv_flow_api.g_id_offset
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>367434145947531247+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>367615712021855932+wwv_flow_api.g_id_offset
,p_event_id=>367597042837816485+wwv_flow_api.g_id_offset
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>352590995338064168+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>367617123173858285+wwv_flow_api.g_id_offset
,p_event_id=>367597042837816485+wwv_flow_api.g_id_offset
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>358038589200732512+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>368142107643197713+wwv_flow_api.g_id_offset
,p_name=>'Show Notes DA'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>368128515439192690+wwv_flow_api.g_id_offset
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>368142434594197714+wwv_flow_api.g_id_offset
,p_event_id=>368142107643197713+wwv_flow_api.g_id_offset
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>367622463372867315+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>368179401077203343+wwv_flow_api.g_id_offset
,p_event_id=>368142107643197713+wwv_flow_api.g_id_offset
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>352590995338064168+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>369027396303290291+wwv_flow_api.g_id_offset
,p_event_id=>368142107643197713+wwv_flow_api.g_id_offset
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>367434145947531247+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>369027806448294533+wwv_flow_api.g_id_offset
,p_event_id=>368142107643197713+wwv_flow_api.g_id_offset
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>358038589200732512+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_api.create_page(
 p_id=>10
,p_user_interface_id=>350775614455179115+wwv_flow_api.g_id_offset
,p_tab_set=>'TS1'
,p_name=>'Form on BC_DOCUMENT'
,p_page_mode=>'MODAL'
,p_step_title=>'Add Document'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_dialog_height=>'270'
,p_dialog_width=>'420'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_timeout_seconds=>21600
,p_cache_by_user_yn=>'N'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHARLINA.HUNG@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20140421044049'
);
wwv_flow_api.create_page_plug(
 p_id=>358515132417858371+wwv_flow_api.g_id_offset
,p_plug_name=>'Add Document'
,p_plug_template=>350767859800179108+wwv_flow_api.g_id_offset
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>358515445917858371+wwv_flow_api.g_id_offset
,p_button_sequence=>30
,p_button_plug_id=>358515132417858371+wwv_flow_api.g_id_offset
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_id=>350773866275179112+wwv_flow_api.g_id_offset
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P10_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>358515607390858371+wwv_flow_api.g_id_offset
,p_button_sequence=>10
,p_button_plug_id=>358515132417858371+wwv_flow_api.g_id_offset
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_id=>350773866275179112+wwv_flow_api.g_id_offset
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
);
wwv_flow_api.create_page_button(
 p_id=>358515357910858371+wwv_flow_api.g_id_offset
,p_button_sequence=>40
,p_button_plug_id=>358515132417858371+wwv_flow_api.g_id_offset
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_id=>350773866275179112+wwv_flow_api.g_id_offset
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Document'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P10_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>358515577528858371+wwv_flow_api.g_id_offset
,p_button_sequence=>20
,p_button_plug_id=>358515132417858371+wwv_flow_api.g_id_offset
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_id=>350773866275179112+wwv_flow_api.g_id_offset
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P10_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>358516770958858374+wwv_flow_api.g_id_offset
,p_branch_action=>'f?p=&APP_ID.:4:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>358516920704858375+wwv_flow_api.g_id_offset
,p_name=>'P10_ID'
,p_item_sequence=>10
,p_item_plug_id=>358515132417858371+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>350773481339179112+wwv_flow_api.g_id_offset
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>358517132330858375+wwv_flow_api.g_id_offset
,p_name=>'P10_NAME'
,p_item_sequence=>20
,p_item_plug_id=>358515132417858371+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Name'
,p_source=>'NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>31
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>358517311510858376+wwv_flow_api.g_id_offset
,p_name=>'P10_DESCRIPTION'
,p_item_sequence=>30
,p_item_plug_id=>358515132417858371+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Description'
,p_source=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>358517708874858376+wwv_flow_api.g_id_offset
,p_name=>'P10_DATE_CREATED'
,p_item_sequence=>50
,p_item_plug_id=>358515132417858371+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Date Created'
,p_source=>'DATE_CREATED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>358517980806858377+wwv_flow_api.g_id_offset
,p_name=>'P10_CONTRACT_ID'
,p_item_sequence=>60
,p_item_plug_id=>358515132417858371+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Contract Id'
,p_source=>'CONTRACT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>358518137570858377+wwv_flow_api.g_id_offset
,p_name=>'P10_AMENDMENT_ID'
,p_item_sequence=>70
,p_item_plug_id=>358515132417858371+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Amendment Id'
,p_source=>'AMENDMENT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>358518343679858377+wwv_flow_api.g_id_offset
,p_name=>'P10_CREATED'
,p_item_sequence=>80
,p_item_plug_id=>358515132417858371+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created'
,p_source=>'CREATED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>358518549200858378+wwv_flow_api.g_id_offset
,p_name=>'P10_CREATED_BY'
,p_item_sequence=>90
,p_item_plug_id=>358515132417858371+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created By'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>358518762235858378+wwv_flow_api.g_id_offset
,p_name=>'P10_UPDATED'
,p_item_sequence=>100
,p_item_plug_id=>358515132417858371+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updated'
,p_source=>'UPDATED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>358518942725858378+wwv_flow_api.g_id_offset
,p_name=>'P10_UPDATED_BY'
,p_item_sequence=>110
,p_item_plug_id=>358515132417858371+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updated By'
,p_source=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>358515724974858371+wwv_flow_api.g_id_offset
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>358515607390858371+wwv_flow_api.g_id_offset
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>358516110666858373+wwv_flow_api.g_id_offset
,p_event_id=>358515724974858371+wwv_flow_api.g_id_offset
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>358520199211858380+wwv_flow_api.g_id_offset
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from BC_DOCUMENT'
,p_attribute_02=>'BC_DOCUMENT'
,p_attribute_03=>'P10_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
);
wwv_flow_api.create_page_process(
 p_id=>358520352756858380+wwv_flow_api.g_id_offset
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of BC_DOCUMENT'
,p_attribute_02=>'BC_DOCUMENT'
,p_attribute_03=>'P10_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>358520574503858380+wwv_flow_api.g_id_offset
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>358515577528858371+wwv_flow_api.g_id_offset
);
wwv_flow_api.create_page_process(
 p_id=>358520759983858380+wwv_flow_api.g_id_offset
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
end;
/
prompt --application/pages/page_00014
begin
wwv_flow_api.create_page(
 p_id=>14
,p_user_interface_id=>350775614455179115+wwv_flow_api.g_id_offset
,p_tab_set=>'TS1'
,p_name=>'Form on BC_CONTRACT'
,p_page_mode=>'MODAL'
,p_step_title=>'Edit Contract'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_dialog_height=>'370'
,p_dialog_width=>'420'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_timeout_seconds=>21600
,p_cache_by_user_yn=>'N'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHARLINA.HUNG@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20140421044355'
);
wwv_flow_api.create_page_plug(
 p_id=>366252293793732324+wwv_flow_api.g_id_offset
,p_plug_name=>'Edit'
,p_plug_template=>350767859800179108+wwv_flow_api.g_id_offset
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>366252517434732324+wwv_flow_api.g_id_offset
,p_button_sequence=>30
,p_button_plug_id=>366252293793732324+wwv_flow_api.g_id_offset
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_id=>350773866275179112+wwv_flow_api.g_id_offset
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P14_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>366252759301732324+wwv_flow_api.g_id_offset
,p_button_sequence=>10
,p_button_plug_id=>366252293793732324+wwv_flow_api.g_id_offset
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_id=>350773866275179112+wwv_flow_api.g_id_offset
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
);
wwv_flow_api.create_page_button(
 p_id=>366252440644732324+wwv_flow_api.g_id_offset
,p_button_sequence=>40
,p_button_plug_id=>366252293793732324+wwv_flow_api.g_id_offset
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_id=>350773866275179112+wwv_flow_api.g_id_offset
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Edit Contract'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P14_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>366252648965732324+wwv_flow_api.g_id_offset
,p_button_sequence=>20
,p_button_plug_id=>366252293793732324+wwv_flow_api.g_id_offset
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_id=>350773866275179112+wwv_flow_api.g_id_offset
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P14_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>366253861078732328+wwv_flow_api.g_id_offset
,p_branch_action=>'f?p=&APP_ID.:4:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>366254097215732329+wwv_flow_api.g_id_offset
,p_name=>'P14_ID'
,p_item_sequence=>10
,p_item_plug_id=>366252293793732324+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>350773481339179112+wwv_flow_api.g_id_offset
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>366254299208732330+wwv_flow_api.g_id_offset
,p_name=>'P14_START_DATE'
,p_item_sequence=>20
,p_item_plug_id=>366252293793732324+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Start Date'
,p_source=>'START_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>15
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>366254400042732331+wwv_flow_api.g_id_offset
,p_name=>'P14_END_DATE'
,p_item_sequence=>30
,p_item_plug_id=>366252293793732324+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'End Date'
,p_source=>'END_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>15
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>366254618067732331+wwv_flow_api.g_id_offset
,p_name=>'P14_DESCRIPTION'
,p_item_sequence=>40
,p_item_plug_id=>366252293793732324+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Description'
,p_source=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>366254808493732331+wwv_flow_api.g_id_offset
,p_name=>'P14_INITIAL_AMOUNT'
,p_item_sequence=>50
,p_item_plug_id=>366252293793732324+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Initial Amount'
,p_source=>'INITIAL_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>15
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>366255068886732332+wwv_flow_api.g_id_offset
,p_name=>'P14_CURRENT_AMOUNT'
,p_item_sequence=>60
,p_item_plug_id=>366252293793732324+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Current Amount'
,p_source=>'CURRENT_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>15
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>366255299440732332+wwv_flow_api.g_id_offset
,p_name=>'P14_VENDOR_ID'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>366252293793732324+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Vendor Id'
,p_source=>'VENDOR_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350773755364179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>366255462867732332+wwv_flow_api.g_id_offset
,p_name=>'P14_CREATED'
,p_item_sequence=>80
,p_item_plug_id=>366252293793732324+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created'
,p_source=>'CREATED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>366255645771732333+wwv_flow_api.g_id_offset
,p_name=>'P14_CREATED_BY'
,p_item_sequence=>90
,p_item_plug_id=>366252293793732324+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created By'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>366255830790732333+wwv_flow_api.g_id_offset
,p_name=>'P14_UPDATED'
,p_item_sequence=>100
,p_item_plug_id=>366252293793732324+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updated'
,p_source=>'UPDATED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>366256047171732333+wwv_flow_api.g_id_offset
,p_name=>'P14_UPDATED_BY'
,p_item_sequence=>110
,p_item_plug_id=>366252293793732324+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updated By'
,p_source=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>366252883048732325+wwv_flow_api.g_id_offset
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>366252759301732324+wwv_flow_api.g_id_offset
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>366253267700732326+wwv_flow_api.g_id_offset
,p_event_id=>366252883048732325+wwv_flow_api.g_id_offset
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>366256970783732335+wwv_flow_api.g_id_offset
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from BC_CONTRACT'
,p_attribute_02=>'BC_CONTRACT'
,p_attribute_03=>'P14_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
);
wwv_flow_api.create_page_process(
 p_id=>366257185201732335+wwv_flow_api.g_id_offset
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of BC_CONTRACT'
,p_attribute_02=>'BC_CONTRACT'
,p_attribute_03=>'P14_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>366257338642732335+wwv_flow_api.g_id_offset
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>366252648965732324+wwv_flow_api.g_id_offset
);
wwv_flow_api.create_page_process(
 p_id=>366257586135732335+wwv_flow_api.g_id_offset
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
end;
/
prompt --application/pages/page_00016
begin
wwv_flow_api.create_page(
 p_id=>16
,p_user_interface_id=>350775614455179115+wwv_flow_api.g_id_offset
,p_tab_set=>'TS1'
,p_name=>'Vendors'
,p_page_mode=>'NORMAL'
,p_step_title=>'Vendors'
,p_step_sub_title=>'Vendors'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHARLINA.HUNG@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20140421040106'
);
wwv_flow_api.create_page_plug(
 p_id=>352114747344958613+wwv_flow_api.g_id_offset
,p_plug_name=>'Breadcrumbs'
,p_plug_template=>350767175131179107+wwv_flow_api.g_id_offset
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid=>true
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>350776953040179121+wwv_flow_api.g_id_offset
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>350774911878179113+wwv_flow_api.g_id_offset
);
wwv_flow_api.create_page_plug(
 p_id=>367188270263422087+wwv_flow_api.g_id_offset
,p_plug_name=>'Vendors'
,p_plug_template=>350768259637179108+wwv_flow_api.g_id_offset
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'select * from bc_vendor where id != 0'
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_prn_output_show_link=>'Y'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#ffffff'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>367188300489422087+wwv_flow_api.g_id_offset
,p_name=>'Vendors'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_sql_query=>wwv_flow_api.g_region_source
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.::P17_VENDORS_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#magnifying_glass_white_bg.gif" alt="">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'STEVENZVONEK@YAHOO.COM'
,p_internal_uid=>367188300489422087
);
wwv_flow_api.create_worksheet_column(
 p_id=>367188530713422088+wwv_flow_api.g_id_offset
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Vendor_Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>367188673558422089+wwv_flow_api.g_id_offset
,p_db_column_name=>'NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>367188790238422089+wwv_flow_api.g_id_offset
,p_db_column_name=>'STREET'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Street'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>367188877761422090+wwv_flow_api.g_id_offset
,p_db_column_name=>'CITY'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'City'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>367188954947422090+wwv_flow_api.g_id_offset
,p_db_column_name=>'STATE_VALUE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'State Value'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>367189081874422090+wwv_flow_api.g_id_offset
,p_db_column_name=>'ZIP'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Zip'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>367189153109422090+wwv_flow_api.g_id_offset
,p_db_column_name=>'COUNTRY'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Country'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>367189257917422090+wwv_flow_api.g_id_offset
,p_db_column_name=>'DELETED'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Deleted'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>367189308266422090+wwv_flow_api.g_id_offset
,p_db_column_name=>'SERVICE_TYPE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Service Type'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>367189481274422091+wwv_flow_api.g_id_offset
,p_db_column_name=>'ACCOUNT_TYPE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Account Type'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>367189517056422091+wwv_flow_api.g_id_offset
,p_db_column_name=>'PARTY_ID'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Party Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>367189602769422091+wwv_flow_api.g_id_offset
,p_db_column_name=>'DFLEX'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Dflex'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>367189751206422091+wwv_flow_api.g_id_offset
,p_db_column_name=>'IFLEX1'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Iflex1'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>367189895995422091+wwv_flow_api.g_id_offset
,p_db_column_name=>'IFLEX2'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Iflex2'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>367189998447422091+wwv_flow_api.g_id_offset
,p_db_column_name=>'VFLEX1'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Vflex1'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>367190044560422091+wwv_flow_api.g_id_offset
,p_db_column_name=>'VFLEX2'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Vflex2'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>367190103814422091+wwv_flow_api.g_id_offset
,p_db_column_name=>'VFLEX3'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Vflex3'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>367190275061422092+wwv_flow_api.g_id_offset
,p_db_column_name=>'CREATED'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>367190374029422092+wwv_flow_api.g_id_offset
,p_db_column_name=>'CREATED_BY'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>367190471652422092+wwv_flow_api.g_id_offset
,p_db_column_name=>'ROW_VERSION_NUMBER'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Row Version Number'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>367190573234422092+wwv_flow_api.g_id_offset
,p_db_column_name=>'UPDATED'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>367190604016422092+wwv_flow_api.g_id_offset
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>367190743764422263+wwv_flow_api.g_id_offset
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'3671908'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_view_mode=>'REPORT'
,p_report_columns=>'NAME:STREET:CITY:STATE_VALUE:ZIP:COUNTRY:SERVICE_TYPE:ACCOUNT_TYPE:'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>352114989697958615+wwv_flow_api.g_id_offset
,p_button_sequence=>10
,p_button_plug_id=>367188270263422087+wwv_flow_api.g_id_offset
,p_button_name=>'ADD_VENDOR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_id=>350774095506179113+wwv_flow_api.g_id_offset
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Vendor'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:34:&SESSION.::&DEBUG.::::'
);
end;
/
prompt --application/pages/page_00017
begin
wwv_flow_api.create_page(
 p_id=>17
,p_user_interface_id=>350775614455179115+wwv_flow_api.g_id_offset
,p_tab_set=>'TS1'
,p_name=>'Vendor Summary'
,p_page_mode=>'NORMAL'
,p_step_title=>'Vendor Summary'
,p_step_sub_title=>'Vendor Summary'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'HANSURQUIA@UTEXAS.EDU'
,p_last_upd_yyyymmddhh24miss=>'20140421154928'
);
wwv_flow_api.create_page_plug(
 p_id=>352114802315958614+wwv_flow_api.g_id_offset
,p_plug_name=>'Breadcrumbs'
,p_plug_template=>350767175131179107+wwv_flow_api.g_id_offset
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid=>true
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>350776953040179121+wwv_flow_api.g_id_offset
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>350774911878179113+wwv_flow_api.g_id_offset
);
wwv_flow_api.create_page_plug(
 p_id=>367625897623877372+wwv_flow_api.g_id_offset
,p_plug_name=>'Vendor Attributes'
,p_plug_template=>350768564406179108+wwv_flow_api.g_id_offset
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>367689655708010198+wwv_flow_api.g_id_offset
,p_name=>'Customers'
,p_parent_plug_id=>367625897623877372+wwv_flow_api.g_id_offset
,p_template=>350767969444179108+wwv_flow_api.g_id_offset
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_display_point=>'BODY'
,p_source=>'select * from bc_party where vendor_id= :P17_VENDORS_ID'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>350770809258179110+wwv_flow_api.g_id_offset
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>367689979595010201+wwv_flow_api.g_id_offset
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'Customer ID'
);
wwv_flow_api.create_report_columns(
 p_id=>384756537601929217+wwv_flow_api.g_id_offset
,p_query_column_id=>2
,p_column_alias=>'FIRST_NAME'
,p_column_display_sequence=>15
,p_column_heading=>'First Name'
);
wwv_flow_api.create_report_columns(
 p_id=>384756613158929217+wwv_flow_api.g_id_offset
,p_query_column_id=>3
,p_column_alias=>'LAST_NAME'
,p_column_display_sequence=>16
,p_column_heading=>'Last Name'
);
wwv_flow_api.create_report_columns(
 p_id=>384756746386929217+wwv_flow_api.g_id_offset
,p_query_column_id=>4
,p_column_alias=>'CELL_PHONE'
,p_column_display_sequence=>17
,p_column_heading=>'Cell Phone'
);
wwv_flow_api.create_report_columns(
 p_id=>384756814032929217+wwv_flow_api.g_id_offset
,p_query_column_id=>5
,p_column_alias=>'FAX_NUMBER'
,p_column_display_sequence=>18
,p_column_heading=>'Fax Number'
);
wwv_flow_api.create_report_columns(
 p_id=>384756991815929217+wwv_flow_api.g_id_offset
,p_query_column_id=>6
,p_column_alias=>'WORK_PHONE'
,p_column_display_sequence=>19
,p_column_heading=>'Work Phone'
);
wwv_flow_api.create_report_columns(
 p_id=>384757097143929217+wwv_flow_api.g_id_offset
,p_query_column_id=>7
,p_column_alias=>'EMAIL'
,p_column_display_sequence=>20
,p_column_heading=>'Email'
);
wwv_flow_api.create_report_columns(
 p_id=>367690637100010201+wwv_flow_api.g_id_offset
,p_query_column_id=>8
,p_column_alias=>'DELETED'
,p_column_display_sequence=>2
,p_column_heading=>'DELETED'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>384757109450929217+wwv_flow_api.g_id_offset
,p_query_column_id=>9
,p_column_alias=>'VENDOR_ID'
,p_column_display_sequence=>14
,p_column_heading=>'Vendor ID'
);
wwv_flow_api.create_report_columns(
 p_id=>367690822873010202+wwv_flow_api.g_id_offset
,p_query_column_id=>10
,p_column_alias=>'DFLEX'
,p_column_display_sequence=>3
,p_column_heading=>'DFLEX'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>367690981520010202+wwv_flow_api.g_id_offset
,p_query_column_id=>11
,p_column_alias=>'IFLEX1'
,p_column_display_sequence=>4
,p_column_heading=>'IFLEX1'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>367691006426010202+wwv_flow_api.g_id_offset
,p_query_column_id=>12
,p_column_alias=>'IFLEX2'
,p_column_display_sequence=>5
,p_column_heading=>'IFLEX2'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>367691107127010202+wwv_flow_api.g_id_offset
,p_query_column_id=>13
,p_column_alias=>'VFLEX1'
,p_column_display_sequence=>6
,p_column_heading=>'VFLEX1'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>367691225668010202+wwv_flow_api.g_id_offset
,p_query_column_id=>14
,p_column_alias=>'VFLEX2'
,p_column_display_sequence=>7
,p_column_heading=>'VFLEX2'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>367691338018010202+wwv_flow_api.g_id_offset
,p_query_column_id=>15
,p_column_alias=>'VFLEX3'
,p_column_display_sequence=>8
,p_column_heading=>'VFLEX3'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>367691463085010202+wwv_flow_api.g_id_offset
,p_query_column_id=>16
,p_column_alias=>'CREATED'
,p_column_display_sequence=>9
,p_column_heading=>'CREATED'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>367691504226010202+wwv_flow_api.g_id_offset
,p_query_column_id=>17
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>10
,p_column_heading=>'CREATED_BY'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>367691614399010202+wwv_flow_api.g_id_offset
,p_query_column_id=>18
,p_column_alias=>'ROW_VERSION_NUMBER'
,p_column_display_sequence=>11
,p_column_heading=>'ROW_VERSION_NUMBER'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>367691746583010202+wwv_flow_api.g_id_offset
,p_query_column_id=>19
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>12
,p_column_heading=>'UPDATED'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>367691818261010202+wwv_flow_api.g_id_offset
,p_query_column_id=>20
,p_column_alias=>'UPDATED_BY'
,p_column_display_sequence=>13
,p_column_heading=>'UPDATED_BY'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>368146615364207581+wwv_flow_api.g_id_offset
,p_name=>'Contracts'
,p_parent_plug_id=>367625897623877372+wwv_flow_api.g_id_offset
,p_template=>350767969444179108+wwv_flow_api.g_id_offset
,p_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'N'
,p_display_point=>'BODY'
,p_source=>'select * from #OWNER#.bc_contract where vendor_id= :P17_VENDORS_ID'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>350770809258179110+wwv_flow_api.g_id_offset
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>368146952382207583+wwv_flow_api.g_id_offset
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'Contract ID'
);
wwv_flow_api.create_report_columns(
 p_id=>368147096587207584+wwv_flow_api.g_id_offset
,p_query_column_id=>2
,p_column_alias=>'START_DATE'
,p_column_display_sequence=>3
,p_column_heading=>'Start Date'
);
wwv_flow_api.create_report_columns(
 p_id=>368147168072207584+wwv_flow_api.g_id_offset
,p_query_column_id=>3
,p_column_alias=>'END_DATE'
,p_column_display_sequence=>4
,p_column_heading=>'End Date'
);
wwv_flow_api.create_report_columns(
 p_id=>368147278145207584+wwv_flow_api.g_id_offset
,p_query_column_id=>4
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>5
,p_column_heading=>'Description'
);
wwv_flow_api.create_report_columns(
 p_id=>368147357510207584+wwv_flow_api.g_id_offset
,p_query_column_id=>5
,p_column_alias=>'INITIAL_AMOUNT'
,p_column_display_sequence=>6
,p_column_heading=>'Initial Amount'
);
wwv_flow_api.create_report_columns(
 p_id=>368147408145207584+wwv_flow_api.g_id_offset
,p_query_column_id=>6
,p_column_alias=>'CURRENT_AMOUNT'
,p_column_display_sequence=>7
,p_column_heading=>'Current Amount'
);
wwv_flow_api.create_report_columns(
 p_id=>368147577989207584+wwv_flow_api.g_id_offset
,p_query_column_id=>7
,p_column_alias=>'DELETED'
,p_column_display_sequence=>8
,p_column_heading=>'DELETED'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>368147631503207584+wwv_flow_api.g_id_offset
,p_query_column_id=>8
,p_column_alias=>'VENDOR_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Vendor ID'
);
wwv_flow_api.create_report_columns(
 p_id=>368147778654207584+wwv_flow_api.g_id_offset
,p_query_column_id=>9
,p_column_alias=>'DFLEX'
,p_column_display_sequence=>9
,p_column_heading=>'DFLEX'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>368147864757207584+wwv_flow_api.g_id_offset
,p_query_column_id=>10
,p_column_alias=>'IFLEX1'
,p_column_display_sequence=>10
,p_column_heading=>'IFLEX1'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>368147994883207584+wwv_flow_api.g_id_offset
,p_query_column_id=>11
,p_column_alias=>'IFLEX2'
,p_column_display_sequence=>11
,p_column_heading=>'IFLEX2'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>368148072751207584+wwv_flow_api.g_id_offset
,p_query_column_id=>12
,p_column_alias=>'VFLEX1'
,p_column_display_sequence=>12
,p_column_heading=>'VFLEX1'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>368148158932207584+wwv_flow_api.g_id_offset
,p_query_column_id=>13
,p_column_alias=>'VFLEX2'
,p_column_display_sequence=>13
,p_column_heading=>'VFLEX2'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>368148284534207584+wwv_flow_api.g_id_offset
,p_query_column_id=>14
,p_column_alias=>'VFLEX3'
,p_column_display_sequence=>14
,p_column_heading=>'VFLEX3'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>368148302700207584+wwv_flow_api.g_id_offset
,p_query_column_id=>15
,p_column_alias=>'CREATED'
,p_column_display_sequence=>15
,p_column_heading=>'CREATED'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>368148417745207584+wwv_flow_api.g_id_offset
,p_query_column_id=>16
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>16
,p_column_heading=>'CREATED_BY'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>368148501596207584+wwv_flow_api.g_id_offset
,p_query_column_id=>17
,p_column_alias=>'ROW_VERSION_NUMBER'
,p_column_display_sequence=>17
,p_column_heading=>'ROW_VERSION_NUMBER'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>368148647333207584+wwv_flow_api.g_id_offset
,p_query_column_id=>18
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>18
,p_column_heading=>'UPDATED'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>368148706478207584+wwv_flow_api.g_id_offset
,p_query_column_id=>19
,p_column_alias=>'UPDATED_BY'
,p_column_display_sequence=>19
,p_column_heading=>'UPDATED_BY'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>367697411086060440+wwv_flow_api.g_id_offset
,p_name=>'Vendor Summary'
,p_template=>350767859800179108+wwv_flow_api.g_id_offset
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_display_point=>'BODY'
,p_source=>'select * from #OWNER#.bc_vendor where id= :P17_VENDORS_ID'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>350771281363179110+wwv_flow_api.g_id_offset
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>367697783860060441+wwv_flow_api.g_id_offset
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'Vendor ID'
);
wwv_flow_api.create_report_columns(
 p_id=>367697803842060442+wwv_flow_api.g_id_offset
,p_query_column_id=>2
,p_column_alias=>'NAME'
,p_column_display_sequence=>3
,p_column_heading=>'Name'
);
wwv_flow_api.create_report_columns(
 p_id=>367697981398060442+wwv_flow_api.g_id_offset
,p_query_column_id=>3
,p_column_alias=>'STREET'
,p_column_display_sequence=>4
,p_column_heading=>'Street'
);
wwv_flow_api.create_report_columns(
 p_id=>367698054682060442+wwv_flow_api.g_id_offset
,p_query_column_id=>4
,p_column_alias=>'CITY'
,p_column_display_sequence=>5
,p_column_heading=>'City'
);
wwv_flow_api.create_report_columns(
 p_id=>367698134754060442+wwv_flow_api.g_id_offset
,p_query_column_id=>5
,p_column_alias=>'STATE_VALUE'
,p_column_display_sequence=>6
,p_column_heading=>'State'
);
wwv_flow_api.create_report_columns(
 p_id=>367698296676060442+wwv_flow_api.g_id_offset
,p_query_column_id=>6
,p_column_alias=>'ZIP'
,p_column_display_sequence=>7
,p_column_heading=>'Zip'
);
wwv_flow_api.create_report_columns(
 p_id=>367698330919060442+wwv_flow_api.g_id_offset
,p_query_column_id=>7
,p_column_alias=>'COUNTRY'
,p_column_display_sequence=>8
,p_column_heading=>'Country'
);
wwv_flow_api.create_report_columns(
 p_id=>367698423254060442+wwv_flow_api.g_id_offset
,p_query_column_id=>8
,p_column_alias=>'DELETED'
,p_column_display_sequence=>9
,p_column_heading=>'DELETED'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>367698593541060442+wwv_flow_api.g_id_offset
,p_query_column_id=>9
,p_column_alias=>'SERVICE_TYPE'
,p_column_display_sequence=>10
,p_column_heading=>'Service Type'
);
wwv_flow_api.create_report_columns(
 p_id=>367698683087060442+wwv_flow_api.g_id_offset
,p_query_column_id=>10
,p_column_alias=>'ACCOUNT_TYPE'
,p_column_display_sequence=>11
,p_column_heading=>'Account Type'
);
wwv_flow_api.create_report_columns(
 p_id=>367698738287060442+wwv_flow_api.g_id_offset
,p_query_column_id=>11
,p_column_alias=>'PARTY_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Customer ID'
);
wwv_flow_api.create_report_columns(
 p_id=>367698832977060442+wwv_flow_api.g_id_offset
,p_query_column_id=>12
,p_column_alias=>'DFLEX'
,p_column_display_sequence=>12
,p_column_heading=>'DFLEX'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>367698949226060442+wwv_flow_api.g_id_offset
,p_query_column_id=>13
,p_column_alias=>'IFLEX1'
,p_column_display_sequence=>13
,p_column_heading=>'IFLEX1'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>367699029042060442+wwv_flow_api.g_id_offset
,p_query_column_id=>14
,p_column_alias=>'IFLEX2'
,p_column_display_sequence=>14
,p_column_heading=>'IFLEX2'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>367699185477060443+wwv_flow_api.g_id_offset
,p_query_column_id=>15
,p_column_alias=>'VFLEX1'
,p_column_display_sequence=>15
,p_column_heading=>'VFLEX1'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>367699265580060443+wwv_flow_api.g_id_offset
,p_query_column_id=>16
,p_column_alias=>'VFLEX2'
,p_column_display_sequence=>16
,p_column_heading=>'VFLEX2'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>367699303938060443+wwv_flow_api.g_id_offset
,p_query_column_id=>17
,p_column_alias=>'VFLEX3'
,p_column_display_sequence=>17
,p_column_heading=>'VFLEX3'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>367699445094060443+wwv_flow_api.g_id_offset
,p_query_column_id=>18
,p_column_alias=>'CREATED'
,p_column_display_sequence=>18
,p_column_heading=>'CREATED'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>367699529834060443+wwv_flow_api.g_id_offset
,p_query_column_id=>19
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>19
,p_column_heading=>'CREATED_BY'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>367699683708060443+wwv_flow_api.g_id_offset
,p_query_column_id=>20
,p_column_alias=>'ROW_VERSION_NUMBER'
,p_column_display_sequence=>20
,p_column_heading=>'ROW_VERSION_NUMBER'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>367699788551060443+wwv_flow_api.g_id_offset
,p_query_column_id=>21
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>21
,p_column_heading=>'UPDATED'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>367699805589060443+wwv_flow_api.g_id_offset
,p_query_column_id=>22
,p_column_alias=>'UPDATED_BY'
,p_column_display_sequence=>22
,p_column_heading=>'UPDATED_BY'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>367540132919742055+wwv_flow_api.g_id_offset
,p_name=>'P17_VENDORS_ID'
,p_item_sequence=>10
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/pages/page_00018
begin
wwv_flow_api.create_page(
 p_id=>18
,p_user_interface_id=>350775614455179115+wwv_flow_api.g_id_offset
,p_tab_set=>'TS1'
,p_name=>'Form on BC_AMENDMENT'
,p_page_mode=>'MODAL'
,p_step_title=>'Add Amendment'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_dialog_height=>'430'
,p_dialog_width=>'420'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_timeout_seconds=>21600
,p_cache_by_user_yn=>'N'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHARLINA.HUNG@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20140421043912'
);
wwv_flow_api.create_page_plug(
 p_id=>367498993617599412+wwv_flow_api.g_id_offset
,p_plug_name=>'Add Amendment'
,p_plug_template=>350767859800179108+wwv_flow_api.g_id_offset
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>367499224978599412+wwv_flow_api.g_id_offset
,p_button_sequence=>30
,p_button_plug_id=>367498993617599412+wwv_flow_api.g_id_offset
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_id=>350773866275179112+wwv_flow_api.g_id_offset
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P18_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>367499407757599412+wwv_flow_api.g_id_offset
,p_button_sequence=>10
,p_button_plug_id=>367498993617599412+wwv_flow_api.g_id_offset
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_id=>350773866275179112+wwv_flow_api.g_id_offset
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
);
wwv_flow_api.create_page_button(
 p_id=>367499121581599412+wwv_flow_api.g_id_offset
,p_button_sequence=>40
,p_button_plug_id=>367498993617599412+wwv_flow_api.g_id_offset
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_id=>350773866275179112+wwv_flow_api.g_id_offset
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Amendment'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P18_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>367499309923599412+wwv_flow_api.g_id_offset
,p_button_sequence=>20
,p_button_plug_id=>367498993617599412+wwv_flow_api.g_id_offset
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_id=>350773866275179112+wwv_flow_api.g_id_offset
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P18_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>367500594281599414+wwv_flow_api.g_id_offset
,p_branch_action=>'f?p=&APP_ID.:4:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>367500782315599414+wwv_flow_api.g_id_offset
,p_name=>'P18_ID'
,p_item_sequence=>10
,p_item_plug_id=>367498993617599412+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>350773481339179112+wwv_flow_api.g_id_offset
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>367500905196599415+wwv_flow_api.g_id_offset
,p_name=>'P18_REASON'
,p_item_sequence=>40
,p_item_plug_id=>367498993617599412+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Reason'
,p_source=>'REASON'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>367501105637599416+wwv_flow_api.g_id_offset
,p_name=>'P18_START_DATE'
,p_item_sequence=>20
,p_item_plug_id=>367498993617599412+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Start Date'
,p_source=>'START_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>15
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>367501393629599416+wwv_flow_api.g_id_offset
,p_name=>'P18_END_DATE'
,p_item_sequence=>30
,p_item_plug_id=>367498993617599412+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'End Date'
,p_source=>'END_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>15
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>367501593834599417+wwv_flow_api.g_id_offset
,p_name=>'P18_DESCRIPTION'
,p_item_sequence=>50
,p_item_plug_id=>367498993617599412+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Description'
,p_source=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>367501786461599417+wwv_flow_api.g_id_offset
,p_name=>'P18_AMOUNT'
,p_item_sequence=>60
,p_item_plug_id=>367498993617599412+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Amount'
,p_source=>'AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>15
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>367501914737599417+wwv_flow_api.g_id_offset
,p_name=>'P18_DATE_CREATED'
,p_item_sequence=>70
,p_item_plug_id=>367498993617599412+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Date Created'
,p_source=>'DATE_CREATED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>367502153536599418+wwv_flow_api.g_id_offset
,p_name=>'P18_DELETED'
,p_item_sequence=>80
,p_item_plug_id=>367498993617599412+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Deleted'
,p_source=>'DELETED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>1
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>367502376708599418+wwv_flow_api.g_id_offset
,p_name=>'P18_CONTRACT_TYPE'
,p_item_sequence=>90
,p_item_plug_id=>367498993617599412+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Contract Type'
,p_source=>'CONTRACT_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>367502534896599418+wwv_flow_api.g_id_offset
,p_name=>'P18_CONTRACT_ID'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>367498993617599412+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Contract Id'
,p_source=>'CONTRACT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350773755364179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>367502789735599418+wwv_flow_api.g_id_offset
,p_name=>'P18_DEPARTMENT_ID'
,p_item_sequence=>110
,p_item_plug_id=>367498993617599412+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Department Id'
,p_source=>'DEPARTMENT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>367502907931599419+wwv_flow_api.g_id_offset
,p_name=>'P18_CREATED'
,p_item_sequence=>120
,p_item_plug_id=>367498993617599412+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created'
,p_source=>'CREATED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>367503148924599419+wwv_flow_api.g_id_offset
,p_name=>'P18_CREATED_BY'
,p_item_sequence=>130
,p_item_plug_id=>367498993617599412+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created By'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>367503383457599419+wwv_flow_api.g_id_offset
,p_name=>'P18_UPDATED'
,p_item_sequence=>140
,p_item_plug_id=>367498993617599412+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updated'
,p_source=>'UPDATED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>367503583665599419+wwv_flow_api.g_id_offset
,p_name=>'P18_UPDATED_BY'
,p_item_sequence=>150
,p_item_plug_id=>367498993617599412+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updated By'
,p_source=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>367499502353599412+wwv_flow_api.g_id_offset
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>367499407757599412+wwv_flow_api.g_id_offset
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>367499987730599413+wwv_flow_api.g_id_offset
,p_event_id=>367499502353599412+wwv_flow_api.g_id_offset
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>367504363653599420+wwv_flow_api.g_id_offset
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from BC_AMENDMENT'
,p_attribute_02=>'BC_AMENDMENT'
,p_attribute_03=>'P18_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
);
wwv_flow_api.create_page_process(
 p_id=>367504532269599421+wwv_flow_api.g_id_offset
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of BC_AMENDMENT'
,p_attribute_02=>'BC_AMENDMENT'
,p_attribute_03=>'P18_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>367504735952599421+wwv_flow_api.g_id_offset
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>367499309923599412+wwv_flow_api.g_id_offset
);
wwv_flow_api.create_page_process(
 p_id=>367504968228599421+wwv_flow_api.g_id_offset
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
end;
/
prompt --application/pages/page_00020
begin
wwv_flow_api.create_page(
 p_id=>20
,p_user_interface_id=>350775614455179115+wwv_flow_api.g_id_offset
,p_tab_set=>'TS1'
,p_name=>'Form on BC_NOTE'
,p_page_mode=>'MODAL'
,p_step_title=>'Add Note'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_dialog_height=>'270'
,p_dialog_width=>'390'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_timeout_seconds=>21600
,p_cache_by_user_yn=>'N'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHARLINA.HUNG@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20140421044156'
);
wwv_flow_api.create_page_plug(
 p_id=>367662165817959613+wwv_flow_api.g_id_offset
,p_plug_name=>'Add Note'
,p_plug_template=>350767859800179108+wwv_flow_api.g_id_offset
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>367662464195959613+wwv_flow_api.g_id_offset
,p_button_sequence=>30
,p_button_plug_id=>367662165817959613+wwv_flow_api.g_id_offset
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_id=>350773866275179112+wwv_flow_api.g_id_offset
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P20_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>367662670413959613+wwv_flow_api.g_id_offset
,p_button_sequence=>10
,p_button_plug_id=>367662165817959613+wwv_flow_api.g_id_offset
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_id=>350773866275179112+wwv_flow_api.g_id_offset
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
);
wwv_flow_api.create_page_button(
 p_id=>367662365617959613+wwv_flow_api.g_id_offset
,p_button_sequence=>40
,p_button_plug_id=>367662165817959613+wwv_flow_api.g_id_offset
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_id=>350773866275179112+wwv_flow_api.g_id_offset
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Note'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P20_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>367662598547959613+wwv_flow_api.g_id_offset
,p_button_sequence=>20
,p_button_plug_id=>367662165817959613+wwv_flow_api.g_id_offset
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_id=>350773866275179112+wwv_flow_api.g_id_offset
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P20_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>367663778033959616+wwv_flow_api.g_id_offset
,p_branch_action=>'f?p=&APP_ID.:4:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>367663912557959620+wwv_flow_api.g_id_offset
,p_name=>'P20_ID'
,p_item_sequence=>10
,p_item_plug_id=>367662165817959613+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>350773481339179112+wwv_flow_api.g_id_offset
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>367664179396959621+wwv_flow_api.g_id_offset
,p_name=>'P20_DATE_CREATED'
,p_item_sequence=>20
,p_item_plug_id=>367662165817959613+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Date Created'
,p_source=>'DATE_CREATED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>367664357278959621+wwv_flow_api.g_id_offset
,p_name=>'P20_NOTE'
,p_item_sequence=>30
,p_item_plug_id=>367662165817959613+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Note'
,p_source=>'NOTE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>367664511351959622+wwv_flow_api.g_id_offset
,p_name=>'P20_CONTRACT_ID'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>367662165817959613+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Contract Id'
,p_source=>'CONTRACT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350773755364179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>367664749390959622+wwv_flow_api.g_id_offset
,p_name=>'P20_AMENDMENT_ID'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>367662165817959613+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Amendment Id'
,p_source=>'AMENDMENT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350773387584179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>367664974508959622+wwv_flow_api.g_id_offset
,p_name=>'P20_CONTACT_LOG_ID'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>367662165817959613+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Contact Log Id'
,p_source=>'CONTACT_LOG_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350773755364179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>367665126210959623+wwv_flow_api.g_id_offset
,p_name=>'P20_TICKLER'
,p_item_sequence=>70
,p_item_plug_id=>367662165817959613+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tickler'
,p_source=>'TICKLER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_cSize=>1
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'APPLICATION'
);
wwv_flow_api.create_page_item(
 p_id=>367665391260959623+wwv_flow_api.g_id_offset
,p_name=>'P20_CREATED'
,p_item_sequence=>80
,p_item_plug_id=>367662165817959613+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created'
,p_source=>'CREATED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>367665509430959623+wwv_flow_api.g_id_offset
,p_name=>'P20_UPDATED'
,p_item_sequence=>90
,p_item_plug_id=>367662165817959613+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updated'
,p_source=>'UPDATED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>367665716188959624+wwv_flow_api.g_id_offset
,p_name=>'P20_UPDATED_BY'
,p_item_sequence=>100
,p_item_plug_id=>367662165817959613+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updated By'
,p_source=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>367662794493959613+wwv_flow_api.g_id_offset
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>367662670413959613+wwv_flow_api.g_id_offset
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>367663108169959615+wwv_flow_api.g_id_offset
,p_event_id=>367662794493959613+wwv_flow_api.g_id_offset
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>367666494880959624+wwv_flow_api.g_id_offset
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from BC_NOTE'
,p_attribute_02=>'BC_NOTE'
,p_attribute_03=>'P20_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
);
wwv_flow_api.create_page_process(
 p_id=>367666692893959625+wwv_flow_api.g_id_offset
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of BC_NOTE'
,p_attribute_02=>'BC_NOTE'
,p_attribute_03=>'P20_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>367666864821959625+wwv_flow_api.g_id_offset
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>367662598547959613+wwv_flow_api.g_id_offset
);
wwv_flow_api.create_page_process(
 p_id=>367667052253959625+wwv_flow_api.g_id_offset
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
end;
/
prompt --application/pages/page_00021
begin
wwv_flow_api.create_page(
 p_id=>21
,p_user_interface_id=>350775614455179115+wwv_flow_api.g_id_offset
,p_tab_set=>'TS1'
,p_name=>'Form on BC_PARTY'
,p_page_mode=>'MODAL'
,p_step_title=>'Add Customer'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_dialog_height=>'430'
,p_dialog_width=>'400'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_timeout_seconds=>21600
,p_cache_by_user_yn=>'N'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHARLINA.HUNG@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20140421044121'
);
wwv_flow_api.create_page_plug(
 p_id=>367704026558100357+wwv_flow_api.g_id_offset
,p_plug_name=>'Add Customer'
,p_plug_template=>350767859800179108+wwv_flow_api.g_id_offset
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>367704366509100357+wwv_flow_api.g_id_offset
,p_button_sequence=>30
,p_button_plug_id=>367704026558100357+wwv_flow_api.g_id_offset
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_id=>350773866275179112+wwv_flow_api.g_id_offset
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P21_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>367704500746100357+wwv_flow_api.g_id_offset
,p_button_sequence=>10
,p_button_plug_id=>367704026558100357+wwv_flow_api.g_id_offset
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_id=>350773866275179112+wwv_flow_api.g_id_offset
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
);
wwv_flow_api.create_page_button(
 p_id=>367704244366100357+wwv_flow_api.g_id_offset
,p_button_sequence=>40
,p_button_plug_id=>367704026558100357+wwv_flow_api.g_id_offset
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_id=>350773866275179112+wwv_flow_api.g_id_offset
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Customer'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P21_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>367704497383100357+wwv_flow_api.g_id_offset
,p_button_sequence=>20
,p_button_plug_id=>367704026558100357+wwv_flow_api.g_id_offset
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_id=>350773866275179112+wwv_flow_api.g_id_offset
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P21_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>367705681151100359+wwv_flow_api.g_id_offset
,p_branch_action=>'f?p=&APP_ID.:4:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>367705817413100362+wwv_flow_api.g_id_offset
,p_name=>'P21_ID'
,p_item_sequence=>10
,p_item_plug_id=>367704026558100357+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>350773481339179112+wwv_flow_api.g_id_offset
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>367706029438100364+wwv_flow_api.g_id_offset
,p_name=>'P21_FIRST_NAME'
,p_item_sequence=>20
,p_item_plug_id=>367704026558100357+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'First Name'
,p_source=>'FIRST_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>367706257562100364+wwv_flow_api.g_id_offset
,p_name=>'P21_LAST_NAME'
,p_item_sequence=>30
,p_item_plug_id=>367704026558100357+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Name'
,p_source=>'LAST_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>367706481242100365+wwv_flow_api.g_id_offset
,p_name=>'P21_CELL_PHONE'
,p_item_sequence=>40
,p_item_plug_id=>367704026558100357+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Cell Phone'
,p_source=>'CELL_PHONE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>367706641842100365+wwv_flow_api.g_id_offset
,p_name=>'P21_FAX_NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>367704026558100357+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fax Number'
,p_source=>'FAX_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>367706811794100365+wwv_flow_api.g_id_offset
,p_name=>'P21_WORK_PHONE'
,p_item_sequence=>60
,p_item_plug_id=>367704026558100357+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Work Phone'
,p_source=>'WORK_PHONE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>367707065354100365+wwv_flow_api.g_id_offset
,p_name=>'P21_EMAIL'
,p_item_sequence=>70
,p_item_plug_id=>367704026558100357+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Email'
,p_source=>'EMAIL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>367707227484100366+wwv_flow_api.g_id_offset
,p_name=>'P21_VENDOR_ID'
,p_item_sequence=>80
,p_item_plug_id=>367704026558100357+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Vendor Id'
,p_source=>'VENDOR_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>367707488285100366+wwv_flow_api.g_id_offset
,p_name=>'P21_CREATED'
,p_item_sequence=>90
,p_item_plug_id=>367704026558100357+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created'
,p_source=>'CREATED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>367707666140100367+wwv_flow_api.g_id_offset
,p_name=>'P21_CREATED_BY'
,p_item_sequence=>100
,p_item_plug_id=>367704026558100357+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created By'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>367707805253100367+wwv_flow_api.g_id_offset
,p_name=>'P21_UPDATED'
,p_item_sequence=>110
,p_item_plug_id=>367704026558100357+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updated'
,p_source=>'UPDATED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>367708034186100367+wwv_flow_api.g_id_offset
,p_name=>'P21_UPDATED_BY'
,p_item_sequence=>120
,p_item_plug_id=>367704026558100357+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updated By'
,p_source=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>367704645164100357+wwv_flow_api.g_id_offset
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>367704500746100357+wwv_flow_api.g_id_offset
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>367705011161100358+wwv_flow_api.g_id_offset
,p_event_id=>367704645164100357+wwv_flow_api.g_id_offset
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>367708997328100368+wwv_flow_api.g_id_offset
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from BC_PARTY'
,p_attribute_02=>'BC_PARTY'
,p_attribute_03=>'P21_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
);
wwv_flow_api.create_page_process(
 p_id=>367709166948100369+wwv_flow_api.g_id_offset
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of BC_PARTY'
,p_attribute_02=>'BC_PARTY'
,p_attribute_03=>'P21_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>367709300660100369+wwv_flow_api.g_id_offset
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>367704497383100357+wwv_flow_api.g_id_offset
);
wwv_flow_api.create_page_process(
 p_id=>367709597531100369+wwv_flow_api.g_id_offset
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
end;
/
prompt --application/pages/page_00025
begin
wwv_flow_api.create_page(
 p_id=>25
,p_user_interface_id=>350775614455179115+wwv_flow_api.g_id_offset
,p_tab_set=>'TS1'
,p_name=>'Departments'
,p_page_mode=>'NORMAL'
,p_step_title=>'Departments'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHARLINA.HUNG@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20140419204131'
);
wwv_flow_api.create_page_plug(
 p_id=>368163844908212812+wwv_flow_api.g_id_offset
,p_plug_name=>'Departments'
,p_plug_template=>350768259637179108+wwv_flow_api.g_id_offset
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "ID", ',
'"NAME",',
'dbms_lob.getlength("LOGO") "LOGO",',
'"DELETED",',
'"LOCATION_ID",',
'"CREATED",',
'"CREATED_BY",',
'"ROW_VERSION_NUMBER",',
'"UPDATED",',
'"UPDATED_BY"',
'from "#OWNER#"."BC_DEPARTMENT" ',
'  where id != 0'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>368164028642212812+wwv_flow_api.g_id_offset
,p_name=>'Departments'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_sql_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "ID", ',
'"NAME",',
'dbms_lob.getlength("LOGO") "LOGO",',
'"DELETED",',
'"LOCATION_ID",',
'"CREATED",',
'"CREATED_BY",',
'"ROW_VERSION_NUMBER",',
'"UPDATED",',
'"UPDATED_BY"',
'from "#OWNER#"."BC_DEPARTMENT" ',
'  where id != 0'))
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.::P26_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif"  border="0">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'CHARLINA.HUNG@GMAIL.COM'
,p_internal_uid=>368164028642212812
);
wwv_flow_api.create_worksheet_column(
 p_id=>368164105839212814+wwv_flow_api.g_id_offset
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>368164205401212815+wwv_flow_api.g_id_offset
,p_db_column_name=>'NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>368164359783212815+wwv_flow_api.g_id_offset
,p_db_column_name=>'LOGO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Logo'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_format_mask=>'DOWNLOAD:BC_DEPARTMENT:LOGO:ID'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>368164459249212816+wwv_flow_api.g_id_offset
,p_db_column_name=>'DELETED'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Deleted'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>368164516156212816+wwv_flow_api.g_id_offset
,p_db_column_name=>'LOCATION_ID'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Location Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>368164634425212816+wwv_flow_api.g_id_offset
,p_db_column_name=>'CREATED'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>368164744203212816+wwv_flow_api.g_id_offset
,p_db_column_name=>'CREATED_BY'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>368164882227212817+wwv_flow_api.g_id_offset
,p_db_column_name=>'ROW_VERSION_NUMBER'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Row Version Number'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>368164902865212817+wwv_flow_api.g_id_offset
,p_db_column_name=>'UPDATED'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>368165051140212817+wwv_flow_api.g_id_offset
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>368166138047213010+wwv_flow_api.g_id_offset
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'3681662'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_view_mode=>'REPORT'
,p_report_columns=>'NAME:LOGO:CREATED:'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>368165527744212818+wwv_flow_api.g_id_offset
,p_plug_name=>'Breadcrumb'
,p_plug_template=>350767175131179107+wwv_flow_api.g_id_offset
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>350776953040179121+wwv_flow_api.g_id_offset
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>350774911878179113+wwv_flow_api.g_id_offset
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>368165243175212817+wwv_flow_api.g_id_offset
,p_button_sequence=>30
,p_button_plug_id=>368163844908212812+wwv_flow_api.g_id_offset
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_id=>350774095506179113+wwv_flow_api.g_id_offset
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Department'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.:26::'
);
end;
/
prompt --application/pages/page_00026
begin
wwv_flow_api.create_page(
 p_id=>26
,p_user_interface_id=>350775614455179115+wwv_flow_api.g_id_offset
,p_tab_set=>'TS1'
,p_name=>'Add Department'
,p_page_mode=>'NORMAL'
,p_step_title=>'Add Department'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHARLINA.HUNG@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20140419194251'
);
wwv_flow_api.create_page_plug(
 p_id=>368150622129212800+wwv_flow_api.g_id_offset
,p_plug_name=>'Add Department'
,p_plug_template=>350767859800179108+wwv_flow_api.g_id_offset
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>368165802303212819+wwv_flow_api.g_id_offset
,p_plug_name=>'Breadcrumb'
,p_plug_template=>350767175131179107+wwv_flow_api.g_id_offset
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>350776953040179121+wwv_flow_api.g_id_offset
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>350774911878179113+wwv_flow_api.g_id_offset
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>368158947368212800+wwv_flow_api.g_id_offset
,p_button_sequence=>30
,p_button_plug_id=>368150622129212800+wwv_flow_api.g_id_offset
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_id=>350773866275179112+wwv_flow_api.g_id_offset
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P26_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>368159178652212800+wwv_flow_api.g_id_offset
,p_button_sequence=>10
,p_button_plug_id=>368150622129212800+wwv_flow_api.g_id_offset
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_id=>350773866275179112+wwv_flow_api.g_id_offset
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>368158893723212800+wwv_flow_api.g_id_offset
,p_button_sequence=>40
,p_button_plug_id=>368150622129212800+wwv_flow_api.g_id_offset
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_id=>350773866275179112+wwv_flow_api.g_id_offset
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P26_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>368159099058212800+wwv_flow_api.g_id_offset
,p_button_sequence=>20
,p_button_plug_id=>368150622129212800+wwv_flow_api.g_id_offset
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_id=>350773866275179112+wwv_flow_api.g_id_offset
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P26_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>368159902711212802+wwv_flow_api.g_id_offset
,p_branch_action=>'f?p=&APP_ID.:25:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>368160145383212804+wwv_flow_api.g_id_offset
,p_name=>'P26_ID'
,p_item_sequence=>10
,p_item_plug_id=>368150622129212800+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>350773481339179112+wwv_flow_api.g_id_offset
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>368160312364212805+wwv_flow_api.g_id_offset
,p_name=>'P26_NAME'
,p_item_sequence=>20
,p_item_plug_id=>368150622129212800+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Name'
,p_source=>'NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>368160578749212805+wwv_flow_api.g_id_offset
,p_name=>'P26_LOGO'
,p_item_sequence=>30
,p_item_plug_id=>368150622129212800+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Logo'
,p_source=>'LOGO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_attribute_01=>'DB_COLUMN'
,p_attribute_06=>'Y'
,p_attribute_08=>'attachment'
);
wwv_flow_api.create_page_item(
 p_id=>368160765562212805+wwv_flow_api.g_id_offset
,p_name=>'P26_DELETED'
,p_item_sequence=>40
,p_item_plug_id=>368150622129212800+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Deleted'
,p_source=>'DELETED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>1
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>368160946679212806+wwv_flow_api.g_id_offset
,p_name=>'P26_LOCATION_ID'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>368150622129212800+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Location Id'
,p_source=>'LOCATION_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350773755364179112+wwv_flow_api.g_id_offset
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>368161103265212806+wwv_flow_api.g_id_offset
,p_name=>'P26_CREATED'
,p_item_sequence=>60
,p_item_plug_id=>368150622129212800+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created'
,p_source=>'CREATED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>368161387164212806+wwv_flow_api.g_id_offset
,p_name=>'P26_CREATED_BY'
,p_item_sequence=>70
,p_item_plug_id=>368150622129212800+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created By'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>368161524889212806+wwv_flow_api.g_id_offset
,p_name=>'P26_ROW_VERSION_NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>368150622129212800+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Row Version Number'
,p_source=>'ROW_VERSION_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>368161709670212807+wwv_flow_api.g_id_offset
,p_name=>'P26_UPDATED'
,p_item_sequence=>90
,p_item_plug_id=>368150622129212800+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updated'
,p_source=>'UPDATED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>368161994609212807+wwv_flow_api.g_id_offset
,p_name=>'P26_UPDATED_BY'
,p_item_sequence=>100
,p_item_plug_id=>368150622129212800+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updated By'
,p_source=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>368162809232212809+wwv_flow_api.g_id_offset
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from BC_DEPARTMENT'
,p_attribute_02=>'BC_DEPARTMENT'
,p_attribute_03=>'P26_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
);
wwv_flow_api.create_page_process(
 p_id=>368163047175212810+wwv_flow_api.g_id_offset
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of BC_DEPARTMENT'
,p_attribute_02=>'BC_DEPARTMENT'
,p_attribute_03=>'P26_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>368163216432212811+wwv_flow_api.g_id_offset
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>368159099058212800+wwv_flow_api.g_id_offset
);
end;
/
prompt --application/pages/page_00029
begin
wwv_flow_api.create_page(
 p_id=>29
,p_user_interface_id=>350775614455179115+wwv_flow_api.g_id_offset
,p_tab_set=>'TS1'
,p_name=>'Form on Adding BC_VENDOR Modal'
,p_page_mode=>'MODAL'
,p_step_title=>'Add Vendor'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_dialog_height=>'530'
,p_dialog_width=>'450'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_timeout_seconds=>21600
,p_cache_by_user_yn=>'N'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHARLINA.HUNG@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20140421041346'
);
wwv_flow_api.create_page_plug(
 p_id=>370763443124507261+wwv_flow_api.g_id_offset
,p_plug_name=>'Add Vendor'
,p_plug_template=>350767859800179108+wwv_flow_api.g_id_offset
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>370763700452507261+wwv_flow_api.g_id_offset
,p_button_sequence=>30
,p_button_plug_id=>370763443124507261+wwv_flow_api.g_id_offset
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_id=>350773866275179112+wwv_flow_api.g_id_offset
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P29_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>370763931864507261+wwv_flow_api.g_id_offset
,p_button_sequence=>10
,p_button_plug_id=>370763443124507261+wwv_flow_api.g_id_offset
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_id=>350773866275179112+wwv_flow_api.g_id_offset
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
);
wwv_flow_api.create_page_button(
 p_id=>370763656713507261+wwv_flow_api.g_id_offset
,p_button_sequence=>40
,p_button_plug_id=>370763443124507261+wwv_flow_api.g_id_offset
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_id=>350773866275179112+wwv_flow_api.g_id_offset
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Vendor'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P29_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>370763847991507261+wwv_flow_api.g_id_offset
,p_button_sequence=>20
,p_button_plug_id=>370763443124507261+wwv_flow_api.g_id_offset
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_id=>350773866275179112+wwv_flow_api.g_id_offset
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P29_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>370811045919507264+wwv_flow_api.g_id_offset
,p_branch_action=>'f?p=&APP_ID.:3:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>370811273126507271+wwv_flow_api.g_id_offset
,p_name=>'P29_ID'
,p_item_sequence=>10
,p_item_plug_id=>370763443124507261+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>350773481339179112+wwv_flow_api.g_id_offset
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>370811461937507272+wwv_flow_api.g_id_offset
,p_name=>'P29_NAME'
,p_item_sequence=>20
,p_item_plug_id=>370763443124507261+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Name'
,p_source=>'NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>370811681919507273+wwv_flow_api.g_id_offset
,p_name=>'P29_STREET'
,p_item_sequence=>30
,p_item_plug_id=>370763443124507261+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Street'
,p_source=>'STREET'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>370811864160507273+wwv_flow_api.g_id_offset
,p_name=>'P29_CITY'
,p_item_sequence=>40
,p_item_plug_id=>370763443124507261+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'City'
,p_source=>'CITY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>370812040676507273+wwv_flow_api.g_id_offset
,p_name=>'P29_STATE_VALUE'
,p_item_sequence=>50
,p_item_plug_id=>370763443124507261+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'State Value'
,p_source=>'STATE_VALUE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'STATES'
,p_lov=>'.'||to_char(398577292276127722 + wwv_flow_api.g_id_offset)||'.'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NOT_ENTERABLE'
,p_attribute_02=>'FIRST_ROWSET'
);
wwv_flow_api.create_page_item(
 p_id=>370812266237507273+wwv_flow_api.g_id_offset
,p_name=>'P29_ZIP'
,p_item_sequence=>60
,p_item_plug_id=>370763443124507261+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Zip'
,p_source=>'ZIP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>370812484647507274+wwv_flow_api.g_id_offset
,p_name=>'P29_COUNTRY'
,p_item_sequence=>70
,p_item_plug_id=>370763443124507261+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Country'
,p_source=>'COUNTRY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>370812672186507274+wwv_flow_api.g_id_offset
,p_name=>'P29_SERVICE_TYPE'
,p_item_sequence=>80
,p_item_plug_id=>370763443124507261+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Service Type'
,p_source=>'SERVICE_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'SERVICES'
,p_lov=>'.'||to_char(398699882340192179 + wwv_flow_api.g_id_offset)||'.'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NOT_ENTERABLE'
,p_attribute_02=>'FIRST_ROWSET'
);
wwv_flow_api.create_page_item(
 p_id=>370812816479507274+wwv_flow_api.g_id_offset
,p_name=>'P29_ACCOUNT_TYPE'
,p_item_sequence=>90
,p_item_plug_id=>370763443124507261+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Account Type'
,p_source=>'ACCOUNT_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>370813095526507274+wwv_flow_api.g_id_offset
,p_name=>'P29_PARTY_ID'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>370763443124507261+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Customer'
,p_source=>'PARTY_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOVPARTYIDS'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select FIRST_NAME || '' '' || LAST_NAME as d,',
'       id as r',
'  from bc_party',
' order by 1'))
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350773755364179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NOT_ENTERABLE'
,p_attribute_02=>'FIRST_ROWSET'
);
wwv_flow_api.create_page_item(
 p_id=>370813239086507275+wwv_flow_api.g_id_offset
,p_name=>'P29_VFLEX3'
,p_item_sequence=>110
,p_item_plug_id=>370763443124507261+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Vflex3'
,p_source=>'VFLEX3'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>370813481543507275+wwv_flow_api.g_id_offset
,p_name=>'P29_CREATED'
,p_item_sequence=>120
,p_item_plug_id=>370763443124507261+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created'
,p_source=>'CREATED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>370813673859507275+wwv_flow_api.g_id_offset
,p_name=>'P29_CREATED_BY'
,p_item_sequence=>130
,p_item_plug_id=>370763443124507261+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created By'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>370813802309507276+wwv_flow_api.g_id_offset
,p_name=>'P29_UPDATED'
,p_item_sequence=>140
,p_item_plug_id=>370763443124507261+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updated'
,p_source=>'UPDATED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>370814067024507276+wwv_flow_api.g_id_offset
,p_name=>'P29_UPDATED_BY'
,p_item_sequence=>150
,p_item_plug_id=>370763443124507261+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updated By'
,p_source=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>370764074508507261+wwv_flow_api.g_id_offset
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>370763931864507261+wwv_flow_api.g_id_offset
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>370764474506507263+wwv_flow_api.g_id_offset
,p_event_id=>370764074508507261+wwv_flow_api.g_id_offset
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>370815231916507277+wwv_flow_api.g_id_offset
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from BC_VENDOR'
,p_attribute_02=>'BC_VENDOR'
,p_attribute_03=>'P29_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
);
wwv_flow_api.create_page_process(
 p_id=>370815487151507278+wwv_flow_api.g_id_offset
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of BC_VENDOR'
,p_attribute_02=>'BC_VENDOR'
,p_attribute_03=>'P29_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>370815622658507278+wwv_flow_api.g_id_offset
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>370763847991507261+wwv_flow_api.g_id_offset
);
wwv_flow_api.create_page_process(
 p_id=>370815849780507278+wwv_flow_api.g_id_offset
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
end;
/
prompt --application/pages/page_00030
begin
wwv_flow_api.create_page(
 p_id=>30
,p_user_interface_id=>350775614455179115+wwv_flow_api.g_id_offset
,p_tab_set=>'TS1'
,p_name=>'Customers'
,p_page_mode=>'NORMAL'
,p_step_title=>'Customers'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHARLINA.HUNG@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20140419231614'
);
wwv_flow_api.create_page_plug(
 p_id=>370959374777570588+wwv_flow_api.g_id_offset
,p_plug_name=>'Customers'
,p_plug_template=>350768259637179108+wwv_flow_api.g_id_offset
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "ID", ',
'"FIRST_NAME",',
'"LAST_NAME",',
'"CELL_PHONE",',
'"FAX_NUMBER",',
'"WORK_PHONE",',
'"EMAIL",',
'"DELETED",',
'"VENDOR_ID",',
'"CREATED",',
'"CREATED_BY",',
'"UPDATED",',
'"UPDATED_BY"',
'from "#OWNER#"."BC_PARTY" ',
'  where id != 0',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>370959590294570588+wwv_flow_api.g_id_offset
,p_name=>'Customers'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_sql_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "ID", ',
'"FIRST_NAME",',
'"LAST_NAME",',
'"CELL_PHONE",',
'"FAX_NUMBER",',
'"WORK_PHONE",',
'"EMAIL",',
'"DELETED",',
'"VENDOR_ID",',
'"CREATED",',
'"CREATED_BY",',
'"UPDATED",',
'"UPDATED_BY"',
'from "#OWNER#"."BC_PARTY" ',
'  where id != 0',
''))
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:40:&SESSION.::&DEBUG.::P40_PARTY_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#magnifying_glass_white_bg.gif" alt="">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'CHARLINA.HUNG@GMAIL.COM'
,p_internal_uid=>370959590294570588
);
wwv_flow_api.create_worksheet_column(
 p_id=>370959657571570590+wwv_flow_api.g_id_offset
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>370959783045570592+wwv_flow_api.g_id_offset
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'First Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>370959818626570592+wwv_flow_api.g_id_offset
,p_db_column_name=>'LAST_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Last Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>370959989560570592+wwv_flow_api.g_id_offset
,p_db_column_name=>'CELL_PHONE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Cell Phone'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>370960009232570592+wwv_flow_api.g_id_offset
,p_db_column_name=>'FAX_NUMBER'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Fax Number'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>370960144200570592+wwv_flow_api.g_id_offset
,p_db_column_name=>'WORK_PHONE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Work Phone'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>370960222699570593+wwv_flow_api.g_id_offset
,p_db_column_name=>'EMAIL'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Email'
,p_column_linktext=>'#EMAIL#'
,p_column_link_checksum_type=>'1'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>370960300040570593+wwv_flow_api.g_id_offset
,p_db_column_name=>'DELETED'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Deleted'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>370960430142570593+wwv_flow_api.g_id_offset
,p_db_column_name=>'VENDOR_ID'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Vendor Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>370960561743570593+wwv_flow_api.g_id_offset
,p_db_column_name=>'CREATED'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>370960607563570593+wwv_flow_api.g_id_offset
,p_db_column_name=>'CREATED_BY'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>370960731208570593+wwv_flow_api.g_id_offset
,p_db_column_name=>'UPDATED'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>370960818672570594+wwv_flow_api.g_id_offset
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>370961967838570762+wwv_flow_api.g_id_offset
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'3709620'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_view_mode=>'REPORT'
,p_report_columns=>'FIRST_NAME:LAST_NAME:CELL_PHONE:FAX_NUMBER:WORK_PHONE:EMAIL:'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>370961310029570597+wwv_flow_api.g_id_offset
,p_plug_name=>'Breadcrumb'
,p_plug_template=>350767175131179107+wwv_flow_api.g_id_offset
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>350776953040179121+wwv_flow_api.g_id_offset
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>350774911878179113+wwv_flow_api.g_id_offset
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>370961080164570594+wwv_flow_api.g_id_offset
,p_button_sequence=>30
,p_button_plug_id=>370959374777570588+wwv_flow_api.g_id_offset
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_id=>350774095506179113+wwv_flow_api.g_id_offset
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Customer'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.:31::'
);
end;
/
prompt --application/pages/page_00031
begin
wwv_flow_api.create_page(
 p_id=>31
,p_user_interface_id=>350775614455179115+wwv_flow_api.g_id_offset
,p_tab_set=>'TS1'
,p_name=>'Add Customer'
,p_page_mode=>'NORMAL'
,p_step_title=>'Add Customer'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHARLINA.HUNG@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20140421041909'
);
wwv_flow_api.create_page_plug(
 p_id=>370913672181570570+wwv_flow_api.g_id_offset
,p_plug_name=>'Add Customer'
,p_plug_template=>350767859800179108+wwv_flow_api.g_id_offset
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>370961661072570598+wwv_flow_api.g_id_offset
,p_plug_name=>'Breadcrumb'
,p_plug_template=>350767175131179107+wwv_flow_api.g_id_offset
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>350776953040179121+wwv_flow_api.g_id_offset
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>350774911878179113+wwv_flow_api.g_id_offset
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>370913921430570571+wwv_flow_api.g_id_offset
,p_button_sequence=>30
,p_button_plug_id=>370913672181570570+wwv_flow_api.g_id_offset
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_id=>350773866275179112+wwv_flow_api.g_id_offset
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P31_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>370914181682570571+wwv_flow_api.g_id_offset
,p_button_sequence=>10
,p_button_plug_id=>370913672181570570+wwv_flow_api.g_id_offset
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_id=>350773866275179112+wwv_flow_api.g_id_offset
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>370913874418570571+wwv_flow_api.g_id_offset
,p_button_sequence=>40
,p_button_plug_id=>370913672181570570+wwv_flow_api.g_id_offset
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_id=>350773866275179112+wwv_flow_api.g_id_offset
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P31_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>370914003640570571+wwv_flow_api.g_id_offset
,p_button_sequence=>20
,p_button_plug_id=>370913672181570570+wwv_flow_api.g_id_offset
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_id=>350773866275179112+wwv_flow_api.g_id_offset
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P31_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>370954952094570572+wwv_flow_api.g_id_offset
,p_branch_action=>'f?p=&APP_ID.:30:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>370955164514570574+wwv_flow_api.g_id_offset
,p_name=>'P31_ID'
,p_item_sequence=>10
,p_item_plug_id=>370913672181570570+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>350773481339179112+wwv_flow_api.g_id_offset
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>370955346183570577+wwv_flow_api.g_id_offset
,p_name=>'P31_FIRST_NAME'
,p_item_sequence=>20
,p_item_plug_id=>370913672181570570+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'First Name'
,p_source=>'FIRST_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>370955569694570577+wwv_flow_api.g_id_offset
,p_name=>'P31_LAST_NAME'
,p_item_sequence=>30
,p_item_plug_id=>370913672181570570+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Name'
,p_source=>'LAST_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>370955764757570578+wwv_flow_api.g_id_offset
,p_name=>'P31_CELL_PHONE'
,p_item_sequence=>40
,p_item_plug_id=>370913672181570570+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Cell Phone'
,p_source=>'CELL_PHONE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>370955917883570578+wwv_flow_api.g_id_offset
,p_name=>'P31_FAX_NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>370913672181570570+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fax Number'
,p_source=>'FAX_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>370956187320570578+wwv_flow_api.g_id_offset
,p_name=>'P31_WORK_PHONE'
,p_item_sequence=>60
,p_item_plug_id=>370913672181570570+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Work Phone'
,p_source=>'WORK_PHONE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>370956322898570578+wwv_flow_api.g_id_offset
,p_name=>'P31_EMAIL'
,p_item_sequence=>70
,p_item_plug_id=>370913672181570570+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Email'
,p_source=>'EMAIL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>370956537569570579+wwv_flow_api.g_id_offset
,p_name=>'P31_DELETED'
,p_item_sequence=>80
,p_item_plug_id=>370913672181570570+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Deleted'
,p_source=>'DELETED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>1
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>370956719397570579+wwv_flow_api.g_id_offset
,p_name=>'P31_VENDOR_ID'
,p_item_sequence=>90
,p_item_plug_id=>370913672181570570+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Vendor Id'
,p_source=>'VENDOR_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>370956907569570579+wwv_flow_api.g_id_offset
,p_name=>'P31_CREATED'
,p_item_sequence=>100
,p_item_plug_id=>370913672181570570+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created'
,p_source=>'CREATED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>15
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>370957101863570579+wwv_flow_api.g_id_offset
,p_name=>'P31_CREATED_BY'
,p_item_sequence=>110
,p_item_plug_id=>370913672181570570+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created By'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>370957376678570580+wwv_flow_api.g_id_offset
,p_name=>'P31_UPDATED'
,p_item_sequence=>120
,p_item_plug_id=>370913672181570570+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updated'
,p_source=>'UPDATED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>15
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>370957565425570580+wwv_flow_api.g_id_offset
,p_name=>'P31_UPDATED_BY'
,p_item_sequence=>130
,p_item_plug_id=>370913672181570570+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updated By'
,p_source=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>370958348900570581+wwv_flow_api.g_id_offset
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from BC_PARTY'
,p_attribute_02=>'BC_PARTY'
,p_attribute_03=>'P31_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
);
wwv_flow_api.create_page_process(
 p_id=>370958580990570582+wwv_flow_api.g_id_offset
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of BC_PARTY'
,p_attribute_02=>'BC_PARTY'
,p_attribute_03=>'P31_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>370958781655570582+wwv_flow_api.g_id_offset
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>370914003640570571+wwv_flow_api.g_id_offset
);
end;
/
prompt --application/pages/page_00032
begin
wwv_flow_api.create_page(
 p_id=>32
,p_user_interface_id=>350775614455179115+wwv_flow_api.g_id_offset
,p_tab_set=>'TS1'
,p_name=>'Escalation'
,p_page_mode=>'NORMAL'
,p_step_title=>'Escalation'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'STEVENZVONEK@YAHOO.COM'
,p_last_upd_yyyymmddhh24miss=>'20140419230745'
);
wwv_flow_api.create_page_plug(
 p_id=>370981661231583719+wwv_flow_api.g_id_offset
,p_plug_name=>'Escalation'
,p_plug_template=>350768259637179108+wwv_flow_api.g_id_offset
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "ID", ',
'"AMOUNT",',
'"PERCENTAGE",',
'"EXPECTED_DATE",',
'"DESCRIPTION",',
'"AMENDMENT_ID",',
'"CREATED",',
'"CREATED_BY",',
'"UPDATED",',
'"UPDATED_BY"',
'from "#OWNER#"."BC_ESCALATION" ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>370981898287583719+wwv_flow_api.g_id_offset
,p_name=>'Escalation'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_sql_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "ID", ',
'"AMOUNT",',
'"PERCENTAGE",',
'"EXPECTED_DATE",',
'"DESCRIPTION",',
'"AMENDMENT_ID",',
'"CREATED",',
'"CREATED_BY",',
'"UPDATED",',
'"UPDATED_BY"',
'from "#OWNER#"."BC_ESCALATION" ',
'  ',
''))
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.::P33_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#magnifying_glass_white_bg.gif" alt="">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'CHARLINA.HUNG@GMAIL.COM'
,p_internal_uid=>370981898287583719
);
wwv_flow_api.create_worksheet_column(
 p_id=>370981929737583720+wwv_flow_api.g_id_offset
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>370982096245583721+wwv_flow_api.g_id_offset
,p_db_column_name=>'AMOUNT'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Amount'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>370982156652583721+wwv_flow_api.g_id_offset
,p_db_column_name=>'PERCENTAGE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Percentage'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>370982264829583721+wwv_flow_api.g_id_offset
,p_db_column_name=>'EXPECTED_DATE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Expected Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>370982348786583721+wwv_flow_api.g_id_offset
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>370982452068583721+wwv_flow_api.g_id_offset
,p_db_column_name=>'AMENDMENT_ID'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Amendment Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>370982573162583722+wwv_flow_api.g_id_offset
,p_db_column_name=>'CREATED'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>370982652106583722+wwv_flow_api.g_id_offset
,p_db_column_name=>'CREATED_BY'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>370982763237583722+wwv_flow_api.g_id_offset
,p_db_column_name=>'UPDATED'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>370982843209583722+wwv_flow_api.g_id_offset
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>370983982984584094+wwv_flow_api.g_id_offset
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'3709840'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_view_mode=>'REPORT'
,p_report_columns=>'AMOUNT:PERCENTAGE:EXPECTED_DATE:DESCRIPTION:CREATED:'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>370983346403583723+wwv_flow_api.g_id_offset
,p_plug_name=>'Breadcrumb'
,p_plug_template=>350767175131179107+wwv_flow_api.g_id_offset
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>350776953040179121+wwv_flow_api.g_id_offset
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>350774911878179113+wwv_flow_api.g_id_offset
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>370983044737583722+wwv_flow_api.g_id_offset
,p_button_sequence=>30
,p_button_plug_id=>370981661231583719+wwv_flow_api.g_id_offset
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_id=>350774095506179113+wwv_flow_api.g_id_offset
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Escalation'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.:33::'
);
end;
/
prompt --application/pages/page_00033
begin
wwv_flow_api.create_page(
 p_id=>33
,p_user_interface_id=>350775614455179115+wwv_flow_api.g_id_offset
,p_tab_set=>'TS1'
,p_name=>'Edit Escalation'
,p_page_mode=>'NORMAL'
,p_step_title=>'Edit Escalation'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_timeout_seconds=>21600
,p_cache_by_user_yn=>'N'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'STEVENZVONEK@YAHOO.COM'
,p_last_upd_yyyymmddhh24miss=>'20140421031055'
);
wwv_flow_api.create_page_plug(
 p_id=>370968551108583709+wwv_flow_api.g_id_offset
,p_plug_name=>'Edit Escalation'
,p_plug_template=>350767859800179108+wwv_flow_api.g_id_offset
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>370983696452583723+wwv_flow_api.g_id_offset
,p_plug_name=>'Breadcrumb'
,p_plug_template=>350767175131179107+wwv_flow_api.g_id_offset
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>350776953040179121+wwv_flow_api.g_id_offset
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>350774911878179113+wwv_flow_api.g_id_offset
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>370976828088583709+wwv_flow_api.g_id_offset
,p_button_sequence=>30
,p_button_plug_id=>370968551108583709+wwv_flow_api.g_id_offset
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_id=>350773866275179112+wwv_flow_api.g_id_offset
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P33_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>370977077184583709+wwv_flow_api.g_id_offset
,p_button_sequence=>10
,p_button_plug_id=>370968551108583709+wwv_flow_api.g_id_offset
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_id=>350773866275179112+wwv_flow_api.g_id_offset
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>370976720579583709+wwv_flow_api.g_id_offset
,p_button_sequence=>40
,p_button_plug_id=>370968551108583709+wwv_flow_api.g_id_offset
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_id=>350773866275179112+wwv_flow_api.g_id_offset
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P33_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>370976915936583709+wwv_flow_api.g_id_offset
,p_button_sequence=>20
,p_button_plug_id=>370968551108583709+wwv_flow_api.g_id_offset
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_id=>350773866275179112+wwv_flow_api.g_id_offset
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P33_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>370977875783583711+wwv_flow_api.g_id_offset
,p_branch_action=>'f?p=&APP_ID.:32:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>370978027170583712+wwv_flow_api.g_id_offset
,p_name=>'P33_ID'
,p_item_sequence=>10
,p_item_plug_id=>370968551108583709+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>370978204197583713+wwv_flow_api.g_id_offset
,p_name=>'P33_AMOUNT'
,p_item_sequence=>20
,p_item_plug_id=>370968551108583709+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Amount'
,p_source=>'AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>370978415908583713+wwv_flow_api.g_id_offset
,p_name=>'P33_PERCENTAGE'
,p_item_sequence=>30
,p_item_plug_id=>370968551108583709+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Percentage'
,p_source=>'PERCENTAGE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>370978654635583713+wwv_flow_api.g_id_offset
,p_name=>'P33_EXPECTED_DATE'
,p_item_sequence=>40
,p_item_plug_id=>370968551108583709+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Expected Date'
,p_source=>'EXPECTED_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>370978813189583715+wwv_flow_api.g_id_offset
,p_name=>'P33_DESCRIPTION'
,p_item_sequence=>50
,p_item_plug_id=>370968551108583709+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Description'
,p_source=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>370979098979583715+wwv_flow_api.g_id_offset
,p_name=>'P33_AMENDMENT_ID'
,p_item_sequence=>60
,p_item_plug_id=>370968551108583709+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Amendment Id'
,p_source=>'AMENDMENT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>370979246310583715+wwv_flow_api.g_id_offset
,p_name=>'P33_CREATED'
,p_item_sequence=>70
,p_item_plug_id=>370968551108583709+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created'
,p_source=>'CREATED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>370979432179583716+wwv_flow_api.g_id_offset
,p_name=>'P33_CREATED_BY'
,p_item_sequence=>80
,p_item_plug_id=>370968551108583709+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created By'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>370979682618583716+wwv_flow_api.g_id_offset
,p_name=>'P33_UPDATED'
,p_item_sequence=>90
,p_item_plug_id=>370968551108583709+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updated'
,p_source=>'UPDATED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>370979831168583716+wwv_flow_api.g_id_offset
,p_name=>'P33_UPDATED_BY'
,p_item_sequence=>100
,p_item_plug_id=>370968551108583709+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updated By'
,p_source=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>370980625364583717+wwv_flow_api.g_id_offset
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from BC_ESCALATION'
,p_attribute_02=>'BC_ESCALATION'
,p_attribute_03=>'P33_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
);
wwv_flow_api.create_page_process(
 p_id=>370980891152583717+wwv_flow_api.g_id_offset
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of BC_ESCALATION'
,p_attribute_02=>'BC_ESCALATION'
,p_attribute_03=>'P33_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>370981043397583718+wwv_flow_api.g_id_offset
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>370976915936583709+wwv_flow_api.g_id_offset
);
end;
/
prompt --application/pages/page_00034
begin
wwv_flow_api.create_page(
 p_id=>34
,p_user_interface_id=>350775614455179115+wwv_flow_api.g_id_offset
,p_tab_set=>'TS1'
,p_name=>'Add Vendor'
,p_page_mode=>'NORMAL'
,p_step_title=>'Add Vendor'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHARLINA.HUNG@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20140421044608'
);
wwv_flow_api.create_page_plug(
 p_id=>371225699316756845+wwv_flow_api.g_id_offset
,p_plug_name=>'Add Vendor'
,p_plug_template=>350767859800179108+wwv_flow_api.g_id_offset
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>371345303822756856+wwv_flow_api.g_id_offset
,p_plug_name=>'Breadcrumb'
,p_plug_template=>350767175131179107+wwv_flow_api.g_id_offset
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>350776953040179121+wwv_flow_api.g_id_offset
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>350774911878179113+wwv_flow_api.g_id_offset
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>371225956133756846+wwv_flow_api.g_id_offset
,p_button_sequence=>30
,p_button_plug_id=>371225699316756845+wwv_flow_api.g_id_offset
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_id=>350773866275179112+wwv_flow_api.g_id_offset
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P34_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>371226199769756846+wwv_flow_api.g_id_offset
,p_button_sequence=>10
,p_button_plug_id=>371225699316756845+wwv_flow_api.g_id_offset
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_id=>350773866275179112+wwv_flow_api.g_id_offset
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>371225873174756846+wwv_flow_api.g_id_offset
,p_button_sequence=>40
,p_button_plug_id=>371225699316756845+wwv_flow_api.g_id_offset
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_id=>350773866275179112+wwv_flow_api.g_id_offset
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P34_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>371226067303756846+wwv_flow_api.g_id_offset
,p_button_sequence=>20
,p_button_plug_id=>371225699316756845+wwv_flow_api.g_id_offset
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_id=>350773866275179112+wwv_flow_api.g_id_offset
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P34_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>371340923165756848+wwv_flow_api.g_id_offset
,p_branch_action=>'f?p=&APP_ID.:16:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>371341198726756848+wwv_flow_api.g_id_offset
,p_name=>'P34_ID'
,p_item_sequence=>10
,p_item_plug_id=>371225699316756845+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>350773481339179112+wwv_flow_api.g_id_offset
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>371341314242756850+wwv_flow_api.g_id_offset
,p_name=>'P34_NAME'
,p_item_sequence=>20
,p_item_plug_id=>371225699316756845+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Name'
,p_source=>'NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>371341508171756850+wwv_flow_api.g_id_offset
,p_name=>'P34_STREET'
,p_item_sequence=>30
,p_item_plug_id=>371225699316756845+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Street'
,p_source=>'STREET'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>371341748086756850+wwv_flow_api.g_id_offset
,p_name=>'P34_CITY'
,p_item_sequence=>40
,p_item_plug_id=>371225699316756845+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'City'
,p_source=>'CITY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>371341903044756851+wwv_flow_api.g_id_offset
,p_name=>'P34_STATE_VALUE'
,p_item_sequence=>50
,p_item_plug_id=>371225699316756845+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'State'
,p_source=>'STATE_VALUE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'STATES'
,p_lov=>'.'||to_char(398577292276127722 + wwv_flow_api.g_id_offset)||'.'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NOT_ENTERABLE'
,p_attribute_02=>'FIRST_ROWSET'
);
wwv_flow_api.create_page_item(
 p_id=>371342190423756851+wwv_flow_api.g_id_offset
,p_name=>'P34_ZIP'
,p_item_sequence=>60
,p_item_plug_id=>371225699316756845+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Zip'
,p_source=>'ZIP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>371342327904756851+wwv_flow_api.g_id_offset
,p_name=>'P34_COUNTRY'
,p_item_sequence=>70
,p_item_plug_id=>371225699316756845+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Country'
,p_source=>'COUNTRY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>371342540950756851+wwv_flow_api.g_id_offset
,p_name=>'P34_DELETED'
,p_item_sequence=>80
,p_item_plug_id=>371225699316756845+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Deleted'
,p_source=>'DELETED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>1
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>371342797700756852+wwv_flow_api.g_id_offset
,p_name=>'P34_SERVICE_TYPE'
,p_item_sequence=>90
,p_item_plug_id=>371225699316756845+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Service Type'
,p_source=>'SERVICE_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'SERVICES'
,p_lov=>'.'||to_char(398699882340192179 + wwv_flow_api.g_id_offset)||'.'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NOT_ENTERABLE'
,p_attribute_02=>'FIRST_ROWSET'
);
wwv_flow_api.create_page_item(
 p_id=>371342970644756852+wwv_flow_api.g_id_offset
,p_name=>'P34_ACCOUNT_TYPE'
,p_item_sequence=>100
,p_item_plug_id=>371225699316756845+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Account Type'
,p_source=>'ACCOUNT_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>371343193887756852+wwv_flow_api.g_id_offset
,p_name=>'P34_PARTY_ID'
,p_is_required=>true
,p_item_sequence=>110
,p_item_plug_id=>371225699316756845+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Customer'
,p_source=>'PARTY_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOVPARTYIDS'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select FIRST_NAME || '' '' || LAST_NAME as d,',
'       id as r',
'  from bc_party',
' order by 1'))
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350773755364179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>371343399079756853+wwv_flow_api.g_id_offset
,p_name=>'P34_CREATED'
,p_item_sequence=>120
,p_item_plug_id=>371225699316756845+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created'
,p_source=>'CREATED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>371343599573756853+wwv_flow_api.g_id_offset
,p_name=>'P34_CREATED_BY'
,p_item_sequence=>130
,p_item_plug_id=>371225699316756845+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created By'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>371343771648756853+wwv_flow_api.g_id_offset
,p_name=>'P34_UPDATED'
,p_item_sequence=>140
,p_item_plug_id=>371225699316756845+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updated'
,p_source=>'UPDATED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>371343902997756853+wwv_flow_api.g_id_offset
,p_name=>'P34_UPDATED_BY'
,p_item_sequence=>150
,p_item_plug_id=>371225699316756845+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updated By'
,p_source=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>371344788251756854+wwv_flow_api.g_id_offset
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from BC_VENDOR'
,p_attribute_02=>'BC_VENDOR'
,p_attribute_03=>'P34_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
);
wwv_flow_api.create_page_process(
 p_id=>371344965377756855+wwv_flow_api.g_id_offset
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of BC_VENDOR'
,p_attribute_02=>'BC_VENDOR'
,p_attribute_03=>'P34_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>371345101609756855+wwv_flow_api.g_id_offset
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>371226067303756846+wwv_flow_api.g_id_offset
);
end;
/
prompt --application/pages/page_00036
begin
wwv_flow_api.create_page(
 p_id=>36
,p_user_interface_id=>350775614455179115+wwv_flow_api.g_id_offset
,p_tab_set=>'TS1'
,p_name=>'Documents'
,p_page_mode=>'NORMAL'
,p_step_title=>'Documents'
,p_step_sub_title=>'Documents'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHARLINA.HUNG@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20140419221756'
);
wwv_flow_api.create_page_plug(
 p_id=>352115003965958616+wwv_flow_api.g_id_offset
,p_plug_name=>'Breadcrumbs'
,p_plug_template=>350767175131179107+wwv_flow_api.g_id_offset
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid=>true
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>350776953040179121+wwv_flow_api.g_id_offset
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>350774911878179113+wwv_flow_api.g_id_offset
);
wwv_flow_api.create_page_plug(
 p_id=>383208621253519073+wwv_flow_api.g_id_offset
,p_plug_name=>'Documents'
,p_plug_template=>350768259637179108+wwv_flow_api.g_id_offset
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'select * from bc_document'
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>383210711216519073+wwv_flow_api.g_id_offset
,p_name=>'Documens'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_sql_query=>wwv_flow_api.g_region_source
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_icon_view_columns_per_row=>1
,p_owner=>'STEVENZVONEK@YAHOO.COM'
,p_internal_uid=>383210711216519073
);
wwv_flow_api.create_worksheet_column(
 p_id=>383210965350519074+wwv_flow_api.g_id_offset
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>383211069461519075+wwv_flow_api.g_id_offset
,p_db_column_name=>'NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>383211132895519075+wwv_flow_api.g_id_offset
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>383211258947519075+wwv_flow_api.g_id_offset
,p_db_column_name=>'MIME_TYPE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Mime Type'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>383211389629519075+wwv_flow_api.g_id_offset
,p_db_column_name=>'CHAR_SET'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Char Set'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>383211445342519075+wwv_flow_api.g_id_offset
,p_db_column_name=>'FILE_BLOB'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'File Blob'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>383211517163519076+wwv_flow_api.g_id_offset
,p_db_column_name=>'DATE_CREATED'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Date Created'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>383211657424519076+wwv_flow_api.g_id_offset
,p_db_column_name=>'DELETED'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Deleted'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>383211720377519076+wwv_flow_api.g_id_offset
,p_db_column_name=>'CONTRACT_ID'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Contract Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>383211812792519076+wwv_flow_api.g_id_offset
,p_db_column_name=>'AMENDMENT_ID'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Amendment Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>383211977855519076+wwv_flow_api.g_id_offset
,p_db_column_name=>'DFLEX'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Dflex'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>383212078446519076+wwv_flow_api.g_id_offset
,p_db_column_name=>'IFLEX1'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Iflex1'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>383212112208519076+wwv_flow_api.g_id_offset
,p_db_column_name=>'IFLEX2'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Iflex2'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>383212239134519076+wwv_flow_api.g_id_offset
,p_db_column_name=>'VFLEX1'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Vflex1'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>383212326184519077+wwv_flow_api.g_id_offset
,p_db_column_name=>'VFLEX2'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Vflex2'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>383212463882519077+wwv_flow_api.g_id_offset
,p_db_column_name=>'VFLEX3'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Vflex3'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>383212506332519077+wwv_flow_api.g_id_offset
,p_db_column_name=>'CREATED'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>383212611097519077+wwv_flow_api.g_id_offset
,p_db_column_name=>'CREATED_BY'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>383212773497519077+wwv_flow_api.g_id_offset
,p_db_column_name=>'ROW_VERSION_NUMBER'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Row Version Number'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>383212850599519077+wwv_flow_api.g_id_offset
,p_db_column_name=>'UPDATED'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>383212985375519077+wwv_flow_api.g_id_offset
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>383213078418519077+wwv_flow_api.g_id_offset
,p_db_column_name=>'FILE_DATA'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'File Data'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>383213138081519228+wwv_flow_api.g_id_offset
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'3832132'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_view_mode=>'REPORT'
,p_report_columns=>'NAME:DESCRIPTION:FILE_BLOB:DATE_CREATED:FILE_DATA:'
,p_flashback_enabled=>'N'
);
end;
/
prompt --application/pages/page_00039
begin
wwv_flow_api.create_page(
 p_id=>39
,p_user_interface_id=>350775614455179115+wwv_flow_api.g_id_offset
,p_tab_set=>'TS1'
,p_name=>'Checklist'
,p_page_mode=>'NORMAL'
,p_step_title=>'Checklist'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'HANSURQUIA@UTEXAS.EDU'
,p_last_upd_yyyymmddhh24miss=>'20140421162055'
);
wwv_flow_api.create_page_plug(
 p_id=>352115401345958620+wwv_flow_api.g_id_offset
,p_plug_name=>'Breadcrumb'
,p_plug_template=>350767175131179107+wwv_flow_api.g_id_offset
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid=>true
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>350776953040179121+wwv_flow_api.g_id_offset
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>350774911878179113+wwv_flow_api.g_id_offset
);
wwv_flow_api.create_page_plug(
 p_id=>384347649170789997+wwv_flow_api.g_id_offset
,p_plug_name=>'Select Amendment'
,p_plug_template=>350769163011179109+wwv_flow_api.g_id_offset
,p_plug_display_sequence=>5
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>389673327981829358+wwv_flow_api.g_id_offset
,p_plug_name=>'Printable Region'
,p_plug_template=>350766937844179107+wwv_flow_api.g_id_offset
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>384126290124713482+wwv_flow_api.g_id_offset
,p_name=>'Checklist Region'
,p_parent_plug_id=>389673327981829358+wwv_flow_api.g_id_offset
,p_template=>350769163011179109+wwv_flow_api.g_id_offset
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select d.name as "Department", v.name as "Vendor", a.AMOUNT as "Amount", v.id as "Account Number", a.id as "Amendment ID", rl.RECEIVED_DATE as "Received", a.START_DATE as "Start Date", a.END_DATE as "Exp Date", PREDEFINED_TXT as "TEXT" from BC_CHECKL'
||'IST, bc_vendor v inner join bc_contract contr on contr.vendor_id = v.id',
'join bc_amendment a on contr.id = a.CONTRACT_ID ',
'join bc_department d on d.id = a.DEPARTMENT_ID',
'join BC_RECEVING_LOG rl on rl.CONTRACT_ID = contr.id',
'',
'where a.id = :P39_SELECT'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_display_when_condition=>'P39_SELECT'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_query_row_template=>350771281363179110+wwv_flow_api.g_id_offset
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_prn_output=>'Y'
,p_prn_format=>'PDF'
,p_prn_output_show_link=>'Y'
,p_prn_output_link_text=>'Print'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width_units=>'PERCENTAGE'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'VERTICAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#ffffff'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>384126568751713485+wwv_flow_api.g_id_offset
,p_query_column_id=>1
,p_column_alias=>'Department'
,p_column_display_sequence=>1
,p_column_heading=>'Department'
,p_include_in_export=>'Y'
,p_print_col_width=>'11'
);
wwv_flow_api.create_report_columns(
 p_id=>384126691555713485+wwv_flow_api.g_id_offset
,p_query_column_id=>2
,p_column_alias=>'Vendor'
,p_column_display_sequence=>2
,p_column_heading=>'Vendor'
,p_include_in_export=>'Y'
,p_print_col_width=>'11'
);
wwv_flow_api.create_report_columns(
 p_id=>389069568125688183+wwv_flow_api.g_id_offset
,p_query_column_id=>3
,p_column_alias=>'Amount'
,p_column_display_sequence=>5
,p_column_heading=>'Amount'
,p_include_in_export=>'Y'
,p_print_col_width=>'11'
);
wwv_flow_api.create_report_columns(
 p_id=>389069615996688183+wwv_flow_api.g_id_offset
,p_query_column_id=>4
,p_column_alias=>'Account Number'
,p_column_display_sequence=>6
,p_column_heading=>'Account Number'
,p_include_in_export=>'Y'
,p_print_col_width=>'11'
);
wwv_flow_api.create_report_columns(
 p_id=>384126891790713485+wwv_flow_api.g_id_offset
,p_query_column_id=>5
,p_column_alias=>'Amendment ID'
,p_column_display_sequence=>3
,p_column_heading=>'Amendment Id'
,p_column_alignment=>'RIGHT'
,p_include_in_export=>'Y'
,p_print_col_width=>'11'
);
wwv_flow_api.create_report_columns(
 p_id=>384126937496713485+wwv_flow_api.g_id_offset
,p_query_column_id=>6
,p_column_alias=>'Received'
,p_column_display_sequence=>4
,p_column_heading=>'Received'
,p_column_alignment=>'RIGHT'
,p_include_in_export=>'Y'
,p_print_col_width=>'11'
);
wwv_flow_api.create_report_columns(
 p_id=>389281205759740888+wwv_flow_api.g_id_offset
,p_query_column_id=>7
,p_column_alias=>'Start Date'
,p_column_display_sequence=>7
,p_column_heading=>'Start Date'
,p_include_in_export=>'Y'
,p_print_col_width=>'11'
);
wwv_flow_api.create_report_columns(
 p_id=>389281378076740889+wwv_flow_api.g_id_offset
,p_query_column_id=>8
,p_column_alias=>'Exp Date'
,p_column_display_sequence=>8
,p_column_heading=>'Exp Date'
,p_include_in_export=>'Y'
,p_print_col_width=>'11'
);
wwv_flow_api.create_report_columns(
 p_id=>390650011170537184+wwv_flow_api.g_id_offset
,p_query_column_id=>9
,p_column_alias=>'TEXT'
,p_column_display_sequence=>9
,p_column_heading=>'Text'
,p_include_in_export=>'Y'
,p_print_col_width=>'11'
);
wwv_flow_api.create_page_button(
 p_id=>390422930236232712+wwv_flow_api.g_id_offset
,p_button_sequence=>10
,p_button_plug_id=>384126290124713482+wwv_flow_api.g_id_offset
,p_button_name=>'PRINT'
,p_button_action=>'REDIRECT_URL'
,p_button_template_id=>350773866275179112+wwv_flow_api.g_id_offset
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Print'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:39:&SESSION.:FLOW_XMLP_OUTPUT_R'||to_char(384126290124713482+wwv_flow_api.g_id_offset)||''
);
wwv_flow_api.create_page_item(
 p_id=>384344946591784211+wwv_flow_api.g_id_offset
,p_name=>'P39_SELECT'
,p_item_sequence=>10
,p_item_plug_id=>384347649170789997+wwv_flow_api.g_id_offset
,p_prompt=>'Select Amendment'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOVAMENDMENTIDS'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select DISTINCT a.id as ID,',
'    b.id as "Value"',
'  from bc_amendment a, bc_amendment b',
'where a.id = b.id and a.id !=0',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>350773481339179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'REDIRECT_SET_VALUE'
);
wwv_flow_api.create_page_item(
 p_id=>398877062186352814+wwv_flow_api.g_id_offset
,p_name=>'P39_SERVICE'
,p_item_sequence=>100
,p_item_plug_id=>384126290124713482+wwv_flow_api.g_id_offset
,p_prompt=>'Service'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SERVICES'
,p_lov=>'.'||to_char(398699882340192179 + wwv_flow_api.g_id_offset)||'.'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>350773481339179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>398900552704394387+wwv_flow_api.g_id_offset
,p_name=>'P39_RENEWABLE'
,p_item_sequence=>110
,p_item_plug_id=>384126290124713482+wwv_flow_api.g_id_offset
,p_prompt=>'Renewable'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'LOVRENEWABLE'
,p_lov=>'.'||to_char(398965268576456518 + wwv_flow_api.g_id_offset)||'.'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>350773387584179112+wwv_flow_api.g_id_offset
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
,p_attribute_02=>'HORIZONTAL'
);
wwv_flow_api.create_page_item(
 p_id=>399051000593507050+wwv_flow_api.g_id_offset
,p_name=>'P39_ASSIGN'
,p_item_sequence=>120
,p_item_plug_id=>384126290124713482+wwv_flow_api.g_id_offset
,p_prompt=>'Assign:'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'LOVASSIGN'
,p_lov=>'.'||to_char(399041903651493625 + wwv_flow_api.g_id_offset)||'.'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>350773481339179112+wwv_flow_api.g_id_offset
,p_attribute_01=>'4'
,p_attribute_02=>'NONE'
,p_attribute_04=>'HORIZONTAL'
);
wwv_flow_api.create_page_da_event(
 p_id=>389748048730857407+wwv_flow_api.g_id_offset
,p_name=>'Show Predefined area DA'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P39_SELECT'
,p_bind_type=>'bind'
,p_bind_event_type=>'select'
,p_display_when_type=>'ITEM_IS_NULL'
,p_display_when_cond=>'P39_SELECT'
);
wwv_flow_api.create_page_da_action(
 p_id=>389748326595857408+wwv_flow_api.g_id_offset
,p_event_id=>389748048730857407+wwv_flow_api.g_id_offset
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>389748517783857409+wwv_flow_api.g_id_offset
,p_event_id=>389748048730857407+wwv_flow_api.g_id_offset
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>389763635242873221+wwv_flow_api.g_id_offset
,p_event_id=>389748048730857407+wwv_flow_api.g_id_offset
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
end;
/
prompt --application/pages/page_00040
begin
wwv_flow_api.create_page(
 p_id=>40
,p_user_interface_id=>350775614455179115+wwv_flow_api.g_id_offset
,p_tab_set=>'TS1'
,p_name=>'Customer Summary'
,p_page_mode=>'NORMAL'
,p_step_title=>'Customer Summary'
,p_step_sub_title=>'Customer Summary'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHARLINA.HUNG@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20140421022128'
);
wwv_flow_api.create_page_plug(
 p_id=>384523219033838606+wwv_flow_api.g_id_offset
,p_plug_name=>'Search'
,p_plug_template=>350768930976179108+wwv_flow_api.g_id_offset
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_report_region(
 p_id=>384524840131838610+wwv_flow_api.g_id_offset
,p_name=>'Customer Summary'
,p_template=>350769163011179109+wwv_flow_api.g_id_offset
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select * from (',
'select ',
' "ID",',
' "FIRST_NAME",',
' "LAST_NAME",',
' "CELL_PHONE",',
' "FAX_NUMBER",',
' "WORK_PHONE",',
' "EMAIL",',
' "DELETED",',
' "VENDOR_ID",',
' "DFLEX",',
' "IFLEX1",',
' "IFLEX2",',
' "VFLEX1",',
' "VFLEX2",',
' "VFLEX3",',
' "CREATED",',
' "CREATED_BY",',
' "ROW_VERSION_NUMBER",',
' "UPDATED",',
' "UPDATED_BY"',
'from #OWNER#.BC_PARTY)',
'where (',
' instr(upper("FIRST_NAME"),upper(nvl(:P40_REPORT_SEARCH,"FIRST_NAME"))) > 0  or',
' instr(upper("LAST_NAME"),upper(nvl(:P40_REPORT_SEARCH,"LAST_NAME"))) > 0  or',
' instr(upper("CELL_PHONE"),upper(nvl(:P40_REPORT_SEARCH,"CELL_PHONE"))) > 0  or',
' instr(upper("FAX_NUMBER"),upper(nvl(:P40_REPORT_SEARCH,"FAX_NUMBER"))) > 0  or',
' instr(upper("WORK_PHONE"),upper(nvl(:P40_REPORT_SEARCH,"WORK_PHONE"))) > 0  or',
' instr(upper("EMAIL"),upper(nvl(:P40_REPORT_SEARCH,"EMAIL"))) > 0  or',
' instr(upper("CREATED_BY"),upper(nvl(:P40_REPORT_SEARCH,"CREATED_BY"))) > 0  or',
' instr(upper("UPDATED_BY"),upper(nvl(:P40_REPORT_SEARCH,"UPDATED_BY"))) > 0 ',
')',
'AND id =:P40_PARTY_ID'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>350771281363179110+wwv_flow_api.g_id_offset
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_item=>'P40_ROWS'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download'
,p_prn_output=>'Y'
,p_prn_format=>'PDF'
,p_prn_output_link_text=>'PDF'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>384525108467838611+wwv_flow_api.g_id_offset
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'Customer ID'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>384525267865838612+wwv_flow_api.g_id_offset
,p_query_column_id=>2
,p_column_alias=>'FIRST_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'First Name'
,p_column_hit_highlight=>'&P40_REPORT_SEARCH.'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>384525379458838612+wwv_flow_api.g_id_offset
,p_query_column_id=>3
,p_column_alias=>'LAST_NAME'
,p_column_display_sequence=>4
,p_column_heading=>'Last Name'
,p_column_hit_highlight=>'&P40_REPORT_SEARCH.'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>384525431816838612+wwv_flow_api.g_id_offset
,p_query_column_id=>4
,p_column_alias=>'CELL_PHONE'
,p_column_display_sequence=>5
,p_column_heading=>'Cell Phone'
,p_column_hit_highlight=>'&P40_REPORT_SEARCH.'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>384525510595838612+wwv_flow_api.g_id_offset
,p_query_column_id=>5
,p_column_alias=>'FAX_NUMBER'
,p_column_display_sequence=>6
,p_column_heading=>'Fax Number'
,p_column_hit_highlight=>'&P40_REPORT_SEARCH.'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>384525698725838612+wwv_flow_api.g_id_offset
,p_query_column_id=>6
,p_column_alias=>'WORK_PHONE'
,p_column_display_sequence=>7
,p_column_heading=>'Work Phone'
,p_column_hit_highlight=>'&P40_REPORT_SEARCH.'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>384525793378838612+wwv_flow_api.g_id_offset
,p_query_column_id=>7
,p_column_alias=>'EMAIL'
,p_column_display_sequence=>8
,p_column_heading=>'Email'
,p_column_hit_highlight=>'&P40_REPORT_SEARCH.'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>384525811672838612+wwv_flow_api.g_id_offset
,p_query_column_id=>8
,p_column_alias=>'DELETED'
,p_column_display_sequence=>9
,p_column_heading=>'DELETED'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>384525931026838612+wwv_flow_api.g_id_offset
,p_query_column_id=>9
,p_column_alias=>'VENDOR_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Vendor ID'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>384526070891838612+wwv_flow_api.g_id_offset
,p_query_column_id=>10
,p_column_alias=>'DFLEX'
,p_column_display_sequence=>10
,p_column_heading=>'DFLEX'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>384526104714838612+wwv_flow_api.g_id_offset
,p_query_column_id=>11
,p_column_alias=>'IFLEX1'
,p_column_display_sequence=>11
,p_column_heading=>'IFLEX1'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>384526209254838612+wwv_flow_api.g_id_offset
,p_query_column_id=>12
,p_column_alias=>'IFLEX2'
,p_column_display_sequence=>12
,p_column_heading=>'IFLEX2'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>384526368976838612+wwv_flow_api.g_id_offset
,p_query_column_id=>13
,p_column_alias=>'VFLEX1'
,p_column_display_sequence=>13
,p_column_heading=>'VFLEX1'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>384526432127838612+wwv_flow_api.g_id_offset
,p_query_column_id=>14
,p_column_alias=>'VFLEX2'
,p_column_display_sequence=>14
,p_column_heading=>'VFLEX2'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>384526582803838612+wwv_flow_api.g_id_offset
,p_query_column_id=>15
,p_column_alias=>'VFLEX3'
,p_column_display_sequence=>15
,p_column_heading=>'VFLEX3'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>384526622104838613+wwv_flow_api.g_id_offset
,p_query_column_id=>16
,p_column_alias=>'CREATED'
,p_column_display_sequence=>16
,p_column_heading=>'CREATED'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>384526774213838613+wwv_flow_api.g_id_offset
,p_query_column_id=>17
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>17
,p_column_heading=>'CREATED_BY'
,p_column_hit_highlight=>'&P40_REPORT_SEARCH.'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>384526800799838613+wwv_flow_api.g_id_offset
,p_query_column_id=>18
,p_column_alias=>'ROW_VERSION_NUMBER'
,p_column_display_sequence=>18
,p_column_heading=>'ROW_VERSION_NUMBER'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>384526913341838613+wwv_flow_api.g_id_offset
,p_query_column_id=>19
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>19
,p_column_heading=>'UPDATED'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>384527045845838613+wwv_flow_api.g_id_offset
,p_query_column_id=>20
,p_column_alias=>'UPDATED_BY'
,p_column_display_sequence=>20
,p_column_heading=>'UPDATED_BY'
,p_column_hit_highlight=>'&P40_REPORT_SEARCH.'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>384527250747838614+wwv_flow_api.g_id_offset
,p_plug_name=>'Breadcrumb'
,p_plug_template=>350767175131179107+wwv_flow_api.g_id_offset
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>350776953040179121+wwv_flow_api.g_id_offset
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>350774911878179113+wwv_flow_api.g_id_offset
,p_plug_query_row_template=>1
);
wwv_flow_api.create_report_region(
 p_id=>391832505393573745+wwv_flow_api.g_id_offset
,p_name=>'Contracts'
,p_template=>350769163011179109+wwv_flow_api.g_id_offset
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_new_grid=>true
,p_display_point=>'REGION_POSITION_03'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT c.id, c.vendor_id, c.start_date, c.end_date, c.description, c.initial_amount, c.current_amount',
'FROM bc_contract c',
'inner join bc_vendor v',
'on c.vendor_id = v.id',
'inner join bc_party p',
'on c.vendor_id = p.vendor_id',
'WHERE p.id =:P40_PARTY_ID',
''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>350770809258179110+wwv_flow_api.g_id_offset
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>391832857620573748+wwv_flow_api.g_id_offset
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'Contract ID'
);
wwv_flow_api.create_report_columns(
 p_id=>391833002520573748+wwv_flow_api.g_id_offset
,p_query_column_id=>2
,p_column_alias=>'VENDOR_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Vendor ID'
);
wwv_flow_api.create_report_columns(
 p_id=>391913945788619602+wwv_flow_api.g_id_offset
,p_query_column_id=>3
,p_column_alias=>'START_DATE'
,p_column_display_sequence=>3
,p_column_heading=>'Start Date'
);
wwv_flow_api.create_report_columns(
 p_id=>391914045900619603+wwv_flow_api.g_id_offset
,p_query_column_id=>4
,p_column_alias=>'END_DATE'
,p_column_display_sequence=>4
,p_column_heading=>'End Date'
);
wwv_flow_api.create_report_columns(
 p_id=>391914116375619603+wwv_flow_api.g_id_offset
,p_query_column_id=>5
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>5
,p_column_heading=>'Description'
);
wwv_flow_api.create_report_columns(
 p_id=>391914284663619603+wwv_flow_api.g_id_offset
,p_query_column_id=>6
,p_column_alias=>'INITIAL_AMOUNT'
,p_column_display_sequence=>6
,p_column_heading=>'Initial Amount'
);
wwv_flow_api.create_report_columns(
 p_id=>391914344320619603+wwv_flow_api.g_id_offset
,p_query_column_id=>7
,p_column_alias=>'CURRENT_AMOUNT'
,p_column_display_sequence=>7
,p_column_heading=>'Current Amount'
);
wwv_flow_api.create_page_branch(
 p_id=>384524715567838609+wwv_flow_api.g_id_offset
,p_branch_action=>'f?p=&APP_ID.:40:&SESSION.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>384523516427838606+wwv_flow_api.g_id_offset
,p_name=>'P40_REPORT_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>384523219033838606+wwv_flow_api.g_id_offset
,p_prompt=>'Search'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>2000
,p_label_alignment=>'RIGHT'
,p_field_template=>350773481339179112+wwv_flow_api.g_id_offset
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>384523746513838607+wwv_flow_api.g_id_offset
,p_name=>'P40_ROWS'
,p_item_sequence=>20
,p_item_plug_id=>384523219033838606+wwv_flow_api.g_id_offset
,p_item_default=>'15'
,p_prompt=>'Display'
,p_source=>'15'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'P40_Report Row Per Page'
,p_lov=>'.'||to_char(384492043769838602 + wwv_flow_api.g_id_offset)||'.'
,p_cSize=>30
,p_cMaxlength=>2000
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>350773481339179112+wwv_flow_api.g_id_offset
);
wwv_flow_api.create_page_item(
 p_id=>384523919158838608+wwv_flow_api.g_id_offset
,p_name=>'P40_GO'
,p_item_sequence=>30
,p_item_plug_id=>384523219033838606+wwv_flow_api.g_id_offset
,p_item_default=>'GO'
,p_prompt=>'Go'
,p_source=>'GO'
,p_source_type=>'STATIC'
,p_display_as=>'BUTTON'
,p_tag_attributes=>'template:'||to_char(350773866275179112 + wwv_flow_api.g_id_offset)
,p_begin_on_new_line=>'N'
,p_button_action=>'SUBMIT'
,p_button_is_hot=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>384524128256838608+wwv_flow_api.g_id_offset
,p_name=>'P40_RESET'
,p_item_sequence=>40
,p_item_plug_id=>384523219033838606+wwv_flow_api.g_id_offset
,p_item_default=>'RESET'
,p_prompt=>'Reset'
,p_source=>'RESET'
,p_source_type=>'STATIC'
,p_display_as=>'BUTTON'
,p_tag_attributes=>'template:'||to_char(350773866275179112 + wwv_flow_api.g_id_offset)
,p_begin_on_new_line=>'N'
,p_button_action=>'SUBMIT'
,p_button_is_hot=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>384538205997872773+wwv_flow_api.g_id_offset
,p_name=>'P40_PARTY_ID'
,p_item_sequence=>50
,p_item_plug_id=>384524840131838610+wwv_flow_api.g_id_offset
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>384524337373838608+wwv_flow_api.g_id_offset
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_RESET_PAGINATION'
,p_process_name=>'Reset Pagination'
,p_process_sql_clob=>'reset_pagination'
,p_attribute_01=>'THIS_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'GO,P40_REPORT_SEARCH,RESET'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>384524519522838609+wwv_flow_api.g_id_offset
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Reset report search'
,p_attribute_01=>'CLEAR_CACHE_FOR_ITEMS'
,p_attribute_03=>'P40_REPORT_SEARCH,P40_ROWS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>384524128256838608+wwv_flow_api.g_id_offset
);
end;
/
prompt --application/pages/page_00052
begin
wwv_flow_api.create_page(
 p_id=>52
,p_user_interface_id=>350775614455179115+wwv_flow_api.g_id_offset
,p_tab_set=>'TS1'
,p_name=>'Edit Vendor'
,p_page_mode=>'MODAL'
,p_step_title=>'Edit Vendor'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'HANSURQUIA@UTEXAS.EDU'
,p_last_upd_yyyymmddhh24miss=>'20140421153304'
);
wwv_flow_api.create_page_plug(
 p_id=>400995778827369408+wwv_flow_api.g_id_offset
,p_plug_name=>'Edit'
,p_plug_template=>350767859800179108+wwv_flow_api.g_id_offset
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>400995952645369408+wwv_flow_api.g_id_offset
,p_button_sequence=>30
,p_button_plug_id=>400995778827369408+wwv_flow_api.g_id_offset
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_id=>350773866275179112+wwv_flow_api.g_id_offset
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P52_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>400996104545369408+wwv_flow_api.g_id_offset
,p_button_sequence=>10
,p_button_plug_id=>400995778827369408+wwv_flow_api.g_id_offset
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_id=>350773866275179112+wwv_flow_api.g_id_offset
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
);
wwv_flow_api.create_page_button(
 p_id=>400996026741369408+wwv_flow_api.g_id_offset
,p_button_sequence=>20
,p_button_plug_id=>400995778827369408+wwv_flow_api.g_id_offset
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_id=>350773866275179112+wwv_flow_api.g_id_offset
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P52_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>400999182442369410+wwv_flow_api.g_id_offset
,p_branch_action=>'f?p=&APP_ID.:17:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>400999399879369411+wwv_flow_api.g_id_offset
,p_name=>'P52_ID'
,p_item_sequence=>10
,p_item_plug_id=>400995778827369408+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>350773481339179112+wwv_flow_api.g_id_offset
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>400999537270369412+wwv_flow_api.g_id_offset
,p_name=>'P52_NAME'
,p_item_sequence=>20
,p_item_plug_id=>400995778827369408+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Name'
,p_source=>'NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>400999798939369412+wwv_flow_api.g_id_offset
,p_name=>'P52_STREET'
,p_item_sequence=>30
,p_item_plug_id=>400995778827369408+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Street'
,p_source=>'STREET'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>400999964800369412+wwv_flow_api.g_id_offset
,p_name=>'P52_CITY'
,p_item_sequence=>40
,p_item_plug_id=>400995778827369408+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'City'
,p_source=>'CITY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>401000175368369413+wwv_flow_api.g_id_offset
,p_name=>'P52_STATE_VALUE'
,p_item_sequence=>50
,p_item_plug_id=>400995778827369408+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'State Value'
,p_source=>'STATE_VALUE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>401000315547369413+wwv_flow_api.g_id_offset
,p_name=>'P52_ZIP'
,p_item_sequence=>60
,p_item_plug_id=>400995778827369408+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Zip'
,p_source=>'ZIP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>401000595067369413+wwv_flow_api.g_id_offset
,p_name=>'P52_COUNTRY'
,p_item_sequence=>70
,p_item_plug_id=>400995778827369408+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Country'
,p_source=>'COUNTRY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>401000743552369413+wwv_flow_api.g_id_offset
,p_name=>'P52_SERVICE_TYPE'
,p_item_sequence=>80
,p_item_plug_id=>400995778827369408+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Service Type'
,p_source=>'SERVICE_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>401000930102369414+wwv_flow_api.g_id_offset
,p_name=>'P52_ACCOUNT_TYPE'
,p_item_sequence=>90
,p_item_plug_id=>400995778827369408+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Account Type'
,p_source=>'ACCOUNT_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>350773530787179112+wwv_flow_api.g_id_offset
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>401001174157369414+wwv_flow_api.g_id_offset
,p_name=>'P52_PARTY_ID'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>400995778827369408+wwv_flow_api.g_id_offset
,p_use_cache_before_default=>'NO'
,p_prompt=>'Party Id'
,p_source=>'PARTY_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>350773755364179112+wwv_flow_api.g_id_offset
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_da_event(
 p_id=>400996278466369408+wwv_flow_api.g_id_offset
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>400996104545369408+wwv_flow_api.g_id_offset
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>400996606284369409+wwv_flow_api.g_id_offset
,p_event_id=>400996278466369408+wwv_flow_api.g_id_offset
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>401001812755369415+wwv_flow_api.g_id_offset
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from BC_VENDOR'
,p_attribute_02=>'BC_VENDOR'
,p_attribute_03=>'P52_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
);
wwv_flow_api.create_page_process(
 p_id=>401002051730369415+wwv_flow_api.g_id_offset
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of BC_VENDOR'
,p_attribute_02=>'BC_VENDOR'
,p_attribute_03=>'P52_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>401002225080369415+wwv_flow_api.g_id_offset
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>400996026741369408+wwv_flow_api.g_id_offset
);
wwv_flow_api.create_page_process(
 p_id=>401002457509369416+wwv_flow_api.g_id_offset
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
end;
/
prompt --application/pages/page_00101
begin
wwv_flow_api.create_page(
 p_id=>101
,p_user_interface_id=>350775614455179115+wwv_flow_api.g_id_offset
,p_name=>'Login'
,p_alias=>'LOGIN_DESKTOP'
,p_page_mode=>'NORMAL'
,p_step_title=>'Login'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>350764731956179103+wwv_flow_api.g_id_offset
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_last_upd_yyyymmddhh24miss=>'20140415200645'
);
wwv_flow_api.create_page_plug(
 p_id=>350776127422179117+wwv_flow_api.g_id_offset
,p_plug_name=>'Login'
,p_plug_template=>350767859800179108+wwv_flow_api.g_id_offset
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_item(
 p_id=>350776203175179117+wwv_flow_api.g_id_offset
,p_name=>'P101_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>350776127422179117+wwv_flow_api.g_id_offset
,p_prompt=>'Username'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>350773481339179112+wwv_flow_api.g_id_offset
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>350776361441179120+wwv_flow_api.g_id_offset
,p_name=>'P101_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>350776127422179117+wwv_flow_api.g_id_offset
,p_prompt=>'Password'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>350773481339179112+wwv_flow_api.g_id_offset
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>350776441071179120+wwv_flow_api.g_id_offset
,p_name=>'P101_LOGIN'
,p_item_sequence=>30
,p_item_plug_id=>350776127422179117+wwv_flow_api.g_id_offset
,p_item_default=>'Login'
,p_prompt=>'Login'
,p_source=>'LOGIN'
,p_source_type=>'STATIC'
,p_display_as=>'BUTTON'
,p_tag_attributes=>'template:'||to_char(350773866275179112 + wwv_flow_api.g_id_offset)
,p_begin_on_new_line=>'N'
,p_button_action=>'SUBMIT'
,p_button_is_hot=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>350776680094179121+wwv_flow_api.g_id_offset
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P101_USERNAME) );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>350776503568179120+wwv_flow_api.g_id_offset
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex_authentication.login(',
'    p_username => :P101_USERNAME,',
'    p_password => :P101_PASSWORD );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>350776856848179121+wwv_flow_api.g_id_offset
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>350776778897179121+wwv_flow_api.g_id_offset
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>':P101_USERNAME := apex_authentication.get_login_username_cookie;'
);
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_api.create_menu(
 p_id=>350776953040179121+wwv_flow_api.g_id_offset
,p_name=>' Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>350777307170179122+wwv_flow_api.g_id_offset
,p_parent_id=>0
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.'
,p_page_id=>1
);
wwv_flow_api.create_menu_option(
 p_id=>351846088347546615+wwv_flow_api.g_id_offset
,p_parent_id=>350777307170179122+wwv_flow_api.g_id_offset
,p_short_name=>'Contracts'
,p_link=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::'
,p_page_id=>2
);
wwv_flow_api.create_menu_option(
 p_id=>351937498985684076+wwv_flow_api.g_id_offset
,p_parent_id=>351846088347546615+wwv_flow_api.g_id_offset
,p_short_name=>'Add Contract'
,p_link=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::'
,p_page_id=>3
);
wwv_flow_api.create_menu_option(
 p_id=>352065821664913870+wwv_flow_api.g_id_offset
,p_parent_id=>351846088347546615+wwv_flow_api.g_id_offset
,p_short_name=>'Contract Summary'
,p_link=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::'
,p_page_id=>4
);
wwv_flow_api.create_menu_option(
 p_id=>367532551300700595+wwv_flow_api.g_id_offset
,p_parent_id=>350777307170179122+wwv_flow_api.g_id_offset
,p_short_name=>'Vendors'
,p_link=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:::'
,p_page_id=>16
);
wwv_flow_api.create_menu_option(
 p_id=>367535409161704217+wwv_flow_api.g_id_offset
,p_parent_id=>367532551300700595+wwv_flow_api.g_id_offset
,p_short_name=>'Vendor Summary'
,p_link=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:::'
,p_page_id=>17
);
wwv_flow_api.create_menu_option(
 p_id=>368165376145212817+wwv_flow_api.g_id_offset
,p_parent_id=>350777307170179122+wwv_flow_api.g_id_offset
,p_short_name=>'Departments'
,p_link=>'f?p=&APP_ID.:25:&SESSION.'
,p_page_id=>25
);
wwv_flow_api.create_menu_option(
 p_id=>368166013372212819+wwv_flow_api.g_id_offset
,p_parent_id=>368165376145212817+wwv_flow_api.g_id_offset
,p_short_name=>'Add Department'
,p_link=>'f?p=&APP_ID.:26:&SESSION.'
,p_page_id=>26
);
wwv_flow_api.create_menu_option(
 p_id=>370961148483570594+wwv_flow_api.g_id_offset
,p_parent_id=>350777307170179122+wwv_flow_api.g_id_offset
,p_short_name=>'Customers'
,p_link=>'f?p=&APP_ID.:30:&SESSION.'
,p_page_id=>30
);
wwv_flow_api.create_menu_option(
 p_id=>370961809829570598+wwv_flow_api.g_id_offset
,p_parent_id=>370961148483570594+wwv_flow_api.g_id_offset
,p_short_name=>'Add Customer'
,p_link=>'f?p=&APP_ID.:31:&SESSION.'
,p_page_id=>31
);
wwv_flow_api.create_menu_option(
 p_id=>370983178499583722+wwv_flow_api.g_id_offset
,p_parent_id=>350777307170179122+wwv_flow_api.g_id_offset
,p_short_name=>'Escalation'
,p_link=>'f?p=&APP_ID.:32:&SESSION.'
,p_page_id=>32
);
wwv_flow_api.create_menu_option(
 p_id=>370983855266583723+wwv_flow_api.g_id_offset
,p_parent_id=>370983178499583722+wwv_flow_api.g_id_offset
,p_short_name=>'Edit Escalation'
,p_link=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.:::'
,p_page_id=>33
);
wwv_flow_api.create_menu_option(
 p_id=>371345526883756856+wwv_flow_api.g_id_offset
,p_parent_id=>367532551300700595+wwv_flow_api.g_id_offset
,p_short_name=>'Add Vendor'
,p_link=>'f?p=&APP_ID.:34:&SESSION.'
,p_page_id=>34
);
wwv_flow_api.create_menu_option(
 p_id=>383804983196532003+wwv_flow_api.g_id_offset
,p_parent_id=>350777307170179122+wwv_flow_api.g_id_offset
,p_short_name=>'Documents'
,p_link=>'f?p=&APP_ID.:36:&SESSION.::&DEBUG.:::'
,p_page_id=>36
);
wwv_flow_api.create_menu_option(
 p_id=>384527481937838615+wwv_flow_api.g_id_offset
,p_parent_id=>370961148483570594+wwv_flow_api.g_id_offset
,p_short_name=>'Customer Summary'
,p_link=>'f?p=&APP_ID.:40:&SESSION.'
,p_page_id=>40
);
wwv_flow_api.create_menu_option(
 p_id=>391226866358997685+wwv_flow_api.g_id_offset
,p_parent_id=>352065821664913870+wwv_flow_api.g_id_offset
,p_short_name=>'Checklist'
,p_link=>'f?p=&APP_ID.:39:&SESSION.::&DEBUG.:::'
,p_page_id=>39
);
end;
/
prompt --application/shared_components/user_interface/templates/page
begin
wwv_flow_api.create_template(
 p_id=>350758692324179102+wwv_flow_api.g_id_offset
,p_theme_id=>26
,p_name=>'Dialog'
,p_is_popup=>true
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#TEMPLATE_CSS#',
'#THEME_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#THEME_IMAGES#css/4_2.css?v=#APEX_VERSION#?v=2">',
'  <script src="#THEME_IMAGES#js/4_2.js?v=#APEX_VERSION#"></script>',
'</head>',
'<body #ONLOAD# id="uPopup">',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer" role="dialog" aria-label="#TITLE#">'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<table id="uPageCols" class="uTwoCol"><tr>',
'  <td id="uMidCol">',
'  #REGION_POSITION_01#',
'  #REGION_POSITION_02#',
'  #BODY#',
'  #REGION_POSITION_04#',
'  #REGION_POSITION_05#',
'  #REGION_POSITION_06#',
'  #REGION_POSITION_07#',
'  </td>',
'  <td id="uRightCol">',
'    <aside>',
'    #REGION_POSITION_03#',
'    </aside>',
'  </td>',
'</tr></table>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="uHiddenItems">',
'  #REGION_POSITION_08#',
'</div>',
'</div>',
'#FORM_CLOSE#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>4
,p_grid_type=>'TABLE'
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.close(#IS_MODAL#);'
,p_dialog_height=>'400'
,p_dialog_width=>'600'
,p_dialog_max_width=>'1000'
,p_has_edit_links=>true
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>350764731956179103+wwv_flow_api.g_id_offset
,p_theme_id=>26
,p_name=>'Login'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#TEMPLATE_CSS#',
'#THEME_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#THEME_IMAGES#css/4_2.css?v=#APEX_VERSION#">',
'  <script src="#THEME_IMAGES#js/4_2.js?v=#APEX_VERSION#"></script>',
'</head>',
'<body #ONLOAD# id="uLogin">',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="uLoginContainer">',
'  #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'  #REGION_POSITION_02#',
'  #BODY#',
'  #REGION_POSITION_03#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uSingleAlertMessage red" id="uNotificationMessage">',
'	<p>#MESSAGE#</p>',
'	<a href="javascript:void(0)" class="closeMessage" onclick="$x_Remove(''uNotificationMessage'')"></a>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0"'
,p_theme_class_id=>6
,p_grid_type=>'TABLE'
,p_has_edit_links=>true
,p_translate_this_template=>'N'
,p_template_comment=>'18'
);
wwv_flow_api.create_template(
 p_id=>350764877233179103+wwv_flow_api.g_id_offset
,p_theme_id=>26
,p_name=>'Minimal Page'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="UTF-8">',
'  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#TEMPLATE_CSS#',
'#THEME_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#THEME_IMAGES#css/4_2.css?v=#APEX_VERSION#?v=2">',
'  <script src="#THEME_IMAGES#js/4_2.js?v=#APEX_VERSION#"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer" class="minimalPage">'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#TITLE#</a>',
'    <div class="userBlock">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'      <span>&APP_USER.</span>',
'      #NAVIGATION_BAR#',
'    </div>',
'  </hgroup>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uOneCol">',
'  #REGION_POSITION_02#',
'  #BODY#',
'  #REGION_POSITION_03#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #APP_VERSION#',
'  </div>',
'</footer>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uNoHeading uErrorRegion">',
'  <div class="uRegionContent">',
'    <p><strong>#MESSAGE#</strong></p>',
'    <p>#ADDITIONAL_INFO#</p>',
'    <div class="uErrorTechInfo">#TECHNICAL_INFO#</div>',
'  </div>',
'  <div class="uRegionHeading">',
'    <span class="uButtonContainer">',
'      <a href="#BACK_LINK#" class="uButtonLarge uHotButton"><span>#OK#</span></a>',
'    </span>',
'  </div>',
'</section>'))
,p_grid_type=>'TABLE'
,p_has_edit_links=>true
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>350764955552179103+wwv_flow_api.g_id_offset
,p_theme_id=>26
,p_name=>'No Tabs - Left Sidebar'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#TEMPLATE_CSS#',
'#THEME_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#THEME_IMAGES#css/4_2.css?v=#APEX_VERSION#?v=2">',
'  <script src="#THEME_IMAGES#js/4_2.js?v=#APEX_VERSION#"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="userBlock">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'      <span>&APP_USER.</span>',
'      #NAVIGATION_BAR#',
'    </div>',
'  </hgroup>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<table id="uPageCols" class="uTwoCol"><tr>',
'  <td id="uLeftCol">',
'    <aside>',
'    #REGION_POSITION_02#',
'    </aside>',
'  </td>',
'  <td id="uMidCol">',
'    #BODY#',
'    #REGION_POSITION_03#',
'  </td>',
'</tr></table>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #SCREEN_READER_TOGGLE#',
'    <span class="uFooterVersion">',
'      #APP_VERSION#',
'    </span>',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>'summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_grid_type=>'TABLE'
,p_has_edit_links=>true
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>350765089454179104+wwv_flow_api.g_id_offset
,p_theme_id=>26
,p_name=>'No Tabs - Left and Right Sidebar'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#TEMPLATE_CSS#',
'#THEME_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#THEME_IMAGES#css/4_2.css?v=#APEX_VERSION#?v=2">',
'  <script src="#THEME_IMAGES#js/4_2.js?v=#APEX_VERSION#"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="userBlock">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'      <span>&APP_USER.</span>',
'      #NAVIGATION_BAR#',
'    </div>',
'  </hgroup>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<table id="uPageCols" class="uThreeCol"><tr>',
'  <td id="uLeftCol">',
'    <aside>',
'    #REGION_POSITION_02#',
'    </aside>',
'  </td>',
'  <td id="uMidCol">',
'    #BODY#',
'  </td>',
'  <td id="uRightCol">',
'    <aside>',
'    #REGION_POSITION_03#',
'    </aside>',
'  </td>',
'</tr></table>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #SCREEN_READER_TOGGLE#',
'    <span class="uFooterVersion">',
'      #APP_VERSION#',
'    </span>',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>'summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_grid_type=>'TABLE'
,p_has_edit_links=>true
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>350765194114179104+wwv_flow_api.g_id_offset
,p_theme_id=>26
,p_name=>'No Tabs - No Sidebar'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#TEMPLATE_CSS#',
'#THEME_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#THEME_IMAGES#css/4_2.css?v=#APEX_VERSION#?v=2">',
'  <script src="#THEME_IMAGES#js/4_2.js?v=#APEX_VERSION#"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="userBlock">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'      <span>&APP_USER.</span>',
'      #NAVIGATION_BAR#',
'    </div>',
'  </hgroup>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uOneCol">',
'  #REGION_POSITION_02#',
'  #BODY#',
'  #REGION_POSITION_03#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #SCREEN_READER_TOGGLE#',
'    <span class="uFooterVersion">',
'      #APP_VERSION#',
'    </span>',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uNoHeading uErrorRegion">',
'  <div class="uRegionContent">',
'    <p><strong>#MESSAGE#</strong></p>',
'    <p>#ADDITIONAL_INFO#</p>',
'    <div class="uErrorTechInfo">#TECHNICAL_INFO#</div>',
'  </div>',
'  <div class="uRegionHeading">',
'    <span class="uButtonContainer">',
'      <a href="#BACK_LINK#" class="uButtonLarge uHotButton"><span>#OK#</span></a>',
'    </span>',
'  </div>',
'</section>'))
,p_grid_type=>'TABLE'
,p_has_edit_links=>true
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>350765281874179104+wwv_flow_api.g_id_offset
,p_theme_id=>26
,p_name=>'No Tabs - Right Sidebar'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#TEMPLATE_CSS#',
'#THEME_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#THEME_IMAGES#css/4_2.css?v=#APEX_VERSION#?v=2">',
'  <script src="#THEME_IMAGES#js/4_2.js?v=#APEX_VERSION#"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="userBlock">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'      <span>&APP_USER.</span>',
'      #NAVIGATION_BAR#',
'    </div>',
'  </hgroup>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<table id="uPageCols" class="uTwoCol"><tr>',
'  <td id="uMidCol">',
'    #REGION_POSITION_02#',
'    #BODY#',
'  </td>',
'  <td id="uRightCol">',
'    <aside>',
'    #REGION_POSITION_03#',
'    </aside>',
'  </td>',
'</tr></table>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #SCREEN_READER_TOGGLE#',
'    <span class="uFooterVersion">',
'      #APP_VERSION#',
'    </span>',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_grid_type=>'TABLE'
,p_has_edit_links=>true
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>350765307488179104+wwv_flow_api.g_id_offset
,p_theme_id=>26
,p_name=>'One Level Tabs - Content Frame'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#TEMPLATE_CSS#',
'#THEME_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#THEME_IMAGES#css/4_2.css?v=#APEX_VERSION#">',
'  <script src="#THEME_IMAGES#js/4_2.js?v=#APEX_VERSION#"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="userBlock">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'      <span>&APP_USER.</span>',
'      #NAVIGATION_BAR#',
'    </div>',
'  </hgroup>',
'  <nav>',
'    <ul>',
'      #TAB_CELLS#',
'    </ul>',
'    #REGION_POSITION_08#',
'  </nav>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uOneCol">',
'<section class="uRegion uRegionNoPadding clearfix uRegionFrame">',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'		#REGION_POSITION_02#',
'    </span>',
'  </div>',
'  <div class="uFrameContent">',
'	<div class="uFrameMain">',
'		#BODY#',
'	</div>',
'	<div class="uFrameSide">',
'		#REGION_POSITION_03#',
'	</div>',
'  </div>',
'</section>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #SCREEN_READER_TOGGLE#',
'    <span class="uFooterVersion">',
'      #APP_VERSION#',
'    </span>',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>9
,p_grid_type=>'TABLE'
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_has_edit_links=>true
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_template(
 p_id=>350765478861179104+wwv_flow_api.g_id_offset
,p_theme_id=>26
,p_name=>'One Level Tabs - Left Sidebar'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#TEMPLATE_CSS#',
'#THEME_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#THEME_IMAGES#css/4_2.css?v=#APEX_VERSION#?v=2">',
'  <script src="#THEME_IMAGES#js/4_2.js?v=#APEX_VERSION#"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="userBlock">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'      <span>&APP_USER.</span>',
'      #NAVIGATION_BAR#',
'    </div>',
'  </hgroup>',
'  <nav>',
'    <ul>',
'      #TAB_CELLS#',
'    </ul>',
'    #REGION_POSITION_08#',
'  </nav>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uTwoColumns">',
'<table id="uPageCols" class="uTwoCol"><tr>',
'  <td id="uLeftCol">',
'    <aside>',
'    #REGION_POSITION_02#',
'    </aside>',
'  </td>',
'  <td id="uMidCol">',
'    #BODY#',
'    #REGION_POSITION_03#',
'  </td>',
'</tr></table>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #SCREEN_READER_TOGGLE#',
'    <span class="uFooterVersion">',
'      #APP_VERSION#',
'    </span>',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>16
,p_grid_type=>'TABLE'
,p_has_edit_links=>true
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>350765547618179105+wwv_flow_api.g_id_offset
,p_theme_id=>26
,p_name=>'One Level Tabs - Left and Right Sidebar'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#TEMPLATE_CSS#',
'#THEME_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#THEME_IMAGES#css/4_2.css?v=#APEX_VERSION#?v=2">',
'  <script src="#THEME_IMAGES#js/4_2.js?v=#APEX_VERSION#"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="userBlock">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'      <span>&APP_USER.</span>',
'      #NAVIGATION_BAR#',
'    </div>',
'  </hgroup>',
'  <nav>',
'    <ul>',
'      #TAB_CELLS#',
'    </ul>',
'    #REGION_POSITION_08#',
'  </nav>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uThreeColumns">',
'<table id="uPageCols" class="uThreeCol"><tr>',
'  <td id="uLeftCol">',
'    <aside>',
'    #REGION_POSITION_02#',
'    </aside>',
'  </td>',
'  <td id="uMidCol">',
'    #BODY#',
'  </td>',
'  <td id="uRightCol">',
'    <aside>',
'    #REGION_POSITION_03#',
'    </aside>',
'  </td>',
'</tr></table>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #SCREEN_READER_TOGGLE#',
'    <span class="uFooterVersion">',
'      #APP_VERSION#',
'    </span>',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_current_tab=>'<li><a class="active" href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>16
,p_grid_type=>'TABLE'
,p_has_edit_links=>true
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>350765694381179105+wwv_flow_api.g_id_offset
,p_theme_id=>26
,p_name=>'One Level Tabs - No Sidebar'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#TEMPLATE_CSS#',
'#THEME_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#  ',
'  <meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0;">',
'  <link rel="stylesheet" href="#THEME_IMAGES#css/4_2.css?v=#APEX_VERSION#">',
'  <script src="#THEME_IMAGES#js/4_2.js?v=#APEX_VERSION#"></script>',
'   <link href="#APP_IMAGES#creo.css" rel="stylesheet" type="text/css">',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="userBlock">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'      <span>&APP_USER.</span>',
'      #NAVIGATION_BAR#',
'    </div>',
'  </hgroup>',
'  <nav>',
'    <ul>',
'      #TAB_CELLS#',
'    </ul>',
'    #REGION_POSITION_08#',
'  </nav>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uOneCol">',
'  #REGION_POSITION_02#',
'  #BODY#',
'  #REGION_POSITION_03#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #SCREEN_READER_TOGGLE#',
'    <span class="uFooterVersion">',
'      #APP_VERSION#',
'    </span>',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>'class="regionColumns"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_grid_type=>'TABLE'
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_has_edit_links=>true
);
wwv_flow_api.create_template(
 p_id=>350765724698179105+wwv_flow_api.g_id_offset
,p_theme_id=>26
,p_name=>'One Level Tabs - Right Sidebar'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#TEMPLATE_CSS#',
'#THEME_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#THEME_IMAGES#css/4_2.css?v=#APEX_VERSION#?v=2">',
'  <script src="#THEME_IMAGES#js/4_2.js?v=#APEX_VERSION#"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="userBlock">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'      <span>&APP_USER.</span>',
'      #NAVIGATION_BAR#',
'    </div>',
'  </hgroup>',
'  <nav>',
'    <ul>',
'      #TAB_CELLS#',
'    </ul>',
'    #REGION_POSITION_08#',
'  </nav>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uTwoColumns">',
'<table id="uPageCols" class="uTwoCol"><tr>',
'  <td id="uMidCol">',
'    #REGION_POSITION_02#',
'    #BODY#',
'  </td>',
'  <td id="uRightCol">',
'    <aside>',
'    #REGION_POSITION_03#',
'    </aside>',
'  </td>',
'</tr></table>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #SCREEN_READER_TOGGLE#',
'    <span class="uFooterVersion">',
'      #APP_VERSION#',
'    </span>',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>16
,p_grid_type=>'TABLE'
,p_has_edit_links=>true
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>350765837378179105+wwv_flow_api.g_id_offset
,p_theme_id=>26
,p_name=>'One Level Tabs - Search Filter Bar'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#TEMPLATE_CSS#',
'#THEME_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#THEME_IMAGES#css/4_2.css?v=#APEX_VERSION#?v=2">',
'',
'  <script src="#THEME_IMAGES#js/4_2.js?v=#APEX_VERSION#"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="userBlock">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'      <span>&APP_USER.</span>',
'      #NAVIGATION_BAR#',
'    </div>',
'  </hgroup>',
'  <nav>',
'    <ul>',
'      #TAB_CELLS#',
'    </ul>',
'    #REGION_POSITION_08#',
'  </nav>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="body" class="uSearchContainer">',
'  <table class="tbl-body" cellspacing="0" cellpadding="0" border="0" summary=""  width="100%">',
'    <tbody>',
'      <tr>',
'        <td class="tbl-sidebar" style="vertical-align:top">',
'          <div class="ebaSearchFilterBar">#REGION_POSITION_02#</div>',
'        </td>',
'        <td class="tbl-main">#BODY##REGION_POSITION_03#</td>',
'      </tr>',
'    </tbody>',
'  </table>',
'</div>',
''))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #SCREEN_READER_TOGGLE#',
'    <span class="uFooterVersion">',
'      #APP_VERSION#',
'    </span>',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>'))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="notification" id="notification-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>9
,p_grid_type=>'TABLE'
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_has_edit_links=>true
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>350765923923179105+wwv_flow_api.g_id_offset
,p_theme_id=>26
,p_name=>'One Level Tabs - Wizard Page'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#TEMPLATE_CSS#',
'#THEME_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#THEME_IMAGES#css/4_2.css?v=#APEX_VERSION#?v=2">',
'  <script src="#THEME_IMAGES#js/4_2.js?v=#APEX_VERSION#"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="userBlock">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'      <span>&APP_USER.</span>',
'      #NAVIGATION_BAR#',
'    </div>',
'  </hgroup>',
'  <nav>',
'    <ul>',
'      #TAB_CELLS#',
'    </ul>',
'    #REGION_POSITION_08#',
'  </nav>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uOneCol">',
'',
'<div class="cWizard">',
'	<div class="cWizardHeader">',
'		#REGION_POSITION_02#',
'	</div>',
'    <div class="cWizardContentContainer">',
'    <div class="cWizardContent">',
'        #BODY##REGION_POSITION_03#',
'    </div>',
'    <div class="clear"></div>',
'</div>',
'',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #SCREEN_READER_TOGGLE#',
'    <span class="uFooterVersion">',
'      #APP_VERSION#',
'    </span>',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>8
,p_grid_type=>'TABLE'
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_has_edit_links=>true
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>350766024203179106+wwv_flow_api.g_id_offset
,p_theme_id=>26
,p_name=>'Popup'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#TEMPLATE_CSS#',
'#THEME_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#THEME_IMAGES#css/4_2.css?v=#APEX_VERSION#?v=2">',
'  <script src="#THEME_IMAGES#js/4_2.js?v=#APEX_VERSION#"></script>',
'</head>',
'<body #ONLOAD# id="uPopup">',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<table id="uPageCols" class="uTwoCol"><tr>',
'  <td id="uMidCol">',
'  #REGION_POSITION_01#',
'  #REGION_POSITION_02#',
'  #BODY#',
'  #REGION_POSITION_04#',
'  #REGION_POSITION_05#',
'  #REGION_POSITION_06#',
'  #REGION_POSITION_07#',
'  </td>',
'  <td id="uRightCol">',
'    <aside>',
'    #REGION_POSITION_03#',
'    </aside>',
'  </td>',
'</tr></table>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="uHiddenItems">',
'  #REGION_POSITION_08#',
'</div>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>4
,p_grid_type=>'TABLE'
,p_has_edit_links=>true
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>350766198375179106+wwv_flow_api.g_id_offset
,p_theme_id=>26
,p_name=>'Printer Friendly'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#TEMPLATE_CSS#',
'#THEME_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#THEME_IMAGES#css/4_2.css?v=#APEX_VERSION#?v=2">',
'  <script src="#THEME_IMAGES#js/4_2.js?v=#APEX_VERSION#"></script>',
'</head>',
'<body #ONLOAD# id="uPrinterFriendly">',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="userBlock">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'      <span>&APP_USER.</span>',
'      #NAVIGATION_BAR#',
'    </div>',
'  </hgroup>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uOneCol">',
'  #REGION_POSITION_02#',
'  #BODY#',
'  #REGION_POSITION_03#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #SCREEN_READER_TOGGLE#',
'    <span class="uFooterVersion">',
'      #APP_VERSION#',
'    </span>',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<li><a href="#LINK#">#TEXT#</a>#EDIT#</li>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>5
,p_grid_type=>'TABLE'
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_has_edit_links=>true
,p_translate_this_template=>'N'
,p_template_comment=>'3'
);
end;
/
begin
wwv_flow_api.create_template(
 p_id=>350766203781179106+wwv_flow_api.g_id_offset
,p_theme_id=>26
,p_name=>'Two Level Tabs - Left Sidebar'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#TEMPLATE_CSS#',
'#THEME_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#THEME_IMAGES#css/4_2.css?v=#APEX_VERSION#?v=2">',
'  <script src="#THEME_IMAGES#js/4_2.js?v=#APEX_VERSION#"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="userBlock">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'      <span>&APP_USER.</span>',
'      #NAVIGATION_BAR#',
'    </div>',
'  </hgroup>',
'  <div class="uParentTabs">',
'    <ul>',
'      #PARENT_TAB_CELLS#',
'    </ul>',
'  </div>',
'  <nav>',
'    <ul>',
'      #TAB_CELLS#',
'    </ul>',
'    #REGION_POSITION_08#',
'  </nav>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uTwoColumns">',
'<table id="uPageCols" class="uTwoCol"><tr>',
'  <td id="uLeftCol">',
'    <aside>',
'    #REGION_POSITION_02#',
'    </aside>',
'  </td>',
'  <td id="uMidCol">',
'    #BODY#',
'    #REGION_POSITION_03#',
'  </td>',
'</tr></table>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #SCREEN_READER_TOGGLE#',
'    <span class="uFooterVersion">',
'      #APP_VERSION#',
'    </span>',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>'))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_top_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_top_non_curr_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>18
,p_grid_type=>'TABLE'
,p_has_edit_links=>true
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>350766319742179106+wwv_flow_api.g_id_offset
,p_theme_id=>26
,p_name=>'Two Level Tabs - Left and Right Sidebar'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#TEMPLATE_CSS#',
'#THEME_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#THEME_IMAGES#css/4_2.css?v=#APEX_VERSION#?v=2">',
'  <script src="#THEME_IMAGES#js/4_2.js?v=#APEX_VERSION#"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="userBlock">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'      <span>&APP_USER.</span>',
'      #NAVIGATION_BAR#',
'    </div>',
'  </hgroup>',
'  <div class="uParentTabs">',
'    <ul>',
'      #PARENT_TAB_CELLS#',
'    </ul>',
'  </div>',
'  <nav>',
'    <ul>',
'      #TAB_CELLS#',
'    </ul>',
'    #REGION_POSITION_08#',
'  </nav>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uThreeColumns">',
'<table id="uPageCols" class="uThreeCol"><tr>',
'  <td id="uLeftCol">',
'    <aside>',
'    #REGION_POSITION_02#',
'    </aside>',
'  </td>',
'  <td id="uMidCol">',
'    #BODY#',
'  </td>',
'  <td id="uRightCol">',
'    <aside>',
'    #REGION_POSITION_03#',
'    </aside>',
'  </td>',
'</tr></table>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #SCREEN_READER_TOGGLE#',
'    <span class="uFooterVersion">',
'      #APP_VERSION#',
'    </span>',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>'))
,p_current_tab=>'<li><a class="active" href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_top_current_tab=>'<li><a class="active" href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_top_non_curr_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>18
,p_grid_type=>'TABLE'
,p_has_edit_links=>true
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>350766471936179106+wwv_flow_api.g_id_offset
,p_theme_id=>26
,p_name=>'Two Level Tabs - No Sidebar'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#TEMPLATE_CSS#',
'#THEME_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#THEME_IMAGES#css/4_2.css?v=#APEX_VERSION#?v=2">',
'  <script src="#THEME_IMAGES#js/4_2.js?v=#APEX_VERSION#"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="userBlock">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'      <span>&APP_USER.</span>',
'      #NAVIGATION_BAR#',
'    </div>',
'  </hgroup>',
'  <div class="uParentTabs">',
'    <ul>',
'      #PARENT_TAB_CELLS#',
'    </ul>',
'  </div>',
'  <nav>',
'    <ul>',
'      #TAB_CELLS#',
'    </ul>',
'    #REGION_POSITION_08#',
'  </nav>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uOneCol">',
'  #REGION_POSITION_02#',
'  #BODY#',
'  #REGION_POSITION_03#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #SCREEN_READER_TOGGLE#',
'    <span class="uFooterVersion">',
'      #APP_VERSION#',
'    </span>',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>'))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_top_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_top_non_curr_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>2
,p_grid_type=>'TABLE'
,p_has_edit_links=>true
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>350766595927179106+wwv_flow_api.g_id_offset
,p_theme_id=>26
,p_name=>'Two Level Tabs - Right Sidebar'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#TEMPLATE_CSS#',
'#THEME_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#THEME_IMAGES#css/4_2.css?v=#APEX_VERSION#?v=2">',
'  <script src="#THEME_IMAGES#js/4_2.js?v=#APEX_VERSION#"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="userBlock">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'      <span>&APP_USER.</span>',
'      #NAVIGATION_BAR#',
'    </div>',
'  </hgroup>',
'  <div class="uParentTabs">',
'    <ul>',
'      #PARENT_TAB_CELLS#',
'    </ul>',
'  </div>',
'  <nav>',
'    <ul>',
'      #TAB_CELLS#',
'    </ul>',
'    #REGION_POSITION_08#',
'  </nav>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uTwoColumns">',
'<table id="uPageCols" class="uTwoCol"><tr>',
'  <td id="uMidCol">',
'    #REGION_POSITION_02#',
'    #BODY#',
'  </td>',
'  <td id="uRightCol">',
'    <aside>',
'    #REGION_POSITION_03#',
'    </aside>',
'  </td>',
'</tr></table>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #SCREEN_READER_TOGGLE#',
'    <span class="uFooterVersion">',
'      #APP_VERSION#',
'    </span>',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>'))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_top_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_top_non_curr_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>2
,p_grid_type=>'TABLE'
,p_has_edit_links=>true
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/button
begin
wwv_flow_api.create_button_templates(
 p_id=>350773866275179112+wwv_flow_api.g_id_offset
,p_template_name=>'Button'
,p_template=>'<a href="#LINK#" class="uButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#</span></a> '
,p_hot_template=>'<a href="#LINK#" class="uButton uHotButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#</span></a> '
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>26
);
wwv_flow_api.create_button_templates(
 p_id=>350773906519179113+wwv_flow_api.g_id_offset
,p_template_name=>'HTML button (legacy - APEX 5 migration)'
,p_template=>'<input type="button" value="#LABEL#" onclick="#JAVASCRIPT#" id="#BUTTON_ID#" class="#BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#/>'
,p_hot_template=>'<input type="button" value="#LABEL#" onclick="#JAVASCRIPT#" id="#BUTTON_ID#" class="#BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#/>'
,p_translate_this_template=>'N'
,p_theme_class_id=>13
,p_template_comment=>'5.0 upgrade'
,p_theme_id=>26
);
wwv_flow_api.create_button_templates(
 p_id=>350774095506179113+wwv_flow_api.g_id_offset
,p_template_name=>'Interactive Report Button'
,p_template=>'<a href="#LINK#" class="uButtonIR #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#</span></a> '
,p_hot_template=>'<a href="#LINK#" class="uButtonIR uHotButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#</span></a> '
,p_translate_this_template=>'N'
,p_theme_class_id=>2
,p_theme_id=>26
);
wwv_flow_api.create_button_templates(
 p_id=>350774137329179113+wwv_flow_api.g_id_offset
,p_template_name=>'Interactive Report Button (Next)'
,p_template=>'<a href="#LINK#" class="uButtonIR nextButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#<img src="#IMAGE_PREFIX#f_spacer.gif" class="uButtonIcon nextIcon" alt=""></span></a> '
,p_hot_template=>'<a href="#LINK#" class="uButtonIR uHotButton nextButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#<img src="#IMAGE_PREFIX#f_spacer.gif" class="uButtonIcon nextIcon" alt=""></span></a> '
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_template_comment=>'Standard Button'
,p_theme_id=>26
);
wwv_flow_api.create_button_templates(
 p_id=>350774226858179113+wwv_flow_api.g_id_offset
,p_template_name=>'Large Button'
,p_template=>'<a href="#LINK#" class="uButtonLarge #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#</span></a> '
,p_hot_template=>'<a href="#LINK#" class="uButtonLarge uHotButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#</span></a> '
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_template_comment=>'Standard Button'
,p_theme_id=>26
);
wwv_flow_api.create_button_templates(
 p_id=>350774313351179113+wwv_flow_api.g_id_offset
,p_template_name=>'Large Button (Next)'
,p_template=>'<a href="#LINK#" class="uButtonLarge nextButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#<img src="#IMAGE_PREFIX#f_spacer.gif" class="uButtonIcon nextIcon" alt=""></span></a> '
,p_hot_template=>'<a href="#LINK#" class="uButtonLarge uHotButton nextButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#<img src="#IMAGE_PREFIX#f_spacer.gif" class="uButtonIcon nextIcon" alt=""></span></a> '
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_template_comment=>'Standard Button'
,p_theme_id=>26
);
wwv_flow_api.create_button_templates(
 p_id=>350774402332179113+wwv_flow_api.g_id_offset
,p_template_name=>'Large Button (Previous)'
,p_template=>'<a href="#LINK#" class="uButtonLarge prevButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button" title="#LABEL#"><span><img src="#IMAGE_PREFIX#f_spacer.gif" class="uButtonIcon prevIcon" alt="#LABEL#"></span></a> '
,p_hot_template=>'<a href="#LINK#" class="uButtonLarge utHotButton prevButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button" title="#LABEL#"><span><img src="#IMAGE_PREFIX#f_spacer.gif" class="uButtonIcon prevIcon" alt="#LABEL#"></span></a> '
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_template_comment=>'Standard Button'
,p_theme_id=>26
);
wwv_flow_api.create_button_templates(
 p_id=>350774532903179113+wwv_flow_api.g_id_offset
,p_template_name=>'Small Button'
,p_template=>'<a href="#LINK#" class="uButtonSmall #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#</span></a> '
,p_hot_template=>'<a href="#LINK#" class="uButtonSmall uHotButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#</span></a> '
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_theme_id=>26
);
wwv_flow_api.create_button_templates(
 p_id=>350774670760179113+wwv_flow_api.g_id_offset
,p_template_name=>'[ + ] Add Button'
,p_template=>'<a href="#LINK#" class="uIconButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# title="#LABEL#" role="button"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="#LABEL#" class="addIcon" /></a>'
,p_hot_template=>'<a href="#LINK#" class="uIconButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# title="#LABEL#" role="button"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="#LABEL#"  class="addIcon"/></a>'
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>26
);
wwv_flow_api.create_button_templates(
 p_id=>350774777066179113+wwv_flow_api.g_id_offset
,p_template_name=>'[ > ] Go To Button'
,p_template=>'<a href="#LINK#" class="uIconButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# title="#LABEL#" role="button"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="#LABEL#" class="gotoIcon" /></a>'
,p_hot_template=>'<a href="#LINK#" class="uIconButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# title="#LABEL#" role="button"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="#LABEL#" class="gotoIcon"/></a>'
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>26
);
wwv_flow_api.create_button_templates(
 p_id=>350774884779179113+wwv_flow_api.g_id_offset
,p_template_name=>'[ Text ] Button'
,p_template=>'<a href="#LINK#" class="uIconButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#</span></a>'
,p_hot_template=>'<a href="#LINK#" class="uIconButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#</span></a>'
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>26
);
end;
/
prompt --application/shared_components/user_interface/templates/region
begin
wwv_flow_api.create_plug_template(
 p_id=>350766668365179107+wwv_flow_api.g_id_offset
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#BUTTON_CSS_CLASSES#">',
'  <h1 class="visuallyhidden">#TITLE#</h1>',
'  #BODY#',
'</section>'))
,p_page_plug_template_name=>'Accessible Region with Heading'
,p_theme_id=>26
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>350766730759179107+wwv_flow_api.g_id_offset
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uAlertRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'</section>'))
,p_page_plug_template_name=>'Alert Region'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>26
,p_theme_class_id=>10
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Used for alerts and confirmations.  Please use a region image for the success/warning icon'
);
wwv_flow_api.create_plug_template(
 p_id=>350766826722179107+wwv_flow_api.g_id_offset
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uBorderlessRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Borderless Region'
,p_theme_id=>26
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Use this region template when you want to contain content without a border.',
'',
'TITLE=YES',
'BUTTONS=YES',
'100% WIDTH=NO'))
);
wwv_flow_api.create_plug_template(
 p_id=>350766937844179107+wwv_flow_api.g_id_offset
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uBorderlessRegion clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'    #BODY#',
'</section>'))
,p_page_plug_template_name=>'Borderless Region (no heading)'
,p_theme_id=>26
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Use this region template when you want to contain content without a border.',
'',
'TITLE=YES',
'BUTTONS=YES',
'100% WIDTH=NO'))
);
wwv_flow_api.create_plug_template(
 p_id=>350767007294179107+wwv_flow_api.g_id_offset
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uBracketedRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Bracketed Region'
,p_theme_id=>26
,p_theme_class_id=>18
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Use this region template when you want to contain content with a bracket UI.',
'',
'TITLE=YES',
'BUTTONS=YES',
'100% WIDTH=NO'))
);
wwv_flow_api.create_plug_template(
 p_id=>350767175131179107+wwv_flow_api.g_id_offset
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="uBreadcrumbs" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#">',
'  #BODY#',
'  <div class="uBreadcrumbsBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Breadcrumb Region'
,p_theme_id=>26
,p_theme_class_id=>6
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Use this region template to contain breadcrumb menus.  Breadcrumb menus are implemented using breadcrumbs.  Breadcrumb menus are designed to displayed in #REGION_POSITION_01#'
);
wwv_flow_api.create_plug_template(
 p_id=>350767225755179107+wwv_flow_api.g_id_offset
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uButtonRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uButtonRegionContentContainer">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Button Region with Title'
,p_theme_id=>26
,p_theme_class_id=>4
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>350767394312179107+wwv_flow_api.g_id_offset
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uButtonRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uButtonRegionContentContainer">',
'    <div class="uButtonRegionContent">#BODY#</div>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Button Region without Title'
,p_theme_id=>26
,p_theme_class_id=>17
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>350767400895179107+wwv_flow_api.g_id_offset
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Chart List'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>26
,p_theme_class_id=>29
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>350767546305179108+wwv_flow_api.g_id_offset
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Chart Region'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>26
,p_theme_class_id=>30
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>350767606470179108+wwv_flow_api.g_id_offset
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#SUB_REGION_HEADERS#',
'#BODY#',
'<div class="uFrameContainer" class="#REGION_CSS_CLASSES#">',
'#SUB_REGIONS#',
'</div>'))
,p_sub_plug_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uFrameRegionSelector clearfix">',
'  <ul>',
'    <li><a href="javascript:void(0);" class="showAllLink active"><span>Show All</span></a></li>',
'    #ENTRIES#',
'  </ul>',
'</div>'))
,p_sub_plug_header_entry_templ=>'<li><a href="javascript:void(0);" id="sub_#SUB_REGION_ID#"><span>#SUB_REGION_TITLE#</span></a></li>'
,p_page_plug_template_name=>'Content Frame Body Container'
,p_theme_id=>26
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>350767732491179108+wwv_flow_api.g_id_offset
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> ',
'#BODY#',
'#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'</div>'))
,p_page_plug_template_name=>'DIV Region with ID'
,p_theme_id=>26
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>350767859800179108+wwv_flow_api.g_id_offset
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Form Region'
,p_plug_table_bgcolor=>'#f7f7e7'
,p_theme_id=>26
,p_theme_class_id=>8
,p_plug_heading_bgcolor=>'#f7f7e7'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>350767969444179108+wwv_flow_api.g_id_offset
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uHideShowRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>',
'      <a href="javascript:void(0)" class="uRegionControl"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="Hide/Show"/></a>',
'      #TITLE#',
'    </h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Hide and Show Region'
,p_theme_id=>26
,p_theme_class_id=>1
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>350768031304179108+wwv_flow_api.g_id_offset
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uBorderlessRegion uHideShowRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>',
'      <a href="javascript:void(0)" class="uRegionControl uRegionCollapsed"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="Hide/Show"/></a>',
'      #TITLE#',
'    </h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix" style="display: none;">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Hide and Show Region (Hidden First) - Borderless'
,p_theme_id=>26
,p_theme_class_id=>1
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>350768137473179108+wwv_flow_api.g_id_offset
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uBorderlessRegion uHideShowRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>',
'      <a href="javascript:void(0)" class="uRegionControl"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="Hide/Show"/></a>',
'      #TITLE#',
'    </h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Hide and Show Region - Borderless'
,p_theme_id=>26
,p_theme_class_id=>1
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>350768259637179108+wwv_flow_api.g_id_offset
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uIRRegion" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#">',
'  <h1 class="visuallyhidden">#TITLE#</h1>',
'  #BODY#',
'</section>'))
,p_page_plug_template_name=>'Interactive Report Region'
,p_theme_id=>26
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>350768341326179108+wwv_flow_api.g_id_offset
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uRegionNoPadding uLoginRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uLoginHeading">',
'    <span class="bgArrow"></span>',
'    <div class="appIcon">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="appIcon #REGION_STATIC_ID#" alt=""/>',
'    </div> ',
'    <h1>#TITLE#</h1>',
'  </div>',
'  <div class="uLoginBody clearfix">',
'    #BODY#',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Login Region'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>26
,p_theme_class_id=>9
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>350768426738179108+wwv_flow_api.g_id_offset
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uModalRegion uAlertRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'</section>'))
,p_page_plug_template_name=>'Modal Region'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>26
,p_theme_class_id=>9
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>350768564406179108+wwv_flow_api.g_id_offset
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Navigation Region'
,p_theme_id=>26
,p_theme_class_id=>5
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>350768641507179108+wwv_flow_api.g_id_offset
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Navigation Region - Heading Inside'
,p_theme_id=>26
,p_theme_class_id=>16
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>350768768875179108+wwv_flow_api.g_id_offset
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uNoHeading #REGION_CSS_CLASSES# clearfix">',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Region without Buttons and Titles'
,p_theme_id=>26
,p_theme_class_id=>19
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>350768892925179108+wwv_flow_api.g_id_offset
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uNoHeading #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Region without Title'
,p_theme_id=>26
,p_theme_class_id=>11
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>350768930976179108+wwv_flow_api.g_id_offset
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uButtonRegion uNoHeading uReportFilter #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    <div class="uReportFilterRow">',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uSearchIcon" alt="" />',
'    #BODY#',
'    </div>',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Report Filter - Single Row'
,p_theme_id=>26
,p_theme_class_id=>31
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>350769060248179109+wwv_flow_api.g_id_offset
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Report List'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>26
,p_theme_class_id=>29
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>350769163011179109+wwv_flow_api.g_id_offset
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Reports Region'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>26
,p_theme_class_id=>9
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>350769209906179109+wwv_flow_api.g_id_offset
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uRegionNoPadding #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Reports Region - 100% Width'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>26
,p_theme_class_id=>13
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>350769304989179109+wwv_flow_api.g_id_offset
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Reports Region - Heading Inside'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>26
,p_theme_class_id=>10
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>350769495320179109+wwv_flow_api.g_id_offset
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix"  style="height: 400px; overflow:scroll">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Scrollable Content Region'
,p_theme_id=>26
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>1826089610826571714
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>350769599809179109+wwv_flow_api.g_id_offset
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uFilterRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'    <span class="uButtonContainer">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Search Filter Region'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>26
,p_theme_class_id=>9
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>350769634594179109+wwv_flow_api.g_id_offset
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Sidebar Region'
,p_plug_table_bgcolor=>'#f7f7e7'
,p_theme_id=>26
,p_theme_class_id=>2
,p_plug_heading_bgcolor=>'#f7f7e7'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table border="0" cellpadding="0" cellspacing="0">',
'        <tr>',
'          <td rowspan="2" valign="top" width="4" bgcolor="#FF0000"><img src="#IMAGE_PREFIX#tl_img.gif" border="0" width="4" height="18" alt="" /></td>',
'          <td bgcolor="#000000" height="1"><img src="#IMAGE_PREFIX#stretch.gif" width="142" height="1" border="0" alt="" /></td>',
'          <td rowspan="2" valign="top" width="4" bgcolor="#FF0000"><img src="#IMAGE_PREFIX#tr_img.gif" border="0" width="4" height="18" alt="" /></td>',
'        </tr>',
'        <tr>',
'          <td bgcolor="#FF0000" height="16">',
'            <table border="0" cellpadding="0" cellspacing="0" width="100%">',
'              <tr>',
'                <td align=middle valign="top">',
'                  <div align="center">',
'                     <font color="#ffffff" face="Arial, Helvetica, sans-serif" size="1">',
'                      <b>#TITLE# </b></font></div>',
'                </td>',
'              </tr>',
'            </table>',
'          </td>',
'        </tr>',
'</table>',
'<table border="0" cellpadding="0" cellspacing="0">',
'   <tr>',
'   <td bgcolor="#000000" width="1" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'   <td valign="top" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="146" height="1" border="0" alt="" /><br />',
'            <table border="0" cellpadding="1" cellspacing="0" width="146" summary="">',
'              <tr>',
'                <td colspan="2">',
'                  <table border="0" cellpadding="2" cellspacing="0" width="124" summary="">',
'                    <tr>',
'                      <td>&nbsp;</td>',
'                      <td valign="top" width="106">',
'                        <P><FONT face="arial, helvetica" size="1">',
'                            #BODY#',
'                           </font>',
'                        </P>',
'                      </td>',
'                    </tr>',
'                  </table>',
'            </table>',
'          </td>',
'          <td bgcolor="#000000" width="1" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'          <td bgcolor="#9a9c9a" width="1" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'          <td bgcolor="#b3b4b3" width="1" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'        </tr>',
'      </table>',
'      <table border="0" cellpadding="0" cellspacing="0">',
'        <tr>',
'          <td rowspan="4" valign="top" width="4"><img src="#IMAGE_PREFIX#bl_img.gif" border="0" width="4" height="6" alt="" /></td>',
'          <td bgcolor="#ffffff" height="2"><img src="#IMAGE_PREFIX#stretch.gif" width="142" height="1" border="0" alt="" /></td>',
'          <td rowspan="4" valign="top" width="4"><img src="#IMAGE_PREFIX#br_img.gif" border="0" width="4" height="6" alt="" /></td>',
'        </tr>',
'        <tr>',
'          <td bgcolor="#000000" width="1"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'        </tr>',
'        <tr>',
'          <td bgcolor="#9a9c9a" width="1"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'        </tr>',
'        <tr>',
'          <td bgcolor="#b3b4b3" width="1" height="2"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'        </tr>',
'</table>',
''))
);
wwv_flow_api.create_plug_template(
 p_id=>350769755463179109+wwv_flow_api.g_id_offset
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Sidebar Region - Heading Inside'
,p_plug_table_bgcolor=>'#f7f7e7'
,p_theme_id=>26
,p_theme_class_id=>3
,p_plug_heading_bgcolor=>'#f7f7e7'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>350769833587179109+wwv_flow_api.g_id_offset
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="cWizardButtons cWizardButtonsLeft">',
'#PREVIOUS##CLOSE#',
'</div>',
'<div class="cWizardButtons cWizardButtonsRight">',
'#NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'</div>'))
,p_page_plug_template_name=>'Wizard Buttons'
,p_theme_id=>26
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>350769907648179109+wwv_flow_api.g_id_offset
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Wizard Region'
,p_theme_id=>26
,p_theme_class_id=>12
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>350770089875179109+wwv_flow_api.g_id_offset
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Wizard Region with Icon'
,p_theme_id=>26
,p_theme_class_id=>1
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
);
end;
/
begin
wwv_flow_api.create_plug_template(
 p_id=>350770179721179109+wwv_flow_api.g_id_offset
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" style="display:none" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#">',
'#BODY#',
'</div>'))
,p_page_plug_template_name=>'jQuery Modal Region Template'
,p_theme_id=>26
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
null;
end;
/
prompt --application/shared_components/user_interface/templates/list
begin
wwv_flow_api.create_list_template(
 p_id=>350771393480179110+wwv_flow_api.g_id_offset
,p_list_template_current=>'<a href="#LINK#" class="uButtonSmall uHotButton" #A01# role="button"><span>#TEXT#</span></a> '
,p_list_template_noncurrent=>'<a href="#LINK#" class="uButtonSmall" #A01# role="button"><span>#TEXT#</span></a> '
,p_list_template_name=>'Button List'
,p_theme_id=>26
,p_theme_class_id=>6
,p_list_template_before_rows=>'<div class="uButtonList">'
,p_list_template_after_rows=>'</div>'
);
wwv_flow_api.create_list_template(
 p_id=>350771439393179111+wwv_flow_api.g_id_offset
,p_list_template_current=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'DHTML Tree'
,p_theme_id=>26
,p_theme_class_id=>23
,p_list_template_before_rows=>'<ul class="dhtmlTree">'
,p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>'
,p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_item_templ_curr_w_child=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_item_templ_noncurr_w_child=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_sub_templ_curr_w_child=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li><a href="#LINK#">#TEXT#</a></li>'
);
wwv_flow_api.create_list_template(
 p_id=>350771570734179111+wwv_flow_api.g_id_offset
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li>',
'  <a href="#LINK#">',
'    <h3>#TEXT#</h3>',
'    <p>#A01#</p>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li>',
'  <a href="#LINK#">',
'    <h3>#TEXT#</h3>',
'    <p>#A01#</p>',
'  </a>',
'</li>'))
,p_list_template_name=>'Featured List with Subtext'
,p_theme_id=>26
,p_theme_class_id=>1
,p_list_template_before_rows=>'<ul class="featuredLinksList">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>350771667373179111+wwv_flow_api.g_id_offset
,p_list_template_current=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle" alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle"  alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Hierarchical Expanding'
,p_theme_id=>26
,p_theme_class_id=>22
,p_list_template_before_rows=>'<ul class="dhtmlTree">'
,p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>'
,p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" style="display:none;" class="dhtmlTree">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle"  alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_sub_list_item_noncurrent=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif"  align="middle" alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_item_templ_curr_w_child=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" align="middle"  onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" class="pseudoButtonInactive" alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_item_templ_noncurr_w_child=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" align="middle"  onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" class="pseudoButtonInactive" alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_sub_templ_curr_w_child=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" align="middle" class="pseudoButtonInactive" alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" align="middle" class="pseudoButtonInactive" alt="" /><a href="#LINK#">#TEXT#</a></li>'
);
wwv_flow_api.create_list_template(
 p_id=>350771748049179111+wwv_flow_api.g_id_offset
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'    <li class="active">',
'      <a href="#LINK#">',
'        <img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# alt="" />',
'        <span>#TEXT#</span>',
'      </a>',
'    </li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'    <li>',
'      <a href="#LINK#">',
'        <img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# alt="" />',
'        <span>#TEXT#</span>',
'      </a>',
'    </li>'))
,p_list_template_name=>'Horizontal Images with Label List'
,p_theme_id=>26
,p_theme_class_id=>4
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uImagesList uHorizontalImagesList clearfix">',
'  <ul>'))
,p_list_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  </ul>',
'</div>'))
);
wwv_flow_api.create_list_template(
 p_id=>350771869637179111+wwv_flow_api.g_id_offset
,p_list_template_current=>'<li class="active"><a href="#LINK#">#TEXT#</a></li> '
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li> '
,p_list_template_name=>'Horizontal Links List'
,p_theme_id=>26
,p_theme_class_id=>3
,p_list_template_before_rows=>'<ul class="uHorizontalLinksList">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>350771920792179111+wwv_flow_api.g_id_offset
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'    <li class="#LIST_STATUS#">',
'      <span>#TEXT#</span>',
'    </li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'    <li class="#LIST_STATUS#">',
'      <span>#TEXT#</span>',
'    </li>'))
,p_list_template_name=>'Horizontal Wizard Progress List'
,p_theme_id=>26
,p_theme_class_id=>17
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uHorizontalProgressList">',
'  <ul>'))
,p_list_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  </ul>',
'</div>'))
);
wwv_flow_api.create_list_template(
 p_id=>350772027261179111+wwv_flow_api.g_id_offset
,p_list_template_current=>'<li><a href="#LINK#" class="active">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Page Level Tabs List'
,p_theme_id=>26
,p_theme_class_id=>7
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<nav class="uPageTabs">',
'<ul>'))
,p_list_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'</nav>'))
);
wwv_flow_api.create_list_template(
 p_id=>350772172753179111+wwv_flow_api.g_id_offset
,p_list_template_current=>'<li class="dhtmlMenuItem"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li class="dhtmlMenuItem"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Pull Down Menu'
,p_theme_id=>26
,p_theme_class_id=>20
,p_list_template_before_rows=>'<ul class="dhtmlMenuLG2">'
,p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>'
,p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" class="dhtmlSubMenu2" style="display:none;">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="dhtmlMenuSep2"><img src="#IMAGE_PREFIX#f_spacer.gif"  width="1" height="1" alt="" class="dhtmlMenuSep2" /></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#" class="dhtmlSubMenuN" onmouseover="dhtml_CloseAllSubMenusL(this)">#TEXT#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="dhtmlMenuItem1"><a href="#LINK#">#TEXT#</a><img src="#IMAGE_PREFIX#arrow_down_gray_dark.gif" alt="Expand" onclick="app_AppMenuMultiOpenBottom2(this,''#LIST_ITEM_ID#'',false)" />',
'</li>'))
,p_item_templ_noncurr_w_child=>'<li class="dhtmlMenuItem1"><a href="#LINK#">#TEXT#</a><img src="#IMAGE_PREFIX#arrow_down_gray_dark.gif" alt="Expand" onclick="app_AppMenuMultiOpenBottom2(this,''#LIST_ITEM_ID#'',false)" /></li>'
,p_sub_templ_curr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" alt="" /></a></li>'
,p_sub_templ_noncurr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" alt="" / ></a></li>'
);
wwv_flow_api.create_list_template(
 p_id=>350772299210179111+wwv_flow_api.g_id_offset
,p_list_template_current=>'<div class="dhtmlMenuItem"><a href="#LINK#" id="#LIST_ITEM_ID#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR#  /></a><img src="#IMAGE_PREFIX#menu/drop_down_nochild.png" width="20" height="128" alt="" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a><'
||'/div>'
,p_list_template_noncurrent=>'<div class="dhtmlMenuItem"><a href="#LINK#" id="#LIST_ITEM_ID#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR#  "/></a><img src="#IMAGE_PREFIX#menu/drop_down_nochild.png" width="20" height="128" alt="" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a>'
||'</div>'
,p_list_template_name=>'Pull Down Menu with Image'
,p_theme_id=>26
,p_theme_class_id=>21
,p_list_template_before_rows=>'<div class="dhtmlMenuLG">'
,p_list_template_after_rows=>'</div><br style="clear:both;"/><br style="clear:both;"/>'
,p_before_sub_list=>'<ul id="S#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" class="dhtmlSubMenu2" style="display:none;"><li class="dhtmlSubMenuP" onmouseover="dhtml_CloseAllSubMenusL(this)">#PARENT_TEXT#</li>'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="dhtmlMenuSep"><img src="#IMAGE_PREFIX#themes/theme_13/1px_trans.gif"  width="1" height="1" alt=""  class="dhtmlMenuSep" /></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#" class="dhtmlSubMenuN" onmouseover="dhtml_CloseAllSubMenusL(this)">#TEXT#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="dhtmlMenuItem"><a href="#LINK#" id="#LIST_ITEM_ID#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR#  /></a><img src="#IMAGE_PREFIX#menu/drop_down.png" width="20" height="128" alt="" class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom3(thi'
||'s,''S#LIST_ITEM_ID#'',''#LIST_ITEM_ID#'',false)" />',
'<a href="#LINK#" class="dhtmlBottom">#TEXT#</a>',
'</div>'))
,p_item_templ_noncurr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="dhtmlMenuItem"><a href="#LINK#" id="#LIST_ITEM_ID#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR#  /></a><img src="#IMAGE_PREFIX#menu/drop_down.png" width="20" height="128" alt=""  class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom3(th'
||'is,''S#LIST_ITEM_ID#'',''#LIST_ITEM_ID#'',false)" />',
'<a href="#LINK#" class="dhtmlBottom">#TEXT#</a>',
'</div>'))
,p_sub_templ_curr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''S#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>'
,p_sub_templ_noncurr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''S#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>'
);
wwv_flow_api.create_list_template(
 p_id=>350772373328179111+wwv_flow_api.g_id_offset
,p_list_template_current=>'<li class="active"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Search Filter Tabs'
,p_theme_id=>26
,p_theme_class_id=>19
,p_list_template_before_rows=>'<ul class="ebaViewTabs">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>350772496810179111+wwv_flow_api.g_id_offset
,p_list_template_current=>'<li class="active"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Tabbed Navigation List'
,p_theme_id=>26
,p_theme_class_id=>7
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uHorizontalTabs">',
'<ul>'))
,p_list_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'</div>'))
);
wwv_flow_api.create_list_template(
 p_id=>350772584804179111+wwv_flow_api.g_id_offset
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'    <li class="active">',
'      <a href="#LINK#">',
'        <img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# alt="" />',
'        <span>#TEXT#</span>',
'      </a>',
'    </li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'    <li>',
'      <a href="#LINK#">',
'        <img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# alt="" />',
'        <span>#TEXT#</span>',
'      </a>',
'    </li>'))
,p_list_template_name=>'Vertical Images List'
,p_theme_id=>26
,p_theme_class_id=>5
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uImagesList uVerticalImagesList clearfix">',
'  <ul>'))
,p_list_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  </ul>',
'</div>'))
);
wwv_flow_api.create_list_template(
 p_id=>350772603345179111+wwv_flow_api.g_id_offset
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li>',
'    <a href="#LINK#">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="#A02#" alt="" />',
'      <h3>#TEXT#</h3>',
'      <h4>#A01#</h4>',
'    </a>',
'  </li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li>',
'    <a href="#LINK#">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="#A02#" alt="" />',
'      <h3>#TEXT#</h3>',
'      <h4>#A01#</h4>',
'    </a>',
'  </li>'))
,p_list_template_name=>'Vertical List with Subtext and Icon'
,p_theme_id=>26
,p_theme_class_id=>1
,p_list_template_before_rows=>'<ul class="largeLinkList">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>350772788423179111+wwv_flow_api.g_id_offset
,p_list_template_current=>'<li class="active"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Ordered List'
,p_theme_id=>26
,p_theme_class_id=>2
,p_list_template_before_rows=>'<ol class="uNumberedList">'
,p_list_template_after_rows=>'</ol>'
);
wwv_flow_api.create_list_template(
 p_id=>350772859286179111+wwv_flow_api.g_id_offset
,p_list_template_current=>'<li class="active"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Sidebar List'
,p_theme_id=>26
,p_theme_class_id=>19
,p_list_template_before_rows=>'<ul class="uVerticalSidebarList">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>350772926322179112+wwv_flow_api.g_id_offset
,p_list_template_current=>'<li class="active"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Unordered List with Bullets'
,p_theme_id=>26
,p_theme_class_id=>1
,p_list_template_before_rows=>'<ul class="uVerticalList">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>350773065294179112+wwv_flow_api.g_id_offset
,p_list_template_current=>'<li class="active"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Unordered List without Bullets'
,p_theme_id=>26
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="uVerticalList noBullets">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>350773132412179112+wwv_flow_api.g_id_offset
,p_list_template_current=>'<li class="#LIST_STATUS#"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /><span>#TEXT#</span></li>'
,p_list_template_noncurrent=>'<li class="#LIST_STATUS#"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /><span>#TEXT#</span></li>'
,p_list_template_name=>'Wizard Progress List - Vertical'
,p_theme_id=>26
,p_theme_class_id=>17
,p_list_template_before_rows=>'<div class="uVerticalProgressList" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#><ul>'
,p_list_template_after_rows=>'</ul></div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/report
begin
wwv_flow_api.create_row_template(
 p_id=>350770287945179109+wwv_flow_api.g_id_offset
,p_row_template_name=>'Borderless Report'
,p_row_template1=>'<td #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="uReportContainer uBorderlessReportContainer" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" summary="">',
'<tbody class="uReportPagination">',
'#TOP_PAGINATION#',
'</tbody>',
'<tbody class="uReportBody">',
'<tr><td>',
'<table summary="#REGION_TITLE#" class="uReport uReportBorderless">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</tbody>',
'</table>',
'</td>',
'</tr>',
'</tbody>',
'<tbody class="uReportPagination">',
'#PAGINATION#',
'</tbody>',
'</table>',
'<div class="uReportDownloadLinks">#EXTERNAL_LINK##CSV_LINK#</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_page_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT_SET# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_set_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS_SET#</a>'
,p_row_style_mouse_over=>'#F0F0F0'
,p_row_style_checked=>'#E8E8E8'
,p_theme_id=>26
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>350770287945179109+wwv_flow_api.g_id_offset
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>350770338779179110+wwv_flow_api.g_id_offset
,p_row_template_name=>'Comment Bubbles'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="#1#">',
'<div>',
'	<em>#2#</em>',
'	#3##4##5##6##7#',
'</div>',
'<span>',
'	#8# (#9#) #10#',
'</span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="commentBubbles">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="uPaginationTable">',
'#PAGINATION#',
'</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT#</a>'
,p_previous_page_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT_SET#</a>'
,p_previous_set_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS_SET#</a>'
,p_theme_id=>26
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>350770468388179110+wwv_flow_api.g_id_offset
,p_row_template_name=>'Fixed Headers'
,p_row_template1=>'<td #ALIGNMENT# headers="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="uReportContainer" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" summary="">',
'<tbody class="uReportPagination">',
'#TOP_PAGINATION#',
'</tbody>',
'<tbody class="uReportBody">',
'<tr><td>',
'<div class="uFixedHeadersContainer">',
'<table summary="#REGION_TITLE#" class="uReport uReportFixedHeaders">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</tbody>',
'</table>',
'</div>',
'</td>',
'</tr>',
'</tbody>',
'<tbody class="uReportPagination">',
'#PAGINATION#',
'</tbody>',
'</table>',
'<div class="uReportDownloadLinks">#EXTERNAL_LINK##CSV_LINK#</div>'))
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<thead>',
''))
,p_column_heading_template=>'<th #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>',
''))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_page_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT_SET# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_set_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS_SET#</a>'
,p_row_style_mouse_over=>'#F0F0F0'
,p_row_style_checked=>'#E8E8E8'
,p_theme_id=>26
,p_theme_class_id=>7
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>350770468388179110+wwv_flow_api.g_id_offset
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</tr>',
''))
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>350770570138179110+wwv_flow_api.g_id_offset
,p_row_template_name=>'Horizontal Border'
,p_row_template1=>'<td #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="uReportContainer" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" summary="">',
'<tbody class="uReportPagination">',
'#TOP_PAGINATION#',
'</tbody>',
'<tbody class="uReportBody">',
'<tr><td>',
'<table summary="#REGION_TITLE#" class="uReport uReportHorizontal">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</tbody>',
'</table>',
'</td>',
'</tr>',
'</tbody>',
'<tbody class="uReportPagination">',
'#PAGINATION#',
'</tbody>',
'</table>',
'<div class="uReportDownloadLinks">#EXTERNAL_LINK##CSV_LINK#</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_page_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT_SET# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_set_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS_SET#</a>'
,p_row_style_mouse_over=>'#F0F0F0'
,p_row_style_checked=>'#E8E8E8'
,p_theme_id=>26
,p_theme_class_id=>2
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>350770570138179110+wwv_flow_api.g_id_offset
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>350770643288179110+wwv_flow_api.g_id_offset
,p_row_template_name=>'One Column Unordered List'
,p_row_template1=>'<li>#COLUMN_VALUE#</li>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="uReportList" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" summary="">',
'<tbody class="uReportPagination">',
'#TOP_PAGINATION#',
'</tbody>',
'<tbody class="uReportBody">',
'<tr><td>',
'<ul class="uReportList">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'</td>',
'</tr>',
'</tbody>',
'<tbody class="uReportPagination">',
'#PAGINATION#',
'</tbody>',
'</table>',
'<div class="uReportDownloadLinks">#EXTERNAL_LINK##CSV_LINK#</div>'))
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_next_page_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT#</a>'
,p_previous_page_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT_SET#</a>'
,p_previous_set_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS_SET#</a>'
,p_theme_id=>26
,p_theme_class_id=>3
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>350770643288179110+wwv_flow_api.g_id_offset
,p_row_template_before_first=>'OMIT'
,p_row_template_after_last=>'OMIT'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>350770737705179110+wwv_flow_api.g_id_offset
,p_row_template_name=>'Search Results Report (SELECT link_text, link_target, detail1, detail2, last_modified)'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li>',
'<span class="title"><a href="#2#">#1#</a></span>',
'<span class="description"><span class="last_modified">#5#</span>#3#</span>',
'<span class="type">#4#</span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="sSearchResultsReport">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="uPaginationTable">',
'#PAGINATION#',
'</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT#</a>'
,p_previous_page_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT_SET#</a>'
,p_previous_set_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS_SET#</a>'
,p_theme_id=>26
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>350770809258179110+wwv_flow_api.g_id_offset
,p_row_template_name=>'Standard'
,p_row_template1=>'<td #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="uReportContainer" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" summary="">',
'<tbody class="uReportPagination">',
'#TOP_PAGINATION#',
'</tbody>',
'<tbody class="uReportBody">',
'<tr><td>',
'<table summary="#REGION_TITLE#" class="uReport uReportStandard">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</tbody>',
'</table>',
'</td>',
'</tr>',
'</tbody>',
'<tbody class="uReportPagination">',
'#PAGINATION#',
'</tbody>',
'</table>',
'<div class="uReportDownloadLinks">#EXTERNAL_LINK##CSV_LINK#</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_page_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT_SET# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_set_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS_SET#</a>'
,p_row_style_mouse_over=>'#F0F0F0'
,p_row_style_checked=>'#E8E8E8'
,p_theme_id=>26
,p_theme_class_id=>4
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>350770809258179110+wwv_flow_api.g_id_offset
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>350770969586179110+wwv_flow_api.g_id_offset
,p_row_template_name=>'Standard - Alternative'
,p_row_template1=>'<td #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template3=>'<td #ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="uOddRow">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="uReportContainer" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" summary="">',
'<tbody class="uReportPagination">',
'#TOP_PAGINATION#',
'</tbody>',
'<tbody class="uReportBody">',
'<tr><td>',
'<table summary="#REGION_TITLE#" class="uReport uReportAlternative">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</tbody>',
'</table>',
'</td>',
'</tr>',
'</tbody>',
'<tbody class="uReportPagination">',
'#PAGINATION#',
'</tbody>',
'</table>',
'<div class="uReportDownloadLinks">#EXTERNAL_LINK##CSV_LINK#</div>'))
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'ODD_ROW_NUMBERS'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_page_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT_SET# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_set_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS_SET#</a>'
,p_theme_id=>26
,p_theme_class_id=>5
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>350770969586179110+wwv_flow_api.g_id_offset
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</tr>',
''))
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>350771017111179110+wwv_flow_api.g_id_offset
,p_row_template_name=>'Two Column Portlet'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li>',
'  <span class="uValueHeading">',
'    #1#',
'  </span>',
'  <span class="uValue">',
'    #2#',
'  </span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="uValuePairs" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">'
,p_row_template_after_rows=>'</ul>'
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>26
,p_theme_class_id=>7
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>350771137626179110+wwv_flow_api.g_id_offset
,p_row_template_name=>'Value Attribute Pairs'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li>',
'  <span class="uValueHeading">',
'    #COLUMN_HEADER#',
'  </span>',
'  <span class="uValue">',
'    #COLUMN_VALUE#',
'  </span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="uValuePairs" #REPORT_ATTRIBUTES#>'
,p_row_template_after_rows=>'</ul>'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>26
,p_theme_class_id=>6
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>350771281363179110+wwv_flow_api.g_id_offset
,p_row_template_name=>'Value Attribute Pairs - Left Aligned'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li>',
'  <label>',
'    #COLUMN_HEADER#',
'  </label>',
'  <span>',
'    #COLUMN_VALUE#',
'  </span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="vapList tableBased" #REPORT_ATTRIBUTES# id="report_#REPORT_STATIC_ID#">'
,p_row_template_after_rows=>'</ul>'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>26
,p_theme_class_id=>6
,p_translate_this_template=>'N'
,p_row_template_comment=>'shrahman 03/12/2012 Making table based '
);
end;
/
prompt --application/shared_components/user_interface/templates/label
begin
wwv_flow_api.create_field_template(
 p_id=>350773214070179112+wwv_flow_api.g_id_offset
,p_template_name=>'Hidden label, read by screen reader'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" class="hideMeButHearMe">'
,p_template_body2=>'</label>'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#'
,p_theme_id=>26
,p_theme_class_id=>13
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>350773387584179112+wwv_flow_api.g_id_offset
,p_template_name=>'No Label'
,p_template_body1=>'<span class="uNoLabel">'
,p_template_body2=>'</span>'
,p_on_error_after_label=>'<span class="uLabelError">#ERROR_MESSAGE#</span>'
,p_theme_id=>26
,p_theme_class_id=>13
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>350773481339179112+wwv_flow_api.g_id_offset
,p_template_name=>'Optional'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" class="uOptional">'
,p_template_body2=>'</label>'
,p_on_error_after_label=>'<span class="uLabelError">#ERROR_MESSAGE#</span>'
,p_theme_id=>26
,p_theme_class_id=>3
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>350773530787179112+wwv_flow_api.g_id_offset
,p_template_name=>'Optional with help'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" class="uOptional"><a class="uHelpLink" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')">'
,p_template_body2=>'</a></label>'
,p_on_error_after_label=>'<span class="uLabelError">#ERROR_MESSAGE#</span>'
,p_theme_id=>26
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>350773638785179112+wwv_flow_api.g_id_offset
,p_template_name=>'Required'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" class="uRequired">'
,p_template_body2=>' <img src="#IMAGE_PREFIX#f_spacer.gif" alt="#VALUE_REQUIRED#" class="uAsterisk" /></label>'
,p_on_error_after_label=>'<span class="uLabelError">#ERROR_MESSAGE#</span>'
,p_theme_id=>26
,p_theme_class_id=>4
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>350773755364179112+wwv_flow_api.g_id_offset
,p_template_name=>'Required with help'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" class="uRequired"><a class="uHelpLink" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')">'
,p_template_body2=>'</a> <img src="#IMAGE_PREFIX#f_spacer.gif" alt="#VALUE_REQUIRED#" class="uAsterisk" /></label>'
,p_on_error_after_label=>'<span class="uLabelError">#ERROR_MESSAGE#</span>'
,p_theme_id=>26
,p_theme_class_id=>2
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb
begin
wwv_flow_api.create_menu_template(
 p_id=>350774911878179113+wwv_flow_api.g_id_offset
,p_name=>'Breadcrumb Menu'
,p_before_first=>'<ul>'
,p_current_page_option=>'<li class="active"><span>#NAME#</span></li> '
,p_non_current_page_option=>'<li><a href="#LINK#">#NAME#</a></li> '
,p_between_levels=>'<li class="uSeparator"><img src="#IMAGE_PREFIX#f_spacer.gif" class="uBreadcrumbSeparator" alt="" /></li> '
,p_after_last=>'</ul>'
,p_max_levels=>12
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>26
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
wwv_flow_api.create_menu_template(
 p_id=>350775024704179114+wwv_flow_api.g_id_offset
,p_name=>'Hierarchical Menu'
,p_before_first=>'<ul class="t1HierarchicalMenu">'
,p_current_page_option=>'<li class="t1current">#NAME#</li>'
,p_non_current_page_option=>'<li><a href="#LINK#">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>11
,p_start_with_node=>'CHILD_MENU'
,p_theme_id=>26
,p_theme_class_id=>2
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>350775474272179114+wwv_flow_api.g_id_offset
,p_popup_icon=>'#IMAGE_PREFIX#f_spacer.gif'
,p_popup_icon_attr=>'alt="#LIST_OF_VALUES#" title="#LIST_OF_VALUES#" class="uPopupLOVIcon"'
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if IE]><meta http-equiv="X-UA-Compatible" content="IE=edge" /><![endif]-->',
'<link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">  <link rel="stylesheet" href="#THEME_IMAGES#css/4_2.css?v=#APEX_VERSION#" type="text/css" media="all"/>',
'#THEME_CSS#'))
,p_page_body_attr=>'class="uPopUpLOV"'
,p_before_field_text=>'<div class="uActionBar">'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_filter_text_attr=>'class="searchField"'
,p_find_button_text=>'Search'
,p_find_button_attr=>'class="smallButton"'
,p_close_button_text=>'Close'
,p_close_button_attr=>'class="smallButton hotButton"'
,p_next_button_text=>'Next >'
,p_next_button_attr=>'class="smallButton"'
,p_prev_button_text=>'< Previous'
,p_prev_button_attr=>'class="smallButton"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'400'
,p_height=>'450'
,p_result_row_x_of_y=>'<div class="lovPagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>500
,p_before_result_set=>'<div class="lovLinks">'
,p_theme_id=>26
,p_theme_class_id=>1
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>350775104663179114+wwv_flow_api.g_id_offset
,p_cal_template_name=>'Calendar'
,p_day_of_week_format=>'<th valign="bottom" class="DayOfWeek">#IDAY#</th>'
,p_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="CalendarAlternative1Holder"> ',
' <tr>',
'   <td class="MonthTitle">#IMONTH# #YYYY#</td>',
' </tr>',
' <tr>',
' <td>'))
,p_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="0" class="CalendarAlternative1">'
,p_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table></td>',
'</tr>',
'</table>',
''))
,p_day_title_format=>'<div class="DayTitle">#DD#</div>'
,p_day_open_format=>'<td class="Day" valign="top" height="100" height="100">#TITLE_FORMAT##DATA#'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td valign="top" class="Today">#TITLE_FORMAT##DATA#'
,p_weekend_title_format=>'<div class="WeekendDayTitle">#DD#</div>'
,p_weekend_open_format=>'<td valign="top" class="WeekendDay">#TITLE_FORMAT##DATA#'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<div class="NonDayTitle">#DD#</div>'
,p_nonday_open_format=>'<td class="NonDay" valign="top">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="WeekCalendarAlternative1Holder">',
'<tr>',
'<td class="MonthTitle">#WTITLE#</td>',
'</tr>',
'<tr>',
'<td>'))
,p_weekly_day_of_week_format=>'<th class="DayOfWeek">#IDAY#<br>#MM#/#DD#</th>'
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="0" class="WeekCalendarAlternative1">'
,p_weekly_month_close_format=>'</table></td></tr></table>'
,p_weekly_day_open_format=>'<td class="Day" valign="top">'
,p_weekly_day_close_format=>'<br /></td>'
,p_weekly_today_open_format=>'<td class="Today" valign="top">'
,p_weekly_weekend_open_format=>'<td valign="top" class="NonDay">'
,p_weekly_weekend_close_format=>'<br /></td>'
,p_weekly_time_open_format=>'<th class="Hour">'
,p_weekly_time_close_format=>'<br /></th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th class="DayOfWeek">#IDAY# #DD#/#MM#</th>'
,p_daily_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="DayCalendarAlternative1Holder"> <tr><td class="MonthTitle">#IMONTH# #DD#, #YYYY#</td></tr><tr><td>',
''))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="0" class="DayCalendarAlternative1">'
,p_daily_month_close_format=>'</table></td> </tr> </table>'
,p_daily_day_open_format=>'<td valign="top" class="Day">'
,p_daily_day_close_format=>'<br /></td>'
,p_daily_today_open_format=>'<td valign="top" class="Today">'
,p_daily_time_open_format=>'<th class="Hour">'
,p_daily_time_close_format=>'<br /></th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'#DATA#'
,p_theme_id=>26
,p_theme_class_id=>1
);
wwv_flow_api.create_calendar_template(
 p_id=>350775238208179114+wwv_flow_api.g_id_offset
,p_cal_template_name=>'Calendar - Alternative'
,p_day_of_week_format=>'<th class="DayOfWeek">#IDAY#</th>'
,p_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="CalendarHolder"> ',
' <tr>',
'   <td class="MonthTitle">#IMONTH# #YYYY#</td>',
' </tr>',
' <tr>',
' <td>'))
,p_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="0" class="Calendar">'
,p_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table></td>',
'</tr>',
'</table>',
''))
,p_day_title_format=>'<div class="DayTitle">#DD#</div>'
,p_day_open_format=>'<td class="Day" valign="top">#TITLE_FORMAT##DATA#'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td valign="top" class="Today">#TITLE_FORMAT##DATA#'
,p_weekend_title_format=>'<div class="WeekendDayTitle">#DD#</div>'
,p_weekend_open_format=>'<td valign="top" class="WeekendDay">#TITLE_FORMAT##DATA#'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<div class="NonDayTitle">#DD#</div>'
,p_nonday_open_format=>'<td class="NonDay" valign="top">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="WeekCalendarHolder">',
'<tr>',
'<td class="MonthTitle" id="test">#WTITLE#</td>',
'</tr>',
'<tr>',
'<td>'))
,p_weekly_day_of_week_format=>'<th class="DayOfWeek">#IDAY#<br>#MM#/#DD#</th>'
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="0" class="WeekCalendar">'
,p_weekly_month_close_format=>'</table></td></tr></table>'
,p_weekly_day_open_format=>'<td class="Day" valign="top">'
,p_weekly_day_close_format=>'<br /></td>'
,p_weekly_today_open_format=>'<td class="Today" valign="top">'
,p_weekly_weekend_open_format=>'<td valign="top" class="NonDay">'
,p_weekly_weekend_close_format=>'<br /></td>'
,p_weekly_time_open_format=>'<th class="Hour">'
,p_weekly_time_close_format=>'<br /></th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th class="DayOfWeek">#IDAY# #DD#/#MM#</th>'
,p_daily_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>',
''))
,p_daily_month_open_format=>'<table border="0" cellpadding="2" cellspacing="0" summary="0" class="DayCalendar">'
,p_daily_month_close_format=>'</table></td> </tr> </table>'
,p_daily_day_open_format=>'<td valign="top" class="Day">'
,p_daily_day_close_format=>'<br /></td>'
,p_daily_today_open_format=>'<td valign="top" class="Today">'
,p_daily_time_open_format=>'<th class="Hour">'
,p_daily_time_close_format=>'<br /></th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'#DATA#'
,p_theme_id=>26
,p_theme_class_id=>2
);
wwv_flow_api.create_calendar_template(
 p_id=>350775336640179114+wwv_flow_api.g_id_offset
,p_cal_template_name=>'Small Calendar'
,p_day_of_week_format=>'<th scope="col">#DY#</th>'
,p_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="uCalendarSmall" summary="#IMONTH# #YYYY#">',
'  <caption>#IMONTH# #YYYY#</caption>'))
,p_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  </tbody>',
'</table>'))
,p_day_title_format=>'#DD#'
,p_day_open_format=>'<td>#TITLE_FORMAT##DATA#'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td class="today">#TITLE_FORMAT##DATA#'
,p_weekend_title_format=>'#DD#'
,p_weekend_open_format=>'<td class="weekend">#TITLE_FORMAT##DATA#'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'#DD#'
,p_nonday_open_format=>'<td class="inactive">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="SmallWeekCalendarHolder">',
'<tr>',
'<td class="MonthTitle" id="test">#WTITLE#</td>',
'</tr>',
'<tr>',
'<td>'))
,p_weekly_day_of_week_format=>'<th class="DayOfWeek">#DY#<br />#MM#/#DD#</th>'
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="0" class="SmallWeekCalendar">'
,p_weekly_month_close_format=>'</table></td></tr></table>'
,p_weekly_day_open_format=>'<td class="Day" valign="top"><div class="inner">'
,p_weekly_day_close_format=>'</div></td>'
,p_weekly_today_open_format=>'<td class="t1Today" valign="top"><div class="inner">'
,p_weekly_weekend_open_format=>'<td valign="top" class="NonDay"><div class="inner">'
,p_weekly_weekend_close_format=>'</div></td>'
,p_weekly_time_open_format=>'<th class="Hour">'
,p_weekly_time_close_format=>'<br /></th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th class="DayOfWeek">#DY# #DD#/#MM#</th>'
,p_daily_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="SmallDayCalendarHolder"> <tr> <td class="MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr><tr><td>',
''))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="0" class="SmallDayCalendar">'
,p_daily_month_close_format=>'</table></td></tr></table>'
,p_daily_day_open_format=>'<td valign="top" class="Day">'
,p_daily_day_close_format=>'<br /></td>'
,p_daily_today_open_format=>'<td valign="top" class="Today">'
,p_daily_time_open_format=>'<th class="Hour">'
,p_daily_time_close_format=>'<br /></th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'#DATA#'
,p_theme_id=>26
,p_theme_class_id=>3
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>350775559667179115+wwv_flow_api.g_id_offset
,p_theme_id=>26
,p_theme_name=>'Productivity Applications'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'T'
,p_is_locked=>false
,p_default_page_template=>350765694381179105+wwv_flow_api.g_id_offset
,p_default_dialog_template=>350758692324179102+wwv_flow_api.g_id_offset
,p_error_template=>350765194114179104+wwv_flow_api.g_id_offset
,p_printer_friendly_template=>350766198375179106+wwv_flow_api.g_id_offset
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>350764731956179103+wwv_flow_api.g_id_offset
,p_default_button_template=>350773866275179112+wwv_flow_api.g_id_offset
,p_default_region_template=>350769163011179109+wwv_flow_api.g_id_offset
,p_default_chart_template=>350767546305179108+wwv_flow_api.g_id_offset
,p_default_form_template=>350767859800179108+wwv_flow_api.g_id_offset
,p_default_reportr_template=>350769163011179109+wwv_flow_api.g_id_offset
,p_default_tabform_template=>350769163011179109+wwv_flow_api.g_id_offset
,p_default_wizard_template=>350769907648179109+wwv_flow_api.g_id_offset
,p_default_menur_template=>350767175131179107+wwv_flow_api.g_id_offset
,p_default_listr_template=>350767400895179107+wwv_flow_api.g_id_offset
,p_default_irr_template=>350768259637179108+wwv_flow_api.g_id_offset
,p_default_report_template=>350770809258179110+wwv_flow_api.g_id_offset
,p_default_label_template=>350773481339179112+wwv_flow_api.g_id_offset
,p_default_menu_template=>350774911878179113+wwv_flow_api.g_id_offset
,p_default_calendar_template=>350775104663179114+wwv_flow_api.g_id_offset
,p_default_list_template=>350772926322179112+wwv_flow_api.g_id_offset
,p_default_option_label=>350773530787179112+wwv_flow_api.g_id_offset
,p_default_required_label=>350773755364179112+wwv_flow_api.g_id_offset
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_file_prefix=>'#IMAGE_PREFIX#themes/theme_26/'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_display_points
begin
null;
end;
/
prompt --application/shared_components/logic/build_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/user_interface/shortcuts
begin
wwv_flow_api.create_shortcut(
 p_id=>358231756858783532+wwv_flow_api.g_id_offset
,p_shortcut_name=>'DELETE_CONFIRM_MSG'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_shortcut=>'Would you like to perform this delete action?'
);
end;
/
prompt --application/shared_components/security/authentications
begin
wwv_flow_api.create_authentication(
 p_id=>350775884714179116+wwv_flow_api.g_id_offset
,p_name=>'No Authentication'
,p_scheme_type=>'NATIVE_DAD'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/deployment/definition
begin
null;
end;
/
prompt --application/deployment/install
begin
null;
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_api.import_end;
commit;
end;
/
set verify on feedback on define on
prompt  ...done
