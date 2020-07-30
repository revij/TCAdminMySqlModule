BEGIN

	DECLARE @controllerExists BOOL;

    SELECT 
	
	@controllerExists = BOOL(tc_site_map WHERE `controller` LIKE 'MySql')
	
	IF @controllerExists
	
		BEGIN
		DELETE FROM tc_site_map WHERE `controller` LIKE 'MySql';
		END
	ELSE
	
		BEGIN
		INSERT INTO tc_site_map (page_id, module_id, parent_page_id, parent_page_module_id, category_id, url, mvc_url, controller, action, display_name, page_small_icon, panelbar_icon, show_in_sidebar, view_order, required_permissions, menu_required_permissions, page_manager, page_search_provider, cache_name) values (900, 'd3b2aa93-7e2b-4e0d-8080-67d14b2fa8a9', null, null, 2, '', '', 'MySql', 'Index', 'MySQL Manager', 'MenuIcons/Base/ServerComponents24x24.png', '', 1, 600, '({07405876-e8c2-4b24-a774-4ef57f596384,0,8})({d3b2aa93-7e2b-4e0d-8080-67d14b2fa8a9,5,0})({07405876-e8c2-4b24-a774-4ef57f596384,-1,64})({07405876-e8c2-4b24-a774-4ef57f596384,-1,2048})', '', null, '', null);
		END
END