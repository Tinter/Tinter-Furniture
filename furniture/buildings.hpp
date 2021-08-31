//Order matters, first entry found is the entry used
_validBuildings = [
  "Cargo_house_base_F",
  "Cargo_HQ_base_F",
  "Cargo_Tower_base_F",
  //Destroyed buildings must be above and present to prevent furniture spawning
  "Land_i_Garage_V1_dam_F",
  "Land_i_House_Big_01_V1_dam_F",
  "Land_i_House_Big_02_V1_dam_F",
  "Land_i_House_Small_01_V1_dam_F",
  "Land_i_House_Small_02_V1_dam_F",
  "Land_i_Shop_01_V1_dam_F",
  "Land_i_Shop_02_V1_dam_F",
  "Land_i_Stone_HouseBig_V1_dam_F",
  "Land_i_Stone_HouseSmall_V1_dam_F",
  "Land_i_Stone_Shed_V1_dam_F",
  "Land_u_Addon_01_V1_dam_F",
  "Land_u_House_Big_01_V1_dam_F",
  "Land_u_House_Big_02_V1_dam_F",
  "Land_u_House_Small_01_V1_dam_F",
  "Land_u_House_Small_02_V1_dam_F",
  "Land_u_Shop_01_V1_dam_F",
  "Land_u_Shop_02_V1_dam_F",
  "i_House_Big_01_b_base_F",
  "i_House_Big_02_b_base_F",
  "i_House_Small_01_b_base_F",
  "i_House_Small_02_b_base_F",
  "i_House_Small_02_c_base_F",
  "i_Shop_02_b_base_F",
  "i_Stone_House_Big_01_b_base_F",
  "i_Stone_Shed_01_b_base_F",
  "i_Stone_Shed_01_c_base_F",
  "Land_Airport_01_hangar_F",
  "Land_Airport_01_terminal_F",
  "Land_Airport_02_terminal_F",
  "Land_Airport_Tower_F",
  "Land_Addon_03mid_V1_ruins_F",
  "Land_Addon_03mid_V1_F",
  "Land_Barn_01_brown_F",
  "Land_Barn_01_brown_F",
  "Land_Barn_01_grey_F",
  "Land_Barn_01_grey_F",
  "Land_Barn_02_F",
  "Land_Barn_04_F",
  "Land_Barracks_03_F",
  "Land_Barracks_04_F",
  "Land_Bunker_01_big_F",
  "Land_Bunker_01_HQ_F",
  "Land_Bunker_01_small_F",
  "Land_Bunker_01_tall_F",
  "Land_BusStop_01_shelter_F",
  "Land_BusStop_02_shelter_F",
  "Land_Caravan_01_green_F",
  "Land_Caravan_01_rust_F",
  "Land_CarService_F",
  "Land_Chapel_Small_V1_F",
  "Land_Chapel_Small_V2_F",
  "Land_Chapel_V1_F",
  "Land_Chapel_V2_F",
  "Land_DeerStand_01_F",
  "Land_DeerStand_02_F",
  "Land_d_Addon_02_V1_F",
  "Land_d_House_Big_01_V1_F",
  "Land_d_House_Big_02_V1_F",
  "Land_d_House_Small_01_V1_F",
  "Land_d_House_Small_02_V1_F",
  "Land_d_Shop_01_V1_F",
  "Land_d_Shop_02_V1_F",
  "Land_d_Stone_HouseBig_V1_F",
  "Land_d_Stone_HouseSmall_V1_F",
  "Land_d_Stone_Shed_V1_F",
  "Land_FeedShack_01_F",
  "Land_FuelStation_01_shop_F",
  "Land_FuelStation_01_workshop_F",
  "Land_FuelStation_02_workshop_F",
  "Land_FuelStation_03_shop_F",
  "Land_FuelStation_Build_F",
  "Land_GarageOffice_01_F",
  "Land_GarageRow_01_large_F",
  "Land_GarageShelter_01_F",
  "Land_GH_House_2_F",
  "Land_Greenhouse_01_damaged_F",
  "Land_Greenhouse_01_F",
  "Land_HealthCenter_01_F",
  "Land_Hotel_01_F",
  "Land_Hotel_02_F",
  "Land_House_1B01_F",
  "Land_House_1W01_F",
  "Land_House_1W02_F",
  "Land_House_1W03_F",
  "Land_House_1W04_F",
  "Land_House_1W05_F",
  "Land_House_1W06_F",
  "Land_House_1W07_F",
  "Land_House_1W08_F",
  "Land_House_1W09_F",
  "Land_House_1W10_F",
  "Land_House_1W11_F",
  "Land_House_1W12_F",
  "Land_House_2B01_F",
  "Land_House_2B01_F",
  "Land_House_2B02_F",
  "Land_House_2B03_F",
  "Land_House_2B04_F",
  "Land_House_2W01_F",
  "Land_House_2W02_F",
  "Land_House_2W03_F",
  "Land_House_2W04_F",
  "Land_House_2W05_F",
  "Land_Barn_03_large_F",
  "Land_Barn_03_small_F",
  "Land_Cowshed_01_A_F",
  "Land_Cowshed_01_B_F",
  "Land_Cowshed_01_C_F",
  "Land_Factory_02_F",
  "Land_GarageRow_01_small_F",
  "Land_Sawmill_01_F",
  "Land_IndustrialShed_01_F",
  "Land_ControlTower_02_F",
  "Land_Barracks_06_F",
  "Land_Barracks_02_F",
  "Land_Barracks_05_F",
  "Land_ControlTower_01_F",
  "Land_GuardHouse_03_F",
  "Land_GuardTower_01_F",
  "Land_GuardTower_02_F",
  "Land_Radar_01_antenna_base_F",
  "Land_Radar_01_kitchen_F",
  "Land_ServiceHangar_01_L_F",
  "Land_ServiceHangar_01_R_F",
  "Land_Chapel_01_F",
  "Land_OrthodoxChurch_02_F",
  "Land_OrthodoxChurch_03_F",
  "Land_Church_05_F",
  "Land_PowerStation_01_F",
  "Land_Substation_01_F",
  "Land_Camp_House_01_brown_F",
  "Land_Shed_11_F",
  "Land_Shed_13_F",
  "Land_Shed_12_F",
  "Land_Shed_14_F",
  "Land_Shed_10_F",
  "Land_Shed_09_F",
  "Land_Workshop_05_F",
  "Land_Workshop_03_F",
  "Land_Workshop_04_F",
  "Land_Workshop_02_F",
  "Land_Workshop_01_F",
  "Land_GuardHouse_02_F",
  "Land_GuardBox_01_base_F",
  "Land_Chapel_02_base_F",
  "Land_CementWorks_01_base_F",
  "Land_Bunker_02_double_F",
  "Land_Bunker_02_light_double_F",
  "Land_Bunker_02_left_F",
  "Land_Bunker_02_light_left_F",
  "Land_Bunker_02_right_F",
  "Land_Bunker_02_light_right_F",
  "Land_Church_04_lightblue_F",
  "Land_Church_04_lightblue_damaged_F",
  "Land_Church_04_lightyellow_F",
  "Land_Church_04_lightyellow_damaged_F",
  "Land_Church_04_red_F",
  "Land_Church_04_red_damaged_F",
  "Land_Church_04_white_red_F",
  "Land_Church_04_white_red_damaged_F",
  "Land_Church_04_white_F",
  "Land_Church_04_white_damaged_F",
  "Land_Church_04_yellow_F",
  "Land_Church_04_yellow_damaged_F",
  "Land_House_Big_01_F",
  "Land_House_Big_02_F",
  "Land_House_Big_03_F",
  "Land_House_Big_04_F",
  "Land_House_Small_01_F",
  "Land_House_Small_02_F",
  "Land_House_Small_03_F",
  "Land_House_Small_04_F",
  "Land_House_Small_05_F",
  "Land_House_Small_06_F",
  "Land_i_Addon_02_b_white_F",
  "Land_i_Addon_03_V1_F",
  "Land_i_Addon_04_V1_F",
  "Land_i_Barracks_V1_F",
  "Land_i_Garage_V1_F",
  "Land_i_House_Big_01_V1_F",
  "Land_i_House_Big_02_V1_F",
  "Land_i_House_Small_01_V1_F",
  "Land_i_House_Small_02_V1_F",
  "Land_i_House_Small_03_V1_F",
  "Land_i_Shed_Ind_F",
  "Land_i_Shed_Ind_old_F",
  "Land_i_Shop_01_V1_F",
  "Land_i_Shop_02_V1_F",
  "Land_i_Stone_HouseBig_V1_F",
  "Land_i_Stone_HouseSmall_V1_F",
  "Land_i_Stone_Shed_V1_F",
  "Land_Kiosk_blueking_F",
  "Land_Medevac_house_V1_F",
  "Land_Metal_Shed_F",
  "Land_MilOffices_V1_F",
  "Land_Offices_01_V1_F",
  "Land_PoliceStation_01_F",
  "Land_Radar_01_HQ_F",
  "Land_Rail_Station_Big_F",
  "Land_Rail_Warehouse_Small_F",
  "Land_Research_house_V1_F",
  "Land_Research_HQ_F",
  "Land_School_01_F",
  "Land_Shed_02_F",
  "Land_Shed_08_brown_F",
  "Land_Shed_08_brown_F",
  "Land_Shed_08_grey_F",
  "Land_Shed_08_grey_F",
  "Land_Shop_City_01_F",
  "Land_Shop_City_02_F",
  "Land_Shop_City_03_F",
  "Land_Shop_City_05_F",
  "Land_Shop_City_06_F",
  "Land_Shop_City_07_F",
  "Land_Shop_Town_01_F",
  "Land_Slum_01_F",
  "Land_Slum_02_F",
  "Land_Slum_03_F",
  //Slum 3 must be above Slum 1 because for some reason it inherits from it
  "Land_Slum_House03_F",
  "Land_Slum_House01_F",
  "Land_Slum_House02_F",
  "Land_SM_01_shed_F",
  "Land_SM_01_shed_unfinished_F",
  "Land_Supermarket_01_malden_F",
  "Land_Unfinished_Building_01_F",
  "Land_Unfinished_Building_02_F",
  "Land_u_Addon_01_V1_F",
  "Land_u_Addon_02_V1_F",
  "Land_u_Shed_Ind_F",
  "Land_VillageStore_01_F",
  "Land_Warehouse_03_F",
  "Land_WIP_F",
  //Glob Mob buildings
  "land_gm_euro_church_01",
  "land_gm_euro_church_01_win",
  "land_gm_euro_church_02",
  "land_gm_euro_church_02_win",
  "land_gm_euro_dest_01",
  "land_gm_euro_dest_01_win",
  "land_gm_euro_factory_01_01",
  "land_gm_euro_factory_01_01_win",
  "land_gm_euro_factory_01_02",
  "land_gm_euro_factory_01_02_win",
  "land_gm_euro_factory_02",
  "land_gm_euro_factory_02_win",
  "land_gm_euro_farmhouse_01",
  "land_gm_euro_farmhouse_01_win",
  "land_gm_euro_farmhouse_02",
  "land_gm_euro_farmhouse_02_win",
  "land_gm_euro_farmhouse_03",
  "land_gm_euro_farmhouse_03_win",
  "land_gm_euro_fuelstation_01_w",
  "land_gm_euro_fuelstation_01_w_win",
  "land_gm_euro_gardenshed_02",
  "land_gm_euro_gardenshed_03_01",
  "land_gm_euro_gardenshed_04",
  "land_gm_euro_gardenshed_05",
  "land_gm_euro_house_01_d",
  "land_gm_euro_house_01_d_win",
  "land_gm_euro_house_01_e",
  "land_gm_euro_house_01_e_win",
  "land_gm_euro_house_01_w",
  "land_gm_euro_house_01_w_win",
  "land_gm_euro_house_02_d",
  "land_gm_euro_house_02_d_win",
  "land_gm_euro_house_02_e",
  "land_gm_euro_house_02_e_win",
  "land_gm_euro_house_02_w",
  "land_gm_euro_house_02_w_win",
  "land_gm_euro_house_03_e",
  "land_gm_euro_house_03_e_win",
  "land_gm_euro_house_03_w",
  "land_gm_euro_house_03_w_win",
  "land_gm_euro_house_04_d",
  "land_gm_euro_house_04_d_win",
  "land_gm_euro_house_04_e",
  "land_gm_euro_house_04_e_win",
  "land_gm_euro_house_04_w",
  "land_gm_euro_house_04_w_win",
  "land_gm_euro_house_05_d",
  "land_gm_euro_house_05_d_win",
  "land_gm_euro_house_05_e",
  "land_gm_euro_house_05_e_win",
  "land_gm_euro_house_05_w",
  "land_gm_euro_house_05_w_win",
  "land_gm_euro_house_06_d",
  "land_gm_euro_house_06_d_win",
  "land_gm_euro_house_06_e",
  "land_gm_euro_house_06_e_win",
  "land_gm_euro_house_06_w",
  "land_gm_euro_house_06_w_win",
  "land_gm_euro_house_07_d",
  "land_gm_euro_house_07_d_win",
  "land_gm_euro_house_07_e",
  "land_gm_euro_house_07_e_win",
  "land_gm_euro_house_07_w",
  "land_gm_euro_house_07_w_win",
  "land_gm_euro_house_08_d",
  "land_gm_euro_house_08_d_win",
  "land_gm_euro_house_08_e",
  "land_gm_euro_house_08_e_win",
  "land_gm_euro_house_08_w",
  "land_gm_euro_house_08_w_win",
  "land_gm_euro_house_09_d",
  "land_gm_euro_house_09_d_win",
  "land_gm_euro_house_09_e",
  "land_gm_euro_house_09_e_win",
  "land_gm_euro_house_09_w",
  "land_gm_euro_house_09_w_win",
  "land_gm_euro_house_10_d",
  "land_gm_euro_house_10_d_win",
  "land_gm_euro_house_10_e",
  "land_gm_euro_house_10_e_win",
  "land_gm_euro_house_10_w",
  "land_gm_euro_house_10_w_win",
  "land_gm_euro_house_11_d",
  "land_gm_euro_house_11_d_win",
  "land_gm_euro_house_11_e",
  "land_gm_euro_house_11_e_win",
  "land_gm_euro_house_11_w",
  "land_gm_euro_house_11_w_win",
  "land_gm_euro_house_12_d",
  "land_gm_euro_house_12_d_win",
  "land_gm_euro_house_12_e",
  "land_gm_euro_house_12_e_win",
  "land_gm_euro_house_12_w",
  "land_gm_euro_house_12_w_win",
  "land_gm_euro_house_13_d",
  "land_gm_euro_house_13_d_win",
  "land_gm_euro_house_13_e",
  "land_gm_euro_house_13_e_win",
  "land_gm_euro_house_13_w",
  "land_gm_euro_house_13_w_win",
  "land_gm_euro_misc_garage_01_01",
  "land_gm_euro_misc_garage_01_01_win",
  "land_gm_euro_misc_garage_01_02",
  "land_gm_euro_misc_garage_01_02_win",
  "land_gm_euro_misc_garage_02",
  "land_gm_euro_misc_garage_02_win",
  "land_gm_euro_misc_garage_03",
  "land_gm_euro_misc_garage_03_win",
  "land_gm_euro_misc_garage_04",
  "land_gm_euro_misc_garage_04_win",
  "land_gm_euro_misc_kiosk_01",
  "land_gm_euro_misc_kiosk_01_win",
  "land_gm_euro_office_01",
  "land_gm_euro_office_01_win",
  "land_gm_euro_office_02",
  "land_gm_euro_office_02_win",
  "land_gm_euro_office_03",
  "land_gm_euro_office_03_win",
  "land_gm_euro_pub_01",
  "land_gm_euro_pub_01_win",
  "land_gm_euro_pub_02",
  "land_gm_euro_pub_02_win",
  "land_gm_euro_shed_01",
  "land_gm_euro_shed_01_win",
  "land_gm_euro_shed_03",
  "land_gm_euro_shed_03_win",
  "land_gm_euro_shed_04",
  "land_gm_euro_shed_04_win",
  "land_gm_euro_shed_05",
  "land_gm_euro_shed_05_win",
  "land_gm_euro_shop_01_w",
  "land_gm_euro_shop_01_w_win",
  "land_gm_euro_shop_02_e",
  "land_gm_euro_shop_02_e_win",
  "land_gm_euro_shop_02_w",
  "land_gm_euro_shop_02_w_win",
  //Buildings used on Rosche
  "Land_WL_House_01_A",
  "Land_WL_House_02_A",
  "Land_WL_House_03_A",
  "Land_WL_House_04_A",
  //Unique Cam Lao Nam buildings
  "Land_vn_ind_vysypka",
  "Land_vn_army_hut_int",
  "Land_vn_army_hut2_int",
  "Land_vn_army_hut3_long_int",
  "Land_vn_army_hut_storrage",
  "Land_vn_hlaska",
  "Land_vn_quonset_01",
  "Land_vn_bar_01",
  "Land_vn_mil_barracks_i_ep1",
  "Land_vn_radar_01_hq_f",
  "Land_vn_strazni_vez",
  "Land_vn_hut_mont_02",
  "Land_vn_hut_mont_03",
  "Land_vn_hut_mont_04",
  "Land_vn_hut_mont_05",
  "Land_vn_hut_mont_01",
  "Land_vn_hut_river_02",
  "Land_vn_hut_river_03",
  "Land_vn_hut_river_01",
  "Land_vn_a_hospital",
  "Land_vn_houseb_tenement",
  "Land_vn_a_office01",
  "Land_vn_house_c_1_v2_ep1",
  "Land_vn_house_c_3_ep1",
  "Land_vn_house_c_9_ep1",
  "Land_vn_house_c_11_ep1",
  "Land_vn_house_c_12_ep1",
  "Land_vn_housev2_04_interier",
  "Land_vn_slum_03_01_f",
  "Land_vn_barracks_02",
  "Land_vn_barracks_02_01",
  "Land_vn_barracks_03_01",
  "Land_vn_barracks_03_02",
  "Land_vn_barracks_03_03",
  "Land_vn_barracks_03_04",
  "Land_vn_barracks_04_01",
  "Land_vn_barracks_04_02",
  "Land_vn_barracks_04",
  "Land_vn_barracks_01",
  "Land_vn_barracks_03",
  "Land_vn_barracks_01_camo_f",
  "Land_vn_guardhouse_03",
  "Land_vn_guardhouse_02",
  "Land_vn_guardhouse_01",
  "Land_vn_hootch_01_01",
  "Land_vn_hootch_01_02",
  "Land_vn_hootch_01_03",
  "Land_vn_hootch_01_11",
  "Land_vn_hootch_01_12",
  "Land_vn_hootch_01_13",
  "Land_vn_hootch_02_01",
  "Land_vn_hootch_02_02",
  "Land_vn_hootch_02_03",
  "Land_vn_hootch_02_11",
  "Land_vn_hootch_02",
  "Land_vn_hootch_01",
  "Land_vn_hut_tower_02",
  "Land_vn_hut_tower_03",
  "Land_vn_hut_tower_01",
  "Land_vn_hut_village_01",
  "Land_vn_hut_village_02",
  "Land_vn_hut_02",
  "Land_vn_hut_03",
  "Land_vn_hut_04",
  "Land_vn_hut_05",
  "Land_vn_hut_06",
  "Land_vn_hut_07",
  "Land_vn_hut_08",
  "Land_vn_hut_01",
  "Land_vn_quonset_02_01",
  "Land_vn_school_01_01_f",
  "Land_vn_tent_01_02",
  "Land_vn_tent_01_03",
  "Land_vn_tent_01_04",
  "Land_vn_tent_02_01",
  "Land_vn_tent_02_02",
  "Land_vn_tent_02_03",
  "Land_vn_tent_02_04",
  "Land_vn_tent_01_01",
  "Land_vn_tent_mash_01",
  "Land_vn_tent_mash_01_01",
  "Land_vn_tent_mash_01_02",
  "Land_vn_tent_mash_01_03",
  "Land_vn_tent_mash_01_04",
  "Land_vn_tent_mash_02_01",
  "Land_vn_tent_mash_02_02",
  "Land_vn_tent_mash_02_03",
  "Land_vn_tent_mash_02_04",
  "Land_vn_latrine_01",
  //Generic Cam Lao Nam buildings, thank you for copying all the buildings...
  "Land_vn_airport_01_controltower_f",
  "Land_vn_airport_02_controltower_f",
  "Land_vn_airport_02_terminal_f",
  "Land_vn_airport_01_terminal_f",
  "Land_vn_airport_01_hangar_f",
  "Land_vn_cementworks_01_base_f",
  "Land_vn_factory_02_f",
  "Land_vn_garagerow_01_large_f",
  "Land_vn_i_garage_v1_f",
  "Land_vn_garagerow_01_small_f",
  "Land_vn_garageoffice_01_f",
  "Land_vn_metal_shed_f",
  "Land_vn_u_addon_02_v1_f",
  "Land_vn_i_shed_ind_f",
  "Land_vn_sm_01_shed_f",
  "Land_vn_i_addon_03_v1_f",
  "Land_vn_i_addon_03mid_v1_f",
  "Land_vn_i_addon_04_v1_f",
  "Land_vn_u_addon_01_v1_f",
  "Land_vn_industrialshed_01_f",
  "Land_vn_i_shed_ind_old_f",
  "Land_vn_warehouse_03_f",
  "Land_vn_workshop_05_f",
  "Land_vn_workshop_03_f",
  "Land_vn_workshop_04_f",
  "Land_vn_workshop_02_f",
  "Land_vn_workshop_01_f",
  "Land_vn_i_barracks_v1_f",
  "Land_vn_barracks_01_dilapidated_f",
  "Land_vn_barracks_06_f",
  "Land_vn_i_barracks_v1_f",
  "Land_vn_barracks_02_f",
  "Land_vn_barracks_03_f",
  "Land_vn_barracks_04_f",
  "Land_vn_barracks_05_f",
  "Land_vn_controltower_01_f",
  "Land_vn_guardbox_01_base_f",
  "Land_vn_guardhouse_02_f",
  "Land_vn_guardhouse_03_f",
  "Land_vn_guardtower_01_f",
  "Land_vn_radar_01_kitchen_f",
  "Land_vn_gh_house_2_f",
  "Land_vn_shop_town_01_f", 
  "Land_vn_house_small_01_f",
  "Land_vn_house_small_02_f",
  "Land_vn_house_small_03_f",
  "Land_vn_house_small_04_f",
  "Land_vn_house_small_05_f",
  "Land_vn_house_small_06_f",
  "Land_vn_house_big_01_f",
  "Land_vn_house_big_02_f",
  "Land_vn_house_big_03_f",
  "Land_vn_house_big_04_f",
  "Land_vn_shop_city_01_f",
  "Land_vn_shop_city_02_f",
  "Land_vn_shed_02_f",
  "Land_vn_slum_01_f",
  "Land_vn_slum_02_f",
  "Land_vn_slum_03_f",
  "Land_vn_hotel_01_f",
  "Land_vn_hotel_02_f",
  "Land_vn_garageshelter_01_f",
  "Land_vn_shop_city_03_f",
  "Land_vn_shop_city_06_f",
  "Land_vn_school_01_f",
  "Land_vn_slum_house03_f",
  "Land_vn_slum_house01_f",
  "Land_vn_slum_house02_f",
  "Land_vn_supermarket_01_f",
  "Land_vn_unfinished_building_01_f",
  "Land_vn_unfinished_building_02_f",
  "Land_vn_wip_f"
];

tint_translationNamespace = [] call CBA_fnc_createNamespace;
tint_translationNamespace setVariable ["Land_i_House_Small_01_V1_F", "i_House_Small_01_b_base_F"];
tint_translationNamespace setVariable ["i_House_Small_02_c_base_F", "i_House_Small_02_b_base_F"];
tint_translationNamespace setVariable ["Land_i_House_Big_01_V1_F", "i_House_Big_01_b_base_F"];
tint_translationNamespace setVariable ["Land_i_House_Big_02_V1_F", "i_House_Big_02_b_base_F"];
tint_translationNamespace setVariable ["Land_i_Shop_02_V1_F", "i_Shop_02_b_base_F"];
tint_translationNamespace setVariable ["Land_i_Stone_HouseBig_V1_F", "i_Stone_House_Big_01_b_base_F"];
tint_translationNamespace setVariable ["i_Stone_Shed_01_c_base_F", "i_Stone_Shed_01_b_base_F"];
tint_translationNamespace setVariable ["Land_Barn_01_brown_F", "Land_Barn_01_grey_F"];
tint_translationNamespace setVariable ["Land_Shed_08_brown_F", "Land_Shed_08_grey_F"];
tint_translationNamespace setVariable ["Land_Caravan_01_rust_F", "Land_Caravan_01_green_F"];
tint_translationNamespace setVariable ["Land_Greenhouse_01_damaged_F", "Land_Greenhouse_01_F"];
tint_translationNamespace setVariable ["Land_i_Shed_Ind_old_F", "Land_i_Shed_Ind_F"];
tint_translationNamespace setVariable ["Land_SM_01_shed_F", "Land_i_Shed_Ind_F"];
tint_translationNamespace setVariable ["Land_Chapel_V2_F", "Land_Chapel_V1_F"];
tint_translationNamespace setVariable ["Land_Bunker_02_light_double_F", "Land_Bunker_02_double_F"];
tint_translationNamespace setVariable ["Land_Bunker_02_light_left_F", "Land_Bunker_02_left_F"];
tint_translationNamespace setVariable ["Land_Bunker_02_light_right_F", "Land_Bunker_02_right_F"];
tint_translationNamespace setVariable ["Land_Church_04_lightblue_damaged_F", "Land_Church_04_lightblue_F"];
tint_translationNamespace setVariable ["Land_Church_04_lightyellow_F", "Land_Church_04_lightblue_F"];
tint_translationNamespace setVariable ["Land_Church_04_lightyellow_damaged_F", "Land_Church_04_lightblue_F"];
tint_translationNamespace setVariable ["Land_Church_04_red_F", "Land_Church_04_lightblue_F"];
tint_translationNamespace setVariable ["Land_Church_04_red_damaged_F", "Land_Church_04_lightblue_F"];
tint_translationNamespace setVariable ["Land_Church_04_white_red_F", "Land_Church_04_lightblue_F"];
tint_translationNamespace setVariable ["Land_Church_04_white_red_damaged_F", "Land_Church_04_lightblue_F"];
tint_translationNamespace setVariable ["Land_Church_04_white_F", "Land_Church_04_lightblue_F"];
tint_translationNamespace setVariable ["Land_Church_04_white_damaged_F", "Land_Church_04_lightblue_F"];
tint_translationNamespace setVariable ["Land_Church_04_yellow_F", "Land_Church_04_lightblue_F"];
tint_translationNamespace setVariable ["Land_Church_04_yellow_damaged_F", "Land_Church_04_lightblue_F"];
tint_translationNamespace setVariable ["land_gm_euro_barracks_01_win", "land_gm_euro_barracks_01"];
tint_translationNamespace setVariable ["land_gm_euro_barracks_02_win", "land_gm_euro_barracks_02"];
tint_translationNamespace setVariable ["land_gm_euro_church_01_win", "land_gm_euro_church_01"];
tint_translationNamespace setVariable ["land_gm_euro_church_02_win", "land_gm_euro_church_02"];
tint_translationNamespace setVariable ["land_gm_euro_dest_01_win", "land_gm_euro_dest_01"];
tint_translationNamespace setVariable ["land_gm_euro_factory_01_01_win", "land_gm_euro_factory_01_01"];
tint_translationNamespace setVariable ["land_gm_euro_factory_01_02", "land_gm_euro_factory_01_01"];
tint_translationNamespace setVariable ["land_gm_euro_factory_01_02_win", "land_gm_euro_factory_01_01"];
tint_translationNamespace setVariable ["land_gm_euro_factory_02_win", "land_gm_euro_factory_02"];
tint_translationNamespace setVariable ["land_gm_euro_farmhouse_01_win", "land_gm_euro_farmhouse_01"];
tint_translationNamespace setVariable ["land_gm_euro_farmhouse_02_win", "land_gm_euro_farmhouse_02"];
tint_translationNamespace setVariable ["land_gm_euro_farmhouse_03_win", "land_gm_euro_farmhouse_03"];
tint_translationNamespace setVariable ["land_gm_euro_fuelstation_01_w_win", "land_gm_euro_fuelstation_01_w"];
tint_translationNamespace setVariable ["land_gm_euro_house_01_d_win", "land_gm_euro_house_01_d"];
tint_translationNamespace setVariable ["land_gm_euro_house_01_e", "land_gm_euro_house_01_d"];
tint_translationNamespace setVariable ["land_gm_euro_house_01_e_win", "land_gm_euro_house_01_d"];
tint_translationNamespace setVariable ["land_gm_euro_house_01_w", "land_gm_euro_house_01_d"];
tint_translationNamespace setVariable ["land_gm_euro_house_01_w_win", "land_gm_euro_house_01_d"];
tint_translationNamespace setVariable ["land_gm_euro_house_02_d_win", "land_gm_euro_house_02_d"];
tint_translationNamespace setVariable ["land_gm_euro_house_02_e", "land_gm_euro_house_02_d"];
tint_translationNamespace setVariable ["land_gm_euro_house_02_e_win", "land_gm_euro_house_02_d"];
tint_translationNamespace setVariable ["land_gm_euro_house_02_w", "land_gm_euro_house_02_d"];
tint_translationNamespace setVariable ["land_gm_euro_house_02_w_win", "land_gm_euro_house_02_d"];
tint_translationNamespace setVariable ["land_gm_euro_house_03_e_win", "land_gm_euro_house_03_e"];
tint_translationNamespace setVariable ["land_gm_euro_house_03_w", "land_gm_euro_house_03_e"];
tint_translationNamespace setVariable ["land_gm_euro_house_03_w_win", "land_gm_euro_house_03_e"];
tint_translationNamespace setVariable ["land_gm_euro_house_04_d_win", "land_gm_euro_house_04_d"];
tint_translationNamespace setVariable ["land_gm_euro_house_04_e", "land_gm_euro_house_04_d"];
tint_translationNamespace setVariable ["land_gm_euro_house_04_e_win", "land_gm_euro_house_04_d"];
tint_translationNamespace setVariable ["land_gm_euro_house_04_w", "land_gm_euro_house_04_d"];
tint_translationNamespace setVariable ["land_gm_euro_house_04_w_win", "land_gm_euro_house_04_d"];
tint_translationNamespace setVariable ["land_gm_euro_house_05_d_win", "land_gm_euro_house_05_d"];
tint_translationNamespace setVariable ["land_gm_euro_house_05_e", "land_gm_euro_house_05_d"];
tint_translationNamespace setVariable ["land_gm_euro_house_05_e_win", "land_gm_euro_house_05_d"];
tint_translationNamespace setVariable ["land_gm_euro_house_05_w", "land_gm_euro_house_05_d"];
tint_translationNamespace setVariable ["land_gm_euro_house_05_w_win", "land_gm_euro_house_05_d"];
tint_translationNamespace setVariable ["land_gm_euro_house_06_d_win", "land_gm_euro_house_06_d"];
tint_translationNamespace setVariable ["land_gm_euro_house_06_e", "land_gm_euro_house_06_d"];
tint_translationNamespace setVariable ["land_gm_euro_house_06_e_win", "land_gm_euro_house_06_d"];
tint_translationNamespace setVariable ["land_gm_euro_house_06_w", "land_gm_euro_house_06_d"];
tint_translationNamespace setVariable ["land_gm_euro_house_06_w_win", "land_gm_euro_house_06_d"];
tint_translationNamespace setVariable ["land_gm_euro_house_07_d_win", "land_gm_euro_house_07_d"];
tint_translationNamespace setVariable ["land_gm_euro_house_07_e", "land_gm_euro_house_07_d"];
tint_translationNamespace setVariable ["land_gm_euro_house_07_e_win", "land_gm_euro_house_07_d"];
tint_translationNamespace setVariable ["land_gm_euro_house_07_w", "land_gm_euro_house_07_d"];
tint_translationNamespace setVariable ["land_gm_euro_house_07_w_win", "land_gm_euro_house_07_d"];
tint_translationNamespace setVariable ["land_gm_euro_house_08_d_win", "land_gm_euro_house_08_d"];
tint_translationNamespace setVariable ["land_gm_euro_house_08_e", "land_gm_euro_house_08_d"];
tint_translationNamespace setVariable ["land_gm_euro_house_08_e_win", "land_gm_euro_house_08_d"];
tint_translationNamespace setVariable ["land_gm_euro_house_08_w", "land_gm_euro_house_08_d"];
tint_translationNamespace setVariable ["land_gm_euro_house_08_w_win", "land_gm_euro_house_08_d"];
tint_translationNamespace setVariable ["land_gm_euro_house_09_d_win", "land_gm_euro_house_09_d"];
tint_translationNamespace setVariable ["land_gm_euro_house_09_e", "land_gm_euro_house_09_d"];
tint_translationNamespace setVariable ["land_gm_euro_house_09_e_win", "land_gm_euro_house_09_d"];
tint_translationNamespace setVariable ["land_gm_euro_house_09_w", "land_gm_euro_house_09_d"];
tint_translationNamespace setVariable ["land_gm_euro_house_09_w_win", "land_gm_euro_house_09_d"];
tint_translationNamespace setVariable ["land_gm_euro_house_10_d_win", "land_gm_euro_house_10_d"];
tint_translationNamespace setVariable ["land_gm_euro_house_10_e", "land_gm_euro_house_10_d"];
tint_translationNamespace setVariable ["land_gm_euro_house_10_e_win", "land_gm_euro_house_10_d"];
tint_translationNamespace setVariable ["land_gm_euro_house_10_w", "land_gm_euro_house_10_d"];
tint_translationNamespace setVariable ["land_gm_euro_house_10_w_win", "land_gm_euro_house_10_d"];
tint_translationNamespace setVariable ["land_gm_euro_house_11_d_win", "land_gm_euro_house_11_d"];
tint_translationNamespace setVariable ["land_gm_euro_house_11_e", "land_gm_euro_house_11_d"];
tint_translationNamespace setVariable ["land_gm_euro_house_11_e_win", "land_gm_euro_house_11_d"];
tint_translationNamespace setVariable ["land_gm_euro_house_11_w", "land_gm_euro_house_11_d"];
tint_translationNamespace setVariable ["land_gm_euro_house_11_w_win", "land_gm_euro_house_11_d"];
tint_translationNamespace setVariable ["land_gm_euro_house_12_d_win", "land_gm_euro_house_12_d"];
tint_translationNamespace setVariable ["land_gm_euro_house_12_e", "land_gm_euro_house_12_d"];
tint_translationNamespace setVariable ["land_gm_euro_house_12_e_win", "land_gm_euro_house_12_d"];
tint_translationNamespace setVariable ["land_gm_euro_house_12_w", "land_gm_euro_house_12_d"];
tint_translationNamespace setVariable ["land_gm_euro_house_12_w_win", "land_gm_euro_house_12_d"];
tint_translationNamespace setVariable ["land_gm_euro_house_13_d_win", "land_gm_euro_house_13_d"];
tint_translationNamespace setVariable ["land_gm_euro_house_13_e", "land_gm_euro_house_13_d"];
tint_translationNamespace setVariable ["land_gm_euro_house_13_e_win", "land_gm_euro_house_13_d"];
tint_translationNamespace setVariable ["land_gm_euro_house_13_w", "land_gm_euro_house_13_d"];
tint_translationNamespace setVariable ["land_gm_euro_house_13_w_win", "land_gm_euro_house_13_d"];
tint_translationNamespace setVariable ["land_gm_euro_misc_garage_01_01_win", "land_gm_euro_misc_garage_01_01"];
tint_translationNamespace setVariable ["land_gm_euro_misc_garage_01_02", "land_gm_euro_misc_garage_01_01"];
tint_translationNamespace setVariable ["land_gm_euro_misc_garage_01_02_win", "land_gm_euro_misc_garage_01_01"];
tint_translationNamespace setVariable ["land_gm_euro_misc_garage_02_win", "land_gm_euro_misc_garage_02"];
tint_translationNamespace setVariable ["land_gm_euro_misc_garage_03_win", "land_gm_euro_misc_garage_03"];
tint_translationNamespace setVariable ["land_gm_euro_misc_garage_04_win", "land_gm_euro_misc_garage_04"];
tint_translationNamespace setVariable ["land_gm_euro_misc_kiosk_01_win", "land_gm_euro_misc_kiosk_01"];
tint_translationNamespace setVariable ["land_gm_euro_office_01_win", "land_gm_euro_office_01"];
tint_translationNamespace setVariable ["land_gm_euro_office_02_win", "land_gm_euro_office_02"];
tint_translationNamespace setVariable ["land_gm_euro_office_03_win", "land_gm_euro_office_03"];
tint_translationNamespace setVariable ["land_gm_euro_pub_01_win", "land_gm_euro_pub_01"];
tint_translationNamespace setVariable ["land_gm_euro_pub_02_win", "land_gm_euro_pub_02"];
tint_translationNamespace setVariable ["land_gm_euro_shed_01_win", "land_gm_euro_shed_01"];
tint_translationNamespace setVariable ["land_gm_euro_shed_03_win", "land_gm_euro_shed_03"];
tint_translationNamespace setVariable ["land_gm_euro_shed_04_win", "land_gm_euro_shed_04"];
tint_translationNamespace setVariable ["land_gm_euro_shed_05_win", "land_gm_euro_shed_05"];
tint_translationNamespace setVariable ["land_gm_euro_shop_01_w_win", "land_gm_euro_shop_01_w"];
tint_translationNamespace setVariable ["land_gm_euro_shop_02_e_win", "land_gm_euro_shop_02_e"];
tint_translationNamespace setVariable ["land_gm_euro_shop_02_w", "land_gm_euro_shop_02_e"];
tint_translationNamespace setVariable ["land_gm_euro_shop_02_w_win", "land_gm_euro_shop_02_e"];
tint_translationNamespace setVariable ["Land_vn_airport_01_controltower_f", "Land_Airport_01_controlTower_F"];
tint_translationNamespace setVariable ["Land_vn_airport_02_controltower_f", "Land_airport_02_controltower_f"];
tint_translationNamespace setVariable ["Land_vn_airport_02_terminal_f", "Land_airport_02_terminal_f"];
tint_translationNamespace setVariable ["Land_vn_airport_01_terminal_f", "Land_airport_01_terminal_f"];
tint_translationNamespace setVariable ["Land_vn_airport_01_hangar_f", "Land_airport_01_hangar_f"];
tint_translationNamespace setVariable ["Land_vn_cementworks_01_base_f", "Land_CementWorks_01_base_F"];
tint_translationNamespace setVariable ["Land_vn_factory_02_f", "Land_factory_02_f"];
tint_translationNamespace setVariable ["Land_vn_garagerow_01_large_f", "Land_GarageRow_01_large_F"];
tint_translationNamespace setVariable ["Land_vn_i_garage_v1_f", "Land_i_Garage_V1_F"];
tint_translationNamespace setVariable ["Land_vn_garagerow_01_small_f", "Land_GarageRow_01_small_F"];
tint_translationNamespace setVariable ["Land_vn_garageoffice_01_f", "Land_GarageOffice_01_F"];
tint_translationNamespace setVariable ["Land_vn_metal_shed_f", "Land_Metal_Shed_F"];
tint_translationNamespace setVariable ["Land_vn_u_addon_02_v1_f", "Land_u_Addon_02_V1_F"];
tint_translationNamespace setVariable ["Land_vn_i_shed_ind_f", "Land_i_Shed_Ind_F"];
tint_translationNamespace setVariable ["Land_vn_sm_01_shed_f", "Land_i_Shed_Ind_F"];
tint_translationNamespace setVariable ["Land_vn_i_addon_03_v1_f", "Land_i_Addon_03_V1_F"];
tint_translationNamespace setVariable ["Land_vn_i_addon_03mid_v1_f", "Land_Addon_03mid_V1_F"];
tint_translationNamespace setVariable ["Land_vn_i_addon_04_v1_f", "Land_i_Addon_04_V1_F"];
tint_translationNamespace setVariable ["Land_vn_u_addon_01_v1_f", "Land_u_Addon_01_V1_F"];
tint_translationNamespace setVariable ["Land_vn_industrialshed_01_f", "Land_IndustrialShed_01_F"];
tint_translationNamespace setVariable ["Land_vn_i_shed_ind_old_f", "Land_i_Shed_Ind_F"];
tint_translationNamespace setVariable ["Land_vn_warehouse_03_f", "Land_Warehouse_03_F"];
tint_translationNamespace setVariable ["Land_vn_workshop_05_f", "Land_Workshop_05_F"];
tint_translationNamespace setVariable ["Land_vn_workshop_03_f", "Land_Workshop_03_F"];
tint_translationNamespace setVariable ["Land_vn_workshop_04_f", "Land_Workshop_04_F"];
tint_translationNamespace setVariable ["Land_vn_workshop_02_f", "Land_Workshop_02_F"];
tint_translationNamespace setVariable ["Land_vn_workshop_01_f", "Land_Workshop_01_F"];
tint_translationNamespace setVariable ["Land_vn_i_barracks_v1_f", "Land_i_Barracks_V1_F"];
tint_translationNamespace setVariable ["Land_vn_barracks_01_dilapidated_f", "Land_i_Barracks_V1_F"];
tint_translationNamespace setVariable ["Land_vn_barracks_06_f", "Land_Barracks_06_F"];
tint_translationNamespace setVariable ["Land_vn_i_barracks_v1_f", "Land_i_Barracks_V1_F"];
tint_translationNamespace setVariable ["Land_vn_barracks_02_f", "Land_Barracks_02_F"];
tint_translationNamespace setVariable ["Land_vn_barracks_03_f", "Land_Barracks_03_F"];
tint_translationNamespace setVariable ["Land_vn_barracks_04_f", "Land_Barracks_04_F"];
tint_translationNamespace setVariable ["Land_vn_barracks_05_f", "Land_Barracks_05_F"];
tint_translationNamespace setVariable ["Land_vn_controltower_01_f", "Land_ControlTower_01_F"];
tint_translationNamespace setVariable ["Land_vn_guardbox_01_base_f", "Land_GuardBox_01_base_F"];
tint_translationNamespace setVariable ["Land_vn_guardhouse_02_f", "Land_GuardHouse_02_F"];
tint_translationNamespace setVariable ["Land_vn_guardhouse_03_f", "Land_GuardHouse_03_F"];
tint_translationNamespace setVariable ["Land_vn_guardtower_01_f", "Land_GuardTower_01_F"];
tint_translationNamespace setVariable ["Land_vn_radar_01_kitchen_f", "Land_Radar_01_kitchen_F"];
tint_translationNamespace setVariable ["Land_vn_gh_house_2_f", "Land_GH_House_2_F"];
tint_translationNamespace setVariable ["Land_vn_shop_town_01_f", "Land_Shop_Town_01_F" ];
tint_translationNamespace setVariable ["Land_vn_house_small_01_f", "Land_House_Small_01_F"];
tint_translationNamespace setVariable ["Land_vn_house_small_02_f", "Land_House_Small_02_F"];
tint_translationNamespace setVariable ["Land_vn_house_small_03_f", "Land_House_Small_03_F"];
tint_translationNamespace setVariable ["Land_vn_house_small_04_f", "Land_House_Small_04_F"];
tint_translationNamespace setVariable ["Land_vn_house_small_05_f", "Land_House_Small_05_F"];
tint_translationNamespace setVariable ["Land_vn_house_small_06_f", "Land_House_Small_06_F"];
tint_translationNamespace setVariable ["Land_vn_house_big_01_f", "Land_House_Big_01_F"];
tint_translationNamespace setVariable ["Land_vn_house_big_02_f", "Land_House_Big_02_F"];
tint_translationNamespace setVariable ["Land_vn_house_big_03_f", "Land_House_Big_03_F"];
tint_translationNamespace setVariable ["Land_vn_house_big_04_f", "Land_House_Big_04_F"];
tint_translationNamespace setVariable ["Land_vn_shop_city_01_f", "Land_Shop_City_01_F"];
tint_translationNamespace setVariable ["Land_vn_shop_city_02_f", "Land_Shop_City_02_F"];
tint_translationNamespace setVariable ["Land_vn_shed_02_f", "Land_Shed_02_F"];
tint_translationNamespace setVariable ["Land_vn_slum_01_f", "Land_Slum_01_F"];
tint_translationNamespace setVariable ["Land_vn_slum_02_f", "Land_Slum_02_F"];
tint_translationNamespace setVariable ["Land_vn_slum_03_f", "Land_Slum_03_F"];
tint_translationNamespace setVariable ["Land_vn_hotel_01_f", "Land_Hotel_01_F"];
tint_translationNamespace setVariable ["Land_vn_hotel_02_f", "Land_Hotel_02_F"];
tint_translationNamespace setVariable ["Land_vn_garageshelter_01_f", "Land_GarageShelter_01_F"];
tint_translationNamespace setVariable ["Land_vn_shop_city_03_f", "Land_Shop_City_03_F"];
tint_translationNamespace setVariable ["Land_vn_shop_city_06_f", "Land_Shop_City_06_F"];
tint_translationNamespace setVariable ["Land_vn_school_01_f", "Land_School_01_F"];
tint_translationNamespace setVariable ["Land_vn_slum_house03_f", "Land_Slum_House03_F"];
tint_translationNamespace setVariable ["Land_vn_slum_house01_f", "Land_Slum_House01_F"];
tint_translationNamespace setVariable ["Land_vn_slum_house02_f", "Land_Slum_House02_F"];
tint_translationNamespace setVariable ["Land_vn_supermarket_01_f", "Land_Supermarket_01_malden_F"];
tint_translationNamespace setVariable ["Land_vn_unfinished_building_01_f", "Land_Unfinished_Building_01_F"];
tint_translationNamespace setVariable ["Land_vn_unfinished_building_02_f", "Land_Unfinished_Building_02_F"];
tint_translationNamespace setVariable ["Land_vn_wip_f", "Land_WIP_F"];
tint_translationNamespace setVariable ["Land_vn_hootch_01_11", "Land_vn_hootch_01_01"];
tint_translationNamespace setVariable ["Land_vn_hootch_01_12", "Land_vn_hootch_01_02"];
tint_translationNamespace setVariable ["Land_vn_hootch_01_13", "Land_vn_hootch_01_03"];
tint_translationNamespace setVariable ["Land_vn_hootch_02_11", "Land_vn_hootch_02_01"];
tint_translationNamespace setVariable ["Land_vn_tent_01_02", "Land_vn_tent_01_01"];
tint_translationNamespace setVariable ["Land_vn_tent_01_04", "Land_vn_tent_01_03"];
tint_translationNamespace setVariable ["Land_vn_tent_02_02", "Land_vn_tent_02_01"];
tint_translationNamespace setVariable ["Land_vn_tent_02_04", "Land_vn_tent_02_03  "];
tint_translationNamespace setVariable ["Land_vn_tent_mash_01_01", "Land_vn_tent_mash_01"];
tint_translationNamespace setVariable ["Land_vn_tent_mash_01_02", "Land_vn_tent_mash_01"];
tint_translationNamespace setVariable ["Land_vn_tent_mash_01_04", "Land_vn_tent_mash_01_03"];
tint_translationNamespace setVariable ["Land_vn_tent_mash_02_02", "Land_vn_tent_mash_02_01"];
tint_translationNamespace setVariable ["Land_vn_tent_mash_02_04", "Land_vn_tent_mash_02_03"];
