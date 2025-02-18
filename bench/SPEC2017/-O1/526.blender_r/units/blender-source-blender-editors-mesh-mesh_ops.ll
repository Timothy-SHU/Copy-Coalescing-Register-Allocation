; ModuleID = 'blender/source/blender/editors/mesh/mesh_ops.c'
source_filename = "blender/source/blender/editors/mesh/mesh_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.wmOperatorTypeMacro = type { ptr, ptr, [64 x i8], ptr, ptr }
%struct.wmKeyMap = type { ptr, ptr, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.wmKeyMapItem = type { ptr, ptr, [64 x i8], ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr }

@.str = private unnamed_addr constant [22 x i8] c"MESH_OT_loopcut_slide\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Loop Cut and Slide\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Cut mesh loop and slide it\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"MESH_OT_loopcut\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"TRANSFORM_OT_edge_slide\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"release_confirm\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"MESH_OT_duplicate_move\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"Add Duplicate\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"Duplicate mesh and move\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"MESH_OT_duplicate\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"TRANSFORM_OT_translate\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"proportional\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"mirror\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"MESH_OT_rip_move\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"Rip\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"Rip polygons and move the result\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"MESH_OT_rip\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"use_fill\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"MESH_OT_rip_move_fill\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"Rip Fill\00", align 1
@.str.20 = private unnamed_addr constant [38 x i8] c"Rip-fill polygons and move the result\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"MESH_OT_rip_edge_move\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"Extend Vertices\00", align 1
@.str.23 = private unnamed_addr constant [36 x i8] c"Extend vertices and move the result\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"MESH_OT_rip_edge\00", align 1
@.str.25 = private unnamed_addr constant [28 x i8] c"MESH_OT_extrude_region_move\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"Extrude Region and Move\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"Extrude region and move result\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"MESH_OT_extrude_region\00", align 1
@.str.29 = private unnamed_addr constant [37 x i8] c"MESH_OT_extrude_region_shrink_fatten\00", align 1
@.str.30 = private unnamed_addr constant [33 x i8] c"Extrude Region and Shrink/Fatten\00", align 1
@.str.31 = private unnamed_addr constant [27 x i8] c"TRANSFORM_OT_shrink_fatten\00", align 1
@.str.32 = private unnamed_addr constant [27 x i8] c"MESH_OT_extrude_faces_move\00", align 1
@.str.33 = private unnamed_addr constant [34 x i8] c"Extrude Individual Faces and Move\00", align 1
@.str.34 = private unnamed_addr constant [30 x i8] c"Extrude faces and move result\00", align 1
@.str.35 = private unnamed_addr constant [28 x i8] c"MESH_OT_extrude_faces_indiv\00", align 1
@.str.36 = private unnamed_addr constant [27 x i8] c"MESH_OT_extrude_edges_move\00", align 1
@.str.37 = private unnamed_addr constant [28 x i8] c"Extrude Only Edges and Move\00", align 1
@.str.38 = private unnamed_addr constant [30 x i8] c"Extrude edges and move result\00", align 1
@.str.39 = private unnamed_addr constant [28 x i8] c"MESH_OT_extrude_edges_indiv\00", align 1
@.str.40 = private unnamed_addr constant [30 x i8] c"MESH_OT_extrude_vertices_move\00", align 1
@.str.41 = private unnamed_addr constant [31 x i8] c"Extrude Only Vertices and Move\00", align 1
@.str.42 = private unnamed_addr constant [33 x i8] c"Extrude vertices and move result\00", align 1
@.str.43 = private unnamed_addr constant [28 x i8] c"MESH_OT_extrude_verts_indiv\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"Mesh\00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c"MESH_OT_inset\00", align 1
@.str.46 = private unnamed_addr constant [13 x i8] c"MESH_OT_poke\00", align 1
@.str.47 = private unnamed_addr constant [14 x i8] c"MESH_OT_bevel\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"vertex_only\00", align 1
@.str.49 = private unnamed_addr constant [20 x i8] c"MESH_OT_loop_select\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"extend\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"deselect\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"toggle\00", align 1
@.str.53 = private unnamed_addr constant [24 x i8] c"MESH_OT_edgering_select\00", align 1
@.str.54 = private unnamed_addr constant [27 x i8] c"MESH_OT_shortest_path_pick\00", align 1
@.str.55 = private unnamed_addr constant [19 x i8] c"MESH_OT_select_all\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"action\00", align 1
@.str.57 = private unnamed_addr constant [20 x i8] c"MESH_OT_select_more\00", align 1
@.str.58 = private unnamed_addr constant [20 x i8] c"MESH_OT_select_less\00", align 1
@.str.59 = private unnamed_addr constant [28 x i8] c"MESH_OT_select_non_manifold\00", align 1
@.str.60 = private unnamed_addr constant [22 x i8] c"MESH_OT_select_linked\00", align 1
@.str.61 = private unnamed_addr constant [27 x i8] c"MESH_OT_select_linked_pick\00", align 1
@.str.62 = private unnamed_addr constant [33 x i8] c"MESH_OT_faces_select_linked_flat\00", align 1
@.str.63 = private unnamed_addr constant [35 x i8] c"VIEW3D_MT_edit_mesh_select_similar\00", align 1
@.str.64 = private unnamed_addr constant [32 x i8] c"VIEW3D_MT_edit_mesh_select_mode\00", align 1
@.str.65 = private unnamed_addr constant [13 x i8] c"MESH_OT_hide\00", align 1
@.str.66 = private unnamed_addr constant [11 x i8] c"unselected\00", align 1
@.str.67 = private unnamed_addr constant [15 x i8] c"MESH_OT_reveal\00", align 1
@.str.68 = private unnamed_addr constant [32 x i8] c"MESH_OT_normals_make_consistent\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"inside\00", align 1
@.str.70 = private unnamed_addr constant [40 x i8] c"VIEW3D_OT_edit_mesh_extrude_move_normal\00", align 1
@.str.71 = private unnamed_addr constant [28 x i8] c"VIEW3D_MT_edit_mesh_extrude\00", align 1
@.str.72 = private unnamed_addr constant [25 x i8] c"TRANSFORM_OT_edge_crease\00", align 1
@.str.73 = private unnamed_addr constant [13 x i8] c"MESH_OT_spin\00", align 1
@.str.74 = private unnamed_addr constant [13 x i8] c"MESH_OT_fill\00", align 1
@.str.75 = private unnamed_addr constant [22 x i8] c"MESH_OT_beautify_fill\00", align 1
@.str.76 = private unnamed_addr constant [30 x i8] c"MESH_OT_quads_convert_to_tris\00", align 1
@.str.77 = private unnamed_addr constant [12 x i8] c"quad_method\00", align 1
@.str.78 = private unnamed_addr constant [12 x i8] c"ngon_method\00", align 1
@.str.79 = private unnamed_addr constant [30 x i8] c"MESH_OT_tris_convert_to_quads\00", align 1
@.str.80 = private unnamed_addr constant [14 x i8] c"MESH_OT_merge\00", align 1
@.str.81 = private unnamed_addr constant [22 x i8] c"MESH_OT_edge_face_add\00", align 1
@.str.82 = private unnamed_addr constant [17 x i8] c"INFO_MT_mesh_add\00", align 1
@.str.83 = private unnamed_addr constant [17 x i8] c"MESH_OT_separate\00", align 1
@.str.84 = private unnamed_addr constant [14 x i8] c"MESH_OT_split\00", align 1
@.str.85 = private unnamed_addr constant [21 x i8] c"MESH_OT_vert_connect\00", align 1
@.str.86 = private unnamed_addr constant [24 x i8] c"TRANSFORM_OT_vert_slide\00", align 1
@.str.87 = private unnamed_addr constant [29 x i8] c"MESH_OT_dupli_extrude_cursor\00", align 1
@.str.88 = private unnamed_addr constant [14 x i8] c"rotate_source\00", align 1
@.str.89 = private unnamed_addr constant [27 x i8] c"VIEW3D_MT_edit_mesh_delete\00", align 1
@.str.90 = private unnamed_addr constant [22 x i8] c"MESH_OT_dissolve_mode\00", align 1
@.str.91 = private unnamed_addr constant [19 x i8] c"MESH_OT_knife_tool\00", align 1
@.str.92 = private unnamed_addr constant [21 x i8] c"use_occlude_geometry\00", align 1
@.str.93 = private unnamed_addr constant [14 x i8] c"only_selected\00", align 1
@.str.94 = private unnamed_addr constant [28 x i8] c"OBJECT_OT_vertex_parent_set\00", align 1
@.str.95 = private unnamed_addr constant [29 x i8] c"VIEW3D_MT_edit_mesh_specials\00", align 1
@.str.96 = private unnamed_addr constant [26 x i8] c"VIEW3D_MT_edit_mesh_faces\00", align 1
@.str.97 = private unnamed_addr constant [26 x i8] c"VIEW3D_MT_edit_mesh_edges\00", align 1
@.str.98 = private unnamed_addr constant [29 x i8] c"VIEW3D_MT_edit_mesh_vertices\00", align 1
@.str.99 = private unnamed_addr constant [15 x i8] c"VIEW3D_MT_hook\00", align 1
@.str.100 = private unnamed_addr constant [17 x i8] c"VIEW3D_MT_uv_map\00", align 1
@.str.101 = private unnamed_addr constant [23 x i8] c"VIEW3D_MT_vertex_group\00", align 1
@.str.102 = private unnamed_addr constant [26 x i8] c"OBJECT_OT_subdivision_set\00", align 1
@.str.103 = private unnamed_addr constant [6 x i8] c"level\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @ED_operatortypes_mesh() local_unnamed_addr #0 {
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_select_all) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_select_interior_faces) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_select_more) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_select_less) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_select_non_manifold) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_select_linked) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_select_linked_pick) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_select_random) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_select_ungrouped) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_hide) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_reveal) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_select_face_by_sides) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_select_loose) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_select_mirror) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_normals_make_consistent) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_merge) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_subdivide) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_subdivide_edgering) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_unsubdivide) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_faces_select_linked_flat) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_edges_select_sharp) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_primitive_plane_add) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_primitive_cube_add) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_primitive_circle_add) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_primitive_cylinder_add) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_primitive_cone_add) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_primitive_grid_add) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_primitive_monkey_add) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_primitive_uv_sphere_add) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_primitive_ico_sphere_add) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_duplicate) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_remove_doubles) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_spin) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_screw) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_extrude_region) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_extrude_faces_indiv) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_extrude_edges_indiv) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_extrude_verts_indiv) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_split) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_extrude_repeat) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_edge_rotate) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_shortest_path_select) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_loop_to_region) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_region_to_loop) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_select_axis) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_uvs_rotate) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_uvs_reverse) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_colors_rotate) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_colors_reverse) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_fill) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_fill_grid) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_fill_holes) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_beautify_fill) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_quads_convert_to_tris) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_tris_convert_to_quads) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_dissolve_verts) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_dissolve_edges) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_dissolve_faces) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_dissolve_mode) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_dissolve_limited) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_dissolve_degenerate) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_delete_edgeloop) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_faces_shade_smooth) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_faces_shade_flat) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_sort_elements) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_delete) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_delete_loose) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_edge_collapse) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_separate) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_dupli_extrude_cursor) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_loop_select) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_edge_face_add) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_shortest_path_pick) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_select_similar) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_select_similar_region) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_select_mode) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_loop_multi_select) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_mark_seam) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_mark_sharp) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_vertices_smooth) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_vertices_smooth_laplacian) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_noise) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_flip_normals) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_rip) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_rip_edge) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_blend_from_shape) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_shape_propagate_to_all) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_uv_texture_add) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_uv_texture_remove) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_vertex_color_add) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_vertex_color_remove) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_customdata_clear_mask) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_customdata_clear_skin) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_drop_named_image) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_edgering_select) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_loopcut) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_solidify) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_select_nth) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_vert_connect) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_vert_connect_nonplanar) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_knife_tool) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_knife_project) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_bevel) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_select_next_loop) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_bridge_edge_loops) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_inset) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_intersect) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_face_split_by_edges) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_poke) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_wireframe) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_edge_split) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_bisect) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_symmetrize) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MESH_OT_symmetry_snap) #2
  ret void
}

declare void @WM_operatortype_append(ptr noundef) local_unnamed_addr #1

declare void @MESH_OT_select_all(ptr noundef) #1

declare void @MESH_OT_select_interior_faces(ptr noundef) #1

declare void @MESH_OT_select_more(ptr noundef) #1

declare void @MESH_OT_select_less(ptr noundef) #1

declare void @MESH_OT_select_non_manifold(ptr noundef) #1

declare void @MESH_OT_select_linked(ptr noundef) #1

declare void @MESH_OT_select_linked_pick(ptr noundef) #1

declare void @MESH_OT_select_random(ptr noundef) #1

declare void @MESH_OT_select_ungrouped(ptr noundef) #1

declare void @MESH_OT_hide(ptr noundef) #1

declare void @MESH_OT_reveal(ptr noundef) #1

declare void @MESH_OT_select_face_by_sides(ptr noundef) #1

declare void @MESH_OT_select_loose(ptr noundef) #1

declare void @MESH_OT_select_mirror(ptr noundef) #1

declare void @MESH_OT_normals_make_consistent(ptr noundef) #1

declare void @MESH_OT_merge(ptr noundef) #1

declare void @MESH_OT_subdivide(ptr noundef) #1

declare void @MESH_OT_subdivide_edgering(ptr noundef) #1

declare void @MESH_OT_unsubdivide(ptr noundef) #1

declare void @MESH_OT_faces_select_linked_flat(ptr noundef) #1

declare void @MESH_OT_edges_select_sharp(ptr noundef) #1

declare void @MESH_OT_primitive_plane_add(ptr noundef) #1

declare void @MESH_OT_primitive_cube_add(ptr noundef) #1

declare void @MESH_OT_primitive_circle_add(ptr noundef) #1

declare void @MESH_OT_primitive_cylinder_add(ptr noundef) #1

declare void @MESH_OT_primitive_cone_add(ptr noundef) #1

declare void @MESH_OT_primitive_grid_add(ptr noundef) #1

declare void @MESH_OT_primitive_monkey_add(ptr noundef) #1

declare void @MESH_OT_primitive_uv_sphere_add(ptr noundef) #1

declare void @MESH_OT_primitive_ico_sphere_add(ptr noundef) #1

declare void @MESH_OT_duplicate(ptr noundef) #1

declare void @MESH_OT_remove_doubles(ptr noundef) #1

declare void @MESH_OT_spin(ptr noundef) #1

declare void @MESH_OT_screw(ptr noundef) #1

declare void @MESH_OT_extrude_region(ptr noundef) #1

declare void @MESH_OT_extrude_faces_indiv(ptr noundef) #1

declare void @MESH_OT_extrude_edges_indiv(ptr noundef) #1

declare void @MESH_OT_extrude_verts_indiv(ptr noundef) #1

declare void @MESH_OT_split(ptr noundef) #1

declare void @MESH_OT_extrude_repeat(ptr noundef) #1

declare void @MESH_OT_edge_rotate(ptr noundef) #1

declare void @MESH_OT_shortest_path_select(ptr noundef) #1

declare void @MESH_OT_loop_to_region(ptr noundef) #1

declare void @MESH_OT_region_to_loop(ptr noundef) #1

declare void @MESH_OT_select_axis(ptr noundef) #1

declare void @MESH_OT_uvs_rotate(ptr noundef) #1

declare void @MESH_OT_uvs_reverse(ptr noundef) #1

declare void @MESH_OT_colors_rotate(ptr noundef) #1

declare void @MESH_OT_colors_reverse(ptr noundef) #1

declare void @MESH_OT_fill(ptr noundef) #1

declare void @MESH_OT_fill_grid(ptr noundef) #1

declare void @MESH_OT_fill_holes(ptr noundef) #1

declare void @MESH_OT_beautify_fill(ptr noundef) #1

declare void @MESH_OT_quads_convert_to_tris(ptr noundef) #1

declare void @MESH_OT_tris_convert_to_quads(ptr noundef) #1

declare void @MESH_OT_dissolve_verts(ptr noundef) #1

declare void @MESH_OT_dissolve_edges(ptr noundef) #1

declare void @MESH_OT_dissolve_faces(ptr noundef) #1

declare void @MESH_OT_dissolve_mode(ptr noundef) #1

declare void @MESH_OT_dissolve_limited(ptr noundef) #1

declare void @MESH_OT_dissolve_degenerate(ptr noundef) #1

declare void @MESH_OT_delete_edgeloop(ptr noundef) #1

declare void @MESH_OT_faces_shade_smooth(ptr noundef) #1

declare void @MESH_OT_faces_shade_flat(ptr noundef) #1

declare void @MESH_OT_sort_elements(ptr noundef) #1

declare void @MESH_OT_delete(ptr noundef) #1

declare void @MESH_OT_delete_loose(ptr noundef) #1

declare void @MESH_OT_edge_collapse(ptr noundef) #1

declare void @MESH_OT_separate(ptr noundef) #1

declare void @MESH_OT_dupli_extrude_cursor(ptr noundef) #1

declare void @MESH_OT_loop_select(ptr noundef) #1

declare void @MESH_OT_edge_face_add(ptr noundef) #1

declare void @MESH_OT_shortest_path_pick(ptr noundef) #1

declare void @MESH_OT_select_similar(ptr noundef) #1

declare void @MESH_OT_select_similar_region(ptr noundef) #1

declare void @MESH_OT_select_mode(ptr noundef) #1

declare void @MESH_OT_loop_multi_select(ptr noundef) #1

declare void @MESH_OT_mark_seam(ptr noundef) #1

declare void @MESH_OT_mark_sharp(ptr noundef) #1

declare void @MESH_OT_vertices_smooth(ptr noundef) #1

declare void @MESH_OT_vertices_smooth_laplacian(ptr noundef) #1

declare void @MESH_OT_noise(ptr noundef) #1

declare void @MESH_OT_flip_normals(ptr noundef) #1

declare void @MESH_OT_rip(ptr noundef) #1

declare void @MESH_OT_rip_edge(ptr noundef) #1

declare void @MESH_OT_blend_from_shape(ptr noundef) #1

declare void @MESH_OT_shape_propagate_to_all(ptr noundef) #1

declare void @MESH_OT_uv_texture_add(ptr noundef) #1

declare void @MESH_OT_uv_texture_remove(ptr noundef) #1

declare void @MESH_OT_vertex_color_add(ptr noundef) #1

declare void @MESH_OT_vertex_color_remove(ptr noundef) #1

declare void @MESH_OT_customdata_clear_mask(ptr noundef) #1

declare void @MESH_OT_customdata_clear_skin(ptr noundef) #1

declare void @MESH_OT_drop_named_image(ptr noundef) #1

declare void @MESH_OT_edgering_select(ptr noundef) #1

declare void @MESH_OT_loopcut(ptr noundef) #1

declare void @MESH_OT_solidify(ptr noundef) #1

declare void @MESH_OT_select_nth(ptr noundef) #1

declare void @MESH_OT_vert_connect(ptr noundef) #1

declare void @MESH_OT_vert_connect_nonplanar(ptr noundef) #1

declare void @MESH_OT_knife_tool(ptr noundef) #1

declare void @MESH_OT_knife_project(ptr noundef) #1

declare void @MESH_OT_bevel(ptr noundef) #1

declare void @MESH_OT_select_next_loop(ptr noundef) #1

declare void @MESH_OT_bridge_edge_loops(ptr noundef) #1

declare void @MESH_OT_inset(ptr noundef) #1

declare void @MESH_OT_intersect(ptr noundef) #1

declare void @MESH_OT_face_split_by_edges(ptr noundef) #1

declare void @MESH_OT_poke(ptr noundef) #1

declare void @MESH_OT_wireframe(ptr noundef) #1

declare void @MESH_OT_edge_split(ptr noundef) #1

declare void @MESH_OT_bisect(ptr noundef) #1

declare void @MESH_OT_symmetrize(ptr noundef) #1

declare void @MESH_OT_symmetry_snap(ptr noundef) #1

; Function Attrs: nounwind uwtable
define dso_local void @ED_operatormacros_mesh() local_unnamed_addr #0 {
  %1 = tail call ptr @WM_operatortype_append_macro(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 3) #2
  %2 = tail call ptr @WM_operatortype_macro_define(ptr noundef %1, ptr noundef nonnull @.str.3) #2
  %3 = tail call ptr @WM_operatortype_macro_define(ptr noundef %1, ptr noundef nonnull @.str.4) #2
  %4 = getelementptr inbounds %struct.wmOperatorTypeMacro, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  tail call void @RNA_boolean_set(ptr noundef %5, ptr noundef nonnull @.str.5, i32 noundef 0) #2
  %6 = tail call ptr @WM_operatortype_append_macro(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 3) #2
  %7 = tail call ptr @WM_operatortype_macro_define(ptr noundef %6, ptr noundef nonnull @.str.9) #2
  %8 = tail call ptr @WM_operatortype_macro_define(ptr noundef %6, ptr noundef nonnull @.str.10) #2
  %9 = getelementptr inbounds %struct.wmOperatorTypeMacro, ptr %8, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  tail call void @RNA_enum_set(ptr noundef %10, ptr noundef nonnull @.str.11, i32 noundef 0) #2
  %11 = load ptr, ptr %9, align 8, !tbaa !34
  tail call void @RNA_boolean_set(ptr noundef %11, ptr noundef nonnull @.str.12, i32 noundef 0) #2
  %12 = tail call ptr @WM_operatortype_append_macro(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 3) #2
  %13 = tail call ptr @WM_operatortype_macro_define(ptr noundef %12, ptr noundef nonnull @.str.16) #2
  %14 = getelementptr inbounds %struct.wmOperatorTypeMacro, ptr %13, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  tail call void @RNA_boolean_set(ptr noundef %15, ptr noundef nonnull @.str.17, i32 noundef 0) #2
  %16 = tail call ptr @WM_operatortype_macro_define(ptr noundef %12, ptr noundef nonnull @.str.10) #2
  %17 = getelementptr inbounds %struct.wmOperatorTypeMacro, ptr %16, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  tail call void @RNA_enum_set(ptr noundef %18, ptr noundef nonnull @.str.11, i32 noundef 0) #2
  %19 = load ptr, ptr %17, align 8, !tbaa !34
  tail call void @RNA_boolean_set(ptr noundef %19, ptr noundef nonnull @.str.12, i32 noundef 0) #2
  %20 = tail call ptr @WM_operatortype_append_macro(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef 3) #2
  %21 = tail call ptr @WM_operatortype_macro_define(ptr noundef %20, ptr noundef nonnull @.str.16) #2
  %22 = getelementptr inbounds %struct.wmOperatorTypeMacro, ptr %21, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !34
  tail call void @RNA_boolean_set(ptr noundef %23, ptr noundef nonnull @.str.17, i32 noundef 1) #2
  %24 = tail call ptr @WM_operatortype_macro_define(ptr noundef %20, ptr noundef nonnull @.str.10) #2
  %25 = getelementptr inbounds %struct.wmOperatorTypeMacro, ptr %24, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !34
  tail call void @RNA_enum_set(ptr noundef %26, ptr noundef nonnull @.str.11, i32 noundef 0) #2
  %27 = load ptr, ptr %25, align 8, !tbaa !34
  tail call void @RNA_boolean_set(ptr noundef %27, ptr noundef nonnull @.str.12, i32 noundef 0) #2
  %28 = tail call ptr @WM_operatortype_append_macro(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef 3) #2
  %29 = tail call ptr @WM_operatortype_macro_define(ptr noundef %28, ptr noundef nonnull @.str.24) #2
  %30 = tail call ptr @WM_operatortype_macro_define(ptr noundef %28, ptr noundef nonnull @.str.10) #2
  %31 = getelementptr inbounds %struct.wmOperatorTypeMacro, ptr %30, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !34
  tail call void @RNA_enum_set(ptr noundef %32, ptr noundef nonnull @.str.11, i32 noundef 0) #2
  %33 = load ptr, ptr %31, align 8, !tbaa !34
  tail call void @RNA_boolean_set(ptr noundef %33, ptr noundef nonnull @.str.12, i32 noundef 0) #2
  %34 = tail call ptr @WM_operatortype_append_macro(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, i32 noundef 3) #2
  %35 = tail call ptr @WM_operatortype_macro_define(ptr noundef %34, ptr noundef nonnull @.str.28) #2
  %36 = tail call ptr @WM_operatortype_macro_define(ptr noundef %34, ptr noundef nonnull @.str.10) #2
  %37 = getelementptr inbounds %struct.wmOperatorTypeMacro, ptr %36, i64 0, i32 4
  %38 = load ptr, ptr %37, align 8, !tbaa !34
  tail call void @RNA_enum_set(ptr noundef %38, ptr noundef nonnull @.str.11, i32 noundef 0) #2
  %39 = load ptr, ptr %37, align 8, !tbaa !34
  tail call void @RNA_boolean_set(ptr noundef %39, ptr noundef nonnull @.str.12, i32 noundef 0) #2
  %40 = tail call ptr @WM_operatortype_append_macro(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.27, i32 noundef 3) #2
  %41 = tail call ptr @WM_operatortype_macro_define(ptr noundef %40, ptr noundef nonnull @.str.28) #2
  %42 = tail call ptr @WM_operatortype_macro_define(ptr noundef %40, ptr noundef nonnull @.str.31) #2
  %43 = getelementptr inbounds %struct.wmOperatorTypeMacro, ptr %42, i64 0, i32 4
  %44 = load ptr, ptr %43, align 8, !tbaa !34
  tail call void @RNA_enum_set(ptr noundef %44, ptr noundef nonnull @.str.11, i32 noundef 0) #2
  %45 = load ptr, ptr %43, align 8, !tbaa !34
  tail call void @RNA_boolean_set(ptr noundef %45, ptr noundef nonnull @.str.12, i32 noundef 0) #2
  %46 = tail call ptr @WM_operatortype_append_macro(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef 3) #2
  %47 = tail call ptr @WM_operatortype_macro_define(ptr noundef %46, ptr noundef nonnull @.str.35) #2
  %48 = tail call ptr @WM_operatortype_macro_define(ptr noundef %46, ptr noundef nonnull @.str.31) #2
  %49 = getelementptr inbounds %struct.wmOperatorTypeMacro, ptr %48, i64 0, i32 4
  %50 = load ptr, ptr %49, align 8, !tbaa !34
  tail call void @RNA_enum_set(ptr noundef %50, ptr noundef nonnull @.str.11, i32 noundef 0) #2
  %51 = load ptr, ptr %49, align 8, !tbaa !34
  tail call void @RNA_boolean_set(ptr noundef %51, ptr noundef nonnull @.str.12, i32 noundef 0) #2
  %52 = tail call ptr @WM_operatortype_append_macro(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, i32 noundef 3) #2
  %53 = tail call ptr @WM_operatortype_macro_define(ptr noundef %52, ptr noundef nonnull @.str.39) #2
  %54 = tail call ptr @WM_operatortype_macro_define(ptr noundef %52, ptr noundef nonnull @.str.10) #2
  %55 = getelementptr inbounds %struct.wmOperatorTypeMacro, ptr %54, i64 0, i32 4
  %56 = load ptr, ptr %55, align 8, !tbaa !34
  tail call void @RNA_enum_set(ptr noundef %56, ptr noundef nonnull @.str.11, i32 noundef 0) #2
  %57 = load ptr, ptr %55, align 8, !tbaa !34
  tail call void @RNA_boolean_set(ptr noundef %57, ptr noundef nonnull @.str.12, i32 noundef 0) #2
  %58 = tail call ptr @WM_operatortype_append_macro(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, i32 noundef 3) #2
  %59 = tail call ptr @WM_operatortype_macro_define(ptr noundef %58, ptr noundef nonnull @.str.43) #2
  %60 = tail call ptr @WM_operatortype_macro_define(ptr noundef %58, ptr noundef nonnull @.str.10) #2
  %61 = getelementptr inbounds %struct.wmOperatorTypeMacro, ptr %60, i64 0, i32 4
  %62 = load ptr, ptr %61, align 8, !tbaa !34
  tail call void @RNA_enum_set(ptr noundef %62, ptr noundef nonnull @.str.11, i32 noundef 0) #2
  %63 = load ptr, ptr %61, align 8, !tbaa !34
  tail call void @RNA_boolean_set(ptr noundef %63, ptr noundef nonnull @.str.12, i32 noundef 0) #2
  ret void
}

declare ptr @WM_operatortype_append_macro(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @WM_operatortype_macro_define(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @RNA_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @RNA_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ED_keymap_mesh(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str.44, i32 noundef 0, i32 noundef 0) #2
  %3 = getelementptr inbounds %struct.wmKeyMap, ptr %2, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %3, align 8, !tbaa !39
  %4 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef 114, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %5 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.45, i32 noundef 105, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %6 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.46, i32 noundef 112, i32 noundef 1, i32 noundef 4, i32 noundef 0) #2
  %7 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.47, i32 noundef 98, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %8 = getelementptr inbounds %struct.wmKeyMapItem, ptr %7, i64 0, i32 17
  %9 = load ptr, ptr %8, align 8, !tbaa !43
  tail call void @RNA_boolean_set(ptr noundef %9, ptr noundef nonnull @.str.48, i32 noundef 0) #2
  %10 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.47, i32 noundef 98, i32 noundef 1, i32 noundef 3, i32 noundef 0) #2
  %11 = getelementptr inbounds %struct.wmKeyMapItem, ptr %10, i64 0, i32 17
  %12 = load ptr, ptr %11, align 8, !tbaa !43
  tail call void @RNA_boolean_set(ptr noundef %12, ptr noundef nonnull @.str.48, i32 noundef 1) #2
  %13 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.49, i32 noundef 6, i32 noundef 1, i32 noundef 4, i32 noundef 0) #2
  %14 = getelementptr inbounds %struct.wmKeyMapItem, ptr %13, i64 0, i32 17
  %15 = load ptr, ptr %14, align 8, !tbaa !43
  tail call void @RNA_boolean_set(ptr noundef %15, ptr noundef nonnull @.str.50, i32 noundef 0) #2
  %16 = load ptr, ptr %14, align 8, !tbaa !43
  tail call void @RNA_boolean_set(ptr noundef %16, ptr noundef nonnull @.str.51, i32 noundef 0) #2
  %17 = load ptr, ptr %14, align 8, !tbaa !43
  tail call void @RNA_boolean_set(ptr noundef %17, ptr noundef nonnull @.str.52, i32 noundef 0) #2
  %18 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.49, i32 noundef 6, i32 noundef 1, i32 noundef 5, i32 noundef 0) #2
  %19 = getelementptr inbounds %struct.wmKeyMapItem, ptr %18, i64 0, i32 17
  %20 = load ptr, ptr %19, align 8, !tbaa !43
  tail call void @RNA_boolean_set(ptr noundef %20, ptr noundef nonnull @.str.50, i32 noundef 0) #2
  %21 = load ptr, ptr %19, align 8, !tbaa !43
  tail call void @RNA_boolean_set(ptr noundef %21, ptr noundef nonnull @.str.51, i32 noundef 0) #2
  %22 = load ptr, ptr %19, align 8, !tbaa !43
  tail call void @RNA_boolean_set(ptr noundef %22, ptr noundef nonnull @.str.52, i32 noundef 1) #2
  %23 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.53, i32 noundef 6, i32 noundef 1, i32 noundef 6, i32 noundef 0) #2
  %24 = getelementptr inbounds %struct.wmKeyMapItem, ptr %23, i64 0, i32 17
  %25 = load ptr, ptr %24, align 8, !tbaa !43
  tail call void @RNA_boolean_set(ptr noundef %25, ptr noundef nonnull @.str.50, i32 noundef 0) #2
  %26 = load ptr, ptr %24, align 8, !tbaa !43
  tail call void @RNA_boolean_set(ptr noundef %26, ptr noundef nonnull @.str.51, i32 noundef 0) #2
  %27 = load ptr, ptr %24, align 8, !tbaa !43
  tail call void @RNA_boolean_set(ptr noundef %27, ptr noundef nonnull @.str.52, i32 noundef 0) #2
  %28 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.53, i32 noundef 6, i32 noundef 1, i32 noundef 7, i32 noundef 0) #2
  %29 = getelementptr inbounds %struct.wmKeyMapItem, ptr %28, i64 0, i32 17
  %30 = load ptr, ptr %29, align 8, !tbaa !43
  tail call void @RNA_boolean_set(ptr noundef %30, ptr noundef nonnull @.str.50, i32 noundef 0) #2
  %31 = load ptr, ptr %29, align 8, !tbaa !43
  tail call void @RNA_boolean_set(ptr noundef %31, ptr noundef nonnull @.str.51, i32 noundef 0) #2
  %32 = load ptr, ptr %29, align 8, !tbaa !43
  tail call void @RNA_boolean_set(ptr noundef %32, ptr noundef nonnull @.str.52, i32 noundef 1) #2
  %33 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.54, i32 noundef 6, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %34 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.55, i32 noundef 97, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %35 = getelementptr inbounds %struct.wmKeyMapItem, ptr %34, i64 0, i32 17
  %36 = load ptr, ptr %35, align 8, !tbaa !43
  tail call void @RNA_enum_set(ptr noundef %36, ptr noundef nonnull @.str.56, i32 noundef 0) #2
  %37 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.55, i32 noundef 105, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %38 = getelementptr inbounds %struct.wmKeyMapItem, ptr %37, i64 0, i32 17
  %39 = load ptr, ptr %38, align 8, !tbaa !43
  tail call void @RNA_enum_set(ptr noundef %39, ptr noundef nonnull @.str.56, i32 noundef 3) #2
  %40 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.57, i32 noundef 164, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %41 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.58, i32 noundef 162, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %42 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.59, i32 noundef 109, i32 noundef 1, i32 noundef 7, i32 noundef 0) #2
  %43 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.60, i32 noundef 108, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %44 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.61, i32 noundef 108, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %45 = getelementptr inbounds %struct.wmKeyMapItem, ptr %44, i64 0, i32 17
  %46 = load ptr, ptr %45, align 8, !tbaa !43
  tail call void @RNA_boolean_set(ptr noundef %46, ptr noundef nonnull @.str.51, i32 noundef 0) #2
  %47 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.61, i32 noundef 108, i32 noundef 1, i32 noundef 1, i32 noundef 0) #2
  %48 = getelementptr inbounds %struct.wmKeyMapItem, ptr %47, i64 0, i32 17
  %49 = load ptr, ptr %48, align 8, !tbaa !43
  tail call void @RNA_boolean_set(ptr noundef %49, ptr noundef nonnull @.str.51, i32 noundef 1) #2
  %50 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.62, i32 noundef 102, i32 noundef 1, i32 noundef 7, i32 noundef 0) #2
  %51 = tail call ptr @WM_keymap_add_menu(ptr noundef %2, ptr noundef nonnull @.str.63, i32 noundef 103, i32 noundef 1, i32 noundef 1, i32 noundef 0) #2
  %52 = tail call ptr @WM_keymap_add_menu(ptr noundef %2, ptr noundef nonnull @.str.64, i32 noundef 219, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %53 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.65, i32 noundef 104, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %54 = getelementptr inbounds %struct.wmKeyMapItem, ptr %53, i64 0, i32 17
  %55 = load ptr, ptr %54, align 8, !tbaa !43
  tail call void @RNA_boolean_set(ptr noundef %55, ptr noundef nonnull @.str.66, i32 noundef 0) #2
  %56 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.65, i32 noundef 104, i32 noundef 1, i32 noundef 1, i32 noundef 0) #2
  %57 = getelementptr inbounds %struct.wmKeyMapItem, ptr %56, i64 0, i32 17
  %58 = load ptr, ptr %57, align 8, !tbaa !43
  tail call void @RNA_boolean_set(ptr noundef %58, ptr noundef nonnull @.str.66, i32 noundef 1) #2
  %59 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.67, i32 noundef 104, i32 noundef 1, i32 noundef 4, i32 noundef 0) #2
  %60 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.68, i32 noundef 110, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %61 = getelementptr inbounds %struct.wmKeyMapItem, ptr %60, i64 0, i32 17
  %62 = load ptr, ptr %61, align 8, !tbaa !43
  tail call void @RNA_boolean_set(ptr noundef %62, ptr noundef nonnull @.str.69, i32 noundef 0) #2
  %63 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.68, i32 noundef 110, i32 noundef 1, i32 noundef 3, i32 noundef 0) #2
  %64 = getelementptr inbounds %struct.wmKeyMapItem, ptr %63, i64 0, i32 17
  %65 = load ptr, ptr %64, align 8, !tbaa !43
  tail call void @RNA_boolean_set(ptr noundef %65, ptr noundef nonnull @.str.69, i32 noundef 1) #2
  %66 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.70, i32 noundef 101, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %67 = tail call ptr @WM_keymap_add_menu(ptr noundef %2, ptr noundef nonnull @.str.71, i32 noundef 101, i32 noundef 1, i32 noundef 4, i32 noundef 0) #2
  %68 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.72, i32 noundef 101, i32 noundef 1, i32 noundef 1, i32 noundef 0) #2
  %69 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.73, i32 noundef 114, i32 noundef 1, i32 noundef 4, i32 noundef 0) #2
  %70 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.74, i32 noundef 102, i32 noundef 1, i32 noundef 4, i32 noundef 0) #2
  %71 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.75, i32 noundef 102, i32 noundef 1, i32 noundef 5, i32 noundef 0) #2
  %72 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.76, i32 noundef 116, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %73 = getelementptr inbounds %struct.wmKeyMapItem, ptr %72, i64 0, i32 17
  %74 = load ptr, ptr %73, align 8, !tbaa !43
  tail call void @RNA_enum_set(ptr noundef %74, ptr noundef nonnull @.str.77, i32 noundef 0) #2
  %75 = load ptr, ptr %73, align 8, !tbaa !43
  tail call void @RNA_enum_set(ptr noundef %75, ptr noundef nonnull @.str.78, i32 noundef 0) #2
  %76 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.76, i32 noundef 116, i32 noundef 1, i32 noundef 3, i32 noundef 0) #2
  %77 = getelementptr inbounds %struct.wmKeyMapItem, ptr %76, i64 0, i32 17
  %78 = load ptr, ptr %77, align 8, !tbaa !43
  tail call void @RNA_enum_set(ptr noundef %78, ptr noundef nonnull @.str.77, i32 noundef 1) #2
  %79 = load ptr, ptr %77, align 8, !tbaa !43
  tail call void @RNA_enum_set(ptr noundef %79, ptr noundef nonnull @.str.78, i32 noundef 1) #2
  %80 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.79, i32 noundef 106, i32 noundef 1, i32 noundef 4, i32 noundef 0) #2
  %81 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.13, i32 noundef 118, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %82 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.18, i32 noundef 118, i32 noundef 1, i32 noundef 4, i32 noundef 0) #2
  %83 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.21, i32 noundef 100, i32 noundef 1, i32 noundef 4, i32 noundef 0) #2
  %84 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.80, i32 noundef 109, i32 noundef 1, i32 noundef 4, i32 noundef 0) #2
  %85 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.31, i32 noundef 115, i32 noundef 1, i32 noundef 4, i32 noundef 0) #2
  %86 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.81, i32 noundef 102, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %87 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef 100, i32 noundef 1, i32 noundef 1, i32 noundef 0) #2
  %88 = tail call ptr @WM_keymap_add_menu(ptr noundef %2, ptr noundef nonnull @.str.82, i32 noundef 97, i32 noundef 1, i32 noundef 1, i32 noundef 0) #2
  %89 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.83, i32 noundef 112, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %90 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.84, i32 noundef 121, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %91 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.85, i32 noundef 106, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %92 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.86, i32 noundef 118, i32 noundef 1, i32 noundef 1, i32 noundef 0) #2
  %93 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.87, i32 noundef 5, i32 noundef 3, i32 noundef 2, i32 noundef 0) #2
  %94 = getelementptr inbounds %struct.wmKeyMapItem, ptr %93, i64 0, i32 17
  %95 = load ptr, ptr %94, align 8, !tbaa !43
  tail call void @RNA_boolean_set(ptr noundef %95, ptr noundef nonnull @.str.88, i32 noundef 1) #2
  %96 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.87, i32 noundef 5, i32 noundef 3, i32 noundef 3, i32 noundef 0) #2
  %97 = getelementptr inbounds %struct.wmKeyMapItem, ptr %96, i64 0, i32 17
  %98 = load ptr, ptr %97, align 8, !tbaa !43
  tail call void @RNA_boolean_set(ptr noundef %98, ptr noundef nonnull @.str.88, i32 noundef 0) #2
  %99 = tail call ptr @WM_keymap_add_menu(ptr noundef %2, ptr noundef nonnull @.str.89, i32 noundef 120, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %100 = tail call ptr @WM_keymap_add_menu(ptr noundef %2, ptr noundef nonnull @.str.89, i32 noundef 224, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %101 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.90, i32 noundef 120, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %102 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.90, i32 noundef 224, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %103 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.91, i32 noundef 107, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %104 = getelementptr inbounds %struct.wmKeyMapItem, ptr %103, i64 0, i32 17
  %105 = load ptr, ptr %104, align 8, !tbaa !43
  tail call void @RNA_boolean_set(ptr noundef %105, ptr noundef nonnull @.str.92, i32 noundef 1) #2
  %106 = load ptr, ptr %104, align 8, !tbaa !43
  tail call void @RNA_boolean_set(ptr noundef %106, ptr noundef nonnull @.str.93, i32 noundef 0) #2
  %107 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.91, i32 noundef 107, i32 noundef 1, i32 noundef 1, i32 noundef 0) #2
  %108 = getelementptr inbounds %struct.wmKeyMapItem, ptr %107, i64 0, i32 17
  %109 = load ptr, ptr %108, align 8, !tbaa !43
  tail call void @RNA_boolean_set(ptr noundef %109, ptr noundef nonnull @.str.92, i32 noundef 0) #2
  %110 = load ptr, ptr %108, align 8, !tbaa !43
  tail call void @RNA_boolean_set(ptr noundef %110, ptr noundef nonnull @.str.93, i32 noundef 1) #2
  %111 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.94, i32 noundef 112, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %112 = tail call ptr @WM_keymap_add_menu(ptr noundef %2, ptr noundef nonnull @.str.95, i32 noundef 119, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %113 = tail call ptr @WM_keymap_add_menu(ptr noundef %2, ptr noundef nonnull @.str.96, i32 noundef 102, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %114 = tail call ptr @WM_keymap_add_menu(ptr noundef %2, ptr noundef nonnull @.str.97, i32 noundef 101, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %115 = tail call ptr @WM_keymap_add_menu(ptr noundef %2, ptr noundef nonnull @.str.98, i32 noundef 118, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %116 = tail call ptr @WM_keymap_add_menu(ptr noundef %2, ptr noundef nonnull @.str.99, i32 noundef 104, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %117 = tail call ptr @WM_keymap_add_menu(ptr noundef %2, ptr noundef nonnull @.str.100, i32 noundef 117, i32 noundef 1, i32 noundef 0, i32 noundef 0) #2
  %118 = tail call ptr @WM_keymap_add_menu(ptr noundef %2, ptr noundef nonnull @.str.101, i32 noundef 103, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  br label %119

119:                                              ; preds = %1, %119
  %120 = phi i32 [ 0, %1 ], [ %125, %119 ]
  %121 = or disjoint i32 %120, 48
  %122 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.102, i32 noundef %121, i32 noundef 1, i32 noundef 2, i32 noundef 0) #2
  %123 = getelementptr inbounds %struct.wmKeyMapItem, ptr %122, i64 0, i32 17
  %124 = load ptr, ptr %123, align 8, !tbaa !43
  tail call void @RNA_int_set(ptr noundef %124, ptr noundef nonnull @.str.103, i32 noundef %120) #2
  %125 = add nuw nsw i32 %120, 1
  %126 = icmp eq i32 %125, 6
  br i1 %126, label %127, label %119, !llvm.loop !45

127:                                              ; preds = %119
  tail call void @ED_keymap_proportional_cycle(ptr noundef %0, ptr noundef %2) #2
  tail call void @ED_keymap_proportional_editmode(ptr noundef %0, ptr noundef %2, i8 noundef zeroext 1) #2
  %128 = tail call ptr @knifetool_modal_keymap(ptr noundef %0) #2
  ret void
}

declare ptr @WM_keymap_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ED_operator_editmesh(ptr noundef) #1

declare ptr @WM_keymap_add_item(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @WM_keymap_add_menu(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @RNA_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @ED_keymap_proportional_cycle(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ED_keymap_proportional_editmode(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare ptr @knifetool_modal_keymap(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 7547212}
!8 = !{!"MaxCount", i64 1843200}
!9 = !{!"MaxInternalCount", i64 1843200}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1843200, i32 1}
!18 = !{i32 100000, i64 1843200, i32 1}
!19 = !{i32 200000, i64 1843200, i32 1}
!20 = !{i32 300000, i64 921600, i32 7}
!21 = !{i32 400000, i64 921600, i32 7}
!22 = !{i32 500000, i64 921600, i32 7}
!23 = !{i32 600000, i64 921600, i32 7}
!24 = !{i32 700000, i64 921600, i32 7}
!25 = !{i32 800000, i64 921600, i32 7}
!26 = !{i32 900000, i64 921600, i32 7}
!27 = !{i32 950000, i64 921600, i32 7}
!28 = !{i32 990000, i64 115200, i32 8}
!29 = !{i32 999000, i64 14400, i32 12}
!30 = !{i32 999900, i64 1440, i32 13}
!31 = !{i32 999990, i64 21, i32 15}
!32 = !{i32 999999, i64 1, i32 48}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !36, i64 88}
!35 = !{!"wmOperatorTypeMacro", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !36, i64 120}
!40 = !{!"wmKeyMap", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 32, !37, i64 48, !42, i64 112, !42, i64 114, !42, i64 116, !42, i64 118, !36, i64 120, !36, i64 128}
!41 = !{!"ListBase", !36, i64 0, !36, i64 8}
!42 = !{!"short", !37, i64 0}
!43 = !{!44, !36, i64 176}
!44 = !{!"wmKeyMapItem", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !37, i64 88, !42, i64 152, !42, i64 154, !42, i64 156, !42, i64 158, !42, i64 160, !42, i64 162, !42, i64 164, !42, i64 166, !42, i64 168, !42, i64 170, !42, i64 172, !42, i64 174, !36, i64 176}
!45 = distinct !{!45, !46, !47}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!"llvm.loop.unroll.disable"}
