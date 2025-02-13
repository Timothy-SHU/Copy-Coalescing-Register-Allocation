; ModuleID = 'blender_bin/source/blender/makesrna/intern/rna_armature_gen.c'
source_filename = "blender_bin/source/blender/makesrna/intern/rna_armature_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.StructRNA = type { %struct.ContainerRNA, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase }
%struct.ContainerRNA = type { ptr, ptr, ptr, %struct.ListBase }
%struct.ListBase = type { ptr, ptr }
%struct.CollectionPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.PropertyRNA = type { ptr, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, i32, ptr, i32, [3 x i32], i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr }
%struct.PointerPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr }
%struct.EnumPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.BoolPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.IntPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr }
%struct.FloatPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, float, float, float, float, i32, float, ptr }
%struct.FunctionRNA = type { %struct.ContainerRNA, ptr, i32, ptr, ptr, ptr }
%struct.StringPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.bArmature = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.CollectionPropertyIterator = type { %struct.PointerRNA, %struct.PointerRNA, ptr, %union.anon, i32, i32, %struct.PointerRNA, i32 }
%union.anon = type { %struct.ArrayIterator }
%struct.ArrayIterator = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.Bone = type { ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], float, [3 x float], [3 x float], [3 x [3 x float]], i32, [3 x float], [3 x float], [4 x [4 x float]], float, float, float, float, float, float, float, float, float, float, [3 x float], i32, i16, [1 x i16] }
%struct.EditBone = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], float, [3 x float], [3 x float], i32, i32, float, float, float, float, float, float, float, float, float, float, i16 }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.bPose = type { %struct.ListBase, ptr, i16, i16, i32, i32, float, [3 x float], [3 x float], %struct.ListBase, i32, i32, ptr, ptr, %struct.bAnimVizSettings, [64 x i8] }
%union.IDPropertyTemplate = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, i16, i8 }

@RNA_AnimData = external global %struct.StructRNA, align 8
@rna_Armature_bones = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_Armature_edit_bones, ptr @rna_Armature_animation_data, i32 -1, ptr @.str.5, i32 0, ptr @.str.6, ptr @.str.7, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr @RNA_ArmatureBones, ptr null }, ptr @Armature_bones_begin, ptr @Armature_bones_next, ptr @Armature_bones_end, ptr @Armature_bones_get, ptr null, ptr null, ptr @Armature_bones_lookup_string, ptr null, ptr @RNA_Bone }, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [12 x i8] c"name string\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@rna_Armature_edit_bones = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_Armature_pose_position, ptr @rna_Armature_bones, i32 -1, ptr @.str.8, i32 0, ptr @.str.9, ptr @.str.7, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr @RNA_ArmatureEditBones, ptr null }, ptr @Armature_edit_bones_begin, ptr @Armature_edit_bones_next, ptr @Armature_edit_bones_end, ptr @Armature_edit_bones_get, ptr null, ptr @Armature_edit_bones_lookup_int, ptr @Armature_edit_bones_lookup_string, ptr null, ptr @RNA_EditBone }, align 8
@rna_ArmatureBones_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_ArmatureBones_rna_type, ptr null, i32 -1, ptr @.str.71, i32 128, ptr @.str.72, ptr @.str.73, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ArmatureBones_rna_properties_begin, ptr @ArmatureBones_rna_properties_next, ptr @ArmatureBones_rna_properties_end, ptr @ArmatureBones_rna_properties_get, ptr null, ptr null, ptr @ArmatureBones_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@RNA_Bone = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_EditBone, ptr @RNA_ArmatureEditBones, ptr null, %struct.ListBase { ptr @rna_Bone_rna_properties, ptr @rna_Bone_head_local } }, ptr @.str.198, ptr null, ptr null, i32 4, ptr @.str.198, ptr @.str.199, ptr @.str.4, i32 174, ptr @rna_Bone_name, ptr @rna_Bone_rna_properties, ptr null, ptr null, ptr null, ptr @rna_Bone_path, ptr null, ptr null, ptr null, ptr @rna_Bone_idprops, %struct.ListBase { ptr @rna_Bone_evaluate_envelope_func, ptr @rna_Bone_evaluate_envelope_func } }, align 8
@rna_ArmatureEditBones_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_ArmatureEditBones_rna_type, ptr null, i32 -1, ptr @.str.71, i32 128, ptr @.str.72, ptr @.str.73, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ArmatureEditBones_rna_properties_begin, ptr @ArmatureEditBones_rna_properties_next, ptr @ArmatureEditBones_rna_properties_end, ptr @ArmatureEditBones_rna_properties_get, ptr null, ptr null, ptr @ArmatureEditBones_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@RNA_EditBone = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_BoidRule, ptr @RNA_Bone, ptr null, %struct.ListBase { ptr @rna_EditBone_rna_properties, ptr @rna_EditBone_matrix } }, ptr @.str.217, ptr null, ptr null, i32 4, ptr @.str.218, ptr @.str.219, ptr @.str.4, i32 174, ptr @rna_EditBone_name, ptr @rna_EditBone_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rna_EditBone_idprops, %struct.ListBase { ptr @rna_EditBone_align_roll_func, ptr @rna_EditBone_align_roll_func } }, align 8
@rna_Bone_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_Bone_rna_type, ptr null, i32 -1, ptr @.str.71, i32 128, ptr @.str.72, ptr @.str.73, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Bone_rna_properties_begin, ptr @Bone_rna_properties_next, ptr @Bone_rna_properties_end, ptr @Bone_rna_properties_get, ptr null, ptr null, ptr @Bone_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_Bone_children = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_Bone_name, ptr @rna_Bone_parent, i32 -1, ptr @.str.101, i32 0, ptr @.str.102, ptr @.str.103, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Bone_children_begin, ptr @Bone_children_next, ptr @Bone_children_end, ptr @Bone_children_get, ptr null, ptr @Bone_children_lookup_int, ptr @Bone_children_lookup_string, ptr null, ptr @RNA_Bone }, align 8
@rna_EditBone_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_EditBone_rna_type, ptr null, i32 -1, ptr @.str.71, i32 128, ptr @.str.72, ptr @.str.73, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @EditBone_rna_properties_begin, ptr @EditBone_rna_properties_next, ptr @EditBone_rna_properties_end, ptr @EditBone_rna_properties_get, ptr null, ptr null, ptr @EditBone_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"animation_data\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Animation Data\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Animation data for this datablock\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@rna_Armature_animation_data = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Armature_bones, ptr null, i32 -1, ptr @.str.1, i32 8388608, ptr @.str.2, ptr @.str.3, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Armature_animation_data_get, ptr null, ptr null, ptr null, ptr @RNA_AnimData }, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"bones\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"Bones\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@RNA_ArmatureBones = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_ArmatureEditBones, ptr @RNA_Armature, ptr null, %struct.ListBase { ptr @rna_ArmatureBones_rna_properties, ptr @rna_ArmatureBones_active } }, ptr @.str.80, ptr null, ptr null, i32 4, ptr @.str.81, ptr @.str.82, ptr @.str.4, i32 17, ptr null, ptr @rna_ArmatureBones_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@rna_Armature_pose_position = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Armature_draw_type, ptr @rna_Armature_edit_bones, i32 -1, ptr @.str.10, i32 65539, ptr @.str.11, ptr @.str.12, i32 0, ptr @.str.4, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Armature_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Armature_pose_position_get, ptr @Armature_pose_position_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_Armature_pose_position_items, i32 2, i32 0 }, align 8
@.str.8 = private unnamed_addr constant [11 x i8] c"edit_bones\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"Edit Bones\00", align 1
@RNA_ArmatureEditBones = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_Bone, ptr @RNA_ArmatureBones, ptr null, %struct.ListBase { ptr @rna_ArmatureEditBones_rna_properties, ptr @rna_ArmatureEditBones_active } }, ptr @.str.95, ptr null, ptr null, i32 4, ptr @.str.96, ptr @.str.97, ptr @.str.4, i32 17, ptr null, ptr @rna_ArmatureEditBones_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_ArmatureEditBones_new_func, ptr @rna_ArmatureEditBones_remove_func } }, align 8
@rna_Armature_draw_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Armature_deform_method, ptr @rna_Armature_pose_position, i32 -1, ptr @.str.13, i32 65539, ptr @.str.14, ptr @.str.7, i32 0, ptr @.str.4, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Armature_redraw_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Armature_draw_type_get, ptr @Armature_draw_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_Armature_draw_type_items, i32 5, i32 0 }, align 8
@.str.10 = private unnamed_addr constant [14 x i8] c"pose_position\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"Pose Position\00", align 1
@.str.12 = private unnamed_addr constant [51 x i8] c"Show armature in binding pose or final posed state\00", align 1
@rna_Armature_pose_position_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.224, i32 0, ptr @.str.11, ptr @.str.225 }, %struct.EnumPropertyItem { i32 1, ptr @.str.226, i32 0, ptr @.str.227, ptr @.str.228 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Armature_deform_method = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Armature_ghost_type, ptr @rna_Armature_draw_type, i32 -1, ptr @.str.15, i32 65539, ptr @.str.16, ptr @.str.17, i32 0, ptr @.str.4, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Armature_redraw_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Armature_deform_method_get, ptr @Armature_deform_method_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_Armature_deform_method_items, i32 2, i32 0 }, align 8
@.str.13 = private unnamed_addr constant [10 x i8] c"draw_type\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"Draw Type\00", align 1
@rna_Armature_draw_type_items = internal global [6 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.229, i32 0, ptr @.str.230, ptr @.str.231 }, %struct.EnumPropertyItem { i32 1, ptr @.str.232, i32 0, ptr @.str.233, ptr @.str.234 }, %struct.EnumPropertyItem { i32 2, ptr @.str.235, i32 0, ptr @.str.236, ptr @.str.237 }, %struct.EnumPropertyItem { i32 3, ptr @.str.238, i32 0, ptr @.str.239, ptr @.str.240 }, %struct.EnumPropertyItem { i32 4, ptr @.str.241, i32 0, ptr @.str.242, ptr @.str.243 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Armature_ghost_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Armature_layers, ptr @rna_Armature_deform_method, i32 -1, ptr @.str.18, i32 65539, ptr @.str.19, ptr @.str.20, i32 0, ptr @.str.4, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Armature_redraw_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Armature_ghost_type_get, ptr @Armature_ghost_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_Armature_ghost_type_items, i32 3, i32 0 }, align 8
@.str.15 = private unnamed_addr constant [14 x i8] c"deform_method\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"Vertex Deformer\00", align 1
@.str.17 = private unnamed_addr constant [42 x i8] c"Vertex Deformer Method (Game Engine only)\00", align 1
@rna_Armature_deform_method_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.244, i32 0, ptr @.str.245, ptr @.str.246 }, %struct.EnumPropertyItem { i32 1, ptr @.str.247, i32 0, ptr @.str.248, ptr @.str.249 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Armature_layers = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Armature_layers_protected, ptr @rna_Armature_ghost_type, i32 -1, ptr @.str.21, i32 65539, ptr @.str.22, ptr @.str.23, i32 0, ptr @.str.4, i32 0, i32 41, ptr null, i32 1, [3 x i32] [i32 32, i32 0, i32 0], i32 32, ptr @rna_Armature_update_layers, i32 85196800, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr @Armature_layers_get, ptr @Armature_layers_set, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @rna_Armature_layers_default }, align 8
@.str.18 = private unnamed_addr constant [11 x i8] c"ghost_type\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"Ghost Type\00", align 1
@.str.20 = private unnamed_addr constant [43 x i8] c"Method of Onion-skinning for active Action\00", align 1
@rna_Armature_ghost_type_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.250, i32 0, ptr @.str.251, ptr @.str.252 }, %struct.EnumPropertyItem { i32 1, ptr @.str.253, i32 0, ptr @.str.254, ptr @.str.255 }, %struct.EnumPropertyItem { i32 2, ptr @.str.256, i32 0, ptr @.str.257, ptr @.str.258 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Armature_layers_protected = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Armature_show_axes, ptr @rna_Armature_layers, i32 -1, ptr @.str.24, i32 3, ptr @.str.25, ptr @.str.26, i32 0, ptr @.str.4, i32 0, i32 40, ptr null, i32 1, [3 x i32] [i32 32, i32 0, i32 0], i32 32, ptr @rna_Armature_redraw_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr @Armature_layers_protected_get, ptr @Armature_layers_protected_set, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @rna_Armature_layers_protected_default }, align 8
@.str.21 = private unnamed_addr constant [7 x i8] c"layers\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"Visible Layers\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"Armature layer visibility\00", align 1
@rna_Armature_layers_default = internal global [32 x i32] zeroinitializer, align 16
@rna_Armature_show_axes = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Armature_show_names, ptr @rna_Armature_layers_protected, i32 -1, ptr @.str.27, i32 65539, ptr @.str.28, ptr @.str.29, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Armature_redraw_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Armature_show_axes_get, ptr @Armature_show_axes_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.24 = private unnamed_addr constant [17 x i8] c"layers_protected\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"Layer Proxy Protection\00", align 1
@.str.26 = private unnamed_addr constant [91 x i8] c"Protected layers in Proxy Instances are restored to Proxy settings on file reload and undo\00", align 1
@rna_Armature_layers_protected_default = internal global [32 x i32] zeroinitializer, align 16
@rna_Armature_show_names = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Armature_use_deform_delay, ptr @rna_Armature_show_axes, i32 -1, ptr @.str.30, i32 65539, ptr @.str.31, ptr @.str.32, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Armature_redraw_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Armature_show_names_get, ptr @Armature_show_names_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.27 = private unnamed_addr constant [10 x i8] c"show_axes\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"Draw Axes\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"Draw bone axes\00", align 1
@rna_Armature_use_deform_delay = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Armature_use_mirror_x, ptr @rna_Armature_show_names, i32 -1, ptr @.str.33, i32 3, ptr @.str.34, ptr @.str.35, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Armature_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Armature_use_deform_delay_get, ptr @Armature_use_deform_delay_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.30 = private unnamed_addr constant [11 x i8] c"show_names\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"Draw Names\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"Draw bone names\00", align 1
@rna_Armature_use_mirror_x = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Armature_use_auto_ik, ptr @rna_Armature_use_deform_delay, i32 -1, ptr @.str.36, i32 65539, ptr @.str.37, ptr @.str.38, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Armature_redraw_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Armature_use_mirror_x_get, ptr @Armature_use_mirror_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.33 = private unnamed_addr constant [17 x i8] c"use_deform_delay\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"Delay Deform\00", align 1
@.str.35 = private unnamed_addr constant [59 x i8] c"Don't deform children when manipulating bones in Pose Mode\00", align 1
@rna_Armature_use_auto_ik = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Armature_show_bone_custom_shapes, ptr @rna_Armature_use_mirror_x, i32 -1, ptr @.str.39, i32 65539, ptr @.str.40, ptr @.str.41, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Armature_redraw_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Armature_use_auto_ik_get, ptr @Armature_use_auto_ik_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.36 = private unnamed_addr constant [13 x i8] c"use_mirror_x\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"X-Axis Mirror\00", align 1
@.str.38 = private unnamed_addr constant [58 x i8] c"Apply changes to matching bone on opposite side of X-Axis\00", align 1
@rna_Armature_show_bone_custom_shapes = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Armature_show_group_colors, ptr @rna_Armature_use_auto_ik, i32 -1, ptr @.str.42, i32 3, ptr @.str.43, ptr @.str.44, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Armature_redraw_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Armature_show_bone_custom_shapes_get, ptr @Armature_show_bone_custom_shapes_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.39 = private unnamed_addr constant [12 x i8] c"use_auto_ik\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"Auto IK\00", align 1
@.str.41 = private unnamed_addr constant [63 x i8] c"Add temporary IK constraints while grabbing bones in Pose Mode\00", align 1
@rna_Armature_show_group_colors = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Armature_show_only_ghost_selected, ptr @rna_Armature_show_bone_custom_shapes, i32 -1, ptr @.str.45, i32 3, ptr @.str.46, ptr @.str.47, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Armature_redraw_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Armature_show_group_colors_get, ptr @Armature_show_group_colors_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.42 = private unnamed_addr constant [24 x i8] c"show_bone_custom_shapes\00", align 1
@.str.43 = private unnamed_addr constant [24 x i8] c"Draw Custom Bone Shapes\00", align 1
@.str.44 = private unnamed_addr constant [36 x i8] c"Draw bones with their custom shapes\00", align 1
@rna_Armature_show_only_ghost_selected = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Armature_ghost_step, ptr @rna_Armature_show_group_colors, i32 -1, ptr @.str.48, i32 65539, ptr @.str.49, ptr @.str.7, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Armature_redraw_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Armature_show_only_ghost_selected_get, ptr @Armature_show_only_ghost_selected_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.45 = private unnamed_addr constant [18 x i8] c"show_group_colors\00", align 1
@.str.46 = private unnamed_addr constant [23 x i8] c"Draw Bone Group Colors\00", align 1
@.str.47 = private unnamed_addr constant [23 x i8] c"Draw bone group colors\00", align 1
@rna_Armature_ghost_step = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Armature_ghost_size, ptr @rna_Armature_show_only_ghost_selected, i32 -1, ptr @.str.50, i32 73731, ptr @.str.51, ptr @.str.52, i32 0, ptr @.str.4, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Armature_redraw_data, i32 0, ptr null, ptr null, i32 224, i32 1, ptr null, ptr null }, ptr @Armature_ghost_step_get, ptr @Armature_ghost_step_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 30, i32 0, i32 30, i32 1, i32 0, ptr null }, align 8
@.str.48 = private unnamed_addr constant [25 x i8] c"show_only_ghost_selected\00", align 1
@.str.49 = private unnamed_addr constant [35 x i8] c"Draw Ghosts on Selected Bones Only\00", align 1
@rna_Armature_ghost_size = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Armature_ghost_frame_start, ptr @rna_Armature_ghost_step, i32 -1, ptr @.str.53, i32 73731, ptr @.str.54, ptr @.str.55, i32 0, ptr @.str.4, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Armature_redraw_data, i32 0, ptr null, ptr null, i32 226, i32 1, ptr null, ptr null }, ptr @Armature_ghost_size_get, ptr @Armature_ghost_size_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 20, i32 1, i32 20, i32 1, i32 0, ptr null }, align 8
@.str.50 = private unnamed_addr constant [11 x i8] c"ghost_step\00", align 1
@.str.51 = private unnamed_addr constant [14 x i8] c"Ghosting Step\00", align 1
@.str.52 = private unnamed_addr constant [128 x i8] c"Number of frame steps on either side of current frame to show as ghosts (only for 'Around Current Frame' Onion-skinning method)\00", align 1
@rna_Armature_ghost_frame_start = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Armature_ghost_frame_end, ptr @rna_Armature_ghost_size, i32 -1, ptr @.str.56, i32 65539, ptr @.str.57, ptr @.str.58, i32 0, ptr @.str.4, i32 1, i32 393233, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Armature_redraw_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Armature_ghost_frame_start_get, ptr @Armature_ghost_frame_start_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -10000, i32 10000, i32 -2147483648, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@.str.53 = private unnamed_addr constant [11 x i8] c"ghost_size\00", align 1
@.str.54 = private unnamed_addr constant [20 x i8] c"Ghosting Frame Step\00", align 1
@.str.55 = private unnamed_addr constant [69 x i8] c"Frame step for Ghosts (not for 'On Keyframes' Onion-skinning method)\00", align 1
@rna_Armature_ghost_frame_end = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Armature_is_editmode, ptr @rna_Armature_ghost_frame_start, i32 -1, ptr @.str.59, i32 65539, ptr @.str.60, ptr @.str.61, i32 0, ptr @.str.4, i32 1, i32 393233, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Armature_redraw_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Armature_ghost_frame_end_get, ptr @Armature_ghost_frame_end_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -10000, i32 10000, i32 -2147483648, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@.str.56 = private unnamed_addr constant [18 x i8] c"ghost_frame_start\00", align 1
@.str.57 = private unnamed_addr constant [21 x i8] c"Ghosting Start Frame\00", align 1
@.str.58 = private unnamed_addr constant [100 x i8] c"Starting frame of range of Ghosts to display (not for 'Around Current Frame' Onion-skinning method)\00", align 1
@rna_Armature_is_editmode = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_Armature_ghost_frame_end, i32 -1, ptr @.str.62, i32 2, ptr @.str.63, ptr @.str.64, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Armature_is_editmode_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.59 = private unnamed_addr constant [16 x i8] c"ghost_frame_end\00", align 1
@.str.60 = private unnamed_addr constant [19 x i8] c"Ghosting End Frame\00", align 1
@.str.61 = private unnamed_addr constant [95 x i8] c"End frame of range of Ghosts to display (not for 'Around Current Frame' Onion-skinning method)\00", align 1
@.str.62 = private unnamed_addr constant [12 x i8] c"is_editmode\00", align 1
@.str.63 = private unnamed_addr constant [12 x i8] c"Is Editmode\00", align 1
@.str.64 = private unnamed_addr constant [27 x i8] c"True when used in editmode\00", align 1
@.str.65 = private unnamed_addr constant [7 x i8] c"matrix\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"Matrix\00", align 1
@rna_Armature_transform_matrix_default = internal global [16 x float] zeroinitializer, align 16
@rna_Armature_transform_matrix = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.65, i32 7, ptr @.str.7, ptr @.str.66, i32 0, ptr @.str.4, i32 2, i32 25, ptr null, i32 2, [3 x i32] [i32 4, i32 4, i32 0], i32 16, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 0.000000e+00, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 3, float 0.000000e+00, ptr @rna_Armature_transform_matrix_default }, align 8
@.str.67 = private unnamed_addr constant [10 x i8] c"transform\00", align 1
@.str.68 = private unnamed_addr constant [37 x i8] c"Transform armature bones by a matrix\00", align 1
@rna_Armature_transform_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_Armature_transform_matrix, ptr @rna_Armature_transform_matrix } }, ptr @.str.67, i32 0, ptr @.str.68, ptr @Armature_transform_call, ptr null }, align 8
@RNA_MouseActuator = external global %struct.StructRNA, align 8
@.str.69 = private unnamed_addr constant [9 x i8] c"Armature\00", align 1
@.str.70 = private unnamed_addr constant [88 x i8] c"Armature datablock containing a hierarchy of bones, usually used for rigging characters\00", align 1
@rna_ID_name = external global %struct.StringPropertyRNA, align 8
@rna_ID_rna_properties = external global %struct.CollectionPropertyRNA, align 8
@RNA_ID = external global %struct.StructRNA, align 8
@RNA_Armature = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_ArmatureBones, ptr @RNA_MouseActuator, ptr null, %struct.ListBase { ptr @rna_Armature_animation_data, ptr @rna_Armature_is_editmode } }, ptr @.str.69, ptr null, ptr null, i32 7, ptr @.str.69, ptr @.str.70, ptr @.str.4, i32 172, ptr @rna_ID_name, ptr @rna_ID_rna_properties, ptr @RNA_ID, ptr null, ptr @rna_ID_refine, ptr null, ptr null, ptr null, ptr null, ptr @rna_ID_idprops, %struct.ListBase { ptr @rna_Armature_transform_func, ptr @rna_Armature_transform_func } }, align 8
@rna_ArmatureBones_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_ArmatureBones_active, ptr @rna_ArmatureBones_rna_properties, i32 -1, ptr @.str.74, i32 8912896, ptr @.str.75, ptr @.str.76, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ArmatureBones_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@.str.71 = private unnamed_addr constant [15 x i8] c"rna_properties\00", align 1
@.str.72 = private unnamed_addr constant [11 x i8] c"Properties\00", align 1
@.str.73 = private unnamed_addr constant [24 x i8] c"RNA property collection\00", align 1
@RNA_Property = external global %struct.StructRNA, align 8
@rna_ArmatureBones_active = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_ArmatureBones_rna_type, i32 -1, ptr @.str.77, i32 8388609, ptr @.str.78, ptr @.str.79, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ArmatureBones_active_get, ptr @ArmatureBones_active_set, ptr null, ptr null, ptr @RNA_Bone }, align 8
@.str.74 = private unnamed_addr constant [9 x i8] c"rna_type\00", align 1
@.str.75 = private unnamed_addr constant [4 x i8] c"RNA\00", align 1
@.str.76 = private unnamed_addr constant [20 x i8] c"RNA type definition\00", align 1
@RNA_Struct = external global %struct.StructRNA, align 8
@.str.77 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.78 = private unnamed_addr constant [12 x i8] c"Active Bone\00", align 1
@.str.79 = private unnamed_addr constant [23 x i8] c"Armature's active bone\00", align 1
@.str.80 = private unnamed_addr constant [14 x i8] c"ArmatureBones\00", align 1
@.str.81 = private unnamed_addr constant [15 x i8] c"Armature Bones\00", align 1
@.str.82 = private unnamed_addr constant [29 x i8] c"Collection of armature bones\00", align 1
@rna_ArmatureEditBones_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_ArmatureEditBones_active, ptr @rna_ArmatureEditBones_rna_properties, i32 -1, ptr @.str.74, i32 8912896, ptr @.str.75, ptr @.str.76, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ArmatureEditBones_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_ArmatureEditBones_active = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_ArmatureEditBones_rna_type, i32 -1, ptr @.str.77, i32 8388609, ptr @.str.83, ptr @.str.84, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ArmatureEditBones_active_get, ptr @ArmatureEditBones_active_set, ptr null, ptr null, ptr @RNA_EditBone }, align 8
@.str.83 = private unnamed_addr constant [16 x i8] c"Active EditBone\00", align 1
@.str.84 = private unnamed_addr constant [27 x i8] c"Armatures active edit bone\00", align 1
@rna_ArmatureEditBones_new_bone = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_ArmatureEditBones_new_name, i32 -1, ptr @.str.88, i32 8388616, ptr @.str.7, ptr @.str.89, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_EditBone }, align 8
@.str.85 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.86 = private unnamed_addr constant [22 x i8] c"New name for the bone\00", align 1
@.str.87 = private unnamed_addr constant [7 x i8] c"Object\00", align 1
@rna_ArmatureEditBones_new_name = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_ArmatureEditBones_new_bone, ptr null, i32 -1, ptr @.str.85, i32 262149, ptr @.str.7, ptr @.str.86, i32 0, ptr @.str.4, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @.str.87 }, align 8
@.str.88 = private unnamed_addr constant [5 x i8] c"bone\00", align 1
@.str.89 = private unnamed_addr constant [24 x i8] c"Newly created edit bone\00", align 1
@rna_ArmatureEditBones_remove_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr @rna_ArmatureEditBones_new_func, ptr null, %struct.ListBase { ptr @rna_ArmatureEditBones_remove_bone, ptr @rna_ArmatureEditBones_remove_bone } }, ptr @.str.93, i32 16, ptr @.str.94, ptr @ArmatureEditBones_remove_call, ptr null }, align 8
@.str.90 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.91 = private unnamed_addr constant [15 x i8] c"Add a new bone\00", align 1
@rna_ArmatureEditBones_new_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_ArmatureEditBones_remove_func, ptr null, ptr null, %struct.ListBase { ptr @rna_ArmatureEditBones_new_name, ptr @rna_ArmatureEditBones_new_bone } }, ptr @.str.90, i32 16, ptr @.str.91, ptr @ArmatureEditBones_new_call, ptr @rna_ArmatureEditBones_new_bone }, align 8
@.str.92 = private unnamed_addr constant [19 x i8] c"EditBone to remove\00", align 1
@rna_ArmatureEditBones_remove_bone = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.88, i32 264196, ptr @.str.7, ptr @.str.92, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_EditBone }, align 8
@.str.93 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.94 = private unnamed_addr constant [42 x i8] c"Remove an existing bone from the armature\00", align 1
@.str.95 = private unnamed_addr constant [18 x i8] c"ArmatureEditBones\00", align 1
@.str.96 = private unnamed_addr constant [19 x i8] c"Armature EditBones\00", align 1
@.str.97 = private unnamed_addr constant [34 x i8] c"Collection of armature edit bones\00", align 1
@rna_Bone_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Bone_parent, ptr @rna_Bone_rna_properties, i32 -1, ptr @.str.74, i32 8912896, ptr @.str.75, ptr @.str.76, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Bone_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_Bone_parent = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Bone_children, ptr @rna_Bone_rna_type, i32 -1, ptr @.str.98, i32 8388608, ptr @.str.99, ptr @.str.100, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Armature_redraw_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Bone_parent_get, ptr null, ptr null, ptr null, ptr @RNA_Bone }, align 8
@.str.98 = private unnamed_addr constant [7 x i8] c"parent\00", align 1
@.str.99 = private unnamed_addr constant [7 x i8] c"Parent\00", align 1
@.str.100 = private unnamed_addr constant [31 x i8] c"Parent bone (in same Armature)\00", align 1
@rna_Bone_name = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_Bone_layers, ptr @rna_Bone_children, i32 -1, ptr @.str.85, i32 262145, ptr @.str.104, ptr @.str.7, i32 0, ptr @.str.4, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr @rna_Bone_update_renamed, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Bone_name_get, ptr @Bone_name_length, ptr @Bone_name_set, ptr null, ptr null, ptr null, i32 64, ptr @.str.7 }, align 8
@.str.101 = private unnamed_addr constant [9 x i8] c"children\00", align 1
@.str.102 = private unnamed_addr constant [9 x i8] c"Children\00", align 1
@.str.103 = private unnamed_addr constant [38 x i8] c"Bones which are children of this bone\00", align 1
@rna_Bone_layers = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Bone_use_connect, ptr @rna_Bone_name, i32 -1, ptr @.str.21, i32 3, ptr @.str.105, ptr @.str.106, i32 0, ptr @.str.4, i32 0, i32 41, ptr null, i32 1, [3 x i32] [i32 32, i32 0, i32 0], i32 32, ptr @rna_Armature_redraw_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr @Bone_layers_get, ptr @Bone_layers_set, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @rna_Bone_layers_default }, align 8
@.str.104 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@rna_Bone_use_connect = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Bone_use_inherit_rotation, ptr @rna_Bone_layers, i32 -1, ptr @.str.107, i32 2, ptr @.str.108, ptr @.str.109, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Armature_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Bone_use_connect_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.105 = private unnamed_addr constant [7 x i8] c"Layers\00", align 1
@.str.106 = private unnamed_addr constant [22 x i8] c"Layers bone exists in\00", align 1
@rna_Bone_layers_default = internal global [32 x i32] zeroinitializer, align 16
@rna_Bone_use_inherit_rotation = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Bone_use_envelope_multiply, ptr @rna_Bone_use_connect, i32 -1, ptr @.str.110, i32 3, ptr @.str.111, ptr @.str.112, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Armature_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Bone_use_inherit_rotation_get, ptr @Bone_use_inherit_rotation_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.107 = private unnamed_addr constant [12 x i8] c"use_connect\00", align 1
@.str.108 = private unnamed_addr constant [10 x i8] c"Connected\00", align 1
@.str.109 = private unnamed_addr constant [66 x i8] c"When bone has a parent, bone's head is stuck to the parent's tail\00", align 1
@rna_Bone_use_envelope_multiply = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Bone_use_deform, ptr @rna_Bone_use_inherit_rotation, i32 -1, ptr @.str.113, i32 3, ptr @.str.114, ptr @.str.115, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Armature_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Bone_use_envelope_multiply_get, ptr @Bone_use_envelope_multiply_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.110 = private unnamed_addr constant [21 x i8] c"use_inherit_rotation\00", align 1
@.str.111 = private unnamed_addr constant [17 x i8] c"Inherit Rotation\00", align 1
@.str.112 = private unnamed_addr constant [49 x i8] c"Bone inherits rotation or scale from parent bone\00", align 1
@rna_Bone_use_deform = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Bone_use_inherit_scale, ptr @rna_Bone_use_envelope_multiply, i32 -1, ptr @.str.116, i32 3, ptr @.str.117, ptr @.str.118, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Armature_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Bone_use_deform_get, ptr @Bone_use_deform_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.113 = private unnamed_addr constant [22 x i8] c"use_envelope_multiply\00", align 1
@.str.114 = private unnamed_addr constant [36 x i8] c"Multiply Vertex Group with Envelope\00", align 1
@.str.115 = private unnamed_addr constant [86 x i8] c"When deforming bone, multiply effects of Vertex Group weights with Envelope influence\00", align 1
@rna_Bone_use_inherit_scale = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Bone_use_local_location, ptr @rna_Bone_use_deform, i32 -1, ptr @.str.119, i32 3, ptr @.str.120, ptr @.str.121, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Armature_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Bone_use_inherit_scale_get, ptr @Bone_use_inherit_scale_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.116 = private unnamed_addr constant [11 x i8] c"use_deform\00", align 1
@.str.117 = private unnamed_addr constant [7 x i8] c"Deform\00", align 1
@.str.118 = private unnamed_addr constant [31 x i8] c"Enable Bone to deform geometry\00", align 1
@rna_Bone_use_local_location = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Bone_use_relative_parent, ptr @rna_Bone_use_inherit_scale, i32 -1, ptr @.str.122, i32 3, ptr @.str.123, ptr @.str.124, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Armature_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Bone_use_local_location_get, ptr @Bone_use_local_location_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.119 = private unnamed_addr constant [18 x i8] c"use_inherit_scale\00", align 1
@.str.120 = private unnamed_addr constant [14 x i8] c"Inherit Scale\00", align 1
@.str.121 = private unnamed_addr constant [39 x i8] c"Bone inherits scaling from parent bone\00", align 1
@rna_Bone_use_relative_parent = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Bone_show_wire, ptr @rna_Bone_use_local_location, i32 -1, ptr @.str.125, i32 3, ptr @.str.126, ptr @.str.127, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Armature_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Bone_use_relative_parent_get, ptr @Bone_use_relative_parent_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.122 = private unnamed_addr constant [19 x i8] c"use_local_location\00", align 1
@.str.123 = private unnamed_addr constant [15 x i8] c"Local Location\00", align 1
@.str.124 = private unnamed_addr constant [36 x i8] c"Bone location is set in local space\00", align 1
@rna_Bone_show_wire = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Bone_use_cyclic_offset, ptr @rna_Bone_use_relative_parent, i32 -1, ptr @.str.128, i32 3, ptr @.str.129, ptr @.str.130, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Armature_redraw_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Bone_show_wire_get, ptr @Bone_show_wire_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.125 = private unnamed_addr constant [20 x i8] c"use_relative_parent\00", align 1
@.str.126 = private unnamed_addr constant [19 x i8] c"Relative Parenting\00", align 1
@.str.127 = private unnamed_addr constant [57 x i8] c"Object children will use relative transform, like deform\00", align 1
@rna_Bone_use_cyclic_offset = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Bone_hide_select, ptr @rna_Bone_show_wire, i32 -1, ptr @.str.131, i32 3, ptr @.str.132, ptr @.str.133, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Armature_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Bone_use_cyclic_offset_get, ptr @Bone_use_cyclic_offset_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.128 = private unnamed_addr constant [10 x i8] c"show_wire\00", align 1
@.str.129 = private unnamed_addr constant [10 x i8] c"Draw Wire\00", align 1
@.str.130 = private unnamed_addr constant [115 x i8] c"Bone is always drawn as Wireframe regardless of viewport draw mode (useful for non-obstructive custom bone shapes)\00", align 1
@rna_Bone_hide_select = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Bone_envelope_distance, ptr @rna_Bone_use_cyclic_offset, i32 -1, ptr @.str.134, i32 3, ptr @.str.135, ptr @.str.136, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Armature_redraw_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Bone_hide_select_get, ptr @Bone_hide_select_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.131 = private unnamed_addr constant [18 x i8] c"use_cyclic_offset\00", align 1
@.str.132 = private unnamed_addr constant [14 x i8] c"Cyclic Offset\00", align 1
@.str.133 = private unnamed_addr constant [80 x i8] c"When bone doesn't have a parent, it receives cyclic offset effects (Deprecated)\00", align 1
@rna_Bone_envelope_distance = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Bone_envelope_weight, ptr @rna_Bone_hide_select, i32 -1, ptr @.str.137, i32 8195, ptr @.str.138, ptr @.str.139, i32 0, ptr @.str.4, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Armature_update_data, i32 0, ptr null, ptr null, i32 272, i32 4, ptr null, ptr null }, ptr @Bone_envelope_distance_get, ptr @Bone_envelope_distance_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+03, float 0.000000e+00, float 1.000000e+03, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.134 = private unnamed_addr constant [12 x i8] c"hide_select\00", align 1
@.str.135 = private unnamed_addr constant [11 x i8] c"Selectable\00", align 1
@.str.136 = private unnamed_addr constant [28 x i8] c"Bone is able to be selected\00", align 1
@rna_Bone_envelope_weight = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Bone_head_radius, ptr @rna_Bone_envelope_distance, i32 -1, ptr @.str.140, i32 8195, ptr @.str.141, ptr @.str.142, i32 0, ptr @.str.4, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Armature_update_data, i32 0, ptr null, ptr null, i32 276, i32 4, ptr null, ptr null }, ptr @Bone_envelope_weight_get, ptr @Bone_envelope_weight_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+03, float 0.000000e+00, float 1.000000e+03, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.137 = private unnamed_addr constant [18 x i8] c"envelope_distance\00", align 1
@.str.138 = private unnamed_addr constant [25 x i8] c"Envelope Deform Distance\00", align 1
@.str.139 = private unnamed_addr constant [53 x i8] c"Bone deformation distance (for Envelope deform only)\00", align 1
@rna_Bone_head_radius = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Bone_tail_radius, ptr @rna_Bone_envelope_weight, i32 -1, ptr @.str.143, i32 8195, ptr @.str.144, ptr @.str.145, i32 0, ptr @.str.4, i32 2, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Armature_update_data, i32 0, ptr null, ptr null, i32 300, i32 4, ptr null, ptr null }, ptr @Bone_head_radius_get, ptr @Bone_head_radius_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0x3F847AE140000000, float 1.000000e+02, float 0.000000e+00, float 0x47EFFFFFE0000000, float 0x3FB99999A0000000, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.140 = private unnamed_addr constant [16 x i8] c"envelope_weight\00", align 1
@.str.141 = private unnamed_addr constant [23 x i8] c"Envelope Deform Weight\00", align 1
@.str.142 = private unnamed_addr constant [51 x i8] c"Bone deformation weight (for Envelope deform only)\00", align 1
@rna_Bone_tail_radius = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Bone_bbone_segments, ptr @rna_Bone_head_radius, i32 -1, ptr @.str.146, i32 8195, ptr @.str.147, ptr @.str.148, i32 0, ptr @.str.4, i32 2, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Armature_update_data, i32 0, ptr null, ptr null, i32 304, i32 4, ptr null, ptr null }, ptr @Bone_tail_radius_get, ptr @Bone_tail_radius_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0x3F847AE140000000, float 1.000000e+02, float 0.000000e+00, float 0x47EFFFFFE0000000, float 0x3FB99999A0000000, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.143 = private unnamed_addr constant [12 x i8] c"head_radius\00", align 1
@.str.144 = private unnamed_addr constant [21 x i8] c"Envelope Head Radius\00", align 1
@.str.145 = private unnamed_addr constant [50 x i8] c"Radius of head of bone (for Envelope deform only)\00", align 1
@rna_Bone_bbone_segments = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Bone_bbone_in, ptr @rna_Bone_tail_radius, i32 -1, ptr @.str.149, i32 8195, ptr @.str.150, ptr @.str.151, i32 0, ptr @.str.4, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Armature_update_data, i32 0, ptr null, ptr null, i32 324, i32 1, ptr null, ptr null }, ptr @Bone_bbone_segments_get, ptr @Bone_bbone_segments_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 32, i32 1, i32 32, i32 1, i32 0, ptr null }, align 8
@.str.146 = private unnamed_addr constant [12 x i8] c"tail_radius\00", align 1
@.str.147 = private unnamed_addr constant [21 x i8] c"Envelope Tail Radius\00", align 1
@.str.148 = private unnamed_addr constant [50 x i8] c"Radius of tail of bone (for Envelope deform only)\00", align 1
@rna_Bone_bbone_in = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Bone_bbone_out, ptr @rna_Bone_bbone_segments, i32 -1, ptr @.str.152, i32 8195, ptr @.str.153, ptr @.str.154, i32 0, ptr @.str.4, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Armature_update_data, i32 0, ptr null, ptr null, i32 292, i32 4, ptr null, ptr null }, ptr @Bone_bbone_in_get, ptr @Bone_bbone_in_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 2.000000e+00, float 0.000000e+00, float 2.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.149 = private unnamed_addr constant [15 x i8] c"bbone_segments\00", align 1
@.str.150 = private unnamed_addr constant [16 x i8] c"B-Bone Segments\00", align 1
@.str.151 = private unnamed_addr constant [50 x i8] c"Number of subdivisions of bone (for B-Bones only)\00", align 1
@rna_Bone_bbone_out = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Bone_bbone_x, ptr @rna_Bone_bbone_in, i32 -1, ptr @.str.155, i32 8195, ptr @.str.156, ptr @.str.157, i32 0, ptr @.str.4, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Armature_update_data, i32 0, ptr null, ptr null, i32 296, i32 4, ptr null, ptr null }, ptr @Bone_bbone_out_get, ptr @Bone_bbone_out_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 2.000000e+00, float 0.000000e+00, float 2.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.152 = private unnamed_addr constant [9 x i8] c"bbone_in\00", align 1
@.str.153 = private unnamed_addr constant [15 x i8] c"B-Bone Ease In\00", align 1
@.str.154 = private unnamed_addr constant [49 x i8] c"Length of first Bezier Handle (for B-Bones only)\00", align 1
@rna_Bone_bbone_x = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Bone_bbone_z, ptr @rna_Bone_bbone_out, i32 -1, ptr @.str.158, i32 8195, ptr @.str.159, ptr @.str.160, i32 0, ptr @.str.4, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Armature_update_data, i32 0, ptr null, ptr null, i32 280, i32 4, ptr null, ptr null }, ptr @Bone_bbone_x_get, ptr @Bone_bbone_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+03, float 0.000000e+00, float 1.000000e+03, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.155 = private unnamed_addr constant [10 x i8] c"bbone_out\00", align 1
@.str.156 = private unnamed_addr constant [16 x i8] c"B-Bone Ease Out\00", align 1
@.str.157 = private unnamed_addr constant [50 x i8] c"Length of second Bezier Handle (for B-Bones only)\00", align 1
@rna_Bone_bbone_z = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Bone_hide, ptr @rna_Bone_bbone_x, i32 -1, ptr @.str.161, i32 8195, ptr @.str.162, ptr @.str.163, i32 0, ptr @.str.4, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Armature_update_data, i32 0, ptr null, ptr null, i32 288, i32 4, ptr null, ptr null }, ptr @Bone_bbone_z_get, ptr @Bone_bbone_z_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+03, float 0.000000e+00, float 1.000000e+03, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.158 = private unnamed_addr constant [8 x i8] c"bbone_x\00", align 1
@.str.159 = private unnamed_addr constant [23 x i8] c"B-Bone Display X Width\00", align 1
@.str.160 = private unnamed_addr constant [14 x i8] c"B-Bone X size\00", align 1
@rna_Bone_hide = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Bone_select, ptr @rna_Bone_bbone_z, i32 -1, ptr @.str.164, i32 3, ptr @.str.165, ptr @.str.166, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Armature_redraw_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Bone_hide_get, ptr @Bone_hide_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.161 = private unnamed_addr constant [8 x i8] c"bbone_z\00", align 1
@.str.162 = private unnamed_addr constant [23 x i8] c"B-Bone Display Z Width\00", align 1
@.str.163 = private unnamed_addr constant [14 x i8] c"B-Bone Z size\00", align 1
@rna_Bone_select = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Bone_select_head, ptr @rna_Bone_hide, i32 -1, ptr @.str.167, i32 1, ptr @.str.168, ptr @.str.7, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Bone_select_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Bone_select_get, ptr @Bone_select_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.164 = private unnamed_addr constant [5 x i8] c"hide\00", align 1
@.str.165 = private unnamed_addr constant [5 x i8] c"Hide\00", align 1
@.str.166 = private unnamed_addr constant [79 x i8] c"Bone is not visible when it is not in Edit Mode (i.e. in Object or Pose Modes)\00", align 1
@rna_Bone_select_head = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Bone_select_tail, ptr @rna_Bone_select, i32 -1, ptr @.str.169, i32 1, ptr @.str.170, ptr @.str.7, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Armature_redraw_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Bone_select_head_get, ptr @Bone_select_head_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.167 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@.str.168 = private unnamed_addr constant [7 x i8] c"Select\00", align 1
@rna_Bone_select_tail = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Bone_matrix, ptr @rna_Bone_select_head, i32 -1, ptr @.str.171, i32 1, ptr @.str.172, ptr @.str.7, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Armature_redraw_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Bone_select_tail_get, ptr @Bone_select_tail_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.169 = private unnamed_addr constant [12 x i8] c"select_head\00", align 1
@.str.170 = private unnamed_addr constant [12 x i8] c"Select Head\00", align 1
@rna_Bone_matrix = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Bone_matrix_local, ptr @rna_Bone_select_tail, i32 -1, ptr @.str.65, i32 8193, ptr @.str.173, ptr @.str.174, i32 0, ptr @.str.4, i32 2, i32 25, ptr null, i32 2, [3 x i32] [i32 3, i32 3, i32 0], i32 9, ptr null, i32 0, ptr null, ptr null, i32 140, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @Bone_matrix_get, ptr @Bone_matrix_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_Bone_matrix_default }, align 8
@.str.171 = private unnamed_addr constant [12 x i8] c"select_tail\00", align 1
@.str.172 = private unnamed_addr constant [12 x i8] c"Select Tail\00", align 1
@rna_Bone_matrix_local = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Bone_tail, ptr @rna_Bone_matrix, i32 -1, ptr @.str.175, i32 8193, ptr @.str.176, ptr @.str.177, i32 0, ptr @.str.4, i32 2, i32 25, ptr null, i32 2, [3 x i32] [i32 4, i32 4, i32 0], i32 16, ptr null, i32 0, ptr null, ptr null, i32 204, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @Bone_matrix_local_get, ptr @Bone_matrix_local_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_Bone_matrix_local_default }, align 8
@.str.173 = private unnamed_addr constant [12 x i8] c"Bone Matrix\00", align 1
@.str.174 = private unnamed_addr constant [16 x i8] c"3x3 bone matrix\00", align 1
@rna_Bone_matrix_default = internal global [9 x float] zeroinitializer, align 16
@rna_Bone_tail = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Bone_tail_local, ptr @rna_Bone_matrix_local, i32 -1, ptr @.str.178, i32 8193, ptr @.str.179, ptr @.str.180, i32 0, ptr @.str.4, i32 2, i32 65557, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr null, i32 0, ptr null, ptr null, i32 128, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @Bone_tail_get, ptr @Bone_tail_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 5, float 0.000000e+00, ptr @rna_Bone_tail_default }, align 8
@.str.175 = private unnamed_addr constant [13 x i8] c"matrix_local\00", align 1
@.str.176 = private unnamed_addr constant [30 x i8] c"Bone Armature-Relative Matrix\00", align 1
@.str.177 = private unnamed_addr constant [37 x i8] c"4x4 bone matrix relative to armature\00", align 1
@rna_Bone_matrix_local_default = internal global [16 x float] zeroinitializer, align 16
@rna_Bone_tail_local = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Bone_head, ptr @rna_Bone_tail, i32 -1, ptr @.str.181, i32 8193, ptr @.str.182, ptr @.str.183, i32 0, ptr @.str.4, i32 2, i32 65557, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr null, i32 0, ptr null, ptr null, i32 192, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @Bone_tail_local_get, ptr @Bone_tail_local_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 5, float 0.000000e+00, ptr @rna_Bone_tail_local_default }, align 8
@.str.178 = private unnamed_addr constant [5 x i8] c"tail\00", align 1
@.str.179 = private unnamed_addr constant [5 x i8] c"Tail\00", align 1
@.str.180 = private unnamed_addr constant [33 x i8] c"Location of tail end of the bone\00", align 1
@rna_Bone_tail_default = internal global [3 x float] zeroinitializer, align 4
@rna_Bone_head = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Bone_head_local, ptr @rna_Bone_tail_local, i32 -1, ptr @.str.184, i32 8193, ptr @.str.185, ptr @.str.186, i32 0, ptr @.str.4, i32 2, i32 65557, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr null, i32 0, ptr null, ptr null, i32 116, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @Bone_head_get, ptr @Bone_head_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 5, float 0.000000e+00, ptr @rna_Bone_head_default }, align 8
@.str.181 = private unnamed_addr constant [11 x i8] c"tail_local\00", align 1
@.str.182 = private unnamed_addr constant [23 x i8] c"Armature-Relative Tail\00", align 1
@.str.183 = private unnamed_addr constant [54 x i8] c"Location of tail end of the bone relative to armature\00", align 1
@rna_Bone_tail_local_default = internal global [3 x float] zeroinitializer, align 4
@rna_Bone_head_local = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_Bone_head, i32 -1, ptr @.str.187, i32 8193, ptr @.str.188, ptr @.str.189, i32 0, ptr @.str.4, i32 2, i32 65557, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr null, i32 0, ptr null, ptr null, i32 180, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @Bone_head_local_get, ptr @Bone_head_local_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 5, float 0.000000e+00, ptr @rna_Bone_head_local_default }, align 8
@.str.184 = private unnamed_addr constant [5 x i8] c"head\00", align 1
@.str.185 = private unnamed_addr constant [5 x i8] c"Head\00", align 1
@.str.186 = private unnamed_addr constant [56 x i8] c"Location of head end of the bone relative to its parent\00", align 1
@rna_Bone_head_default = internal global [3 x float] zeroinitializer, align 4
@.str.187 = private unnamed_addr constant [11 x i8] c"head_local\00", align 1
@.str.188 = private unnamed_addr constant [23 x i8] c"Armature-Relative Head\00", align 1
@.str.189 = private unnamed_addr constant [54 x i8] c"Location of head end of the bone relative to armature\00", align 1
@rna_Bone_head_local_default = internal global [3 x float] zeroinitializer, align 4
@rna_Bone_evaluate_envelope_factor = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_Bone_evaluate_envelope_point, i32 -1, ptr @.str.193, i32 11, ptr @.str.194, ptr @.str.195, i32 0, ptr @.str.4, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.190 = private unnamed_addr constant [6 x i8] c"point\00", align 1
@.str.191 = private unnamed_addr constant [6 x i8] c"Point\00", align 1
@.str.192 = private unnamed_addr constant [33 x i8] c"Position in 3d space to evaluate\00", align 1
@rna_Bone_evaluate_envelope_point_default = internal global [3 x float] zeroinitializer, align 4
@rna_Bone_evaluate_envelope_point = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Bone_evaluate_envelope_factor, ptr null, i32 -1, ptr @.str.190, i32 7, ptr @.str.191, ptr @.str.192, i32 0, ptr @.str.4, i32 2, i32 65565, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 3, float 0.000000e+00, ptr @rna_Bone_evaluate_envelope_point_default }, align 8
@.str.193 = private unnamed_addr constant [7 x i8] c"factor\00", align 1
@.str.194 = private unnamed_addr constant [7 x i8] c"Factor\00", align 1
@.str.195 = private unnamed_addr constant [16 x i8] c"Envelope factor\00", align 1
@.str.196 = private unnamed_addr constant [18 x i8] c"evaluate_envelope\00", align 1
@.str.197 = private unnamed_addr constant [39 x i8] c"Calculate bone envelope at given point\00", align 1
@rna_Bone_evaluate_envelope_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_Bone_evaluate_envelope_point, ptr @rna_Bone_evaluate_envelope_factor } }, ptr @.str.196, i32 0, ptr @.str.197, ptr @Bone_evaluate_envelope_call, ptr @rna_Bone_evaluate_envelope_factor }, align 8
@.str.198 = private unnamed_addr constant [5 x i8] c"Bone\00", align 1
@.str.199 = private unnamed_addr constant [30 x i8] c"Bone in an Armature datablock\00", align 1
@rna_EditBone_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_EditBone_parent, ptr @rna_EditBone_rna_properties, i32 -1, ptr @.str.74, i32 8912896, ptr @.str.75, ptr @.str.76, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @EditBone_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_EditBone_parent = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_EditBone_roll, ptr @rna_EditBone_rna_type, i32 -1, ptr @.str.98, i32 8388609, ptr @.str.99, ptr @.str.200, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Armature_redraw_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @EditBone_parent_get, ptr @EditBone_parent_set, ptr null, ptr null, ptr @RNA_EditBone }, align 8
@rna_EditBone_roll = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_EditBone_head, ptr @rna_EditBone_parent, i32 -1, ptr @.str.201, i32 1, ptr @.str.202, ptr @.str.203, i32 0, ptr @.str.4, i32 2, i32 327696, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Armature_editbone_transform_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @EditBone_roll_get, ptr @EditBone_roll_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0xC01921FB60000000, float 0x401921FB60000000, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0x3FB99999A0000000, i32 2, float 0.000000e+00, ptr null }, align 8
@.str.200 = private unnamed_addr constant [36 x i8] c"Parent edit bone (in same Armature)\00", align 1
@rna_EditBone_head = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_EditBone_tail, ptr @rna_EditBone_roll, i32 -1, ptr @.str.184, i32 1, ptr @.str.185, ptr @.str.204, i32 0, ptr @.str.4, i32 2, i32 65557, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr @rna_Armature_editbone_transform_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr @EditBone_head_get, ptr @EditBone_head_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_EditBone_head_default }, align 8
@.str.201 = private unnamed_addr constant [5 x i8] c"roll\00", align 1
@.str.202 = private unnamed_addr constant [5 x i8] c"Roll\00", align 1
@.str.203 = private unnamed_addr constant [36 x i8] c"Bone rotation around head-tail axis\00", align 1
@rna_EditBone_tail = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_EditBone_name, ptr @rna_EditBone_head, i32 -1, ptr @.str.178, i32 1, ptr @.str.179, ptr @.str.180, i32 0, ptr @.str.4, i32 2, i32 65557, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr @rna_Armature_editbone_transform_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr @EditBone_tail_get, ptr @EditBone_tail_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_EditBone_tail_default }, align 8
@.str.204 = private unnamed_addr constant [33 x i8] c"Location of head end of the bone\00", align 1
@rna_EditBone_head_default = internal global [3 x float] zeroinitializer, align 4
@rna_EditBone_name = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_EditBone_layers, ptr @rna_EditBone_tail, i32 -1, ptr @.str.85, i32 262145, ptr @.str.104, ptr @.str.7, i32 0, ptr @.str.4, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Bone_update_renamed, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @EditBone_name_get, ptr @EditBone_name_length, ptr @EditBone_name_set, ptr null, ptr null, ptr null, i32 0, ptr @.str.7 }, align 8
@rna_EditBone_tail_default = internal global [3 x float] zeroinitializer, align 4
@rna_EditBone_layers = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_EditBone_use_connect, ptr @rna_EditBone_name, i32 -1, ptr @.str.21, i32 3, ptr @.str.105, ptr @.str.106, i32 0, ptr @.str.4, i32 0, i32 41, ptr null, i32 1, [3 x i32] [i32 32, i32 0, i32 0], i32 32, ptr @rna_Armature_redraw_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr @EditBone_layers_get, ptr @EditBone_layers_set, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @rna_EditBone_layers_default }, align 8
@rna_EditBone_use_connect = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_EditBone_use_inherit_rotation, ptr @rna_EditBone_layers, i32 -1, ptr @.str.107, i32 3, ptr @.str.108, ptr @.str.109, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Armature_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @EditBone_use_connect_get, ptr @EditBone_use_connect_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_EditBone_layers_default = internal global [32 x i32] zeroinitializer, align 16
@rna_EditBone_use_inherit_rotation = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_EditBone_use_envelope_multiply, ptr @rna_EditBone_use_connect, i32 -1, ptr @.str.110, i32 3, ptr @.str.111, ptr @.str.112, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Armature_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @EditBone_use_inherit_rotation_get, ptr @EditBone_use_inherit_rotation_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_EditBone_use_envelope_multiply = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_EditBone_use_deform, ptr @rna_EditBone_use_inherit_rotation, i32 -1, ptr @.str.113, i32 3, ptr @.str.114, ptr @.str.115, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Armature_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @EditBone_use_envelope_multiply_get, ptr @EditBone_use_envelope_multiply_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_EditBone_use_deform = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_EditBone_use_inherit_scale, ptr @rna_EditBone_use_envelope_multiply, i32 -1, ptr @.str.116, i32 3, ptr @.str.117, ptr @.str.118, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Armature_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @EditBone_use_deform_get, ptr @EditBone_use_deform_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_EditBone_use_inherit_scale = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_EditBone_use_local_location, ptr @rna_EditBone_use_deform, i32 -1, ptr @.str.119, i32 3, ptr @.str.120, ptr @.str.121, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Armature_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @EditBone_use_inherit_scale_get, ptr @EditBone_use_inherit_scale_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_EditBone_use_local_location = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_EditBone_use_relative_parent, ptr @rna_EditBone_use_inherit_scale, i32 -1, ptr @.str.122, i32 3, ptr @.str.123, ptr @.str.124, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Armature_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @EditBone_use_local_location_get, ptr @EditBone_use_local_location_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_EditBone_use_relative_parent = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_EditBone_show_wire, ptr @rna_EditBone_use_local_location, i32 -1, ptr @.str.125, i32 3, ptr @.str.126, ptr @.str.127, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Armature_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @EditBone_use_relative_parent_get, ptr @EditBone_use_relative_parent_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_EditBone_show_wire = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_EditBone_use_cyclic_offset, ptr @rna_EditBone_use_relative_parent, i32 -1, ptr @.str.128, i32 3, ptr @.str.129, ptr @.str.130, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Armature_redraw_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @EditBone_show_wire_get, ptr @EditBone_show_wire_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_EditBone_use_cyclic_offset = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_EditBone_hide_select, ptr @rna_EditBone_show_wire, i32 -1, ptr @.str.131, i32 3, ptr @.str.132, ptr @.str.133, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Armature_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @EditBone_use_cyclic_offset_get, ptr @EditBone_use_cyclic_offset_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_EditBone_hide_select = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_EditBone_envelope_distance, ptr @rna_EditBone_use_cyclic_offset, i32 -1, ptr @.str.134, i32 3, ptr @.str.135, ptr @.str.136, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Armature_redraw_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @EditBone_hide_select_get, ptr @EditBone_hide_select_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_EditBone_envelope_distance = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_EditBone_envelope_weight, ptr @rna_EditBone_hide_select, i32 -1, ptr @.str.137, i32 3, ptr @.str.138, ptr @.str.139, i32 0, ptr @.str.4, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Armature_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @EditBone_envelope_distance_get, ptr @EditBone_envelope_distance_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+03, float 0.000000e+00, float 1.000000e+03, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_EditBone_envelope_weight = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_EditBone_head_radius, ptr @rna_EditBone_envelope_distance, i32 -1, ptr @.str.140, i32 3, ptr @.str.141, ptr @.str.142, i32 0, ptr @.str.4, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Armature_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @EditBone_envelope_weight_get, ptr @EditBone_envelope_weight_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+03, float 0.000000e+00, float 1.000000e+03, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_EditBone_head_radius = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_EditBone_tail_radius, ptr @rna_EditBone_envelope_weight, i32 -1, ptr @.str.143, i32 3, ptr @.str.144, ptr @.str.145, i32 0, ptr @.str.4, i32 2, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Armature_editbone_transform_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @EditBone_head_radius_get, ptr @EditBone_head_radius_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0x3F847AE140000000, float 1.000000e+02, float 0.000000e+00, float 0x47EFFFFFE0000000, float 0x3FB99999A0000000, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_EditBone_tail_radius = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_EditBone_bbone_segments, ptr @rna_EditBone_head_radius, i32 -1, ptr @.str.146, i32 3, ptr @.str.147, ptr @.str.148, i32 0, ptr @.str.4, i32 2, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Armature_editbone_transform_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @EditBone_tail_radius_get, ptr @EditBone_tail_radius_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0x3F847AE140000000, float 1.000000e+02, float 0.000000e+00, float 0x47EFFFFFE0000000, float 0x3FB99999A0000000, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_EditBone_bbone_segments = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_EditBone_bbone_in, ptr @rna_EditBone_tail_radius, i32 -1, ptr @.str.149, i32 3, ptr @.str.150, ptr @.str.151, i32 0, ptr @.str.4, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Armature_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @EditBone_bbone_segments_get, ptr @EditBone_bbone_segments_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 32, i32 1, i32 32, i32 1, i32 0, ptr null }, align 8
@rna_EditBone_bbone_in = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_EditBone_bbone_out, ptr @rna_EditBone_bbone_segments, i32 -1, ptr @.str.152, i32 3, ptr @.str.153, ptr @.str.154, i32 0, ptr @.str.4, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Armature_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @EditBone_bbone_in_get, ptr @EditBone_bbone_in_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 2.000000e+00, float 0.000000e+00, float 2.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_EditBone_bbone_out = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_EditBone_bbone_x, ptr @rna_EditBone_bbone_in, i32 -1, ptr @.str.155, i32 3, ptr @.str.156, ptr @.str.157, i32 0, ptr @.str.4, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Armature_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @EditBone_bbone_out_get, ptr @EditBone_bbone_out_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 2.000000e+00, float 0.000000e+00, float 2.000000e+00, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_EditBone_bbone_x = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_EditBone_bbone_z, ptr @rna_EditBone_bbone_out, i32 -1, ptr @.str.158, i32 3, ptr @.str.159, ptr @.str.160, i32 0, ptr @.str.4, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Armature_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @EditBone_bbone_x_get, ptr @EditBone_bbone_x_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+03, float 0.000000e+00, float 1.000000e+03, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_EditBone_bbone_z = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_EditBone_hide, ptr @rna_EditBone_bbone_x, i32 -1, ptr @.str.161, i32 3, ptr @.str.162, ptr @.str.163, i32 0, ptr @.str.4, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Armature_update_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @EditBone_bbone_z_get, ptr @EditBone_bbone_z_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 1.000000e+03, float 0.000000e+00, float 1.000000e+03, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_EditBone_hide = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_EditBone_lock, ptr @rna_EditBone_bbone_z, i32 -1, ptr @.str.164, i32 1, ptr @.str.165, ptr @.str.205, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Armature_redraw_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @EditBone_hide_get, ptr @EditBone_hide_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_EditBone_lock = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_EditBone_select, ptr @rna_EditBone_hide, i32 -1, ptr @.str.206, i32 1, ptr @.str.207, ptr @.str.208, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Armature_redraw_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @EditBone_lock_get, ptr @EditBone_lock_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.205 = private unnamed_addr constant [38 x i8] c"Bone is not visible when in Edit Mode\00", align 1
@rna_EditBone_select = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_EditBone_select_head, ptr @rna_EditBone_lock, i32 -1, ptr @.str.167, i32 1, ptr @.str.168, ptr @.str.7, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Armature_redraw_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @EditBone_select_get, ptr @EditBone_select_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.206 = private unnamed_addr constant [5 x i8] c"lock\00", align 1
@.str.207 = private unnamed_addr constant [5 x i8] c"Lock\00", align 1
@.str.208 = private unnamed_addr constant [53 x i8] c"Bone is not able to be transformed when in Edit Mode\00", align 1
@rna_EditBone_select_head = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_EditBone_select_tail, ptr @rna_EditBone_select, i32 -1, ptr @.str.169, i32 1, ptr @.str.209, ptr @.str.7, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Armature_redraw_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @EditBone_select_head_get, ptr @EditBone_select_head_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_EditBone_select_tail = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_EditBone_matrix, ptr @rna_EditBone_select_head, i32 -1, ptr @.str.171, i32 1, ptr @.str.210, ptr @.str.7, i32 0, ptr @.str.4, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Armature_redraw_data, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @EditBone_select_tail_get, ptr @EditBone_select_tail_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.209 = private unnamed_addr constant [12 x i8] c"Head Select\00", align 1
@rna_EditBone_matrix = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_EditBone_select_tail, i32 -1, ptr @.str.65, i32 8388611, ptr @.str.211, ptr @.str.212, i32 0, ptr @.str.4, i32 2, i32 25, ptr null, i32 2, [3 x i32] [i32 4, i32 4, i32 0], i32 16, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr @EditBone_matrix_get, ptr @EditBone_matrix_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_EditBone_matrix_default }, align 8
@.str.210 = private unnamed_addr constant [12 x i8] c"Tail Select\00", align 1
@.str.211 = private unnamed_addr constant [16 x i8] c"Editbone Matrix\00", align 1
@.str.212 = private unnamed_addr constant [147 x i8] c"Matrix combining loc/rot of the bone (head position, direction and roll), in armature space (WARNING: does not include/support bone's length/size)\00", align 1
@rna_EditBone_matrix_default = internal global [16 x float] zeroinitializer, align 16
@.str.213 = private unnamed_addr constant [7 x i8] c"vector\00", align 1
@.str.214 = private unnamed_addr constant [7 x i8] c"Vector\00", align 1
@rna_EditBone_align_roll_vector_default = internal global [3 x float] zeroinitializer, align 4
@rna_EditBone_align_roll_vector = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.213, i32 7, ptr @.str.214, ptr @.str.7, i32 0, ptr @.str.4, i32 2, i32 29, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+00, i32 3, float 0.000000e+00, ptr @rna_EditBone_align_roll_vector_default }, align 8
@.str.215 = private unnamed_addr constant [11 x i8] c"align_roll\00", align 1
@.str.216 = private unnamed_addr constant [94 x i8] c"Align the bone to a localspace roll so the Z axis points in the direction of the vector given\00", align 1
@rna_EditBone_align_roll_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_EditBone_align_roll_vector, ptr @rna_EditBone_align_roll_vector } }, ptr @.str.215, i32 0, ptr @.str.216, ptr @EditBone_align_roll_call, ptr null }, align 8
@RNA_BoidRule = external global %struct.StructRNA, align 8
@.str.217 = private unnamed_addr constant [9 x i8] c"EditBone\00", align 1
@.str.218 = private unnamed_addr constant [10 x i8] c"Edit Bone\00", align 1
@.str.219 = private unnamed_addr constant [39 x i8] c"Editmode bone in an Armature datablock\00", align 1
@.str.221 = private unnamed_addr constant [55 x i8] c"Armature '%s' not in edit mode, cannot add an editbone\00", align 1
@.str.222 = private unnamed_addr constant [58 x i8] c"Armature '%s' not in edit mode, cannot remove an editbone\00", align 1
@.str.223 = private unnamed_addr constant [41 x i8] c"Armature '%s' does not contain bone '%s'\00", align 1
@.str.224 = private unnamed_addr constant [5 x i8] c"POSE\00", align 1
@.str.225 = private unnamed_addr constant [29 x i8] c"Show armature in posed state\00", align 1
@.str.226 = private unnamed_addr constant [5 x i8] c"REST\00", align 1
@.str.227 = private unnamed_addr constant [14 x i8] c"Rest Position\00", align 1
@.str.228 = private unnamed_addr constant [57 x i8] c"Show Armature in binding pose state (no posing possible)\00", align 1
@.str.229 = private unnamed_addr constant [11 x i8] c"OCTAHEDRAL\00", align 1
@.str.230 = private unnamed_addr constant [11 x i8] c"Octahedral\00", align 1
@.str.231 = private unnamed_addr constant [44 x i8] c"Display bones as octahedral shape (default)\00", align 1
@.str.232 = private unnamed_addr constant [6 x i8] c"STICK\00", align 1
@.str.233 = private unnamed_addr constant [6 x i8] c"Stick\00", align 1
@.str.234 = private unnamed_addr constant [43 x i8] c"Display bones as simple 2D lines with dots\00", align 1
@.str.235 = private unnamed_addr constant [6 x i8] c"BBONE\00", align 1
@.str.236 = private unnamed_addr constant [7 x i8] c"B-Bone\00", align 1
@.str.237 = private unnamed_addr constant [58 x i8] c"Display bones as boxes, showing subdivision and B-Splines\00", align 1
@.str.238 = private unnamed_addr constant [9 x i8] c"ENVELOPE\00", align 1
@.str.239 = private unnamed_addr constant [9 x i8] c"Envelope\00", align 1
@.str.240 = private unnamed_addr constant [72 x i8] c"Display bones as extruded spheres, showing deformation influence volume\00", align 1
@.str.241 = private unnamed_addr constant [5 x i8] c"WIRE\00", align 1
@.str.242 = private unnamed_addr constant [5 x i8] c"Wire\00", align 1
@.str.243 = private unnamed_addr constant [63 x i8] c"Display bones as thin wires, showing subdivision and B-Splines\00", align 1
@.str.244 = private unnamed_addr constant [8 x i8] c"BLENDER\00", align 1
@.str.245 = private unnamed_addr constant [8 x i8] c"Blender\00", align 1
@.str.246 = private unnamed_addr constant [42 x i8] c"Use Blender's armature vertex deformation\00", align 1
@.str.247 = private unnamed_addr constant [8 x i8] c"BGE_CPU\00", align 1
@.str.248 = private unnamed_addr constant [4 x i8] c"BGE\00", align 1
@.str.249 = private unnamed_addr constant [50 x i8] c"Use vertex deformation code optimized for the BGE\00", align 1
@.str.250 = private unnamed_addr constant [14 x i8] c"CURRENT_FRAME\00", align 1
@.str.251 = private unnamed_addr constant [13 x i8] c"Around Frame\00", align 1
@.str.252 = private unnamed_addr constant [81 x i8] c"Display Ghosts of poses within a fixed number of frames around the current frame\00", align 1
@.str.253 = private unnamed_addr constant [6 x i8] c"RANGE\00", align 1
@.str.254 = private unnamed_addr constant [9 x i8] c"In Range\00", align 1
@.str.255 = private unnamed_addr constant [47 x i8] c"Display Ghosts of poses within specified range\00", align 1
@.str.256 = private unnamed_addr constant [5 x i8] c"KEYS\00", align 1
@.str.257 = private unnamed_addr constant [13 x i8] c"On Keyframes\00", align 1
@.str.258 = private unnamed_addr constant [37 x i8] c"Display Ghosts of poses on Keyframes\00", align 1
@.str.259 = private unnamed_addr constant [22 x i8] c"pose.bones[\22%s\22].bone\00", align 1
@.str.260 = private unnamed_addr constant [12 x i8] c"bones[\22%s\22]\00", align 1
@.str.261 = private unnamed_addr constant [23 x i8] c"RNA_Bone ID properties\00", align 1
@.str.262 = private unnamed_addr constant [27 x i8] c"RNA_EditBone ID properties\00", align 1
@str = private unnamed_addr constant [77 x i8] c"ERROR: armature set active bone - new active doesn't come from this armature\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Armature_animation_data_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.bArmature, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !40
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_AnimData, ptr noundef %6) #18
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Armature_bones_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_Armature_bones, ptr %6, align 8, !tbaa !48
  %7 = getelementptr inbounds %struct.bArmature, ptr %5, i64 0, i32 2
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %7, ptr noundef null) #18
  %8 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !50
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #19
  call void @Armature_bones_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  br label %13

13:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: optsize
declare void @rna_iterator_listbase_begin(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @Armature_bones_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !51 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #18
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Bone, ptr noundef %3) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Armature_bones_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call fastcc void @rna_Armature_bones_next(ptr noundef %0) #20
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !50
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #19
  call void @Armature_bones_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #19
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_Armature_bones_next(ptr nocapture noundef %0) unnamed_addr #5 !PGOFuncName !52 {
  %2 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.Bone, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !55
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %19

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8, !tbaa !58
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %7
  store ptr null, ptr %2, align 8, !tbaa !53
  br label %11

11:                                               ; preds = %16, %10
  %12 = phi ptr [ %3, %10 ], [ %14, %16 ]
  %13 = getelementptr inbounds %struct.Bone, ptr %12, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !59
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = load ptr, ptr %14, align 8, !tbaa !58
  %18 = icmp eq ptr %17, null
  br i1 %18, label %11, label %19, !llvm.loop !60

19:                                               ; preds = %16, %7, %1
  %20 = phi ptr [ %5, %1 ], [ %8, %7 ], [ %17, %16 ]
  store ptr %20, ptr %2, align 8, !tbaa !53
  br label %21

21:                                               ; preds = %11, %19
  %22 = phi i32 [ 1, %19 ], [ 0, %11 ]
  %23 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  store i32 %22, ptr %23, align 8, !tbaa !50
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Armature_bones_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #18
  ret void
}

; Function Attrs: optsize
declare void @rna_iterator_listbase_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Armature_bones_lookup_string(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  %5 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #19
  call void @Armature_bones_begin(ptr noundef nonnull %4, ptr noundef %0) #20
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !50
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %33, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 6
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 6, i32 2
  br label %12

12:                                               ; preds = %9, %29
  %13 = load ptr, ptr %11, align 8, !tbaa !62
  %14 = icmp eq ptr %13, null
  br i1 %14, label %29, label %15

15:                                               ; preds = %12
  %16 = call i32 @Bone_name_length(ptr noundef nonnull %10) #20
  %17 = icmp slt i32 %16, 1024
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  call void @Bone_name_get(ptr noundef nonnull %10, ptr noundef nonnull %5) #20
  %19 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %1) #21
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %32, label %29

21:                                               ; preds = %15
  %22 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !47
  %23 = add nuw nsw i32 %16, 1
  %24 = zext nneg i32 %23 to i64
  %25 = call ptr %22(i64 noundef %24, ptr noundef nonnull @.str) #18
  call void @Bone_name_get(ptr noundef nonnull %10, ptr noundef %25) #20
  %26 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(1) %1) #21
  %27 = icmp eq i32 %26, 0
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %28(ptr noundef %25) #18
  br i1 %27, label %32, label %29

29:                                               ; preds = %21, %18, %12
  call void @Armature_bones_next(ptr noundef nonnull %4) #20
  %30 = load i32, ptr %6, align 8, !tbaa !50
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %12, !llvm.loop !63

32:                                               ; preds = %18, %21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false)
  br label %33

33:                                               ; preds = %29, %32, %3
  %34 = phi i32 [ 0, %3 ], [ 1, %32 ], [ 0, %29 ]
  call void @Armature_bones_end(ptr noundef nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #19
  ret i32 %34
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Bone_name_length(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Bone, ptr %3, i64 0, i32 5
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #21
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Bone_name_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Bone, ptr %4, i64 0, i32 5
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #18
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Armature_edit_bones_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_Armature_edit_bones, ptr %6, align 8, !tbaa !48
  %7 = getelementptr inbounds %struct.bArmature, ptr %5, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !64
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef %8, ptr noundef null) #18
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %10 = load i32, ptr %9, align 8, !tbaa !50
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #19
  call void @Armature_edit_bones_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  br label %14

14:                                               ; preds = %12, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @Armature_edit_bones_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !65 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #18
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_EditBone, ptr noundef %3) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Armature_edit_bones_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #18
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !50
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #19
  call void @Armature_edit_bones_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #19
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: optsize
declare void @rna_iterator_listbase_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Armature_edit_bones_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Armature_edit_bones_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  %5 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #19
  call void @Armature_edit_bones_begin(ptr noundef nonnull %4, ptr noundef %0) #20
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %46, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !66
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = icmp sgt i32 %1, 0
  br i1 %15, label %19, label %26

16:                                               ; preds = %9
  %17 = load ptr, ptr %10, align 8
  %18 = icmp sgt i32 %1, 0
  br i1 %18, label %31, label %41

19:                                               ; preds = %14, %19
  %20 = phi i32 [ %21, %19 ], [ %1, %14 ]
  %21 = add nsw i32 %20, -1
  call void @rna_iterator_listbase_next(ptr noundef nonnull %4) #18
  %22 = icmp ugt i32 %20, 1
  %23 = load i32, ptr %6, align 8
  %24 = icmp ne i32 %23, 0
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %19, label %26, !llvm.loop !67

26:                                               ; preds = %19, %14
  %27 = phi i32 [ %1, %14 ], [ %21, %19 ]
  %28 = phi i1 [ true, %14 ], [ %24, %19 ]
  %29 = icmp eq i32 %27, 0
  %30 = select i1 %29, i1 %28, i1 false
  br i1 %30, label %45, label %46

31:                                               ; preds = %16, %35
  %32 = phi i32 [ %36, %35 ], [ %1, %16 ]
  %33 = phi ptr [ %37, %35 ], [ %17, %16 ]
  %34 = icmp eq ptr %33, null
  br i1 %34, label %46, label %35

35:                                               ; preds = %31
  %36 = add nsw i32 %32, -1
  %37 = load ptr, ptr %33, align 8, !tbaa !68
  store ptr %37, ptr %10, align 8, !tbaa !53
  %38 = icmp sgt i32 %32, 1
  br i1 %38, label %31, label %39, !llvm.loop !70

39:                                               ; preds = %35
  %40 = icmp eq ptr %37, null
  br i1 %40, label %46, label %45

41:                                               ; preds = %16
  %42 = icmp ne i32 %1, 0
  %43 = icmp eq ptr %17, null
  %44 = select i1 %42, i1 true, i1 %43
  br i1 %44, label %46, label %45

45:                                               ; preds = %41, %39, %26
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #19
  call void @Armature_edit_bones_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef nonnull %4) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #19
  br label %46

46:                                               ; preds = %31, %41, %39, %26, %45, %3
  %47 = phi i32 [ 0, %3 ], [ 1, %45 ], [ 0, %41 ], [ 0, %26 ], [ 0, %39 ], [ 0, %31 ]
  call void @Armature_edit_bones_end(ptr noundef nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #19
  ret i32 %47
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Armature_edit_bones_lookup_string(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  %5 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #19
  call void @Armature_edit_bones_begin(ptr noundef nonnull %4, ptr noundef %0) #20
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !50
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %33, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 6
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 6, i32 2
  br label %12

12:                                               ; preds = %9, %29
  %13 = load ptr, ptr %11, align 8, !tbaa !62
  %14 = icmp eq ptr %13, null
  br i1 %14, label %29, label %15

15:                                               ; preds = %12
  %16 = call i32 @EditBone_name_length(ptr noundef nonnull %10) #20
  %17 = icmp slt i32 %16, 1024
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  call void @EditBone_name_get(ptr noundef nonnull %10, ptr noundef nonnull %5) #20
  %19 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %1) #21
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %32, label %29

21:                                               ; preds = %15
  %22 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !47
  %23 = add nuw nsw i32 %16, 1
  %24 = zext nneg i32 %23 to i64
  %25 = call ptr %22(i64 noundef %24, ptr noundef nonnull @.str) #18
  call void @EditBone_name_get(ptr noundef nonnull %10, ptr noundef %25) #20
  %26 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(1) %1) #21
  %27 = icmp eq i32 %26, 0
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %28(ptr noundef %25) #18
  br i1 %27, label %32, label %29

29:                                               ; preds = %21, %18, %12
  call void @Armature_edit_bones_next(ptr noundef nonnull %4) #20
  %30 = load i32, ptr %6, align 8, !tbaa !50
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %12, !llvm.loop !71

32:                                               ; preds = %18, %21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false)
  br label %33

33:                                               ; preds = %29, %32, %3
  %34 = phi i32 [ 0, %3 ], [ 1, %32 ], [ 0, %29 ]
  call void @Armature_edit_bones_end(ptr noundef nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #19
  ret i32 %34
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @EditBone_name_length(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.EditBone, ptr %3, i64 0, i32 5
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #21
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @EditBone_name_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.EditBone, ptr %4, i64 0, i32 5
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Armature_pose_position_get(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bArmature, ptr %3, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !72
  %6 = and i32 %5, 1
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Armature_pose_position_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.bArmature, ptr %4, i64 0, i32 8
  %6 = load i32, ptr %5, align 8, !tbaa !72
  %7 = and i32 %6, -2
  %8 = or i32 %7, %1
  store i32 %8, ptr %5, align 8, !tbaa !72
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Armature_draw_type_get(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bArmature, ptr %3, i64 0, i32 9
  %5 = load i32, ptr %4, align 4, !tbaa !73
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Armature_draw_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.bArmature, ptr %4, i64 0, i32 9
  store i32 %1, ptr %5, align 4, !tbaa !73
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Armature_deform_method_get(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bArmature, ptr %3, i64 0, i32 10
  %5 = load i32, ptr %4, align 8, !tbaa !74
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Armature_deform_method_set(ptr nocapture noundef readonly %0, i32 noundef %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.bArmature, ptr %4, i64 0, i32 10
  store i32 %1, ptr %5, align 8, !tbaa !74
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Armature_ghost_type_get(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bArmature, ptr %3, i64 0, i32 19
  %5 = load i16, ptr %4, align 4, !tbaa !75
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Armature_ghost_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.bArmature, ptr %4, i64 0, i32 19
  store i16 %5, ptr %6, align 4, !tbaa !75
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Armature_layers_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.bArmature, ptr %4, i64 0, i32 15
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %13, %6 ]
  %8 = load i32, ptr %5, align 8, !tbaa !76
  %9 = trunc i64 %7 to i32
  %10 = lshr i32 %8, %9
  %11 = and i32 %10, 1
  %12 = getelementptr inbounds i32, ptr %1, i64 %7
  store i32 %11, ptr %12, align 4, !tbaa !77
  %13 = add nuw nsw i64 %7, 1
  %14 = icmp eq i64 %13, 32
  br i1 %14, label %15, label %6, !llvm.loop !78

15:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Armature_layers_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #11 {
  tail call fastcc void @rna_Armature_layer_set(ptr noundef %0, ptr noundef %1) #20
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_Armature_layer_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #11 !PGOFuncName !79 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  br label %5

5:                                                ; preds = %5, %2
  %6 = phi i64 [ 0, %2 ], [ %13, %5 ]
  %7 = phi <4 x i32> [ zeroinitializer, %2 ], [ %12, %5 ]
  %8 = getelementptr inbounds i32, ptr %1, i64 %6
  %9 = load <4 x i32>, ptr %8, align 4, !tbaa !77
  %10 = icmp ne <4 x i32> %9, zeroinitializer
  %11 = zext <4 x i1> %10 to <4 x i32>
  %12 = add <4 x i32> %7, %11
  %13 = add nuw i64 %6, 4
  %14 = icmp eq i64 %13, 32
  br i1 %14, label %15, label %5, !llvm.loop !80

15:                                               ; preds = %5
  %16 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %12)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %35, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.bArmature, ptr %4, i64 0, i32 15
  %20 = load i32, ptr %19, align 8, !tbaa !76
  br label %21

21:                                               ; preds = %18, %21
  %22 = phi i32 [ %20, %18 ], [ %32, %21 ]
  %23 = phi i64 [ 0, %18 ], [ %33, %21 ]
  %24 = getelementptr inbounds i32, ptr %1, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !77
  %26 = icmp eq i32 %25, 0
  %27 = trunc i64 %23 to i32
  %28 = shl nuw i32 1, %27
  %29 = or i32 %22, %28
  %30 = xor i32 %28, -1
  %31 = and i32 %22, %30
  %32 = select i1 %26, i32 %31, i32 %29
  store i32 %32, ptr %19, align 8, !tbaa !76
  %33 = add nuw nsw i64 %23, 1
  %34 = icmp eq i64 %33, 32
  br i1 %34, label %35, label %21, !llvm.loop !83

35:                                               ; preds = %21, %15
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Armature_layers_protected_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.bArmature, ptr %4, i64 0, i32 16
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %13, %6 ]
  %8 = load i32, ptr %5, align 4, !tbaa !84
  %9 = trunc i64 %7 to i32
  %10 = lshr i32 %8, %9
  %11 = and i32 %10, 1
  %12 = getelementptr inbounds i32, ptr %1, i64 %7
  store i32 %11, ptr %12, align 4, !tbaa !77
  %13 = add nuw nsw i64 %7, 1
  %14 = icmp eq i64 %13, 32
  br i1 %14, label %15, label %6, !llvm.loop !85

15:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Armature_layers_protected_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.bArmature, ptr %4, i64 0, i32 16
  %6 = load i32, ptr %5, align 4, !tbaa !84
  br label %7

7:                                                ; preds = %2, %7
  %8 = phi i32 [ %6, %2 ], [ %18, %7 ]
  %9 = phi i64 [ 0, %2 ], [ %19, %7 ]
  %10 = getelementptr inbounds i32, ptr %1, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !77
  %12 = icmp eq i32 %11, 0
  %13 = trunc i64 %9 to i32
  %14 = shl nuw i32 1, %13
  %15 = or i32 %8, %14
  %16 = xor i32 %14, -1
  %17 = and i32 %8, %16
  %18 = select i1 %12, i32 %17, i32 %15
  store i32 %18, ptr %5, align 4, !tbaa !84
  %19 = add nuw nsw i64 %9, 1
  %20 = icmp eq i64 %19, 32
  br i1 %20, label %21, label %7, !llvm.loop !86

21:                                               ; preds = %7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Armature_show_axes_get(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bArmature, ptr %3, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !72
  %6 = lshr i32 %5, 2
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Armature_show_axes_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.bArmature, ptr %4, i64 0, i32 8
  %7 = load i32, ptr %6, align 8, !tbaa !72
  %8 = and i32 %7, -5
  %9 = select i1 %5, i32 0, i32 4
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !72
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Armature_show_names_get(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bArmature, ptr %3, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !72
  %6 = lshr i32 %5, 3
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Armature_show_names_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.bArmature, ptr %4, i64 0, i32 8
  %7 = load i32, ptr %6, align 8, !tbaa !72
  %8 = and i32 %7, -9
  %9 = select i1 %5, i32 0, i32 8
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !72
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Armature_use_deform_delay_get(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bArmature, ptr %3, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !72
  %6 = lshr i32 %5, 6
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Armature_use_deform_delay_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.bArmature, ptr %4, i64 0, i32 8
  %7 = load i32, ptr %6, align 8, !tbaa !72
  %8 = and i32 %7, -65
  %9 = select i1 %5, i32 0, i32 64
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !72
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Armature_use_mirror_x_get(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bArmature, ptr %3, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !72
  %6 = lshr i32 %5, 8
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Armature_use_mirror_x_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.bArmature, ptr %4, i64 0, i32 8
  %7 = load i32, ptr %6, align 8, !tbaa !72
  %8 = and i32 %7, -257
  %9 = select i1 %5, i32 0, i32 256
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !72
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Armature_use_auto_ik_get(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bArmature, ptr %3, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !72
  %6 = lshr i32 %5, 9
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Armature_use_auto_ik_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.bArmature, ptr %4, i64 0, i32 8
  %7 = load i32, ptr %6, align 8, !tbaa !72
  %8 = and i32 %7, -513
  %9 = select i1 %5, i32 0, i32 512
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !72
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Armature_show_bone_custom_shapes_get(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bArmature, ptr %3, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !72
  %6 = lshr i32 %5, 10
  %7 = and i32 %6, 1
  %8 = xor i32 %7, 1
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Armature_show_bone_custom_shapes_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.bArmature, ptr %4, i64 0, i32 8
  %7 = load i32, ptr %6, align 8, !tbaa !72
  %8 = and i32 %7, -1025
  %9 = select i1 %5, i32 1024, i32 0
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !72
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Armature_show_group_colors_get(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bArmature, ptr %3, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !72
  %6 = lshr i32 %5, 11
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Armature_show_group_colors_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.bArmature, ptr %4, i64 0, i32 8
  %7 = load i32, ptr %6, align 8, !tbaa !72
  %8 = and i32 %7, -2049
  %9 = select i1 %5, i32 0, i32 2048
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !72
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Armature_show_only_ghost_selected_get(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bArmature, ptr %3, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !72
  %6 = lshr i32 %5, 12
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Armature_show_only_ghost_selected_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.bArmature, ptr %4, i64 0, i32 8
  %7 = load i32, ptr %6, align 8, !tbaa !72
  %8 = and i32 %7, -4097
  %9 = select i1 %5, i32 0, i32 4096
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !72
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Armature_ghost_step_get(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bArmature, ptr %3, i64 0, i32 17
  %5 = load i16, ptr %4, align 8, !tbaa !87
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Armature_ghost_step_set(ptr nocapture noundef readonly %0, i32 noundef %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 30)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.bArmature, ptr %4, i64 0, i32 17
  store i16 %7, ptr %8, align 8, !tbaa !87
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Armature_ghost_size_get(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bArmature, ptr %3, i64 0, i32 18
  %5 = load i16, ptr %4, align 2, !tbaa !88
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Armature_ghost_size_set(ptr nocapture noundef readonly %0, i32 noundef %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 20)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.bArmature, ptr %4, i64 0, i32 18
  store i16 %7, ptr %8, align 2, !tbaa !88
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Armature_ghost_frame_start_get(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bArmature, ptr %3, i64 0, i32 21
  %5 = load i32, ptr %4, align 8, !tbaa !89
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Armature_ghost_frame_start_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  tail call fastcc void @rna_Armature_ghost_start_frame_set(ptr noundef %0, i32 noundef %1) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_Armature_ghost_start_frame_set(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #9 !PGOFuncName !90 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 150000)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %7 = getelementptr inbounds %struct.bArmature, ptr %4, i64 0, i32 21
  store i32 %6, ptr %7, align 8, !tbaa !89
  %8 = getelementptr inbounds %struct.bArmature, ptr %4, i64 0, i32 22
  %9 = load i32, ptr %8, align 4, !tbaa !91
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 %6, ptr %8, align 4, !tbaa !91
  br label %12

12:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Armature_ghost_frame_end_get(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.bArmature, ptr %3, i64 0, i32 22
  %5 = load i32, ptr %4, align 4, !tbaa !91
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Armature_ghost_frame_end_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  tail call fastcc void @rna_Armature_ghost_end_frame_set(ptr noundef %0, i32 noundef %1) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_Armature_ghost_end_frame_set(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #9 !PGOFuncName !92 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 150000)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %7 = getelementptr inbounds %struct.bArmature, ptr %4, i64 0, i32 22
  store i32 %6, ptr %7, align 4, !tbaa !91
  %8 = getelementptr inbounds %struct.bArmature, ptr %4, i64 0, i32 21
  %9 = load i32, ptr %8, align 8, !tbaa !89
  %10 = icmp slt i32 %9, %6
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 %6, ptr %8, align 8, !tbaa !89
  br label %12

12:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Armature_is_editmode_get(ptr nocapture noundef readonly %0) #8 {
  %2 = tail call fastcc i32 @rna_Armature_is_editmode_get(ptr noundef %0) #20, !range !93
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @rna_Armature_is_editmode_get(ptr nocapture noundef readonly %0) unnamed_addr #8 !PGOFuncName !94 {
  %2 = load ptr, ptr %0, align 8, !tbaa !95
  %3 = getelementptr inbounds %struct.bArmature, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp ne ptr %4, null
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ArmatureBones_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_ArmatureBones_rna_properties, ptr %4, align 8, !tbaa !48
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #18
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !50
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #19
  call void @ArmatureBones_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: optsize
declare void @rna_builtin_properties_begin(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ArmatureBones_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !96 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ArmatureBones_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #18
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !50
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #19
  call void @ArmatureBones_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #19
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: optsize
declare void @rna_builtin_properties_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ArmatureBones_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ArmatureBones_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret i32 %4
}

; Function Attrs: optsize
declare i32 @rna_builtin_properties_lookup_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ArmatureBones_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: optsize
declare void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ArmatureBones_active_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.bArmature, ptr %4, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !97
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Bone, ptr noundef %6) #18
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @ArmatureBones_active_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #12 {
  tail call fastcc void @rna_Armature_act_bone_set(ptr noundef %0, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %1) #20
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @rna_Armature_act_bone_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) unnamed_addr #12 !PGOFuncName !98 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = load ptr, ptr %1, align 8, !tbaa !95
  %6 = icmp eq ptr %5, null
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  %10 = select i1 %6, i1 %9, i1 false
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.bArmature, ptr %4, i64 0, i32 5
  store ptr null, ptr %12, align 8, !tbaa !97
  br label %30

13:                                               ; preds = %2
  %14 = icmp eq ptr %5, %4
  br i1 %14, label %25, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 4
  %17 = load i16, ptr %16, align 8, !tbaa !99
  %18 = icmp eq i16 %17, 16975
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 19
  %21 = load ptr, ptr %20, align 8, !tbaa !100
  %22 = icmp eq ptr %21, %4
  br i1 %22, label %25, label %23

23:                                               ; preds = %19, %15
  %24 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %30

25:                                               ; preds = %19, %13
  %26 = getelementptr inbounds %struct.bArmature, ptr %4, i64 0, i32 5
  store ptr %8, ptr %26, align 8, !tbaa !97
  %27 = getelementptr inbounds %struct.Bone, ptr %8, i64 0, i32 10
  %28 = load i32, ptr %27, align 8, !tbaa !104
  %29 = or i32 %28, 1
  store i32 %29, ptr %27, align 8, !tbaa !104
  br label %30

30:                                               ; preds = %11, %25, %23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ArmatureEditBones_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_ArmatureEditBones_rna_properties, ptr %4, align 8, !tbaa !48
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #18
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !50
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #19
  call void @ArmatureEditBones_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ArmatureEditBones_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !105 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ArmatureEditBones_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #18
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !50
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #19
  call void @ArmatureEditBones_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #19
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ArmatureEditBones_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ArmatureEditBones_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ArmatureEditBones_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ArmatureEditBones_active_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.bArmature, ptr %4, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !106
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_EditBone, ptr noundef %6) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ArmatureEditBones_active_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #9 {
  tail call fastcc void @rna_Armature_act_edit_bone_set(ptr noundef %0, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %1) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_Armature_act_edit_bone_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) unnamed_addr #9 !PGOFuncName !107 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = load ptr, ptr %1, align 8, !tbaa !95
  %6 = icmp eq ptr %5, null
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  %10 = select i1 %6, i1 %9, i1 false
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.bArmature, ptr %4, i64 0, i32 6
  store ptr null, ptr %12, align 8, !tbaa !106
  br label %20

13:                                               ; preds = %2
  %14 = icmp eq ptr %5, %4
  br i1 %14, label %15, label %20

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.bArmature, ptr %4, i64 0, i32 6
  store ptr %8, ptr %16, align 8, !tbaa !106
  %17 = getelementptr inbounds %struct.EditBone, ptr %8, i64 0, i32 9
  %18 = load i32, ptr %17, align 4, !tbaa !108
  %19 = or i32 %18, 1
  store i32 %19, ptr %17, align 4, !tbaa !108
  br label %20

20:                                               ; preds = %15, %13, %11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Bone_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_Bone_rna_properties, ptr %4, align 8, !tbaa !48
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #18
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !50
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #19
  call void @Bone_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @Bone_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !110 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Bone_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #18
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !50
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #19
  call void @Bone_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #19
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Bone_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @Bone_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Bone_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Bone_parent_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Bone, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !59
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Bone, ptr noundef %6) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Bone_children_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_Bone_children, ptr %6, align 8, !tbaa !48
  %7 = getelementptr inbounds %struct.Bone, ptr %5, i64 0, i32 4
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %7, ptr noundef null) #18
  %8 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !50
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #19
  call void @Bone_children_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  br label %13

13:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @Bone_children_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !111 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #18
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Bone, ptr noundef %3) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Bone_children_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #18
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !50
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #19
  call void @Bone_children_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #19
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Bone_children_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Bone_children_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  %5 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #19
  call void @Bone_children_begin(ptr noundef nonnull %4, ptr noundef %0) #20
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %46, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !66
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = icmp sgt i32 %1, 0
  br i1 %15, label %19, label %26

16:                                               ; preds = %9
  %17 = load ptr, ptr %10, align 8
  %18 = icmp sgt i32 %1, 0
  br i1 %18, label %31, label %41

19:                                               ; preds = %14, %19
  %20 = phi i32 [ %21, %19 ], [ %1, %14 ]
  %21 = add nsw i32 %20, -1
  call void @rna_iterator_listbase_next(ptr noundef nonnull %4) #18
  %22 = icmp ugt i32 %20, 1
  %23 = load i32, ptr %6, align 8
  %24 = icmp ne i32 %23, 0
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %19, label %26, !llvm.loop !112

26:                                               ; preds = %19, %14
  %27 = phi i32 [ %1, %14 ], [ %21, %19 ]
  %28 = phi i1 [ true, %14 ], [ %24, %19 ]
  %29 = icmp eq i32 %27, 0
  %30 = select i1 %29, i1 %28, i1 false
  br i1 %30, label %45, label %46

31:                                               ; preds = %16, %35
  %32 = phi i32 [ %36, %35 ], [ %1, %16 ]
  %33 = phi ptr [ %37, %35 ], [ %17, %16 ]
  %34 = icmp eq ptr %33, null
  br i1 %34, label %46, label %35

35:                                               ; preds = %31
  %36 = add nsw i32 %32, -1
  %37 = load ptr, ptr %33, align 8, !tbaa !68
  store ptr %37, ptr %10, align 8, !tbaa !53
  %38 = icmp sgt i32 %32, 1
  br i1 %38, label %31, label %39, !llvm.loop !113

39:                                               ; preds = %35
  %40 = icmp eq ptr %37, null
  br i1 %40, label %46, label %45

41:                                               ; preds = %16
  %42 = icmp ne i32 %1, 0
  %43 = icmp eq ptr %17, null
  %44 = select i1 %42, i1 true, i1 %43
  br i1 %44, label %46, label %45

45:                                               ; preds = %41, %39, %26
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #19
  call void @Bone_children_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef nonnull %4) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #19
  br label %46

46:                                               ; preds = %31, %41, %39, %26, %45, %3
  %47 = phi i32 [ 0, %3 ], [ 1, %45 ], [ 0, %41 ], [ 0, %26 ], [ 0, %39 ], [ 0, %31 ]
  call void @Bone_children_end(ptr noundef nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #19
  ret i32 %47
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Bone_children_lookup_string(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  %5 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #19
  call void @Bone_children_begin(ptr noundef nonnull %4, ptr noundef %0) #20
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !50
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %33, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 6
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 6, i32 2
  br label %12

12:                                               ; preds = %9, %29
  %13 = load ptr, ptr %11, align 8, !tbaa !62
  %14 = icmp eq ptr %13, null
  br i1 %14, label %29, label %15

15:                                               ; preds = %12
  %16 = call i32 @Bone_name_length(ptr noundef nonnull %10) #20
  %17 = icmp slt i32 %16, 1024
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  call void @Bone_name_get(ptr noundef nonnull %10, ptr noundef nonnull %5) #20
  %19 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %1) #21
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %32, label %29

21:                                               ; preds = %15
  %22 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !47
  %23 = add nuw nsw i32 %16, 1
  %24 = zext nneg i32 %23 to i64
  %25 = call ptr %22(i64 noundef %24, ptr noundef nonnull @.str) #18
  call void @Bone_name_get(ptr noundef nonnull %10, ptr noundef %25) #20
  %26 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(1) %1) #21
  %27 = icmp eq i32 %26, 0
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %28(ptr noundef %25) #18
  br i1 %27, label %32, label %29

29:                                               ; preds = %21, %18, %12
  call void @Bone_children_next(ptr noundef nonnull %4) #20
  %30 = load i32, ptr %6, align 8, !tbaa !50
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %12, !llvm.loop !114

32:                                               ; preds = %18, %21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false)
  br label %33

33:                                               ; preds = %29, %32, %3
  %34 = phi i32 [ 0, %3 ], [ 1, %32 ], [ 0, %29 ]
  call void @Bone_children_end(ptr noundef nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #19
  ret i32 %34
}

; Function Attrs: optsize
declare ptr @BLI_strncpy_utf8(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Bone_name_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_Bone_name_set(ptr noundef %0, ptr noundef %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Bone_name_set(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !115 {
  %3 = alloca [64 x i8], align 16
  %4 = alloca [64 x i8], align 16
  %5 = load ptr, ptr %0, align 8, !tbaa !95
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #19
  %8 = call ptr @BLI_strncpy_utf8(ptr noundef nonnull %4, ptr noundef %1, i64 noundef 64) #18
  %9 = getelementptr inbounds %struct.Bone, ptr %7, i64 0, i32 5
  %10 = call ptr @BLI_strncpy(ptr noundef nonnull %3, ptr noundef nonnull %9, i64 noundef 64) #18
  call void @ED_armature_bone_rename(ptr noundef %5, ptr noundef nonnull %3, ptr noundef nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #19
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Bone_layers_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Bone, ptr %4, i64 0, i32 25
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %13, %6 ]
  %8 = load i32, ptr %5, align 8, !tbaa !116
  %9 = trunc i64 %7 to i32
  %10 = lshr i32 %8, %9
  %11 = and i32 %10, 1
  %12 = getelementptr inbounds i32, ptr %1, i64 %7
  store i32 %11, ptr %12, align 4, !tbaa !77
  %13 = add nuw nsw i64 %7, 1
  %14 = icmp eq i64 %13, 32
  br i1 %14, label %15, label %6, !llvm.loop !117

15:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Bone_layers_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #11 {
  tail call fastcc void @rna_Bone_layer_set(ptr noundef %0, ptr noundef %1) #20
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_Bone_layer_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #11 !PGOFuncName !118 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Bone, ptr %4, i64 0, i32 25
  tail call fastcc void @rna_bone_layer_set(ptr noundef nonnull %5, ptr noundef %1) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Bone_use_connect_get(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Bone, ptr %3, i64 0, i32 10
  %5 = load i32, ptr %4, align 8, !tbaa !104
  %6 = lshr i32 %5, 4
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Bone_use_inherit_rotation_get(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Bone, ptr %3, i64 0, i32 10
  %5 = load i32, ptr %4, align 8, !tbaa !104
  %6 = lshr i32 %5, 9
  %7 = and i32 %6, 1
  %8 = xor i32 %7, 1
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Bone_use_inherit_rotation_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Bone, ptr %4, i64 0, i32 10
  %7 = load i32, ptr %6, align 8, !tbaa !104
  %8 = and i32 %7, -513
  %9 = select i1 %5, i32 512, i32 0
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !104
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Bone_use_envelope_multiply_get(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Bone, ptr %3, i64 0, i32 10
  %5 = load i32, ptr %4, align 8, !tbaa !104
  %6 = lshr i32 %5, 11
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Bone_use_envelope_multiply_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Bone, ptr %4, i64 0, i32 10
  %7 = load i32, ptr %6, align 8, !tbaa !104
  %8 = and i32 %7, -2049
  %9 = select i1 %5, i32 0, i32 2048
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !104
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Bone_use_deform_get(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Bone, ptr %3, i64 0, i32 10
  %5 = load i32, ptr %4, align 8, !tbaa !104
  %6 = lshr i32 %5, 12
  %7 = and i32 %6, 1
  %8 = xor i32 %7, 1
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Bone_use_deform_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Bone, ptr %4, i64 0, i32 10
  %7 = load i32, ptr %6, align 8, !tbaa !104
  %8 = and i32 %7, -4097
  %9 = select i1 %5, i32 4096, i32 0
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !104
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Bone_use_inherit_scale_get(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Bone, ptr %3, i64 0, i32 10
  %5 = load i32, ptr %4, align 8, !tbaa !104
  %6 = lshr i32 %5, 15
  %7 = and i32 %6, 1
  %8 = xor i32 %7, 1
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Bone_use_inherit_scale_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Bone, ptr %4, i64 0, i32 10
  %7 = load i32, ptr %6, align 8, !tbaa !104
  %8 = and i32 %7, -32769
  %9 = select i1 %5, i32 32768, i32 0
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !104
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Bone_use_local_location_get(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Bone, ptr %3, i64 0, i32 10
  %5 = load i32, ptr %4, align 8, !tbaa !104
  %6 = lshr i32 %5, 22
  %7 = and i32 %6, 1
  %8 = xor i32 %7, 1
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Bone_use_local_location_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Bone, ptr %4, i64 0, i32 10
  %7 = load i32, ptr %6, align 8, !tbaa !104
  %8 = and i32 %7, -4194305
  %9 = select i1 %5, i32 4194304, i32 0
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !104
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Bone_use_relative_parent_get(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Bone, ptr %3, i64 0, i32 10
  %5 = load i32, ptr %4, align 8, !tbaa !104
  %6 = lshr i32 %5, 23
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Bone_use_relative_parent_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Bone, ptr %4, i64 0, i32 10
  %7 = load i32, ptr %6, align 8, !tbaa !104
  %8 = and i32 %7, -8388609
  %9 = select i1 %5, i32 0, i32 8388608
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !104
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Bone_show_wire_get(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Bone, ptr %3, i64 0, i32 10
  %5 = load i32, ptr %4, align 8, !tbaa !104
  %6 = lshr i32 %5, 17
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Bone_show_wire_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Bone, ptr %4, i64 0, i32 10
  %7 = load i32, ptr %6, align 8, !tbaa !104
  %8 = and i32 %7, -131073
  %9 = select i1 %5, i32 0, i32 131072
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !104
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Bone_use_cyclic_offset_get(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Bone, ptr %3, i64 0, i32 10
  %5 = load i32, ptr %4, align 8, !tbaa !104
  %6 = lshr i32 %5, 18
  %7 = and i32 %6, 1
  %8 = xor i32 %7, 1
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Bone_use_cyclic_offset_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Bone, ptr %4, i64 0, i32 10
  %7 = load i32, ptr %6, align 8, !tbaa !104
  %8 = and i32 %7, -262145
  %9 = select i1 %5, i32 262144, i32 0
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !104
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Bone_hide_select_get(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Bone, ptr %3, i64 0, i32 10
  %5 = load i32, ptr %4, align 8, !tbaa !104
  %6 = lshr i32 %5, 21
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Bone_hide_select_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Bone, ptr %4, i64 0, i32 10
  %7 = load i32, ptr %6, align 8, !tbaa !104
  %8 = and i32 %7, -2097153
  %9 = select i1 %5, i32 0, i32 2097152
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !104
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Bone_envelope_distance_get(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Bone, ptr %3, i64 0, i32 15
  %5 = load float, ptr %4, align 8, !tbaa !119
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Bone_envelope_distance_set(ptr nocapture noundef readonly %0, float noundef %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+03
  %7 = select i1 %6, float 1.000000e+03, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Bone, ptr %4, i64 0, i32 15
  store float %8, ptr %9, align 8, !tbaa !119
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Bone_envelope_weight_get(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Bone, ptr %3, i64 0, i32 16
  %5 = load float, ptr %4, align 4, !tbaa !120
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Bone_envelope_weight_set(ptr nocapture noundef readonly %0, float noundef %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+03
  %7 = select i1 %6, float 1.000000e+03, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Bone, ptr %4, i64 0, i32 16
  store float %8, ptr %9, align 4, !tbaa !120
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Bone_head_radius_get(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Bone, ptr %3, i64 0, i32 22
  %5 = load float, ptr %4, align 4, !tbaa !121
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Bone_head_radius_set(ptr nocapture noundef readonly %0, float noundef %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 0x47EFFFFFE0000000
  %7 = select i1 %6, float 0x47EFFFFFE0000000, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Bone, ptr %4, i64 0, i32 22
  store float %8, ptr %9, align 4, !tbaa !121
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Bone_tail_radius_get(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Bone, ptr %3, i64 0, i32 23
  %5 = load float, ptr %4, align 8, !tbaa !122
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Bone_tail_radius_set(ptr nocapture noundef readonly %0, float noundef %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 0x47EFFFFFE0000000
  %7 = select i1 %6, float 0x47EFFFFFE0000000, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Bone, ptr %4, i64 0, i32 23
  store float %8, ptr %9, align 8, !tbaa !122
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Bone_bbone_segments_get(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Bone, ptr %3, i64 0, i32 26
  %5 = load i16, ptr %4, align 4, !tbaa !123
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Bone_bbone_segments_set(ptr nocapture noundef readonly %0, i32 noundef %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 32)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.Bone, ptr %4, i64 0, i32 26
  store i16 %7, ptr %8, align 4, !tbaa !123
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Bone_bbone_in_get(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Bone, ptr %3, i64 0, i32 20
  %5 = load float, ptr %4, align 4, !tbaa !124
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Bone_bbone_in_set(ptr nocapture noundef readonly %0, float noundef %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 2.000000e+00
  %7 = select i1 %6, float 2.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Bone, ptr %4, i64 0, i32 20
  store float %8, ptr %9, align 4, !tbaa !124
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Bone_bbone_out_get(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Bone, ptr %3, i64 0, i32 21
  %5 = load float, ptr %4, align 8, !tbaa !125
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Bone_bbone_out_set(ptr nocapture noundef readonly %0, float noundef %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 2.000000e+00
  %7 = select i1 %6, float 2.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Bone, ptr %4, i64 0, i32 21
  store float %8, ptr %9, align 8, !tbaa !125
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Bone_bbone_x_get(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Bone, ptr %3, i64 0, i32 17
  %5 = load float, ptr %4, align 8, !tbaa !126
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Bone_bbone_x_set(ptr nocapture noundef readonly %0, float noundef %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+03
  %7 = select i1 %6, float 1.000000e+03, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Bone, ptr %4, i64 0, i32 17
  store float %8, ptr %9, align 8, !tbaa !126
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Bone_bbone_z_get(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Bone, ptr %3, i64 0, i32 19
  %5 = load float, ptr %4, align 8, !tbaa !127
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Bone_bbone_z_set(ptr nocapture noundef readonly %0, float noundef %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+03
  %7 = select i1 %6, float 1.000000e+03, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.Bone, ptr %4, i64 0, i32 19
  store float %8, ptr %9, align 8, !tbaa !127
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Bone_hide_get(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Bone, ptr %3, i64 0, i32 10
  %5 = load i32, ptr %4, align 8, !tbaa !104
  %6 = lshr i32 %5, 6
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Bone_hide_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Bone, ptr %4, i64 0, i32 10
  %7 = load i32, ptr %6, align 8, !tbaa !104
  %8 = and i32 %7, -65
  %9 = select i1 %5, i32 0, i32 64
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !104
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Bone_select_get(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Bone, ptr %3, i64 0, i32 10
  %5 = load i32, ptr %4, align 8, !tbaa !104
  %6 = and i32 %5, 1
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Bone_select_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.Bone, ptr %4, i64 0, i32 10
  %7 = load i32, ptr %6, align 8, !tbaa !104
  %8 = and i32 %7, -2
  %9 = zext i1 %5 to i32
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !104
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Bone_select_head_get(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Bone, ptr %3, i64 0, i32 10
  %5 = load i32, ptr %4, align 8, !tbaa !104
  %6 = lshr i32 %5, 1
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Bone_select_head_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Bone, ptr %4, i64 0, i32 10
  %7 = load i32, ptr %6, align 8, !tbaa !104
  %8 = and i32 %7, -3
  %9 = select i1 %5, i32 0, i32 2
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !104
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Bone_select_tail_get(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Bone, ptr %3, i64 0, i32 10
  %5 = load i32, ptr %4, align 8, !tbaa !104
  %6 = lshr i32 %5, 2
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Bone_select_tail_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.Bone, ptr %4, i64 0, i32 10
  %7 = load i32, ptr %6, align 8, !tbaa !104
  %8 = and i32 %7, -5
  %9 = select i1 %5, i32 0, i32 4
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 8, !tbaa !104
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Bone_matrix_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Bone, ptr %4, i64 0, i32 9
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !128
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  store float %9, ptr %10, align 4, !tbaa !128
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 9
  br i1 %12, label %13, label %6, !llvm.loop !129

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Bone_matrix_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #13 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Bone, ptr %4, i64 0, i32 9
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %1, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !128
  %10 = getelementptr inbounds float, ptr %5, i64 %7
  store float %9, ptr %10, align 4, !tbaa !128
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 9
  br i1 %12, label %13, label %6, !llvm.loop !130

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Bone_matrix_local_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Bone, ptr %4, i64 0, i32 13
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !128
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  store float %9, ptr %10, align 4, !tbaa !128
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 16
  br i1 %12, label %13, label %6, !llvm.loop !131

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Bone_matrix_local_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #13 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Bone, ptr %4, i64 0, i32 13
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %1, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !128
  %10 = getelementptr inbounds float, ptr %5, i64 %7
  store float %9, ptr %10, align 4, !tbaa !128
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 16
  br i1 %12, label %13, label %6, !llvm.loop !132

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Bone_tail_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Bone, ptr %4, i64 0, i32 8
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !128
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  store float %9, ptr %10, align 4, !tbaa !128
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !133

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Bone_tail_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #13 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Bone, ptr %4, i64 0, i32 8
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %1, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !128
  %10 = getelementptr inbounds float, ptr %5, i64 %7
  store float %9, ptr %10, align 4, !tbaa !128
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !134

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Bone_tail_local_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Bone, ptr %4, i64 0, i32 12
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !128
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  store float %9, ptr %10, align 4, !tbaa !128
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !135

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Bone_tail_local_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #13 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Bone, ptr %4, i64 0, i32 12
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %1, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !128
  %10 = getelementptr inbounds float, ptr %5, i64 %7
  store float %9, ptr %10, align 4, !tbaa !128
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !136

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Bone_head_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Bone, ptr %4, i64 0, i32 7
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !128
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  store float %9, ptr %10, align 4, !tbaa !128
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !137

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Bone_head_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #13 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Bone, ptr %4, i64 0, i32 7
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %1, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !128
  %10 = getelementptr inbounds float, ptr %5, i64 %7
  store float %9, ptr %10, align 4, !tbaa !128
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !138

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Bone_head_local_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Bone, ptr %4, i64 0, i32 11
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !128
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  store float %9, ptr %10, align 4, !tbaa !128
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !139

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Bone_head_local_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #13 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Bone, ptr %4, i64 0, i32 11
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %1, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !128
  %10 = getelementptr inbounds float, ptr %5, i64 %7
  store float %9, ptr %10, align 4, !tbaa !128
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !140

13:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @EditBone_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !46
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_EditBone_rna_properties, ptr %4, align 8, !tbaa !48
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #18
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !50
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #19
  call void @EditBone_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @EditBone_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !141 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @EditBone_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #18
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !50
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #19
  call void @EditBone_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #19
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @EditBone_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @EditBone_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @EditBone_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @EditBone_parent_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_EditBone_parent_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_EditBone_parent_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !142 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.EditBone, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !143
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_EditBone, ptr noundef %6) #18
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @EditBone_parent_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #11 {
  tail call fastcc void @rna_EditBone_parent_set(ptr noundef %0, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %1) #20
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_EditBone_parent_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) unnamed_addr #11 !PGOFuncName !144 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %23

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.EditBone, ptr %4, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !143
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.EditBone, ptr %10, i64 0, i32 9
  %14 = load i32, ptr %13, align 4, !tbaa !108
  %15 = and i32 %14, 2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = and i32 %14, -7
  store i32 %18, ptr %13, align 4, !tbaa !108
  br label %19

19:                                               ; preds = %17, %12, %8
  store ptr null, ptr %9, align 8, !tbaa !143
  %20 = getelementptr inbounds %struct.EditBone, ptr %4, i64 0, i32 9
  %21 = load i32, ptr %20, align 4, !tbaa !108
  %22 = and i32 %21, -17
  store i32 %22, ptr %20, align 4, !tbaa !108
  br label %38

23:                                               ; preds = %2
  %24 = load ptr, ptr %1, align 8, !tbaa !95
  %25 = load ptr, ptr %0, align 8, !tbaa !95
  %26 = icmp ne ptr %24, %25
  %27 = icmp eq ptr %6, %4
  %28 = select i1 %26, i1 true, i1 %27
  br i1 %28, label %38, label %29

29:                                               ; preds = %23, %34
  %30 = phi ptr [ %32, %34 ], [ %6, %23 ]
  %31 = getelementptr inbounds %struct.EditBone, ptr %30, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !143
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = icmp eq ptr %32, %4
  br i1 %35, label %38, label %29, !llvm.loop !145

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.EditBone, ptr %4, i64 0, i32 3
  store ptr %6, ptr %37, align 8, !tbaa !143
  tail call fastcc void @rna_EditBone_connected_check(ptr noundef %4) #20
  br label %38

38:                                               ; preds = %34, %19, %36, %23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @EditBone_roll_get(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.EditBone, ptr %3, i64 0, i32 6
  %5 = load float, ptr %4, align 8, !tbaa !146
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @EditBone_roll_set(ptr nocapture noundef readonly %0, float noundef %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.EditBone, ptr %4, i64 0, i32 6
  store float %1, ptr %5, align 8, !tbaa !146
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @EditBone_head_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  br label %5

5:                                                ; preds = %2, %5
  %6 = phi i64 [ 0, %2 ], [ %10, %5 ]
  %7 = getelementptr inbounds %struct.EditBone, ptr %4, i64 0, i32 7, i64 %6
  %8 = load float, ptr %7, align 4, !tbaa !128
  %9 = getelementptr inbounds float, ptr %1, i64 %6
  store float %8, ptr %9, align 4, !tbaa !128
  %10 = add nuw nsw i64 %6, 1
  %11 = icmp eq i64 %10, 3
  br i1 %11, label %12, label %5, !llvm.loop !147

12:                                               ; preds = %5
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @EditBone_head_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #13 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  br label %5

5:                                                ; preds = %2, %5
  %6 = phi i64 [ 0, %2 ], [ %10, %5 ]
  %7 = getelementptr inbounds float, ptr %1, i64 %6
  %8 = load float, ptr %7, align 4, !tbaa !128
  %9 = getelementptr inbounds %struct.EditBone, ptr %4, i64 0, i32 7, i64 %6
  store float %8, ptr %9, align 4, !tbaa !128
  %10 = add nuw nsw i64 %6, 1
  %11 = icmp eq i64 %10, 3
  br i1 %11, label %12, label %5, !llvm.loop !148

12:                                               ; preds = %5
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @EditBone_tail_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  br label %5

5:                                                ; preds = %2, %5
  %6 = phi i64 [ 0, %2 ], [ %10, %5 ]
  %7 = getelementptr inbounds %struct.EditBone, ptr %4, i64 0, i32 8, i64 %6
  %8 = load float, ptr %7, align 4, !tbaa !128
  %9 = getelementptr inbounds float, ptr %1, i64 %6
  store float %8, ptr %9, align 4, !tbaa !128
  %10 = add nuw nsw i64 %6, 1
  %11 = icmp eq i64 %10, 3
  br i1 %11, label %12, label %5, !llvm.loop !149

12:                                               ; preds = %5
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @EditBone_tail_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #13 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  br label %5

5:                                                ; preds = %2, %5
  %6 = phi i64 [ 0, %2 ], [ %10, %5 ]
  %7 = getelementptr inbounds float, ptr %1, i64 %6
  %8 = load float, ptr %7, align 4, !tbaa !128
  %9 = getelementptr inbounds %struct.EditBone, ptr %4, i64 0, i32 8, i64 %6
  store float %8, ptr %9, align 4, !tbaa !128
  %10 = add nuw nsw i64 %6, 1
  %11 = icmp eq i64 %10, 3
  br i1 %11, label %12, label %5, !llvm.loop !150

12:                                               ; preds = %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @EditBone_name_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_EditBone_name_set(ptr noundef %0, ptr noundef %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_EditBone_name_set(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !151 {
  %3 = alloca [64 x i8], align 16
  %4 = alloca [64 x i8], align 16
  %5 = load ptr, ptr %0, align 8, !tbaa !95
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #19
  %8 = call ptr @BLI_strncpy_utf8(ptr noundef nonnull %4, ptr noundef %1, i64 noundef 64) #18
  %9 = getelementptr inbounds %struct.EditBone, ptr %7, i64 0, i32 5
  %10 = call ptr @BLI_strncpy(ptr noundef nonnull %3, ptr noundef nonnull %9, i64 noundef 64) #18
  call void @ED_armature_bone_rename(ptr noundef %5, ptr noundef nonnull %3, ptr noundef nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #19
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @EditBone_layers_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.EditBone, ptr %4, i64 0, i32 10
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %13, %6 ]
  %8 = load i32, ptr %5, align 8, !tbaa !152
  %9 = trunc i64 %7 to i32
  %10 = lshr i32 %8, %9
  %11 = and i32 %10, 1
  %12 = getelementptr inbounds i32, ptr %1, i64 %7
  store i32 %11, ptr %12, align 4, !tbaa !77
  %13 = add nuw nsw i64 %7, 1
  %14 = icmp eq i64 %13, 32
  br i1 %14, label %15, label %6, !llvm.loop !153

15:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @EditBone_layers_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #11 {
  tail call fastcc void @rna_EditBone_layer_set(ptr noundef %0, ptr noundef %1) #20
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_EditBone_layer_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #11 !PGOFuncName !154 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.EditBone, ptr %4, i64 0, i32 10
  tail call fastcc void @rna_bone_layer_set(ptr noundef nonnull %5, ptr noundef %1) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @EditBone_use_connect_get(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.EditBone, ptr %3, i64 0, i32 9
  %5 = load i32, ptr %4, align 4, !tbaa !108
  %6 = lshr i32 %5, 4
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @EditBone_use_connect_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  tail call fastcc void @rna_EditBone_connected_set(ptr noundef %0, i32 noundef %1) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_EditBone_connected_set(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #9 !PGOFuncName !155 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.EditBone, ptr %4, i64 0, i32 9
  %7 = load i32, ptr %6, align 4, !tbaa !108
  %8 = and i32 %7, -17
  %9 = select i1 %5, i32 0, i32 16
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !108
  tail call fastcc void @rna_EditBone_connected_check(ptr noundef nonnull %4) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @EditBone_use_inherit_rotation_get(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.EditBone, ptr %3, i64 0, i32 9
  %5 = load i32, ptr %4, align 4, !tbaa !108
  %6 = lshr i32 %5, 9
  %7 = and i32 %6, 1
  %8 = xor i32 %7, 1
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @EditBone_use_inherit_rotation_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.EditBone, ptr %4, i64 0, i32 9
  %7 = load i32, ptr %6, align 4, !tbaa !108
  %8 = and i32 %7, -513
  %9 = select i1 %5, i32 512, i32 0
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !108
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @EditBone_use_envelope_multiply_get(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.EditBone, ptr %3, i64 0, i32 9
  %5 = load i32, ptr %4, align 4, !tbaa !108
  %6 = lshr i32 %5, 11
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @EditBone_use_envelope_multiply_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.EditBone, ptr %4, i64 0, i32 9
  %7 = load i32, ptr %6, align 4, !tbaa !108
  %8 = and i32 %7, -2049
  %9 = select i1 %5, i32 0, i32 2048
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !108
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @EditBone_use_deform_get(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.EditBone, ptr %3, i64 0, i32 9
  %5 = load i32, ptr %4, align 4, !tbaa !108
  %6 = lshr i32 %5, 12
  %7 = and i32 %6, 1
  %8 = xor i32 %7, 1
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @EditBone_use_deform_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.EditBone, ptr %4, i64 0, i32 9
  %7 = load i32, ptr %6, align 4, !tbaa !108
  %8 = and i32 %7, -4097
  %9 = select i1 %5, i32 4096, i32 0
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !108
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @EditBone_use_inherit_scale_get(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.EditBone, ptr %3, i64 0, i32 9
  %5 = load i32, ptr %4, align 4, !tbaa !108
  %6 = lshr i32 %5, 15
  %7 = and i32 %6, 1
  %8 = xor i32 %7, 1
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @EditBone_use_inherit_scale_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.EditBone, ptr %4, i64 0, i32 9
  %7 = load i32, ptr %6, align 4, !tbaa !108
  %8 = and i32 %7, -32769
  %9 = select i1 %5, i32 32768, i32 0
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !108
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @EditBone_use_local_location_get(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.EditBone, ptr %3, i64 0, i32 9
  %5 = load i32, ptr %4, align 4, !tbaa !108
  %6 = lshr i32 %5, 22
  %7 = and i32 %6, 1
  %8 = xor i32 %7, 1
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @EditBone_use_local_location_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.EditBone, ptr %4, i64 0, i32 9
  %7 = load i32, ptr %6, align 4, !tbaa !108
  %8 = and i32 %7, -4194305
  %9 = select i1 %5, i32 4194304, i32 0
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !108
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @EditBone_use_relative_parent_get(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.EditBone, ptr %3, i64 0, i32 9
  %5 = load i32, ptr %4, align 4, !tbaa !108
  %6 = lshr i32 %5, 23
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @EditBone_use_relative_parent_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.EditBone, ptr %4, i64 0, i32 9
  %7 = load i32, ptr %6, align 4, !tbaa !108
  %8 = and i32 %7, -8388609
  %9 = select i1 %5, i32 0, i32 8388608
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !108
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @EditBone_show_wire_get(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.EditBone, ptr %3, i64 0, i32 9
  %5 = load i32, ptr %4, align 4, !tbaa !108
  %6 = lshr i32 %5, 17
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @EditBone_show_wire_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.EditBone, ptr %4, i64 0, i32 9
  %7 = load i32, ptr %6, align 4, !tbaa !108
  %8 = and i32 %7, -131073
  %9 = select i1 %5, i32 0, i32 131072
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !108
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @EditBone_use_cyclic_offset_get(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.EditBone, ptr %3, i64 0, i32 9
  %5 = load i32, ptr %4, align 4, !tbaa !108
  %6 = lshr i32 %5, 18
  %7 = and i32 %6, 1
  %8 = xor i32 %7, 1
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @EditBone_use_cyclic_offset_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.EditBone, ptr %4, i64 0, i32 9
  %7 = load i32, ptr %6, align 4, !tbaa !108
  %8 = and i32 %7, -262145
  %9 = select i1 %5, i32 262144, i32 0
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !108
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @EditBone_hide_select_get(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.EditBone, ptr %3, i64 0, i32 9
  %5 = load i32, ptr %4, align 4, !tbaa !108
  %6 = lshr i32 %5, 21
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @EditBone_hide_select_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.EditBone, ptr %4, i64 0, i32 9
  %7 = load i32, ptr %6, align 4, !tbaa !108
  %8 = and i32 %7, -2097153
  %9 = select i1 %5, i32 0, i32 2097152
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !108
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @EditBone_envelope_distance_get(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.EditBone, ptr %3, i64 0, i32 11
  %5 = load float, ptr %4, align 4, !tbaa !156
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @EditBone_envelope_distance_set(ptr nocapture noundef readonly %0, float noundef %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+03
  %7 = select i1 %6, float 1.000000e+03, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.EditBone, ptr %4, i64 0, i32 11
  store float %8, ptr %9, align 4, !tbaa !156
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @EditBone_envelope_weight_get(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.EditBone, ptr %3, i64 0, i32 12
  %5 = load float, ptr %4, align 8, !tbaa !157
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @EditBone_envelope_weight_set(ptr nocapture noundef readonly %0, float noundef %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+03
  %7 = select i1 %6, float 1.000000e+03, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.EditBone, ptr %4, i64 0, i32 12
  store float %8, ptr %9, align 8, !tbaa !157
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @EditBone_head_radius_get(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.EditBone, ptr %3, i64 0, i32 18
  %5 = load float, ptr %4, align 8, !tbaa !158
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @EditBone_head_radius_set(ptr nocapture noundef readonly %0, float noundef %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 0x47EFFFFFE0000000
  %7 = select i1 %6, float 0x47EFFFFFE0000000, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.EditBone, ptr %4, i64 0, i32 18
  store float %8, ptr %9, align 8, !tbaa !158
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @EditBone_tail_radius_get(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.EditBone, ptr %3, i64 0, i32 19
  %5 = load float, ptr %4, align 4, !tbaa !159
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @EditBone_tail_radius_set(ptr nocapture noundef readonly %0, float noundef %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 0x47EFFFFFE0000000
  %7 = select i1 %6, float 0x47EFFFFFE0000000, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.EditBone, ptr %4, i64 0, i32 19
  store float %8, ptr %9, align 4, !tbaa !159
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @EditBone_bbone_segments_get(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.EditBone, ptr %3, i64 0, i32 21
  %5 = load i16, ptr %4, align 4, !tbaa !160
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @EditBone_bbone_segments_set(ptr nocapture noundef readonly %0, i32 noundef %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 32)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.EditBone, ptr %4, i64 0, i32 21
  store i16 %7, ptr %8, align 4, !tbaa !160
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @EditBone_bbone_in_get(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.EditBone, ptr %3, i64 0, i32 16
  %5 = load float, ptr %4, align 8, !tbaa !161
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @EditBone_bbone_in_set(ptr nocapture noundef readonly %0, float noundef %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 2.000000e+00
  %7 = select i1 %6, float 2.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.EditBone, ptr %4, i64 0, i32 16
  store float %8, ptr %9, align 8, !tbaa !161
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @EditBone_bbone_out_get(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.EditBone, ptr %3, i64 0, i32 17
  %5 = load float, ptr %4, align 4, !tbaa !162
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @EditBone_bbone_out_set(ptr nocapture noundef readonly %0, float noundef %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 2.000000e+00
  %7 = select i1 %6, float 2.000000e+00, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.EditBone, ptr %4, i64 0, i32 17
  store float %8, ptr %9, align 4, !tbaa !162
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @EditBone_bbone_x_get(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.EditBone, ptr %3, i64 0, i32 13
  %5 = load float, ptr %4, align 4, !tbaa !163
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @EditBone_bbone_x_set(ptr nocapture noundef readonly %0, float noundef %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+03
  %7 = select i1 %6, float 1.000000e+03, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.EditBone, ptr %4, i64 0, i32 13
  store float %8, ptr %9, align 4, !tbaa !163
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @EditBone_bbone_z_get(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.EditBone, ptr %3, i64 0, i32 15
  %5 = load float, ptr %4, align 4, !tbaa !164
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @EditBone_bbone_z_set(ptr nocapture noundef readonly %0, float noundef %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = fcmp olt float %1, 0.000000e+00
  %6 = fcmp ogt float %1, 1.000000e+03
  %7 = select i1 %6, float 1.000000e+03, float %1
  %8 = select i1 %5, float 0.000000e+00, float %7
  %9 = getelementptr inbounds %struct.EditBone, ptr %4, i64 0, i32 15
  store float %8, ptr %9, align 4, !tbaa !164
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @EditBone_hide_get(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.EditBone, ptr %3, i64 0, i32 9
  %5 = load i32, ptr %4, align 4, !tbaa !108
  %6 = lshr i32 %5, 10
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @EditBone_hide_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.EditBone, ptr %4, i64 0, i32 9
  %7 = load i32, ptr %6, align 4, !tbaa !108
  %8 = and i32 %7, -1025
  %9 = select i1 %5, i32 0, i32 1024
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !108
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @EditBone_lock_get(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.EditBone, ptr %3, i64 0, i32 9
  %5 = load i32, ptr %4, align 4, !tbaa !108
  %6 = lshr i32 %5, 19
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @EditBone_lock_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.EditBone, ptr %4, i64 0, i32 9
  %7 = load i32, ptr %6, align 4, !tbaa !108
  %8 = and i32 %7, -524289
  %9 = select i1 %5, i32 0, i32 524288
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !108
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @EditBone_select_get(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.EditBone, ptr %3, i64 0, i32 9
  %5 = load i32, ptr %4, align 4, !tbaa !108
  %6 = and i32 %5, 1
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @EditBone_select_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp ne i32 %1, 0
  %6 = getelementptr inbounds %struct.EditBone, ptr %4, i64 0, i32 9
  %7 = load i32, ptr %6, align 4, !tbaa !108
  %8 = and i32 %7, -2
  %9 = zext i1 %5 to i32
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !108
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @EditBone_select_head_get(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.EditBone, ptr %3, i64 0, i32 9
  %5 = load i32, ptr %4, align 4, !tbaa !108
  %6 = lshr i32 %5, 1
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @EditBone_select_head_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.EditBone, ptr %4, i64 0, i32 9
  %7 = load i32, ptr %6, align 4, !tbaa !108
  %8 = and i32 %7, -3
  %9 = select i1 %5, i32 0, i32 2
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !108
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @EditBone_select_tail_get(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.EditBone, ptr %3, i64 0, i32 9
  %5 = load i32, ptr %4, align 4, !tbaa !108
  %6 = lshr i32 %5, 2
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @EditBone_select_tail_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.EditBone, ptr %4, i64 0, i32 9
  %7 = load i32, ptr %6, align 4, !tbaa !108
  %8 = and i32 %7, -5
  %9 = select i1 %5, i32 0, i32 4
  %10 = or disjoint i32 %8, %9
  store i32 %10, ptr %6, align 4, !tbaa !108
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @EditBone_matrix_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_EditBone_matrix_get(ptr noundef %0, ptr noundef %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_EditBone_matrix_get(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !165 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  tail call void @ED_armature_ebone_to_mat4(ptr noundef %4, ptr noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @EditBone_matrix_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_EditBone_matrix_set(ptr noundef %0, ptr noundef %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_EditBone_matrix_set(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !166 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  tail call void @ED_armature_ebone_from_mat4(ptr noundef %4, ptr noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Armature_transform(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @rna_Armature_transform(ptr noundef %0, ptr noundef %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Armature_transform(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !167 {
  tail call void @ED_armature_transform(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Armature_transform_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = load ptr, ptr %3, align 8, !tbaa !168
  tail call fastcc void @rna_Armature_transform(ptr noundef %6, ptr noundef %7) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ArmatureEditBones_new(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc ptr @rna_Armature_edit_bone_new(ptr noundef %0, ptr noundef %1, ptr noundef %2) #20
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @rna_Armature_edit_bone_new(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !170 {
  %4 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4, i64 2
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.221, ptr noundef nonnull %8) #18
  br label %11

9:                                                ; preds = %3
  %10 = tail call ptr @ED_armature_edit_bone_add(ptr noundef nonnull %0, ptr noundef %2) #18
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi ptr [ null, %7 ], [ %10, %9 ]
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ArmatureEditBones_new_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = load ptr, ptr %3, align 8, !tbaa !168
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = getelementptr inbounds i8, ptr %7, i64 8
  %10 = tail call fastcc ptr @rna_Armature_edit_bone_new(ptr noundef %6, ptr noundef %1, ptr noundef %8) #20
  store ptr %10, ptr %9, align 8, !tbaa !47
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ArmatureEditBones_remove(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @rna_Armature_edit_bone_remove(ptr noundef %0, ptr noundef %1, ptr noundef %2) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Armature_edit_bone_remove(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 !PGOFuncName !171 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !64
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4, i64 2
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.222, ptr noundef nonnull %10) #18
  br label %18

11:                                               ; preds = %3
  %12 = tail call i32 @BLI_findindex(ptr noundef nonnull %7, ptr noundef %5) #18
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4, i64 2
  %16 = getelementptr inbounds %struct.EditBone, ptr %5, i64 0, i32 5
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.223, ptr noundef nonnull %15, ptr noundef nonnull %16) #18
  br label %18

17:                                               ; preds = %11
  tail call void @ED_armature_edit_bone_remove(ptr noundef nonnull %0, ptr noundef %5) #18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br label %18

18:                                               ; preds = %17, %14, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ArmatureEditBones_remove_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = load ptr, ptr %3, align 8, !tbaa !168
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  tail call fastcc void @rna_Armature_edit_bone_remove(ptr noundef %6, ptr noundef %1, ptr noundef %8) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @Bone_evaluate_envelope(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc float @rna_Bone_do_envelope(ptr noundef %0, ptr noundef %1) #20
  ret float %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @rna_Bone_do_envelope(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !172 {
  %3 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 10
  %4 = load i32, ptr %3, align 8, !tbaa !104
  %5 = and i32 %4, 2048
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 16
  %9 = load float, ptr %8, align 4, !tbaa !120
  br label %10

10:                                               ; preds = %2, %7
  %11 = phi float [ %9, %7 ], [ 1.000000e+00, %2 ]
  %12 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 11
  %13 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 12
  %14 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 22
  %15 = load float, ptr %14, align 4, !tbaa !121
  %16 = fmul float %11, %15
  %17 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 23
  %18 = load float, ptr %17, align 8, !tbaa !122
  %19 = fmul float %11, %18
  %20 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 15
  %21 = load float, ptr %20, align 8, !tbaa !119
  %22 = fmul float %11, %21
  %23 = tail call float @distfactor_to_bone(ptr noundef %1, ptr noundef nonnull %12, ptr noundef nonnull %13, float noundef %16, float noundef %19, float noundef %22) #18
  ret float %23
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Bone_evaluate_envelope_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = load ptr, ptr %3, align 8, !tbaa !168
  %8 = getelementptr inbounds i8, ptr %7, i64 12
  %9 = tail call fastcc float @rna_Bone_do_envelope(ptr noundef %6, ptr noundef %7) #20
  store float %9, ptr %8, align 4, !tbaa !128
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @EditBone_align_roll(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @rna_EditBone_align_roll(ptr noundef %0, ptr noundef %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_EditBone_align_roll(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !173 {
  %3 = tail call float @ED_rollBoneToVector(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 0) #18
  %4 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 6
  store float %3, ptr %4, align 8, !tbaa !146
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @EditBone_align_roll_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = load ptr, ptr %3, align 8, !tbaa !168
  tail call fastcc void @rna_EditBone_align_roll(ptr noundef %6, ptr noundef %7) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_Armature_update_data(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !174 {
  %4 = load ptr, ptr %2, align 8, !tbaa !95
  tail call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 0) #18
  tail call void @WM_main_add_notifier(i32 noundef 274399232, ptr noundef %4) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_Armature_redraw_data(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !175 {
  %4 = load ptr, ptr %2, align 8, !tbaa !95
  tail call void @WM_main_add_notifier(i32 noundef 274399232, ptr noundef %4) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_Armature_update_layers(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !176 {
  %4 = load ptr, ptr %2, align 8, !tbaa !95
  %5 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 13
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = icmp eq ptr %6, null
  br i1 %7, label %25, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.bArmature, ptr %4, i64 0, i32 15
  br label %10

10:                                               ; preds = %8, %22
  %11 = phi ptr [ %6, %8 ], [ %23, %22 ]
  %12 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !100
  %14 = icmp eq ptr %13, %4
  br i1 %14, label %15, label %22

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 18
  %17 = load ptr, ptr %16, align 8, !tbaa !177
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = load i32, ptr %9, align 8, !tbaa !76
  %21 = getelementptr inbounds %struct.bPose, ptr %17, i64 0, i32 4
  store i32 %20, ptr %21, align 4, !tbaa !178
  br label %22

22:                                               ; preds = %10, %15, %19
  %23 = load ptr, ptr %11, align 8, !tbaa !47
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %10, !llvm.loop !180

25:                                               ; preds = %22, %3
  tail call void @WM_main_add_notifier(i32 noundef 274399232, ptr noundef %4) #18
  ret void
}

; Function Attrs: optsize
declare ptr @rna_ID_refine(ptr noundef) #2

; Function Attrs: optsize
declare ptr @rna_ID_idprops(ptr noundef, i8 noundef zeroext) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_Bone_update_renamed(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !181 {
  %4 = load ptr, ptr %2, align 8, !tbaa !95
  tail call void @WM_main_add_notifier(i32 noundef 274399232, ptr noundef %4) #18
  tail call void @WM_main_add_notifier(i32 noundef 239599616, ptr noundef %4) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_Bone_select_update(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !182 {
  %4 = load ptr, ptr %2, align 8, !tbaa !95
  %5 = icmp eq ptr %4, null
  br i1 %5, label %22, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 4
  %8 = load i16, ptr %7, align 8, !tbaa !99
  switch i16 %8, label %22 [
    i16 21057, label %9
    i16 16975, label %14
  ]

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.bArmature, ptr %4, i64 0, i32 8
  %11 = load i32, ptr %10, align 8, !tbaa !72
  %12 = and i32 %11, 16384
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %22, label %21

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %16 = load ptr, ptr %15, align 8, !tbaa !100
  %17 = getelementptr inbounds %struct.bArmature, ptr %16, i64 0, i32 8
  %18 = load i32, ptr %17, align 8, !tbaa !72
  %19 = and i32 %18, 16384
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %14, %9
  tail call void @DAG_id_tag_update(ptr noundef nonnull %4, i16 noundef signext 2) #18
  br label %22

22:                                               ; preds = %21, %14, %6, %9, %3
  tail call void @WM_main_add_notifier(i32 noundef 274399232, ptr noundef %4) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @rna_Bone_path(ptr nocapture noundef readonly %0) #0 !PGOFuncName !183 {
  %2 = alloca [128 x i8], align 16
  %3 = load ptr, ptr %0, align 8, !tbaa !95
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #19
  %6 = getelementptr inbounds %struct.Bone, ptr %5, i64 0, i32 5
  %7 = call i64 @BLI_strescape(ptr noundef nonnull %2, ptr noundef nonnull %6, i64 noundef 128) #18
  %8 = icmp eq ptr %3, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 4
  %11 = load i16, ptr %10, align 8, !tbaa !99
  %12 = icmp eq i16 %11, 16975
  br i1 %12, label %14, label %13

13:                                               ; preds = %9, %1
  br label %14

14:                                               ; preds = %9, %13
  %15 = phi ptr [ @.str.260, %13 ], [ @.str.259, %9 ]
  %16 = call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull %15, ptr noundef nonnull %2) #18
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #19
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @rna_Bone_idprops(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #0 !PGOFuncName !184 {
  %3 = alloca %union.IDPropertyTemplate, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp ne i8 %1, 0
  %7 = getelementptr inbounds %struct.Bone, ptr %5, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !185
  %9 = icmp eq ptr %8, null
  %10 = select i1 %6, i1 %9, i1 false
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %12 = call ptr @IDP_New(i32 noundef 6, ptr noundef nonnull %3, ptr noundef nonnull @.str.261) #18
  store ptr %12, ptr %7, align 8, !tbaa !185
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #19
  br label %13

13:                                               ; preds = %2, %11
  %14 = phi ptr [ %12, %11 ], [ %8, %2 ]
  ret ptr %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_Armature_editbone_transform_update(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !186 {
  %4 = load ptr, ptr %2, align 8, !tbaa !95
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.EditBone, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !143
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.EditBone, ptr %6, i64 0, i32 9
  %12 = load i32, ptr %11, align 4, !tbaa !108
  %13 = and i32 %12, 16
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.EditBone, ptr %8, i64 0, i32 8
  %17 = getelementptr inbounds %struct.EditBone, ptr %6, i64 0, i32 7
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %16, ptr noundef nonnull %17) #20
  br label %18

18:                                               ; preds = %15, %10, %3
  %19 = getelementptr inbounds %struct.bArmature, ptr %4, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !64
  %21 = load ptr, ptr %20, align 8, !tbaa !47
  %22 = icmp eq ptr %21, null
  br i1 %22, label %40, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.EditBone, ptr %6, i64 0, i32 8
  br label %25

25:                                               ; preds = %23, %37
  %26 = phi ptr [ %21, %23 ], [ %38, %37 ]
  %27 = getelementptr inbounds %struct.EditBone, ptr %26, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !143
  %29 = icmp eq ptr %28, %6
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.EditBone, ptr %26, i64 0, i32 9
  %32 = load i32, ptr %31, align 4, !tbaa !108
  %33 = and i32 %32, 16
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.EditBone, ptr %26, i64 0, i32 7
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %36, ptr noundef nonnull %24) #20
  br label %37

37:                                               ; preds = %25, %30, %35
  %38 = load ptr, ptr %26, align 8, !tbaa !47
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %25, !llvm.loop !187

40:                                               ; preds = %37, %18
  %41 = getelementptr inbounds %struct.bArmature, ptr %4, i64 0, i32 8
  %42 = load i32, ptr %41, align 8, !tbaa !72
  %43 = and i32 %42, 256
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %91, label %45

45:                                               ; preds = %40
  %46 = load ptr, ptr %19, align 8, !tbaa !64
  %47 = tail call ptr @ED_armature_bone_get_mirrored(ptr noundef %46, ptr noundef %6) #18
  %48 = icmp eq ptr %47, null
  br i1 %48, label %91, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.EditBone, ptr %6, i64 0, i32 6
  %51 = load float, ptr %50, align 8, !tbaa !146
  %52 = fneg float %51
  %53 = getelementptr inbounds %struct.EditBone, ptr %47, i64 0, i32 6
  store float %52, ptr %53, align 8, !tbaa !146
  %54 = getelementptr inbounds %struct.EditBone, ptr %6, i64 0, i32 7
  %55 = load float, ptr %54, align 4, !tbaa !128
  %56 = fneg float %55
  %57 = getelementptr inbounds %struct.EditBone, ptr %47, i64 0, i32 7
  store float %56, ptr %57, align 4, !tbaa !128
  %58 = getelementptr inbounds %struct.EditBone, ptr %6, i64 0, i32 8
  %59 = load float, ptr %58, align 8, !tbaa !128
  %60 = fneg float %59
  %61 = getelementptr inbounds %struct.EditBone, ptr %47, i64 0, i32 8
  store float %60, ptr %61, align 8, !tbaa !128
  %62 = getelementptr inbounds %struct.EditBone, ptr %47, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !143
  %64 = icmp eq ptr %63, null
  br i1 %64, label %72, label %65

65:                                               ; preds = %49
  %66 = getelementptr inbounds %struct.EditBone, ptr %47, i64 0, i32 9
  %67 = load i32, ptr %66, align 4, !tbaa !108
  %68 = and i32 %67, 16
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.EditBone, ptr %63, i64 0, i32 8
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %71, ptr noundef nonnull %57) #20
  br label %72

72:                                               ; preds = %70, %65, %49
  %73 = load ptr, ptr %19, align 8, !tbaa !64
  %74 = load ptr, ptr %73, align 8, !tbaa !47
  %75 = icmp eq ptr %74, null
  br i1 %75, label %91, label %76

76:                                               ; preds = %72, %88
  %77 = phi ptr [ %89, %88 ], [ %74, %72 ]
  %78 = getelementptr inbounds %struct.EditBone, ptr %77, i64 0, i32 3
  %79 = load ptr, ptr %78, align 8, !tbaa !143
  %80 = icmp eq ptr %79, %47
  br i1 %80, label %81, label %88

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.EditBone, ptr %77, i64 0, i32 9
  %83 = load i32, ptr %82, align 4, !tbaa !108
  %84 = and i32 %83, 16
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.EditBone, ptr %77, i64 0, i32 7
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %87, ptr noundef nonnull %61) #20
  br label %88

88:                                               ; preds = %76, %81, %86
  %89 = load ptr, ptr %77, align 8, !tbaa !47
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %76, !llvm.loop !188

91:                                               ; preds = %88, %72, %45, %40
  tail call void @rna_Armature_update_data(ptr poison, ptr poison, ptr noundef nonnull %2) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @rna_EditBone_idprops(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #0 !PGOFuncName !189 {
  %3 = alloca %union.IDPropertyTemplate, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp ne i8 %1, 0
  %7 = getelementptr inbounds %struct.EditBone, ptr %5, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !190
  %9 = icmp eq ptr %8, null
  %10 = select i1 %6, i1 %9, i1 false
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %12 = call ptr @IDP_New(i32 noundef 6, ptr noundef nonnull %3, ptr noundef nonnull @.str.262) #18
  store ptr %12, ptr %7, align 8, !tbaa !190
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #19
  br label %13

13:                                               ; preds = %2, %11
  %14 = phi ptr [ %12, %11 ], [ %8, %2 ]
  ret ptr %14
}

; Function Attrs: optsize
declare ptr @rna_iterator_listbase_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_armature_bone_rename(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @rna_bone_layer_set(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #14 !PGOFuncName !191 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi i64 [ 0, %2 ], [ %11, %3 ]
  %5 = phi <4 x i32> [ zeroinitializer, %2 ], [ %10, %3 ]
  %6 = getelementptr inbounds i32, ptr %1, i64 %4
  %7 = load <4 x i32>, ptr %6, align 4, !tbaa !77
  %8 = icmp ne <4 x i32> %7, zeroinitializer
  %9 = zext <4 x i1> %8 to <4 x i32>
  %10 = add <4 x i32> %5, %9
  %11 = add nuw i64 %4, 4
  %12 = icmp eq i64 %11, 32
  br i1 %12, label %13, label %3, !llvm.loop !192

13:                                               ; preds = %3
  %14 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %10)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %32, label %16

16:                                               ; preds = %13
  %17 = load i32, ptr %0, align 4, !tbaa !77
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi i64 [ 0, %16 ], [ %30, %18 ]
  %20 = phi i32 [ %17, %16 ], [ %29, %18 ]
  %21 = getelementptr inbounds i32, ptr %1, i64 %19
  %22 = load i32, ptr %21, align 4, !tbaa !77
  %23 = icmp eq i32 %22, 0
  %24 = trunc i64 %19 to i32
  %25 = shl nuw i32 1, %24
  %26 = xor i32 %25, -1
  %27 = and i32 %20, %26
  %28 = or i32 %20, %25
  %29 = select i1 %23, i32 %27, i32 %28
  store i32 %29, ptr %0, align 4, !tbaa !77
  %30 = add nuw nsw i64 %19, 1
  %31 = icmp eq i64 %30, 32
  br i1 %31, label %32, label %18, !llvm.loop !193

32:                                               ; preds = %18, %13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_EditBone_connected_check(ptr nocapture noundef %0) unnamed_addr #9 !PGOFuncName !194 {
  %2 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !143
  %4 = icmp eq ptr %3, null
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 9
  %7 = load i32, ptr %6, align 4, !tbaa !108
  %8 = and i32 %7, 16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 7
  %12 = getelementptr inbounds %struct.EditBone, ptr %3, i64 0, i32 8
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %11, ptr noundef nonnull %12) #20
  %13 = load i32, ptr %6, align 4, !tbaa !108
  %14 = and i32 %13, 2
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %28, label %16

16:                                               ; preds = %10
  %17 = load ptr, ptr %2, align 8, !tbaa !143
  %18 = getelementptr inbounds %struct.EditBone, ptr %17, i64 0, i32 9
  %19 = load i32, ptr %18, align 4, !tbaa !108
  %20 = or i32 %19, 4
  store i32 %20, ptr %18, align 4, !tbaa !108
  br label %28

21:                                               ; preds = %5
  %22 = getelementptr inbounds %struct.EditBone, ptr %3, i64 0, i32 9
  %23 = load i32, ptr %22, align 4, !tbaa !108
  %24 = and i32 %23, 2
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = and i32 %23, -7
  store i32 %27, ptr %22, align 4, !tbaa !108
  br label %28

28:                                               ; preds = %16, %10, %26, %21, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #15 !PGOFuncName !195 {
  %3 = load float, ptr %1, align 4, !tbaa !128
  store float %3, ptr %0, align 4, !tbaa !128
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !128
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !128
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !128
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !128
  ret void
}

; Function Attrs: optsize
declare void @ED_armature_ebone_to_mat4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_armature_ebone_from_mat4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_armature_transform(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_armature_edit_bone_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_armature_edit_bone_remove(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @distfactor_to_bone(ptr noundef, ptr noundef, ptr noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @ED_rollBoneToVector(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_main_add_notifier(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @BLI_strescape(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_sprintfN(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @IDP_New(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_armature_bone_get_mirrored(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #16

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nofree nounwind }
attributes #18 = { nounwind optsize }
attributes #19 = { nounwind }
attributes #20 = { optsize }
attributes #21 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 6524701}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 3}
!14 = !{i32 100000, i64 1843200, i32 3}
!15 = !{i32 200000, i64 1843200, i32 3}
!16 = !{i32 300000, i64 1843200, i32 3}
!17 = !{i32 400000, i64 1843200, i32 3}
!18 = !{i32 500000, i64 1843200, i32 3}
!19 = !{i32 600000, i64 1843200, i32 3}
!20 = !{i32 700000, i64 1843200, i32 3}
!21 = !{i32 800000, i64 1843200, i32 3}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 1440, i32 8}
!27 = !{i32 999990, i64 1440, i32 8}
!28 = !{i32 999999, i64 1, i32 37}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !37, i64 16}
!35 = !{!"PointerRNA", !36, i64 0, !37, i64 8, !37, i64 16}
!36 = !{!"", !37, i64 0}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!41, !37, i64 120}
!41 = !{!"bArmature", !42, i64 0, !37, i64 120, !45, i64 128, !45, i64 144, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !44, i64 192, !44, i64 196, !44, i64 200, !44, i64 204, !43, i64 208, !43, i64 210, !44, i64 212, !44, i64 216, !44, i64 220, !43, i64 224, !43, i64 226, !43, i64 228, !43, i64 230, !44, i64 232, !44, i64 236, !44, i64 240, !44, i64 244, !44, i64 248, !44, i64 252}
!42 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !43, i64 98, !44, i64 100, !44, i64 104, !44, i64 108, !37, i64 112}
!43 = !{!"short", !38, i64 0}
!44 = !{!"int", !38, i64 0}
!45 = !{!"ListBase", !37, i64 0, !37, i64 8}
!46 = !{i64 0, i64 8, !47, i64 8, i64 8, !47, i64 16, i64 8, !47}
!47 = !{!37, !37, i64 0}
!48 = !{!49, !37, i64 48}
!49 = !{!"CollectionPropertyIterator", !35, i64 0, !35, i64 24, !37, i64 48, !38, i64 56, !44, i64 96, !44, i64 100, !35, i64 104, !44, i64 128}
!50 = !{!49, !44, i64 128}
!51 = !{!"rna_armature_gen.c:Armature_bones_get"}
!52 = !{!"rna_armature_gen.c:rna_Armature_bones_next"}
!53 = !{!54, !37, i64 0}
!54 = !{!"ListBaseIterator", !37, i64 0, !44, i64 8, !37, i64 16}
!55 = !{!56, !37, i64 32}
!56 = !{!"Bone", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !45, i64 32, !38, i64 48, !57, i64 112, !38, i64 116, !38, i64 128, !38, i64 140, !44, i64 176, !38, i64 180, !38, i64 192, !38, i64 204, !57, i64 268, !57, i64 272, !57, i64 276, !57, i64 280, !57, i64 284, !57, i64 288, !57, i64 292, !57, i64 296, !57, i64 300, !57, i64 304, !38, i64 308, !44, i64 320, !43, i64 324, !38, i64 326}
!57 = !{!"float", !38, i64 0}
!58 = !{!56, !37, i64 0}
!59 = !{!56, !37, i64 24}
!60 = distinct !{!60, !61}
!61 = !{!"llvm.loop.mustprogress"}
!62 = !{!49, !37, i64 120}
!63 = distinct !{!63, !61}
!64 = !{!41, !37, i64 160}
!65 = !{!"rna_armature_gen.c:Armature_edit_bones_get"}
!66 = !{!54, !37, i64 16}
!67 = distinct !{!67, !61}
!68 = !{!69, !37, i64 0}
!69 = !{!"Link", !37, i64 0, !37, i64 8}
!70 = distinct !{!70, !61}
!71 = distinct !{!71, !61}
!72 = !{!41, !44, i64 192}
!73 = !{!41, !44, i64 196}
!74 = !{!41, !44, i64 200}
!75 = !{!41, !43, i64 228}
!76 = !{!41, !44, i64 216}
!77 = !{!44, !44, i64 0}
!78 = distinct !{!78, !61}
!79 = !{!"rna_armature_gen.c:rna_Armature_layer_set"}
!80 = distinct !{!80, !61, !81, !82}
!81 = !{!"llvm.loop.isvectorized", i32 1}
!82 = !{!"llvm.loop.unroll.runtime.disable"}
!83 = distinct !{!83, !61}
!84 = !{!41, !44, i64 220}
!85 = distinct !{!85, !61}
!86 = distinct !{!86, !61}
!87 = !{!41, !43, i64 224}
!88 = !{!41, !43, i64 226}
!89 = !{!41, !44, i64 232}
!90 = !{!"rna_armature_gen.c:rna_Armature_ghost_start_frame_set"}
!91 = !{!41, !44, i64 236}
!92 = !{!"rna_armature_gen.c:rna_Armature_ghost_end_frame_set"}
!93 = !{i32 0, i32 2}
!94 = !{!"rna_armature_gen.c:rna_Armature_is_editmode_get"}
!95 = !{!35, !37, i64 0}
!96 = !{!"rna_armature_gen.c:ArmatureBones_rna_properties_get"}
!97 = !{!41, !37, i64 168}
!98 = !{!"rna_armature_gen.c:rna_Armature_act_bone_set"}
!99 = !{!43, !43, i64 0}
!100 = !{!101, !37, i64 296}
!101 = !{!"Object", !42, i64 0, !37, i64 120, !37, i64 128, !43, i64 136, !43, i64 138, !44, i64 140, !44, i64 144, !44, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !102, i64 312, !37, i64 360, !45, i64 368, !45, i64 384, !45, i64 400, !45, i64 416, !44, i64 432, !44, i64 436, !37, i64 440, !37, i64 448, !44, i64 456, !44, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !57, i64 616, !57, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !44, i64 944, !43, i64 948, !43, i64 950, !43, i64 952, !43, i64 954, !43, i64 956, !43, i64 958, !43, i64 960, !43, i64 962, !43, i64 964, !38, i64 966, !38, i64 967, !44, i64 968, !44, i64 972, !44, i64 976, !44, i64 980, !44, i64 984, !57, i64 988, !57, i64 992, !57, i64 996, !57, i64 1000, !57, i64 1004, !57, i64 1008, !57, i64 1012, !57, i64 1016, !57, i64 1020, !57, i64 1024, !57, i64 1028, !57, i64 1032, !43, i64 1036, !43, i64 1038, !43, i64 1040, !38, i64 1042, !38, i64 1043, !43, i64 1044, !38, i64 1046, !38, i64 1047, !57, i64 1048, !57, i64 1052, !45, i64 1056, !45, i64 1072, !45, i64 1088, !45, i64 1104, !57, i64 1120, !43, i64 1124, !43, i64 1126, !38, i64 1128, !44, i64 1144, !44, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !43, i64 1162, !38, i64 1164, !45, i64 1176, !45, i64 1192, !45, i64 1208, !45, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !43, i64 1266, !57, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !103, i64 1304, !103, i64 1312, !44, i64 1320, !44, i64 1324, !45, i64 1328, !45, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !45, i64 1400, !37, i64 1416}
!102 = !{!"bAnimVizSettings", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !43, i64 16, !43, i64 18, !43, i64 20, !43, i64 22, !43, i64 24, !43, i64 26, !43, i64 28, !43, i64 30, !44, i64 32, !44, i64 36, !44, i64 40, !44, i64 44}
!103 = !{!"long", !38, i64 0}
!104 = !{!56, !44, i64 176}
!105 = !{!"rna_armature_gen.c:ArmatureEditBones_rna_properties_get"}
!106 = !{!41, !37, i64 176}
!107 = !{!"rna_armature_gen.c:rna_Armature_act_edit_bone_set"}
!108 = !{!109, !44, i64 132}
!109 = !{!"EditBone", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !38, i64 40, !57, i64 104, !38, i64 108, !38, i64 120, !44, i64 132, !44, i64 136, !57, i64 140, !57, i64 144, !57, i64 148, !57, i64 152, !57, i64 156, !57, i64 160, !57, i64 164, !57, i64 168, !57, i64 172, !57, i64 176, !43, i64 180}
!110 = !{!"rna_armature_gen.c:Bone_rna_properties_get"}
!111 = !{!"rna_armature_gen.c:Bone_children_get"}
!112 = distinct !{!112, !61}
!113 = distinct !{!113, !61}
!114 = distinct !{!114, !61}
!115 = !{!"rna_armature_gen.c:rna_Bone_name_set"}
!116 = !{!56, !44, i64 320}
!117 = distinct !{!117, !61}
!118 = !{!"rna_armature_gen.c:rna_Bone_layer_set"}
!119 = !{!56, !57, i64 272}
!120 = !{!56, !57, i64 276}
!121 = !{!56, !57, i64 300}
!122 = !{!56, !57, i64 304}
!123 = !{!56, !43, i64 324}
!124 = !{!56, !57, i64 292}
!125 = !{!56, !57, i64 296}
!126 = !{!56, !57, i64 280}
!127 = !{!56, !57, i64 288}
!128 = !{!57, !57, i64 0}
!129 = distinct !{!129, !61}
!130 = distinct !{!130, !61}
!131 = distinct !{!131, !61}
!132 = distinct !{!132, !61}
!133 = distinct !{!133, !61}
!134 = distinct !{!134, !61}
!135 = distinct !{!135, !61}
!136 = distinct !{!136, !61}
!137 = distinct !{!137, !61}
!138 = distinct !{!138, !61}
!139 = distinct !{!139, !61}
!140 = distinct !{!140, !61}
!141 = !{!"rna_armature_gen.c:EditBone_rna_properties_get"}
!142 = !{!"rna_armature_gen.c:rna_EditBone_parent_get"}
!143 = !{!109, !37, i64 24}
!144 = !{!"rna_armature_gen.c:rna_EditBone_parent_set"}
!145 = distinct !{!145, !61}
!146 = !{!109, !57, i64 104}
!147 = distinct !{!147, !61}
!148 = distinct !{!148, !61}
!149 = distinct !{!149, !61}
!150 = distinct !{!150, !61}
!151 = !{!"rna_armature_gen.c:rna_EditBone_name_set"}
!152 = !{!109, !44, i64 136}
!153 = distinct !{!153, !61}
!154 = !{!"rna_armature_gen.c:rna_EditBone_layer_set"}
!155 = !{!"rna_armature_gen.c:rna_EditBone_connected_set"}
!156 = !{!109, !57, i64 140}
!157 = !{!109, !57, i64 144}
!158 = !{!109, !57, i64 168}
!159 = !{!109, !57, i64 172}
!160 = !{!109, !43, i64 180}
!161 = !{!109, !57, i64 160}
!162 = !{!109, !57, i64 164}
!163 = !{!109, !57, i64 148}
!164 = !{!109, !57, i64 156}
!165 = !{!"rna_armature_gen.c:rna_EditBone_matrix_get"}
!166 = !{!"rna_armature_gen.c:rna_EditBone_matrix_set"}
!167 = !{!"rna_armature_gen.c:rna_Armature_transform"}
!168 = !{!169, !37, i64 0}
!169 = !{!"ParameterList", !37, i64 0, !37, i64 8, !44, i64 16, !44, i64 20, !44, i64 24}
!170 = !{!"rna_armature_gen.c:rna_Armature_edit_bone_new"}
!171 = !{!"rna_armature_gen.c:rna_Armature_edit_bone_remove"}
!172 = !{!"rna_armature_gen.c:rna_Bone_do_envelope"}
!173 = !{!"rna_armature_gen.c:rna_EditBone_align_roll"}
!174 = !{!"rna_armature_gen.c:rna_Armature_update_data"}
!175 = !{!"rna_armature_gen.c:rna_Armature_redraw_data"}
!176 = !{!"rna_armature_gen.c:rna_Armature_update_layers"}
!177 = !{!101, !37, i64 288}
!178 = !{!179, !44, i64 28}
!179 = !{!"bPose", !45, i64 0, !37, i64 16, !43, i64 24, !43, i64 26, !44, i64 28, !44, i64 32, !57, i64 36, !38, i64 40, !38, i64 52, !45, i64 64, !44, i64 80, !44, i64 84, !37, i64 88, !37, i64 96, !102, i64 104, !38, i64 152}
!180 = distinct !{!180, !61}
!181 = !{!"rna_armature_gen.c:rna_Bone_update_renamed"}
!182 = !{!"rna_armature_gen.c:rna_Bone_select_update"}
!183 = !{!"rna_armature_gen.c:rna_Bone_path"}
!184 = !{!"rna_armature_gen.c:rna_Bone_idprops"}
!185 = !{!56, !37, i64 16}
!186 = !{!"rna_armature_gen.c:rna_Armature_editbone_transform_update"}
!187 = distinct !{!187, !61}
!188 = distinct !{!188, !61}
!189 = !{!"rna_armature_gen.c:rna_EditBone_idprops"}
!190 = !{!109, !37, i64 16}
!191 = !{!"rna_armature_gen.c:rna_bone_layer_set"}
!192 = distinct !{!192, !61, !81, !82}
!193 = distinct !{!193, !61}
!194 = !{!"rna_armature_gen.c:rna_EditBone_connected_check"}
!195 = !{!"rna_armature_gen.c:copy_v3_v3"}
