; ModuleID = 'blender_bin/source/blender/makesrna/intern/rna_ID_gen.c'
source_filename = "blender_bin/source/blender/makesrna/intern/rna_ID_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.StructRNA = type { %struct.ContainerRNA, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase }
%struct.ContainerRNA = type { ptr, ptr, ptr, %struct.ListBase }
%struct.ListBase = type { ptr, ptr }
%struct.BlenderRNA = type { %struct.ListBase }
%struct.CollectionPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.PropertyRNA = type { ptr, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, i32, ptr, i32, [3 x i32], i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr }
%struct.PointerPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr }
%struct.StringPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.IntPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr }
%struct.BoolPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.FunctionRNA = type { %struct.ContainerRNA, ptr, i32, ptr, ptr, ptr }
%struct.EnumPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.FloatPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, float, float, float, float, i32, float, ptr }
%struct.BlenderDefRNA = type { ptr, %struct.ListBase, %struct.ListBase, ptr, i32, i32, i32, i32, i32 }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.Link = type { ptr, ptr }
%struct.StructDefRNA = type { %struct.ContainerDefRNA, ptr, ptr, ptr, ptr, ptr, %struct.ListBase }
%struct.ContainerDefRNA = type { ptr, ptr, ptr, %struct.ListBase }
%struct.CollectionPropertyIterator = type { %struct.PointerRNA, %struct.PointerRNA, ptr, %union.anon, i32, i32, %struct.PointerRNA, i32 }
%union.anon = type { %struct.ArrayIterator }
%struct.ArrayIterator = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.IDProperty = type { ptr, ptr, i8, i8, i16, [64 x i8], i32, %struct.IDPropertyData, i32, i32 }
%struct.IDPropertyData = type { ptr, %struct.ListBase, i32, i32 }
%struct.Library = type { %struct.ID, ptr, ptr, [1024 x i8], [1024 x i8], ptr, ptr }
%struct.PropertyDefRNA = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32 }
%struct.FunctionDefRNA = type { %struct.ContainerDefRNA, ptr, ptr, ptr, ptr }
%struct.AllocDefRNA = type { ptr, ptr, ptr }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.DNAStructMember = type { ptr, ptr, i32, i32 }
%struct.SDNA = type { ptr, i32, i32, ptr, i32, i32, ptr, ptr, i32, ptr, ptr, i32 }

@.str = private unnamed_addr constant [7 x i8] c"ACTION\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Action\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"ARMATURE\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Armature\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"BRUSH\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"Brush\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"CAMERA\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"Camera\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"CURVE\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"Curve\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"FONT\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"Font\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"GREASEPENCIL\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"Grease Pencil\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"GROUP\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"Group\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"IMAGE\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"Image\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"KEY\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"Key\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"LAMP\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"Lamp\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"LIBRARY\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"Library\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"LINESTYLE\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"Line Style\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"LATTICE\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"Lattice\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"MASK\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"Mask\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"MATERIAL\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"Material\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"META\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"MetaBall\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"MESH\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"Mesh\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"NODETREE\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"NodeTree\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"OBJECT\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"Object\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"PAINTCURVE\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"Paint Curve\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"PALETTE\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"Palette\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"PARTICLE\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"Particle\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"SCENE\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"Scene\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"SCREEN\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"Screen\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"SPEAKER\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"Speaker\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"SOUND\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"Sound\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"TEXT\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"Text\00", align 1
@.str.57 = private unnamed_addr constant [8 x i8] c"TEXTURE\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"Texture\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"WORLD\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"World\00", align 1
@.str.61 = private unnamed_addr constant [14 x i8] c"WINDOWMANAGER\00", align 1
@.str.62 = private unnamed_addr constant [15 x i8] c"Window Manager\00", align 1
@id_type_items = dso_local local_unnamed_addr global [32 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 17217, ptr @.str, i32 115, ptr @.str.1, ptr @.str.2 }, %struct.EnumPropertyItem { i32 21057, ptr @.str.3, i32 172, ptr @.str.4, ptr @.str.2 }, %struct.EnumPropertyItem { i32 21058, ptr @.str.5, i32 182, ptr @.str.6, ptr @.str.2 }, %struct.EnumPropertyItem { i32 16707, ptr @.str.7, i32 168, ptr @.str.8, ptr @.str.2 }, %struct.EnumPropertyItem { i32 21827, ptr @.str.9, i32 161, ptr @.str.10, ptr @.str.2 }, %struct.EnumPropertyItem { i32 18006, ptr @.str.11, i32 186, ptr @.str.12, ptr @.str.2 }, %struct.EnumPropertyItem { i32 17479, ptr @.str.13, i32 197, ptr @.str.14, ptr @.str.2 }, %struct.EnumPropertyItem { i32 21063, ptr @.str.15, i32 171, ptr @.str.16, ptr @.str.2 }, %struct.EnumPropertyItem { i32 19785, ptr @.str.17, i32 183, ptr @.str.18, ptr @.str.2 }, %struct.EnumPropertyItem { i32 17739, ptr @.str.19, i32 176, ptr @.str.20, ptr @.str.2 }, %struct.EnumPropertyItem { i32 16716, ptr @.str.21, i32 164, ptr @.str.22, ptr @.str.2 }, %struct.EnumPropertyItem { i32 18764, ptr @.str.23, i32 170, ptr @.str.24, ptr @.str.2 }, %struct.EnumPropertyItem { i32 21324, ptr @.str.25, i32 198, ptr @.str.26, ptr @.str.2 }, %struct.EnumPropertyItem { i32 21580, ptr @.str.27, i32 163, ptr @.str.28, ptr @.str.2 }, %struct.EnumPropertyItem { i32 21325, ptr @.str.29, i32 467, ptr @.str.30, ptr @.str.2 }, %struct.EnumPropertyItem { i32 16717, ptr @.str.31, i32 165, ptr @.str.32, ptr @.str.2 }, %struct.EnumPropertyItem { i32 16973, ptr @.str.33, i32 162, ptr @.str.34, ptr @.str.2 }, %struct.EnumPropertyItem { i32 17741, ptr @.str.35, i32 160, ptr @.str.36, ptr @.str.2 }, %struct.EnumPropertyItem { i32 21582, ptr @.str.37, i32 119, ptr @.str.38, ptr @.str.2 }, %struct.EnumPropertyItem { i32 16975, ptr @.str.39, i32 159, ptr @.str.40, ptr @.str.2 }, %struct.EnumPropertyItem { i32 17232, ptr @.str.41, i32 321, ptr @.str.42, ptr @.str.2 }, %struct.EnumPropertyItem { i32 19536, ptr @.str.43, i32 54, ptr @.str.44, ptr @.str.2 }, %struct.EnumPropertyItem { i32 16720, ptr @.str.45, i32 169, ptr @.str.46, ptr @.str.2 }, %struct.EnumPropertyItem { i32 17235, ptr @.str.47, i32 156, ptr @.str.48, ptr @.str.2 }, %struct.EnumPropertyItem { i32 21075, ptr @.str.49, i32 27, ptr @.str.50, ptr @.str.2 }, %struct.EnumPropertyItem { i32 19283, ptr @.str.51, i32 90, ptr @.str.52, ptr @.str.2 }, %struct.EnumPropertyItem { i32 20307, ptr @.str.53, i32 501, ptr @.str.54, ptr @.str.2 }, %struct.EnumPropertyItem { i32 22612, ptr @.str.55, i32 112, ptr @.str.56, ptr @.str.2 }, %struct.EnumPropertyItem { i32 17748, ptr @.str.57, i32 166, ptr @.str.58, ptr @.str.2 }, %struct.EnumPropertyItem { i32 20311, ptr @.str.59, i32 158, ptr @.str.60, ptr @.str.2 }, %struct.EnumPropertyItem { i32 19799, ptr @.str.61, i32 26, ptr @.str.62, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@RNA_Action = external global %struct.StructRNA, align 8
@RNA_Armature = external global %struct.StructRNA, align 8
@RNA_Brush = external global %struct.StructRNA, align 8
@RNA_Camera = external global %struct.StructRNA, align 8
@RNA_Curve = external global %struct.StructRNA, align 8
@RNA_GreasePencil = external global %struct.StructRNA, align 8
@RNA_Group = external global %struct.StructRNA, align 8
@RNA_Image = external global %struct.StructRNA, align 8
@RNA_Key = external global %struct.StructRNA, align 8
@RNA_Lamp = external global %struct.StructRNA, align 8
@RNA_Library = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_Texture, ptr @RNA_IDMaterials, ptr null, %struct.ListBase { ptr @rna_Library_filepath, ptr @rna_Library_packed_file } }, ptr @.str.24, ptr null, ptr null, i32 7, ptr @.str.24, ptr @.str.158, ptr @.str.67, i32 170, ptr @rna_ID_name, ptr @rna_ID_rna_properties, ptr @RNA_ID, ptr null, ptr @rna_ID_refine, ptr null, ptr null, ptr null, ptr null, ptr @rna_ID_idprops, %struct.ListBase zeroinitializer }, align 8
@RNA_FreestyleLineStyle = external global %struct.StructRNA, align 8
@RNA_Lattice = external global %struct.StructRNA, align 8
@RNA_Material = external global %struct.StructRNA, align 8
@RNA_MetaBall = external global %struct.StructRNA, align 8
@RNA_NodeTree = external global %struct.StructRNA, align 8
@RNA_Mesh = external global %struct.StructRNA, align 8
@RNA_Object = external global %struct.StructRNA, align 8
@RNA_ParticleSettings = external global %struct.StructRNA, align 8
@RNA_Scene = external global %struct.StructRNA, align 8
@RNA_Screen = external global %struct.StructRNA, align 8
@RNA_Speaker = external global %struct.StructRNA, align 8
@RNA_Sound = external global %struct.StructRNA, align 8
@RNA_Text = external global %struct.StructRNA, align 8
@RNA_Texture = external global %struct.StructRNA, align 8
@RNA_VectorFont = external global %struct.StructRNA, align 8
@RNA_World = external global %struct.StructRNA, align 8
@RNA_WindowManager = external global %struct.StructRNA, align 8
@RNA_MovieClip = external global %struct.StructRNA, align 8
@RNA_Mask = external global %struct.StructRNA, align 8
@RNA_Palette = external global %struct.StructRNA, align 8
@RNA_PaintCurve = external global %struct.StructRNA, align 8
@RNA_ID = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_PropertyGroupItem, ptr @RNA_AnyType, ptr null, %struct.ListBase { ptr @rna_ID_rna_properties, ptr @rna_ID_library } }, ptr @.str.116, ptr null, ptr null, i32 7, ptr @.str.116, ptr @.str.117, ptr @.str.67, i32 17, ptr @rna_ID_name, ptr @rna_ID_rna_properties, ptr null, ptr null, ptr @rna_ID_refine, ptr null, ptr null, ptr null, ptr null, ptr @rna_ID_idprops, %struct.ListBase { ptr @rna_ID_copy_func, ptr @rna_ID_update_tag_func } }, align 8
@BLENDER_RNA = dso_local global %struct.BlenderRNA { %struct.ListBase { ptr @RNA_Struct, ptr @RNA_MaskLayers } }, align 8
@RNA_PropertyGroup = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_IDMaterials, ptr @RNA_PropertyGroupItem, ptr null, %struct.ListBase { ptr @rna_PropertyGroup_rna_properties, ptr @rna_PropertyGroup_name } }, ptr @.str.132, ptr null, ptr null, i32 4, ptr @.str.133, ptr @.str.134, ptr @.str.67, i32 17, ptr @rna_PropertyGroup_name, ptr @rna_PropertyGroup_rna_properties, ptr null, ptr null, ptr @rna_PropertyGroup_refine, ptr null, ptr @rna_PropertyGroup_register, ptr @rna_PropertyGroup_unregister, ptr null, ptr @rna_PropertyGroup_idprops, %struct.ListBase zeroinitializer }, align 8
@.str.63 = private unnamed_addr constant [70 x i8] c"Registering id property class: '%s' is too long, maximum length is %d\00", align 1
@rna_UnknownType_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_UnknownType_rna_type, ptr null, i32 -1, ptr @.str.64, i32 128, ptr @.str.65, ptr @.str.66, i32 0, ptr @.str.67, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @UnknownType_rna_properties_begin, ptr @UnknownType_rna_properties_next, ptr @UnknownType_rna_properties_end, ptr @UnknownType_rna_properties_get, ptr null, ptr null, ptr @UnknownType_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_AnyType_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_AnyType_rna_type, ptr null, i32 -1, ptr @.str.64, i32 128, ptr @.str.65, ptr @.str.66, i32 0, ptr @.str.67, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @AnyType_rna_properties_begin, ptr @AnyType_rna_properties_next, ptr @AnyType_rna_properties_end, ptr @AnyType_rna_properties_get, ptr null, ptr null, ptr @AnyType_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_ID_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_ID_rna_type, ptr null, i32 -1, ptr @.str.64, i32 128, ptr @.str.65, ptr @.str.66, i32 0, ptr @.str.67, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ID_rna_properties_begin, ptr @ID_rna_properties_next, ptr @ID_rna_properties_end, ptr @ID_rna_properties_get, ptr null, ptr null, ptr @ID_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_PropertyGroupItem_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_PropertyGroupItem_rna_type, ptr null, i32 -1, ptr @.str.64, i32 128, ptr @.str.65, ptr @.str.66, i32 0, ptr @.str.67, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @PropertyGroupItem_rna_properties_begin, ptr @PropertyGroupItem_rna_properties_next, ptr @PropertyGroupItem_rna_properties_end, ptr @PropertyGroupItem_rna_properties_get, ptr null, ptr null, ptr @PropertyGroupItem_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_PropertyGroupItem_idp_array = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_PropertyGroupItem_collection, i32 -1, ptr @.str.127, i32 17664, ptr @.str.127, ptr @.str.2, i32 0, ptr @.str.67, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @PropertyGroupItem_idp_array_begin, ptr @PropertyGroupItem_idp_array_next, ptr @PropertyGroupItem_idp_array_end, ptr @PropertyGroupItem_idp_array_get, ptr @rna_IDPArray_length, ptr null, ptr null, ptr null, ptr @RNA_PropertyGroup }, align 8
@rna_PropertyGroup_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_PropertyGroup_rna_type, ptr null, i32 -1, ptr @.str.64, i32 128, ptr @.str.65, ptr @.str.66, i32 0, ptr @.str.67, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @PropertyGroup_rna_properties_begin, ptr @PropertyGroup_rna_properties_next, ptr @PropertyGroup_rna_properties_end, ptr @PropertyGroup_rna_properties_get, ptr null, ptr null, ptr @PropertyGroup_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_IDMaterials_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_IDMaterials_rna_type, ptr null, i32 -1, ptr @.str.64, i32 128, ptr @.str.65, ptr @.str.66, i32 0, ptr @.str.67, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @IDMaterials_rna_properties_begin, ptr @IDMaterials_rna_properties_next, ptr @IDMaterials_rna_properties_end, ptr @IDMaterials_rna_properties_get, ptr null, ptr null, ptr @IDMaterials_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@RNA_PackedFile = external global %struct.StructRNA, align 8
@rna_UnknownType_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_UnknownType_rna_properties, i32 -1, ptr @.str.68, i32 8912896, ptr @.str.69, ptr @.str.70, i32 0, ptr @.str.67, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @UnknownType_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@.str.64 = private unnamed_addr constant [15 x i8] c"rna_properties\00", align 1
@.str.65 = private unnamed_addr constant [11 x i8] c"Properties\00", align 1
@.str.66 = private unnamed_addr constant [24 x i8] c"RNA property collection\00", align 1
@.str.67 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@RNA_Property = external global %struct.StructRNA, align 8
@.str.68 = private unnamed_addr constant [9 x i8] c"rna_type\00", align 1
@.str.69 = private unnamed_addr constant [4 x i8] c"RNA\00", align 1
@.str.70 = private unnamed_addr constant [20 x i8] c"RNA type definition\00", align 1
@RNA_Struct = external global %struct.StructRNA, align 8
@RNA_AnyType = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_ID, ptr @RNA_UnknownType, ptr null, %struct.ListBase { ptr @rna_AnyType_rna_properties, ptr @rna_AnyType_rna_type } }, ptr @.str.74, ptr null, ptr null, i32 4, ptr @.str.75, ptr @.str.76, ptr @.str.67, i32 17, ptr null, ptr @rna_AnyType_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@RNA_BlenderRNA = external global %struct.StructRNA, align 8
@.str.71 = private unnamed_addr constant [12 x i8] c"UnknownType\00", align 1
@.str.72 = private unnamed_addr constant [13 x i8] c"Unknown Type\00", align 1
@.str.73 = private unnamed_addr constant [60 x i8] c"Stub RNA type used for pointers to unknown or internal data\00", align 1
@RNA_UnknownType = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_AnyType, ptr @RNA_BlenderRNA, ptr null, %struct.ListBase { ptr @rna_UnknownType_rna_properties, ptr @rna_UnknownType_rna_type } }, ptr @.str.71, ptr null, ptr null, i32 4, ptr @.str.72, ptr @.str.73, ptr @.str.67, i32 17, ptr null, ptr @rna_UnknownType_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@rna_AnyType_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_AnyType_rna_properties, i32 -1, ptr @.str.68, i32 8912896, ptr @.str.69, ptr @.str.70, i32 0, ptr @.str.67, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @AnyType_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@.str.74 = private unnamed_addr constant [8 x i8] c"AnyType\00", align 1
@.str.75 = private unnamed_addr constant [9 x i8] c"Any Type\00", align 1
@.str.76 = private unnamed_addr constant [48 x i8] c"RNA type used for pointers to any possible data\00", align 1
@rna_ID_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_ID_name, ptr @rna_ID_rna_properties, i32 -1, ptr @.str.68, i32 8912896, ptr @.str.69, ptr @.str.70, i32 0, ptr @.str.67, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ID_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_ID_name = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_ID_users, ptr @rna_ID_rna_type, i32 -1, ptr @.str.77, i32 262145, ptr @.str.78, ptr @.str.79, i32 0, ptr @.str.67, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 66, i32 0, i32 0], i32 0, ptr null, i32 301989893, ptr @rna_ID_name_editable, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ID_name_get, ptr @ID_name_length, ptr @ID_name_set, ptr null, ptr null, ptr null, i32 64, ptr @.str.2 }, align 8
@rna_ID_users = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_ID_use_fake_user, ptr @rna_ID_name, i32 -1, ptr @.str.80, i32 8194, ptr @.str.81, ptr @.str.82, i32 0, ptr @.str.67, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 100, i32 0, ptr null, ptr null }, ptr @ID_users_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 10000, i32 0, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@.str.77 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.79 = private unnamed_addr constant [25 x i8] c"Unique datablock ID name\00", align 1
@rna_ID_use_fake_user = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ID_tag, ptr @rna_ID_users, i32 -1, ptr @.str.83, i32 3, ptr @.str.84, ptr @.str.85, i32 0, ptr @.str.67, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ID_use_fake_user_get, ptr @ID_use_fake_user_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.80 = private unnamed_addr constant [6 x i8] c"users\00", align 1
@.str.81 = private unnamed_addr constant [6 x i8] c"Users\00", align 1
@.str.82 = private unnamed_addr constant [45 x i8] c"Number of times this datablock is referenced\00", align 1
@rna_ID_tag = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ID_is_updated, ptr @rna_ID_use_fake_user, i32 -1, ptr @.str.86, i32 65539, ptr @.str.87, ptr @.str.88, i32 0, ptr @.str.67, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ID_tag_get, ptr @ID_tag_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.83 = private unnamed_addr constant [14 x i8] c"use_fake_user\00", align 1
@.str.84 = private unnamed_addr constant [10 x i8] c"Fake User\00", align 1
@.str.85 = private unnamed_addr constant [44 x i8] c"Save this datablock even if it has no users\00", align 1
@rna_ID_is_updated = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ID_is_updated_data, ptr @rna_ID_tag, i32 -1, ptr @.str.89, i32 2, ptr @.str.90, ptr @.str.91, i32 0, ptr @.str.67, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ID_is_updated_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.86 = private unnamed_addr constant [4 x i8] c"tag\00", align 1
@.str.87 = private unnamed_addr constant [4 x i8] c"Tag\00", align 1
@.str.88 = private unnamed_addr constant [60 x i8] c"Tools can use this to tag data (initial state is undefined)\00", align 1
@rna_ID_is_updated_data = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ID_is_library_indirect, ptr @rna_ID_is_updated, i32 -1, ptr @.str.92, i32 2, ptr @.str.93, ptr @.str.94, i32 0, ptr @.str.67, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ID_is_updated_data_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.89 = private unnamed_addr constant [11 x i8] c"is_updated\00", align 1
@.str.90 = private unnamed_addr constant [11 x i8] c"Is Updated\00", align 1
@.str.91 = private unnamed_addr constant [38 x i8] c"Datablock is tagged for recalculation\00", align 1
@rna_ID_is_library_indirect = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_ID_library, ptr @rna_ID_is_updated_data, i32 -1, ptr @.str.95, i32 2, ptr @.str.96, ptr @.str.97, i32 0, ptr @.str.67, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ID_is_library_indirect_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.92 = private unnamed_addr constant [16 x i8] c"is_updated_data\00", align 1
@.str.93 = private unnamed_addr constant [16 x i8] c"Is Updated Data\00", align 1
@.str.94 = private unnamed_addr constant [43 x i8] c"Datablock data is tagged for recalculation\00", align 1
@rna_ID_library = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_ID_is_library_indirect, i32 -1, ptr @.str.98, i32 8388672, ptr @.str.24, ptr @.str.99, i32 0, ptr @.str.67, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @ID_library_get, ptr null, ptr null, ptr null, ptr @RNA_Library }, align 8
@.str.95 = private unnamed_addr constant [20 x i8] c"is_library_indirect\00", align 1
@.str.96 = private unnamed_addr constant [12 x i8] c"Is Indirect\00", align 1
@.str.97 = private unnamed_addr constant [35 x i8] c"Is this ID block linked indirectly\00", align 1
@.str.98 = private unnamed_addr constant [8 x i8] c"library\00", align 1
@.str.99 = private unnamed_addr constant [42 x i8] c"Library file the datablock is linked from\00", align 1
@.str.100 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.101 = private unnamed_addr constant [19 x i8] c"New copy of the ID\00", align 1
@rna_ID_copy_id = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.100, i32 8388616, ptr @.str.2, ptr @.str.101, i32 0, ptr @.str.67, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_ID }, align 8
@rna_ID_user_clear_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_ID_animation_data_create_func, ptr @rna_ID_copy_func, ptr null, %struct.ListBase zeroinitializer }, ptr @.str.104, i32 0, ptr @.str.105, ptr @ID_user_clear_call, ptr null }, align 8
@.str.102 = private unnamed_addr constant [5 x i8] c"copy\00", align 1
@.str.103 = private unnamed_addr constant [67 x i8] c"Create a copy of this datablock (not supported for all datablocks)\00", align 1
@rna_ID_copy_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_ID_user_clear_func, ptr null, ptr null, %struct.ListBase { ptr @rna_ID_copy_id, ptr @rna_ID_copy_id } }, ptr @.str.102, i32 0, ptr @.str.103, ptr @ID_copy_call, ptr @rna_ID_copy_id }, align 8
@rna_ID_animation_data_create_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_ID_animation_data_clear_func, ptr @rna_ID_user_clear_func, ptr null, %struct.ListBase { ptr @rna_ID_animation_data_create_anim_data, ptr @rna_ID_animation_data_create_anim_data } }, ptr @.str.108, i32 0, ptr @.str.109, ptr @ID_animation_data_create_call, ptr @rna_ID_animation_data_create_anim_data }, align 8
@.str.104 = private unnamed_addr constant [11 x i8] c"user_clear\00", align 1
@.str.105 = private unnamed_addr constant [89 x i8] c"Clear the user count of a datablock so its not saved, on reload the data will be removed\00", align 1
@.str.106 = private unnamed_addr constant [10 x i8] c"anim_data\00", align 1
@.str.107 = private unnamed_addr constant [27 x i8] c"New animation data or NULL\00", align 1
@RNA_AnimData = external global %struct.StructRNA, align 8
@rna_ID_animation_data_create_anim_data = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.106, i32 8388616, ptr @.str.2, ptr @.str.107, i32 0, ptr @.str.67, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_AnimData }, align 8
@rna_ID_animation_data_clear_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_ID_update_tag_func, ptr @rna_ID_animation_data_create_func, ptr null, %struct.ListBase zeroinitializer }, ptr @.str.110, i32 0, ptr @.str.111, ptr @ID_animation_data_clear_call, ptr null }, align 8
@.str.108 = private unnamed_addr constant [22 x i8] c"animation_data_create\00", align 1
@.str.109 = private unnamed_addr constant [74 x i8] c"Create animation data to this ID, note that not all ID types support this\00", align 1
@rna_ID_update_tag_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr @rna_ID_animation_data_clear_func, ptr null, %struct.ListBase { ptr @rna_ID_update_tag_refresh, ptr @rna_ID_update_tag_refresh } }, ptr @.str.114, i32 16, ptr @.str.115, ptr @ID_update_tag_call, ptr null }, align 8
@.str.110 = private unnamed_addr constant [21 x i8] c"animation_data_clear\00", align 1
@.str.111 = private unnamed_addr constant [32 x i8] c"Clear animation on this this ID\00", align 1
@.str.112 = private unnamed_addr constant [8 x i8] c"refresh\00", align 1
@.str.113 = private unnamed_addr constant [27 x i8] c"Type of updates to perform\00", align 1
@rna_ID_update_tag_refresh_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.39, i32 0, ptr @.str.40, ptr @.str.2 }, %struct.EnumPropertyItem { i32 2, ptr @.str.272, i32 0, ptr @.str.273, ptr @.str.2 }, %struct.EnumPropertyItem { i32 4, ptr @.str.274, i32 0, ptr @.str.275, ptr @.str.2 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_ID_update_tag_refresh = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.112, i32 2097155, ptr @.str.2, ptr @.str.113, i32 0, ptr @.str.67, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rna_ID_update_tag_refresh_items, i32 3, i32 0 }, align 8
@.str.114 = private unnamed_addr constant [11 x i8] c"update_tag\00", align 1
@.str.115 = private unnamed_addr constant [38 x i8] c"Tag the ID to update its display data\00", align 1
@RNA_PropertyGroupItem = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_PropertyGroup, ptr @RNA_ID, ptr null, %struct.ListBase { ptr @rna_PropertyGroupItem_rna_properties, ptr @rna_PropertyGroupItem_idp_array } }, ptr @.str.128, ptr null, ptr null, i32 4, ptr @.str.129, ptr @.str.130, ptr @.str.67, i32 17, ptr null, ptr @rna_PropertyGroupItem_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.116 = private unnamed_addr constant [3 x i8] c"ID\00", align 1
@.str.117 = private unnamed_addr constant [102 x i8] c"Base type for datablocks, defining a unique name, linking from other libraries and garbage collection\00", align 1
@rna_PropertyGroupItem_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_PropertyGroupItem_string, ptr @rna_PropertyGroupItem_rna_properties, i32 -1, ptr @.str.68, i32 8912896, ptr @.str.69, ptr @.str.70, i32 0, ptr @.str.67, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @PropertyGroupItem_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_PropertyGroupItem_string = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_PropertyGroupItem_int, ptr @rna_PropertyGroupItem_rna_type, i32 -1, ptr @.str.118, i32 263425, ptr @.str.118, ptr @.str.2, i32 0, ptr @.str.67, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @.str.2 }, align 8
@rna_PropertyGroupItem_int = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_PropertyGroupItem_int_array, ptr @rna_PropertyGroupItem_string, i32 -1, ptr @.str.119, i32 1283, ptr @.str.119, ptr @.str.2, i32 0, ptr @.str.67, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -10000, i32 10000, i32 -2147483648, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@.str.118 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@rna_PropertyGroupItem_int_array = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_PropertyGroupItem_float, ptr @rna_PropertyGroupItem_int, i32 -1, ptr @.str.120, i32 1283, ptr @.str.120, ptr @.str.2, i32 0, ptr @.str.67, i32 1, i32 0, ptr null, i32 1, [3 x i32] [i32 1, i32 0, i32 0], i32 1, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -10000, i32 10000, i32 -2147483648, i32 2147483647, i32 1, i32 0, ptr @rna_PropertyGroupItem_int_array_default }, align 8
@.str.119 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@rna_PropertyGroupItem_float = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_PropertyGroupItem_float_array, ptr @rna_PropertyGroupItem_int_array, i32 -1, ptr @.str.121, i32 1283, ptr @.str.121, ptr @.str.2, i32 0, ptr @.str.67, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.120 = private unnamed_addr constant [10 x i8] c"int_array\00", align 1
@rna_PropertyGroupItem_int_array_default = internal global [1 x i32] zeroinitializer, align 4
@rna_PropertyGroupItem_float_array = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_PropertyGroupItem_double, ptr @rna_PropertyGroupItem_float, i32 -1, ptr @.str.122, i32 1283, ptr @.str.122, ptr @.str.2, i32 0, ptr @.str.67, i32 2, i32 0, ptr null, i32 1, [3 x i32] [i32 1, i32 0, i32 0], i32 1, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_PropertyGroupItem_float_array_default }, align 8
@.str.121 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@rna_PropertyGroupItem_double = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_PropertyGroupItem_double_array, ptr @rna_PropertyGroupItem_float_array, i32 -1, ptr @.str.123, i32 1283, ptr @.str.123, ptr @.str.2, i32 0, ptr @.str.67, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.122 = private unnamed_addr constant [12 x i8] c"float_array\00", align 1
@rna_PropertyGroupItem_float_array_default = internal global [1 x float] zeroinitializer, align 4
@rna_PropertyGroupItem_double_array = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_PropertyGroupItem_group, ptr @rna_PropertyGroupItem_double, i32 -1, ptr @.str.124, i32 1283, ptr @.str.124, ptr @.str.2, i32 0, ptr @.str.67, i32 2, i32 0, ptr null, i32 1, [3 x i32] [i32 1, i32 0, i32 0], i32 1, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_PropertyGroupItem_double_array_default }, align 8
@.str.123 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@rna_PropertyGroupItem_group = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_PropertyGroupItem_collection, ptr @rna_PropertyGroupItem_double_array, i32 -1, ptr @.str.125, i32 8389888, ptr @.str.125, ptr @.str.2, i32 0, ptr @.str.67, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_PropertyGroup }, align 8
@.str.124 = private unnamed_addr constant [13 x i8] c"double_array\00", align 1
@rna_PropertyGroupItem_double_array_default = internal global [1 x float] zeroinitializer, align 4
@rna_PropertyGroupItem_collection = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_PropertyGroupItem_idp_array, ptr @rna_PropertyGroupItem_group, i32 -1, ptr @.str.126, i32 1280, ptr @.str.126, ptr @.str.2, i32 0, ptr @.str.67, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @RNA_PropertyGroup }, align 8
@.str.125 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.126 = private unnamed_addr constant [11 x i8] c"collection\00", align 1
@.str.127 = private unnamed_addr constant [10 x i8] c"idp_array\00", align 1
@.str.128 = private unnamed_addr constant [18 x i8] c"PropertyGroupItem\00", align 1
@.str.129 = private unnamed_addr constant [12 x i8] c"ID Property\00", align 1
@.str.130 = private unnamed_addr constant [56 x i8] c"Property that stores arbitrary, user defined properties\00", align 1
@rna_PropertyGroup_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_PropertyGroup_name, ptr @rna_PropertyGroup_rna_properties, i32 -1, ptr @.str.68, i32 8912896, ptr @.str.69, ptr @.str.70, i32 0, ptr @.str.67, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @PropertyGroup_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_PropertyGroup_name = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_PropertyGroup_rna_type, i32 -1, ptr @.str.77, i32 263425, ptr @.str.78, ptr @.str.131, i32 0, ptr @.str.67, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @.str.2 }, align 8
@.str.131 = private unnamed_addr constant [43 x i8] c"Unique name used in the code and scripting\00", align 1
@RNA_IDMaterials = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_Library, ptr @RNA_PropertyGroup, ptr null, %struct.ListBase { ptr @rna_IDMaterials_rna_properties, ptr @rna_IDMaterials_rna_type } }, ptr @.str.148, ptr null, ptr null, i32 4, ptr @.str.149, ptr @.str.150, ptr @.str.67, i32 17, ptr null, ptr @rna_IDMaterials_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_IDMaterials_append_func, ptr @rna_IDMaterials_clear_func } }, align 8
@.str.132 = private unnamed_addr constant [14 x i8] c"PropertyGroup\00", align 1
@.str.133 = private unnamed_addr constant [18 x i8] c"ID Property Group\00", align 1
@.str.134 = private unnamed_addr constant [23 x i8] c"Group of ID properties\00", align 1
@rna_IDMaterials_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_IDMaterials_rna_properties, i32 -1, ptr @.str.68, i32 8912896, ptr @.str.69, ptr @.str.70, i32 0, ptr @.str.67, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @IDMaterials_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@.str.135 = private unnamed_addr constant [9 x i8] c"material\00", align 1
@.str.136 = private unnamed_addr constant [16 x i8] c"Material to add\00", align 1
@rna_IDMaterials_append_material = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.135, i32 8388612, ptr @.str.2, ptr @.str.136, i32 0, ptr @.str.67, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Material }, align 8
@rna_IDMaterials_pop_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_IDMaterials_clear_func, ptr @rna_IDMaterials_append_func, ptr null, %struct.ListBase { ptr @rna_IDMaterials_pop_index, ptr @rna_IDMaterials_pop_material } }, ptr @.str.144, i32 16, ptr @.str.145, ptr @IDMaterials_pop_call, ptr @rna_IDMaterials_pop_material }, align 8
@.str.137 = private unnamed_addr constant [7 x i8] c"append\00", align 1
@.str.138 = private unnamed_addr constant [37 x i8] c"Add a new material to the data block\00", align 1
@rna_IDMaterials_append_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_IDMaterials_pop_func, ptr null, ptr null, %struct.ListBase { ptr @rna_IDMaterials_append_material, ptr @rna_IDMaterials_append_material } }, ptr @.str.137, i32 0, ptr @.str.138, ptr @IDMaterials_append_call, ptr null }, align 8
@rna_IDMaterials_pop_update_data = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_IDMaterials_pop_material, ptr @rna_IDMaterials_pop_index, i32 -1, ptr @.str.141, i32 3, ptr @.str.2, ptr @.str.142, i32 0, ptr @.str.67, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.139 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.140 = private unnamed_addr constant [28 x i8] c"Index of material to remove\00", align 1
@rna_IDMaterials_pop_index = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_IDMaterials_pop_update_data, ptr null, i32 -1, ptr @.str.139, i32 3, ptr @.str.2, ptr @.str.140, i32 0, ptr @.str.67, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 32766, i32 -32766, i32 32766, i32 1, i32 -1, ptr null }, align 8
@rna_IDMaterials_pop_material = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_IDMaterials_pop_update_data, i32 -1, ptr @.str.135, i32 8388616, ptr @.str.2, ptr @.str.143, i32 0, ptr @.str.67, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Material }, align 8
@.str.141 = private unnamed_addr constant [12 x i8] c"update_data\00", align 1
@.str.142 = private unnamed_addr constant [56 x i8] c"Update data by re-adjusting the material slots assigned\00", align 1
@.str.143 = private unnamed_addr constant [19 x i8] c"Material to remove\00", align 1
@rna_IDMaterials_clear_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr @rna_IDMaterials_pop_func, ptr null, %struct.ListBase { ptr @rna_IDMaterials_clear_update_data, ptr @rna_IDMaterials_clear_update_data } }, ptr @.str.146, i32 0, ptr @.str.147, ptr @IDMaterials_clear_call, ptr null }, align 8
@.str.144 = private unnamed_addr constant [4 x i8] c"pop\00", align 1
@.str.145 = private unnamed_addr constant [38 x i8] c"Remove a material from the data block\00", align 1
@rna_IDMaterials_clear_update_data = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.141, i32 3, ptr @.str.2, ptr @.str.142, i32 0, ptr @.str.67, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.146 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@.str.147 = private unnamed_addr constant [41 x i8] c"Remove all materials from the data block\00", align 1
@.str.148 = private unnamed_addr constant [12 x i8] c"IDMaterials\00", align 1
@.str.149 = private unnamed_addr constant [13 x i8] c"ID Materials\00", align 1
@.str.150 = private unnamed_addr constant [24 x i8] c"Collection of materials\00", align 1
@rna_Library_parent = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Library_packed_file, ptr @rna_Library_filepath, i32 -1, ptr @.str.154, i32 8388672, ptr @.str.155, ptr @.str.2, i32 0, ptr @.str.67, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Library_parent_get, ptr null, ptr null, ptr null, ptr @RNA_Library }, align 8
@.str.151 = private unnamed_addr constant [9 x i8] c"filepath\00", align 1
@.str.152 = private unnamed_addr constant [10 x i8] c"File Path\00", align 1
@.str.153 = private unnamed_addr constant [32 x i8] c"Path to the library .blend file\00", align 1
@rna_Library_filepath = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_Library_parent, ptr null, i32 -1, ptr @.str.151, i32 262145, ptr @.str.152, ptr @.str.153, i32 0, ptr @.str.67, i32 3, i32 1, ptr null, i32 0, [3 x i32] [i32 1024, i32 0, i32 0], i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Library_filepath_get, ptr @Library_filepath_length, ptr @Library_filepath_set, ptr null, ptr null, ptr null, i32 1024, ptr @.str.2 }, align 8
@rna_Library_packed_file = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_Library_parent, i32 -1, ptr @.str.156, i32 8388608, ptr @.str.157, ptr @.str.2, i32 0, ptr @.str.67, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Library_packed_file_get, ptr null, ptr null, ptr null, ptr @RNA_PackedFile }, align 8
@.str.154 = private unnamed_addr constant [7 x i8] c"parent\00", align 1
@.str.155 = private unnamed_addr constant [7 x i8] c"Parent\00", align 1
@.str.156 = private unnamed_addr constant [12 x i8] c"packed_file\00", align 1
@.str.157 = private unnamed_addr constant [12 x i8] c"Packed File\00", align 1
@.str.158 = private unnamed_addr constant [47 x i8] c"External .blend file from which data is linked\00", align 1
@DefRNA = dso_local local_unnamed_addr global %struct.BlenderDefRNA { ptr null, %struct.ListBase zeroinitializer, %struct.ListBase zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 1, i32 1 }, align 8
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.159 = private unnamed_addr constant [30 x i8] c"%s: only at preprocess time.\0A\00", align 1
@__func__.rna_find_struct_def = private unnamed_addr constant [20 x i8] c"rna_find_struct_def\00", align 1
@__func__.rna_find_struct_property_def = private unnamed_addr constant [29 x i8] c"rna_find_struct_property_def\00", align 1
@__func__.rna_find_function_def = private unnamed_addr constant [22 x i8] c"rna_find_function_def\00", align 1
@__func__.rna_find_parameter_def = private unnamed_addr constant [23 x i8] c"rna_find_parameter_def\00", align 1
@.str.160 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@.str.161 = private unnamed_addr constant [3 x i8] c"as\00", align 1
@.str.162 = private unnamed_addr constant [7 x i8] c"assert\00", align 1
@.str.163 = private unnamed_addr constant [6 x i8] c"break\00", align 1
@.str.164 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.165 = private unnamed_addr constant [9 x i8] c"continue\00", align 1
@.str.166 = private unnamed_addr constant [4 x i8] c"def\00", align 1
@.str.167 = private unnamed_addr constant [4 x i8] c"del\00", align 1
@.str.168 = private unnamed_addr constant [5 x i8] c"elif\00", align 1
@.str.169 = private unnamed_addr constant [5 x i8] c"else\00", align 1
@.str.170 = private unnamed_addr constant [7 x i8] c"except\00", align 1
@.str.171 = private unnamed_addr constant [8 x i8] c"finally\00", align 1
@.str.172 = private unnamed_addr constant [4 x i8] c"for\00", align 1
@.str.173 = private unnamed_addr constant [5 x i8] c"from\00", align 1
@.str.174 = private unnamed_addr constant [7 x i8] c"global\00", align 1
@.str.175 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@.str.176 = private unnamed_addr constant [7 x i8] c"import\00", align 1
@.str.177 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.178 = private unnamed_addr constant [3 x i8] c"is\00", align 1
@.str.179 = private unnamed_addr constant [7 x i8] c"lambda\00", align 1
@.str.180 = private unnamed_addr constant [9 x i8] c"nonlocal\00", align 1
@.str.181 = private unnamed_addr constant [4 x i8] c"not\00", align 1
@.str.182 = private unnamed_addr constant [3 x i8] c"or\00", align 1
@.str.183 = private unnamed_addr constant [5 x i8] c"pass\00", align 1
@.str.184 = private unnamed_addr constant [6 x i8] c"raise\00", align 1
@.str.185 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@.str.186 = private unnamed_addr constant [4 x i8] c"try\00", align 1
@.str.187 = private unnamed_addr constant [6 x i8] c"while\00", align 1
@.str.188 = private unnamed_addr constant [5 x i8] c"with\00", align 1
@.str.189 = private unnamed_addr constant [6 x i8] c"yield\00", align 1
@.str.190 = private unnamed_addr constant [5 x i8] c"keys\00", align 1
@.str.191 = private unnamed_addr constant [7 x i8] c"values\00", align 1
@.str.192 = private unnamed_addr constant [6 x i8] c"items\00", align 1
@.str.193 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.194 = private unnamed_addr constant [11 x i8] c"BlenderRNA\00", align 1
@DNAstr = external constant [0 x i8], align 1
@DNAlen = external local_unnamed_addr constant i32, align 4
@.str.195 = private unnamed_addr constant [39 x i8] c"%s: struct identifier \22%s\22 error - %s\0A\00", align 1
@__func__.RNA_def_struct_ptr = private unnamed_addr constant [19 x i8] c"RNA_def_struct_ptr\00", align 1
@.str.196 = private unnamed_addr constant [10 x i8] c"StructRNA\00", align 1
@.str.197 = private unnamed_addr constant [13 x i8] c"StructDefRNA\00", align 1
@.str.198 = private unnamed_addr constant [9 x i8] c"Property\00", align 1
@.str.199 = private unnamed_addr constant [29 x i8] c"rna_builtin_properties_begin\00", align 1
@.str.200 = private unnamed_addr constant [28 x i8] c"rna_builtin_properties_next\00", align 1
@.str.201 = private unnamed_addr constant [26 x i8] c"rna_iterator_listbase_end\00", align 1
@.str.202 = private unnamed_addr constant [27 x i8] c"rna_builtin_properties_get\00", align 1
@.str.203 = private unnamed_addr constant [37 x i8] c"rna_builtin_properties_lookup_string\00", align 1
@.str.204 = private unnamed_addr constant [7 x i8] c"Struct\00", align 1
@.str.205 = private unnamed_addr constant [21 x i8] c"rna_builtin_type_get\00", align 1
@.str.206 = private unnamed_addr constant [39 x i8] c"%s: struct %s not found to define %s.\0A\00", align 1
@__func__.RNA_def_struct = private unnamed_addr constant [15 x i8] c"RNA_def_struct\00", align 1
@.str.207 = private unnamed_addr constant [32 x i8] c"%s: only during preprocessing.\0A\00", align 1
@__func__.RNA_def_struct_sdna = private unnamed_addr constant [20 x i8] c"RNA_def_struct_sdna\00", align 1
@__func__.RNA_def_struct_sdna_from = private unnamed_addr constant [25 x i8] c"RNA_def_struct_sdna_from\00", align 1
@.str.208 = private unnamed_addr constant [43 x i8] c"%s: %s base struct must know DNA already.\0A\00", align 1
@.str.209 = private unnamed_addr constant [19 x i8] c"%s: %s not found.\0A\00", align 1
@.str.210 = private unnamed_addr constant [41 x i8] c"%s: \22%s.%s\22, must be a string property.\0A\00", align 1
@__func__.RNA_def_struct_name_property = private unnamed_addr constant [29 x i8] c"RNA_def_struct_name_property\00", align 1
@.str.211 = private unnamed_addr constant [33 x i8] c"%s: struct %s not found for %s.\0A\00", align 1
@__func__.RNA_def_struct_nested = private unnamed_addr constant [22 x i8] c"RNA_def_struct_nested\00", align 1
@__func__.RNA_def_struct_refine_func = private unnamed_addr constant [27 x i8] c"RNA_def_struct_refine_func\00", align 1
@__func__.RNA_def_struct_idprops_func = private unnamed_addr constant [28 x i8] c"RNA_def_struct_idprops_func\00", align 1
@__func__.RNA_def_struct_register_funcs = private unnamed_addr constant [30 x i8] c"RNA_def_struct_register_funcs\00", align 1
@__func__.RNA_def_struct_path_func = private unnamed_addr constant [25 x i8] c"RNA_def_struct_path_func\00", align 1
@.str.212 = private unnamed_addr constant [22 x i8] c"%s: only at runtime.\0A\00", align 1
@__func__.RNA_def_struct_identifier = private unnamed_addr constant [26 x i8] c"RNA_def_struct_identifier\00", align 1
@.str.213 = private unnamed_addr constant [38 x i8] c"%s: property identifier \22%s.%s\22 - %s\0A\00", align 1
@__func__.RNA_def_property = private unnamed_addr constant [17 x i8] c"RNA_def_property\00", align 1
@.str.214 = private unnamed_addr constant [34 x i8] c"%s: duplicate identifier \22%s.%s\22\0A\00", align 1
@.str.215 = private unnamed_addr constant [15 x i8] c"PropertyDefRNA\00", align 1
@.str.216 = private unnamed_addr constant [12 x i8] c"PropertyRNA\00", align 1
@.str.217 = private unnamed_addr constant [54 x i8] c"%s: subtype does not apply to 'PROP_BOOLEAN' \22%s.%s\22\0A\00", align 1
@.str.218 = private unnamed_addr constant [37 x i8] c"%s: \22%s.%s\22, invalid property type.\0A\00", align 1
@.str.219 = private unnamed_addr constant [52 x i8] c"%s: \22%s.%s\22, array length must be zero of greater.\0A\00", align 1
@__func__.RNA_def_property_array = private unnamed_addr constant [23 x i8] c"RNA_def_property_array\00", align 1
@.str.220 = private unnamed_addr constant [52 x i8] c"%s: \22%s.%s\22, array length must be smaller than %d.\0A\00", align 1
@.str.221 = private unnamed_addr constant [81 x i8] c"%s: \22%s.%s\22, array dimensions has been set to %u but would be overwritten as 1.\0A\00", align 1
@.str.222 = private unnamed_addr constant [51 x i8] c"%s: \22%s.%s\22, only boolean/int/float can be array.\0A\00", align 1
@rna_matrix_dimsize_3x3 = dso_local local_unnamed_addr constant [2 x i32] [i32 3, i32 3], align 4
@rna_matrix_dimsize_4x4 = dso_local local_unnamed_addr constant [2 x i32] [i32 4, i32 4], align 4
@rna_matrix_dimsize_4x2 = dso_local local_unnamed_addr constant [2 x i32] [i32 4, i32 2], align 4
@.str.223 = private unnamed_addr constant [56 x i8] c"%s: \22%s.%s\22, array dimension must be between 1 and %d.\0A\00", align 1
@__func__.RNA_def_property_multi_array = private unnamed_addr constant [29 x i8] c"RNA_def_property_multi_array\00", align 1
@.str.224 = private unnamed_addr constant [41 x i8] c"%s: \22%s.%s\22, invalid type for ui range.\0A\00", align 1
@__func__.RNA_def_property_ui_range = private unnamed_addr constant [26 x i8] c"RNA_def_property_ui_range\00", align 1
@.str.225 = private unnamed_addr constant [38 x i8] c"%s: \22%s.%s\22, invalid type for range.\0A\00", align 1
@__func__.RNA_def_property_range = private unnamed_addr constant [23 x i8] c"RNA_def_property_range\00", align 1
@.str.226 = private unnamed_addr constant [40 x i8] c"%s \22%s.%s\22: only during preprocessing.\0A\00", align 1
@__func__.RNA_def_property_struct_type = private unnamed_addr constant [29 x i8] c"RNA_def_property_struct_type\00", align 1
@.str.227 = private unnamed_addr constant [44 x i8] c"%s: \22%s.%s\22, invalid type for struct type.\0A\00", align 1
@__func__.RNA_def_property_struct_runtime = private unnamed_addr constant [32 x i8] c"RNA_def_property_struct_runtime\00", align 1
@__func__.RNA_def_property_enum_items = private unnamed_addr constant [28 x i8] c"RNA_def_property_enum_items\00", align 1
@.str.228 = private unnamed_addr constant [34 x i8] c"%s: \22%s.%s\22, type is not string.\0A\00", align 1
@__func__.RNA_def_property_string_maxlength = private unnamed_addr constant [34 x i8] c"RNA_def_property_string_maxlength\00", align 1
@.str.229 = private unnamed_addr constant [35 x i8] c"%s: \22%s.%s\22, type is not boolean.\0A\00", align 1
@__func__.RNA_def_property_boolean_default = private unnamed_addr constant [33 x i8] c"RNA_def_property_boolean_default\00", align 1
@__func__.RNA_def_property_boolean_array_default = private unnamed_addr constant [39 x i8] c"RNA_def_property_boolean_array_default\00", align 1
@.str.230 = private unnamed_addr constant [31 x i8] c"%s: \22%s.%s\22, type is not int.\0A\00", align 1
@__func__.RNA_def_property_int_default = private unnamed_addr constant [29 x i8] c"RNA_def_property_int_default\00", align 1
@__func__.RNA_def_property_int_array_default = private unnamed_addr constant [35 x i8] c"RNA_def_property_int_array_default\00", align 1
@.str.231 = private unnamed_addr constant [33 x i8] c"%s: \22%s.%s\22, type is not float.\0A\00", align 1
@__func__.RNA_def_property_float_default = private unnamed_addr constant [31 x i8] c"RNA_def_property_float_default\00", align 1
@__func__.RNA_def_property_float_array_default = private unnamed_addr constant [37 x i8] c"RNA_def_property_float_array_default\00", align 1
@.str.232 = private unnamed_addr constant [59 x i8] c"%s: \22%s.%s\22, NULL string passed (dont call in this case).\0A\00", align 1
@__func__.RNA_def_property_string_default = private unnamed_addr constant [32 x i8] c"RNA_def_property_string_default\00", align 1
@.str.233 = private unnamed_addr constant [60 x i8] c"%s: \22%s.%s\22, empty string passed (dont call in this case).\0A\00", align 1
@.str.234 = private unnamed_addr constant [49 x i8] c"%s: \22%s.%s\22, default includes unused bits (%d).\0A\00", align 1
@__func__.RNA_def_property_enum_default = private unnamed_addr constant [30 x i8] c"RNA_def_property_enum_default\00", align 1
@.str.235 = private unnamed_addr constant [39 x i8] c"%s: \22%s.%s\22, default is not in items.\0A\00", align 1
@.str.236 = private unnamed_addr constant [32 x i8] c"%s: \22%s.%s\22, type is not enum.\0A\00", align 1
@__func__.RNA_def_property_boolean_sdna = private unnamed_addr constant [30 x i8] c"RNA_def_property_boolean_sdna\00", align 1
@.str.237 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str.238 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.239 = private unnamed_addr constant [47 x i8] c"%s: %s.%s is a '%s' but wrapped as type '%s'.\0A\00", align 1
@__func__.RNA_def_property_int_sdna = private unnamed_addr constant [26 x i8] c"RNA_def_property_int_sdna\00", align 1
@__func__.RNA_def_property_float_sdna = private unnamed_addr constant [28 x i8] c"RNA_def_property_float_sdna\00", align 1
@__func__.RNA_def_property_enum_sdna = private unnamed_addr constant [27 x i8] c"RNA_def_property_enum_sdna\00", align 1
@.str.240 = private unnamed_addr constant [49 x i8] c"%s: \22%s.%s\22, array not supported for enum type.\0A\00", align 1
@__func__.RNA_def_property_string_sdna = private unnamed_addr constant [29 x i8] c"RNA_def_property_string_sdna\00", align 1
@__func__.RNA_def_property_pointer_sdna = private unnamed_addr constant [30 x i8] c"RNA_def_property_pointer_sdna\00", align 1
@.str.241 = private unnamed_addr constant [35 x i8] c"%s: \22%s.%s\22, type is not pointer.\0A\00", align 1
@.str.242 = private unnamed_addr constant [52 x i8] c"%s: \22%s.%s\22, array not supported for pointer type.\0A\00", align 1
@__func__.RNA_def_property_collection_sdna = private unnamed_addr constant [33 x i8] c"RNA_def_property_collection_sdna\00", align 1
@.str.243 = private unnamed_addr constant [38 x i8] c"%s: \22%s.%s\22, type is not collection.\0A\00", align 1
@.str.244 = private unnamed_addr constant [50 x i8] c"%s: \22%s.%s\22, array of collections not supported.\0A\00", align 1
@.str.245 = private unnamed_addr constant [9 x i8] c"ListBase\00", align 1
@.str.246 = private unnamed_addr constant [27 x i8] c"rna_iterator_listbase_next\00", align 1
@.str.247 = private unnamed_addr constant [26 x i8] c"rna_iterator_listbase_get\00", align 1
@.str.248 = private unnamed_addr constant [24 x i8] c"rna_iterator_array_next\00", align 1
@.str.249 = private unnamed_addr constant [23 x i8] c"rna_iterator_array_end\00", align 1
@.str.250 = private unnamed_addr constant [35 x i8] c"rna_iterator_array_dereference_get\00", align 1
@.str.251 = private unnamed_addr constant [23 x i8] c"rna_iterator_array_get\00", align 1
@.str.252 = private unnamed_addr constant [24 x i8] c"%s: \22%s.%s\22 not found.\0A\00", align 1
@__func__.RNA_def_property_editable_func = private unnamed_addr constant [31 x i8] c"RNA_def_property_editable_func\00", align 1
@__func__.RNA_def_property_editable_array_func = private unnamed_addr constant [37 x i8] c"RNA_def_property_editable_array_func\00", align 1
@__func__.RNA_def_property_update = private unnamed_addr constant [24 x i8] c"RNA_def_property_update\00", align 1
@__func__.RNA_def_property_dynamic_array_funcs = private unnamed_addr constant [37 x i8] c"RNA_def_property_dynamic_array_funcs\00", align 1
@.str.253 = private unnamed_addr constant [38 x i8] c"%s: property is a not dynamic array.\0A\00", align 1
@__func__.RNA_def_property_boolean_funcs = private unnamed_addr constant [31 x i8] c"RNA_def_property_boolean_funcs\00", align 1
@__func__.RNA_def_property_int_funcs = private unnamed_addr constant [27 x i8] c"RNA_def_property_int_funcs\00", align 1
@__func__.RNA_def_property_float_funcs = private unnamed_addr constant [29 x i8] c"RNA_def_property_float_funcs\00", align 1
@__func__.RNA_def_property_enum_funcs = private unnamed_addr constant [28 x i8] c"RNA_def_property_enum_funcs\00", align 1
@__func__.RNA_def_property_string_funcs = private unnamed_addr constant [30 x i8] c"RNA_def_property_string_funcs\00", align 1
@__func__.RNA_def_property_pointer_funcs = private unnamed_addr constant [31 x i8] c"RNA_def_property_pointer_funcs\00", align 1
@__func__.RNA_def_property_collection_funcs = private unnamed_addr constant [34 x i8] c"RNA_def_property_collection_funcs\00", align 1
@.str.254 = private unnamed_addr constant [35 x i8] c"%s: items not allowed to be NULL.\0A\00", align 1
@__func__.RNA_def_enum = private unnamed_addr constant [13 x i8] c"RNA_def_enum\00", align 1
@__func__.RNA_def_enum_flag = private unnamed_addr constant [18 x i8] c"RNA_def_enum_flag\00", align 1
@.str.255 = private unnamed_addr constant [28 x i8] c"%s: %s.%s already defined.\0A\00", align 1
@__func__.RNA_def_function = private unnamed_addr constant [17 x i8] c"RNA_def_function\00", align 1
@__func__.RNA_def_function_runtime = private unnamed_addr constant [25 x i8] c"RNA_def_function_runtime\00", align 1
@.str.256 = private unnamed_addr constant [101 x i8] c"%s: \22%s.%s\22, dynamic values are not allowed as strict returns, use RNA_def_function_output instead.\0A\00", align 1
@__func__.RNA_def_function_return = private unnamed_addr constant [24 x i8] c"RNA_def_function_return\00", align 1
@.str.257 = private unnamed_addr constant [93 x i8] c"%s: \22%s.%s\22, arrays are not allowed as strict returns, use RNA_def_function_output instead.\0A\00", align 1
@.str.258 = private unnamed_addr constant [19 x i8] c"RNA_enum_items_add\00", align 1
@RNA_enum_item_add_separator.sepr = internal unnamed_addr constant %struct.EnumPropertyItem { i32 0, ptr @.str.2, i32 0, ptr null, ptr null }, align 8
@RNA_enum_item_end.empty = internal unnamed_addr constant %struct.EnumPropertyItem zeroinitializer, align 8
@.str.259 = private unnamed_addr constant [23 x i8] c"RNA_def_property_store\00", align 1
@.str.260 = private unnamed_addr constant [13 x i8] c"PROP_BOOLEAN\00", align 1
@.str.261 = private unnamed_addr constant [9 x i8] c"PROP_INT\00", align 1
@.str.262 = private unnamed_addr constant [11 x i8] c"PROP_FLOAT\00", align 1
@.str.263 = private unnamed_addr constant [12 x i8] c"PROP_STRING\00", align 1
@.str.264 = private unnamed_addr constant [10 x i8] c"PROP_ENUM\00", align 1
@.str.265 = private unnamed_addr constant [13 x i8] c"PROP_POINTER\00", align 1
@.str.266 = private unnamed_addr constant [16 x i8] c"PROP_COLLECTION\00", align 1
@.str.267 = private unnamed_addr constant [13 x i8] c"PROP_UNKNOWN\00", align 1
@RNA_MaskLayers = external global %struct.StructRNA, align 8
@.str.268 = private unnamed_addr constant [43 x i8] c"'Refresh' incompatible with Object ID type\00", align 1
@.str.269 = private unnamed_addr constant [58 x i8] c"This ID type is not compatible with any 'refresh' options\00", align 1
@.str.270 = private unnamed_addr constant [19 x i8] c"Index out of range\00", align 1
@.str.271 = private unnamed_addr constant [23 x i8] c"No material to removed\00", align 1
@.str.272 = private unnamed_addr constant [5 x i8] c"DATA\00", align 1
@.str.273 = private unnamed_addr constant [5 x i8] c"Data\00", align 1
@.str.274 = private unnamed_addr constant [5 x i8] c"TIME\00", align 1
@.str.275 = private unnamed_addr constant [5 x i8] c"Time\00", align 1
@rna_validate_identifier.kwlist = internal unnamed_addr constant [31 x ptr] [ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr null], align 16
@.str.276 = private unnamed_addr constant [39 x i8] c"first character failed isalpha() check\00", align 1
@.str.277 = private unnamed_addr constant [55 x i8] c"property names must contain lower case characters only\00", align 1
@.str.278 = private unnamed_addr constant [40 x i8] c"spaces are not okay in identifier names\00", align 1
@.str.279 = private unnamed_addr constant [73 x i8] c"one of the characters failed an isalnum() check and is not an underscore\00", align 1
@.str.280 = private unnamed_addr constant [35 x i8] c"this keyword is reserved by python\00", align 1
@rna_validate_identifier.kwlist_prop = internal unnamed_addr constant [5 x ptr] [ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr null], align 16
@__func__.rna_find_container_def = private unnamed_addr constant [23 x i8] c"rna_find_container_def\00", align 1
@.str.281 = private unnamed_addr constant [42 x i8] c"%s: \22%s.%s\22 (identifier \22%s\22) not found.\0A\00", align 1
@__func__.rna_def_property_sdna = private unnamed_addr constant [22 x i8] c"rna_def_property_sdna\00", align 1
@.str.284 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@.str.285 = private unnamed_addr constant [35 x i8] c"%s: function identifier \22%s\22 - %s\0A\00", align 1
@__func__.rna_def_function = private unnamed_addr constant [17 x i8] c"rna_def_function\00", align 1
@.str.286 = private unnamed_addr constant [12 x i8] c"FunctionRNA\00", align 1
@.str.287 = private unnamed_addr constant [15 x i8] c"FunctionDefRNA\00", align 1
@switch.table.RNA_def_property = private unnamed_addr constant [7 x i64] [i64 248, i64 280, i64 288, i64 232, i64 232, i64 208, i64 240], align 8
@switch.table.RNA_property_typename = private unnamed_addr constant [7 x ptr] [ptr @.str.260, ptr @.str.261, ptr @.str.262, ptr @.str.263, ptr @.str.264, ptr @.str.265, ptr @.str.266], align 8

; Function Attrs: nounwind uwtable
define dso_local void @rna_ID_name_get(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 4, i64 2
  %6 = tail call ptr @BLI_strncpy(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #23
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @rna_ID_name_length(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 4, i64 2
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #24
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @rna_ID_name_set(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 4
  %6 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 4, i64 2
  %7 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %6, ptr noundef %1, i64 noundef 64) #23
  tail call void @test_idbutton(ptr noundef nonnull %5) #23
  ret void
}

declare ptr @BLI_strncpy_utf8(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @test_idbutton(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local signext i16 @RNA_type_to_ID_code(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %0, ptr noundef nonnull @RNA_Action) #23
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %98

4:                                                ; preds = %1
  %5 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %0, ptr noundef nonnull @RNA_Armature) #23
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %98

7:                                                ; preds = %4
  %8 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %0, ptr noundef nonnull @RNA_Brush) #23
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %98

10:                                               ; preds = %7
  %11 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %0, ptr noundef nonnull @RNA_Camera) #23
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %98

13:                                               ; preds = %10
  %14 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %0, ptr noundef nonnull @RNA_Curve) #23
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %98

16:                                               ; preds = %13
  %17 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %0, ptr noundef nonnull @RNA_GreasePencil) #23
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %98

19:                                               ; preds = %16
  %20 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %0, ptr noundef nonnull @RNA_Group) #23
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %98

22:                                               ; preds = %19
  %23 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %0, ptr noundef nonnull @RNA_Image) #23
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %98

25:                                               ; preds = %22
  %26 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %0, ptr noundef nonnull @RNA_Key) #23
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %98

28:                                               ; preds = %25
  %29 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %0, ptr noundef nonnull @RNA_Lamp) #23
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %98

31:                                               ; preds = %28
  %32 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %0, ptr noundef nonnull @RNA_Library) #23
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %98

34:                                               ; preds = %31
  %35 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %0, ptr noundef nonnull @RNA_FreestyleLineStyle) #23
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %98

37:                                               ; preds = %34
  %38 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %0, ptr noundef nonnull @RNA_Lattice) #23
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %98

40:                                               ; preds = %37
  %41 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %0, ptr noundef nonnull @RNA_Material) #23
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %98

43:                                               ; preds = %40
  %44 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %0, ptr noundef nonnull @RNA_MetaBall) #23
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %98

46:                                               ; preds = %43
  %47 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %0, ptr noundef nonnull @RNA_NodeTree) #23
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %98

49:                                               ; preds = %46
  %50 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %0, ptr noundef nonnull @RNA_Mesh) #23
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %98

52:                                               ; preds = %49
  %53 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %0, ptr noundef nonnull @RNA_Object) #23
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %98

55:                                               ; preds = %52
  %56 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %0, ptr noundef nonnull @RNA_ParticleSettings) #23
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %98

58:                                               ; preds = %55
  %59 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %0, ptr noundef nonnull @RNA_Scene) #23
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %98

61:                                               ; preds = %58
  %62 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %0, ptr noundef nonnull @RNA_Screen) #23
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %98

64:                                               ; preds = %61
  %65 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %0, ptr noundef nonnull @RNA_Speaker) #23
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %98

67:                                               ; preds = %64
  %68 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %0, ptr noundef nonnull @RNA_Sound) #23
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %98

70:                                               ; preds = %67
  %71 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %0, ptr noundef nonnull @RNA_Text) #23
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %98

73:                                               ; preds = %70
  %74 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %0, ptr noundef nonnull @RNA_Texture) #23
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %98

76:                                               ; preds = %73
  %77 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %0, ptr noundef nonnull @RNA_VectorFont) #23
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %98

79:                                               ; preds = %76
  %80 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %0, ptr noundef nonnull @RNA_World) #23
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %98

82:                                               ; preds = %79
  %83 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %0, ptr noundef nonnull @RNA_WindowManager) #23
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %85, label %98

85:                                               ; preds = %82
  %86 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %0, ptr noundef nonnull @RNA_MovieClip) #23
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %85
  %89 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %0, ptr noundef nonnull @RNA_Mask) #23
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %88
  %92 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %0, ptr noundef nonnull @RNA_Palette) #23
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %91
  %95 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %0, ptr noundef nonnull @RNA_PaintCurve) #23
  %96 = icmp eq i8 %95, 0
  %97 = select i1 %96, i16 0, i16 17232
  br label %98

98:                                               ; preds = %94, %91, %88, %85, %82, %79, %76, %73, %70, %67, %64, %61, %58, %55, %52, %49, %46, %43, %40, %37, %34, %31, %28, %25, %22, %19, %16, %13, %10, %7, %4, %1
  %99 = phi i16 [ 17217, %1 ], [ 21057, %4 ], [ 21058, %7 ], [ 16707, %10 ], [ 21827, %13 ], [ 17479, %16 ], [ 21063, %19 ], [ 19785, %22 ], [ 17739, %25 ], [ 16716, %28 ], [ 18764, %31 ], [ 21324, %34 ], [ 21580, %37 ], [ 16717, %40 ], [ 16973, %43 ], [ 21582, %46 ], [ 17741, %49 ], [ 16975, %52 ], [ 16720, %55 ], [ 17235, %58 ], [ 21075, %61 ], [ 19283, %64 ], [ 20307, %67 ], [ 22612, %70 ], [ 17748, %73 ], [ 18006, %76 ], [ 20311, %79 ], [ 19799, %82 ], [ 17229, %85 ], [ 21325, %88 ], [ 19536, %91 ], [ %97, %94 ]
  ret i16 %99
}

declare zeroext i8 @RNA_struct_is_a(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @ID_code_to_RNA_type(i16 noundef signext %0) local_unnamed_addr #5 {
  switch i16 %0, label %33 [
    i16 17217, label %34
    i16 21057, label %2
    i16 21058, label %3
    i16 16707, label %4
    i16 21827, label %5
    i16 17479, label %6
    i16 21063, label %7
    i16 19785, label %8
    i16 17739, label %9
    i16 16716, label %10
    i16 18764, label %11
    i16 21324, label %12
    i16 21580, label %13
    i16 16717, label %14
    i16 16973, label %15
    i16 21582, label %16
    i16 17741, label %17
    i16 16975, label %18
    i16 16720, label %19
    i16 17235, label %20
    i16 21075, label %21
    i16 19283, label %22
    i16 20307, label %23
    i16 22612, label %24
    i16 17748, label %25
    i16 18006, label %26
    i16 20311, label %27
    i16 19799, label %28
    i16 17229, label %29
    i16 21325, label %30
    i16 19536, label %31
    i16 17232, label %32
  ]

2:                                                ; preds = %1
  br label %34

3:                                                ; preds = %1
  br label %34

4:                                                ; preds = %1
  br label %34

5:                                                ; preds = %1
  br label %34

6:                                                ; preds = %1
  br label %34

7:                                                ; preds = %1
  br label %34

8:                                                ; preds = %1
  br label %34

9:                                                ; preds = %1
  br label %34

10:                                               ; preds = %1
  br label %34

11:                                               ; preds = %1
  br label %34

12:                                               ; preds = %1
  br label %34

13:                                               ; preds = %1
  br label %34

14:                                               ; preds = %1
  br label %34

15:                                               ; preds = %1
  br label %34

16:                                               ; preds = %1
  br label %34

17:                                               ; preds = %1
  br label %34

18:                                               ; preds = %1
  br label %34

19:                                               ; preds = %1
  br label %34

20:                                               ; preds = %1
  br label %34

21:                                               ; preds = %1
  br label %34

22:                                               ; preds = %1
  br label %34

23:                                               ; preds = %1
  br label %34

24:                                               ; preds = %1
  br label %34

25:                                               ; preds = %1
  br label %34

26:                                               ; preds = %1
  br label %34

27:                                               ; preds = %1
  br label %34

28:                                               ; preds = %1
  br label %34

29:                                               ; preds = %1
  br label %34

30:                                               ; preds = %1
  br label %34

31:                                               ; preds = %1
  br label %34

32:                                               ; preds = %1
  br label %34

33:                                               ; preds = %1
  br label %34

34:                                               ; preds = %1, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5, %4, %3, %2
  %35 = phi ptr [ @RNA_ID, %33 ], [ @RNA_PaintCurve, %32 ], [ @RNA_Palette, %31 ], [ @RNA_Mask, %30 ], [ @RNA_MovieClip, %29 ], [ @RNA_WindowManager, %28 ], [ @RNA_World, %27 ], [ @RNA_VectorFont, %26 ], [ @RNA_Texture, %25 ], [ @RNA_Text, %24 ], [ @RNA_Sound, %23 ], [ @RNA_Speaker, %22 ], [ @RNA_Screen, %21 ], [ @RNA_Scene, %20 ], [ @RNA_ParticleSettings, %19 ], [ @RNA_Object, %18 ], [ @RNA_Mesh, %17 ], [ @RNA_NodeTree, %16 ], [ @RNA_MetaBall, %15 ], [ @RNA_Material, %14 ], [ @RNA_Lattice, %13 ], [ @RNA_FreestyleLineStyle, %12 ], [ @RNA_Library, %11 ], [ @RNA_Lamp, %10 ], [ @RNA_Key, %9 ], [ @RNA_Image, %8 ], [ @RNA_Group, %7 ], [ @RNA_GreasePencil, %6 ], [ @RNA_Curve, %5 ], [ @RNA_Camera, %4 ], [ @RNA_Brush, %3 ], [ @RNA_Armature, %2 ], [ @RNA_Action, %1 ]
  ret ptr %35
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef nonnull ptr @rna_ID_refine(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 4
  %5 = load i16, ptr %4, align 8, !tbaa !40
  %6 = tail call ptr @ID_code_to_RNA_type(i16 noundef signext %5)
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define dso_local ptr @rna_ID_idprops(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = tail call ptr @IDP_GetProperties(ptr noundef %4, i8 noundef zeroext %1) #23
  ret ptr %5
}

declare ptr @IDP_GetProperties(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @rna_ID_fake_user_set(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 5
  %7 = load i16, ptr %6, align 2, !tbaa !42
  %8 = and i16 %7, 512
  %9 = icmp eq i16 %8, 0
  br i1 %5, label %13, label %10

10:                                               ; preds = %2
  br i1 %9, label %11, label %16

11:                                               ; preds = %10
  %12 = or disjoint i16 %7, 512
  store i16 %12, ptr %6, align 2, !tbaa !42
  tail call void @id_us_plus(ptr noundef %4) #23
  br label %16

13:                                               ; preds = %2
  br i1 %9, label %16, label %14

14:                                               ; preds = %13
  %15 = and i16 %7, -513
  store i16 %15, ptr %6, align 2, !tbaa !42
  tail call void @id_us_min(ptr noundef %4) #23
  br label %16

16:                                               ; preds = %10, %13, %14, %11
  ret void
}

declare void @id_us_plus(ptr noundef) local_unnamed_addr #2

declare void @id_us_min(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @rna_PropertyGroup_idprops(ptr nocapture noundef readonly %0, i8 zeroext %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define dso_local void @rna_PropertyGroup_unregister(ptr nocapture readnone %0, ptr noundef %1) #0 {
  tail call void @RNA_struct_free(ptr noundef nonnull @BLENDER_RNA, ptr noundef %1)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @RNA_struct_free(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ContainerRNA, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq ptr %4, null
  br i1 %5, label %40, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ContainerRNA, ptr %1, i64 0, i32 3, i32 1
  br label %8

8:                                                ; preds = %6, %38
  %9 = phi ptr [ %4, %6 ], [ %10, %38 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !49
  tail call void @RNA_def_property_free_pointers(ptr noundef nonnull %9)
  %11 = getelementptr inbounds %struct.PropertyRNA, ptr %9, i64 0, i32 4
  %12 = load i32, ptr %11, align 8, !tbaa !51
  %13 = and i32 %12, 512
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %38, label %15

15:                                               ; preds = %8
  %16 = load ptr, ptr %9, align 8, !tbaa !52
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.Link, ptr %9, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !54
  %21 = getelementptr inbounds %struct.Link, ptr %16, i64 0, i32 1
  store ptr %20, ptr %21, align 8, !tbaa !54
  br label %22

22:                                               ; preds = %18, %15
  %23 = getelementptr inbounds %struct.Link, ptr %9, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !54
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  store ptr %16, ptr %24, align 8, !tbaa !52
  br label %27

27:                                               ; preds = %26, %22
  %28 = load ptr, ptr %7, align 8, !tbaa !55
  %29 = icmp eq ptr %28, %9
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store ptr %24, ptr %7, align 8, !tbaa !55
  br label %31

31:                                               ; preds = %30, %27
  %32 = load ptr, ptr %3, align 8, !tbaa !56
  %33 = icmp eq ptr %32, %9
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load ptr, ptr %9, align 8, !tbaa !52
  store ptr %35, ptr %3, align 8, !tbaa !56
  br label %36

36:                                               ; preds = %31, %34
  %37 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %37(ptr noundef nonnull %9) #23
  br label %38

38:                                               ; preds = %8, %36
  %39 = icmp eq ptr %10, null
  br i1 %39, label %40, label %8, !llvm.loop !58

40:                                               ; preds = %38, %2
  %41 = getelementptr inbounds %struct.StructRNA, ptr %1, i64 0, i32 19
  %42 = load ptr, ptr %41, align 8, !tbaa !61
  %43 = icmp eq ptr %42, null
  br i1 %43, label %132, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.StructRNA, ptr %1, i64 0, i32 19, i32 1
  br label %46

46:                                               ; preds = %44, %130
  %47 = phi ptr [ %42, %44 ], [ %48, %130 ]
  %48 = load ptr, ptr %47, align 8, !tbaa !62
  %49 = getelementptr inbounds %struct.ContainerRNA, ptr %47, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !64
  %51 = icmp eq ptr %50, null
  br i1 %51, label %86, label %52

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.ContainerRNA, ptr %47, i64 0, i32 3, i32 1
  br label %54

54:                                               ; preds = %52, %84
  %55 = phi ptr [ %50, %52 ], [ %56, %84 ]
  %56 = load ptr, ptr %55, align 8, !tbaa !49
  tail call void @RNA_def_property_free_pointers(ptr noundef nonnull %55)
  %57 = getelementptr inbounds %struct.PropertyRNA, ptr %55, i64 0, i32 4
  %58 = load i32, ptr %57, align 8, !tbaa !51
  %59 = and i32 %58, 512
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %84, label %61

61:                                               ; preds = %54
  %62 = load ptr, ptr %55, align 8, !tbaa !52
  %63 = icmp eq ptr %62, null
  br i1 %63, label %68, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.Link, ptr %55, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !54
  %67 = getelementptr inbounds %struct.Link, ptr %62, i64 0, i32 1
  store ptr %66, ptr %67, align 8, !tbaa !54
  br label %68

68:                                               ; preds = %64, %61
  %69 = getelementptr inbounds %struct.Link, ptr %55, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !54
  %71 = icmp eq ptr %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %68
  store ptr %62, ptr %70, align 8, !tbaa !52
  br label %73

73:                                               ; preds = %72, %68
  %74 = load ptr, ptr %53, align 8, !tbaa !55
  %75 = icmp eq ptr %74, %55
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  store ptr %70, ptr %53, align 8, !tbaa !55
  br label %77

77:                                               ; preds = %76, %73
  %78 = load ptr, ptr %49, align 8, !tbaa !56
  %79 = icmp eq ptr %78, %55
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = load ptr, ptr %55, align 8, !tbaa !52
  store ptr %81, ptr %49, align 8, !tbaa !56
  br label %82

82:                                               ; preds = %77, %80
  %83 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %83(ptr noundef nonnull %55) #23
  br label %84

84:                                               ; preds = %54, %82
  %85 = icmp eq ptr %56, null
  br i1 %85, label %86, label %54, !llvm.loop !65

86:                                               ; preds = %84, %46
  %87 = getelementptr inbounds %struct.FunctionRNA, ptr %47, i64 0, i32 2
  %88 = load i32, ptr %87, align 8, !tbaa !66
  %89 = and i32 %88, 1024
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %103, label %91

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.FunctionRNA, ptr %47, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !67
  %94 = icmp eq ptr %93, null
  br i1 %94, label %97, label %95

95:                                               ; preds = %91
  %96 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %96(ptr noundef nonnull %93) #23
  br label %97

97:                                               ; preds = %95, %91
  %98 = getelementptr inbounds %struct.FunctionRNA, ptr %47, i64 0, i32 3
  %99 = load ptr, ptr %98, align 8, !tbaa !68
  %100 = icmp eq ptr %99, null
  br i1 %100, label %103, label %101

101:                                              ; preds = %97
  %102 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %102(ptr noundef nonnull %99) #23
  br label %103

103:                                              ; preds = %86, %97, %101
  %104 = load i32, ptr %87, align 8, !tbaa !66
  %105 = and i32 %104, 512
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %130, label %107

107:                                              ; preds = %103
  %108 = load ptr, ptr %47, align 8, !tbaa !52
  %109 = icmp eq ptr %108, null
  br i1 %109, label %114, label %110

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct.Link, ptr %47, i64 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !54
  %113 = getelementptr inbounds %struct.Link, ptr %108, i64 0, i32 1
  store ptr %112, ptr %113, align 8, !tbaa !54
  br label %114

114:                                              ; preds = %110, %107
  %115 = getelementptr inbounds %struct.Link, ptr %47, i64 0, i32 1
  %116 = load ptr, ptr %115, align 8, !tbaa !54
  %117 = icmp eq ptr %116, null
  br i1 %117, label %119, label %118

118:                                              ; preds = %114
  store ptr %108, ptr %116, align 8, !tbaa !52
  br label %119

119:                                              ; preds = %118, %114
  %120 = load ptr, ptr %45, align 8, !tbaa !55
  %121 = icmp eq ptr %120, %47
  br i1 %121, label %122, label %123

122:                                              ; preds = %119
  store ptr %116, ptr %45, align 8, !tbaa !55
  br label %123

123:                                              ; preds = %122, %119
  %124 = load ptr, ptr %41, align 8, !tbaa !56
  %125 = icmp eq ptr %124, %47
  br i1 %125, label %126, label %128

126:                                              ; preds = %123
  %127 = load ptr, ptr %47, align 8, !tbaa !52
  store ptr %127, ptr %41, align 8, !tbaa !56
  br label %128

128:                                              ; preds = %123, %126
  %129 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %129(ptr noundef nonnull %47) #23
  br label %130

130:                                              ; preds = %103, %128
  %131 = icmp eq ptr %48, null
  br i1 %131, label %132, label %46, !llvm.loop !69

132:                                              ; preds = %130, %40
  %133 = getelementptr inbounds %struct.StructRNA, ptr %1, i64 0, i32 4
  %134 = load i32, ptr %133, align 8, !tbaa !70
  %135 = and i32 %134, 32
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %155, label %137

137:                                              ; preds = %132
  %138 = getelementptr inbounds %struct.StructRNA, ptr %1, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !71
  %140 = icmp eq ptr %139, null
  br i1 %140, label %143, label %141

141:                                              ; preds = %137
  %142 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %142(ptr noundef nonnull %139) #23
  br label %143

143:                                              ; preds = %141, %137
  %144 = getelementptr inbounds %struct.StructRNA, ptr %1, i64 0, i32 5
  %145 = load ptr, ptr %144, align 8, !tbaa !72
  %146 = icmp eq ptr %145, null
  br i1 %146, label %149, label %147

147:                                              ; preds = %143
  %148 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %148(ptr noundef nonnull %145) #23
  br label %149

149:                                              ; preds = %147, %143
  %150 = getelementptr inbounds %struct.StructRNA, ptr %1, i64 0, i32 6
  %151 = load ptr, ptr %150, align 8, !tbaa !73
  %152 = icmp eq ptr %151, null
  br i1 %152, label %155, label %153

153:                                              ; preds = %149
  %154 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %154(ptr noundef nonnull %151) #23
  br label %155

155:                                              ; preds = %132, %149, %153
  %156 = load i32, ptr %133, align 8, !tbaa !70
  %157 = and i32 %156, 8
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %183, label %159

159:                                              ; preds = %155
  %160 = load ptr, ptr %1, align 8, !tbaa !52
  %161 = icmp eq ptr %160, null
  br i1 %161, label %166, label %162

162:                                              ; preds = %159
  %163 = getelementptr inbounds %struct.Link, ptr %1, i64 0, i32 1
  %164 = load ptr, ptr %163, align 8, !tbaa !54
  %165 = getelementptr inbounds %struct.Link, ptr %160, i64 0, i32 1
  store ptr %164, ptr %165, align 8, !tbaa !54
  br label %166

166:                                              ; preds = %162, %159
  %167 = getelementptr inbounds %struct.Link, ptr %1, i64 0, i32 1
  %168 = load ptr, ptr %167, align 8, !tbaa !54
  %169 = icmp eq ptr %168, null
  br i1 %169, label %171, label %170

170:                                              ; preds = %166
  store ptr %160, ptr %168, align 8, !tbaa !52
  br label %171

171:                                              ; preds = %170, %166
  %172 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %173 = load ptr, ptr %172, align 8, !tbaa !55
  %174 = icmp eq ptr %173, %1
  br i1 %174, label %175, label %176

175:                                              ; preds = %171
  store ptr %168, ptr %172, align 8, !tbaa !55
  br label %176

176:                                              ; preds = %175, %171
  %177 = load ptr, ptr %0, align 8, !tbaa !56
  %178 = icmp eq ptr %177, %1
  br i1 %178, label %179, label %181

179:                                              ; preds = %176
  %180 = load ptr, ptr %1, align 8, !tbaa !52
  store ptr %180, ptr %0, align 8, !tbaa !56
  br label %181

181:                                              ; preds = %176, %179
  %182 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %182(ptr noundef nonnull %1) #23
  br label %183

183:                                              ; preds = %181, %155
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @rna_PropertyGroup_register(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, ptr nocapture readnone %5, ptr nocapture readnone %6) #0 {
  %8 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #23
  call void @RNA_pointer_create(ptr noundef null, ptr noundef nonnull @RNA_PropertyGroup, ptr noundef null, ptr noundef nonnull %8) #23
  %9 = call i32 %4(ptr noundef nonnull %8, ptr noundef %2, ptr noundef null) #23
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %7
  %12 = call i64 @BLI_strnlen(ptr noundef %3, i64 noundef 64) #23
  %13 = icmp eq i64 %12, 64
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.63, ptr noundef %3, i32 noundef 64) #23
  br label %17

15:                                               ; preds = %11
  %16 = call ptr @RNA_def_struct_ptr(ptr noundef nonnull @BLENDER_RNA, ptr noundef %3, ptr noundef nonnull @RNA_PropertyGroup)
  br label %17

17:                                               ; preds = %7, %15, %14
  %18 = phi ptr [ null, %14 ], [ %16, %15 ], [ null, %7 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #23
  ret ptr %18
}

declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @BLI_strnlen(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @RNA_def_struct_ptr(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [512 x i8], align 16
  %5 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !74
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %50, label %7

7:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %4) #23
  %8 = tail call ptr @__ctype_b_loc() #25
  %9 = load ptr, ptr %8, align 8, !tbaa !57
  %10 = load i8, ptr %1, align 1, !tbaa !76
  %11 = zext i8 %10 to i64
  %12 = getelementptr inbounds i16, ptr %9, i64 %11
  %13 = load i16, ptr %12, align 2, !tbaa !40
  %14 = and i16 %13, 1024
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %7
  %17 = icmp eq i8 %10, 0
  br i1 %17, label %35, label %19

18:                                               ; preds = %7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(39) %4, ptr noundef nonnull align 1 dereferenceable(39) @.str.276, i64 39, i1 false) #23
  br label %46

19:                                               ; preds = %16, %30
  %20 = phi i64 [ %31, %30 ], [ 0, %16 ]
  %21 = phi i8 [ %33, %30 ], [ %10, %16 ]
  switch i8 %21, label %23 [
    i8 95, label %30
    i8 32, label %22
  ]

22:                                               ; preds = %19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %4, ptr noundef nonnull align 1 dereferenceable(40) @.str.278, i64 40, i1 false) #23
  br label %46

23:                                               ; preds = %19
  %24 = zext i8 %21 to i64
  %25 = getelementptr inbounds i16, ptr %9, i64 %24
  %26 = load i16, ptr %25, align 2, !tbaa !40
  %27 = and i16 %26, 8
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(73) %4, ptr noundef nonnull align 1 dereferenceable(73) @.str.279, i64 73, i1 false) #23
  br label %46

30:                                               ; preds = %23, %19
  %31 = add nuw i64 %20, 1
  %32 = getelementptr inbounds i8, ptr %1, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !76
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %19, !llvm.loop !77

35:                                               ; preds = %30, %16
  br label %39

36:                                               ; preds = %39
  %37 = add nuw nsw i64 %40, 1
  %38 = icmp eq i64 %37, 30
  br i1 %38, label %49, label %39, !llvm.loop !78

39:                                               ; preds = %35, %36
  %40 = phi i64 [ %37, %36 ], [ 0, %35 ]
  %41 = getelementptr inbounds [31 x ptr], ptr @rna_validate_identifier.kwlist, i64 0, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !57
  %43 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %42) #24
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %36

45:                                               ; preds = %39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(35) %4, ptr noundef nonnull align 1 dereferenceable(35) @.str.280, i64 35, i1 false) #23
  br label %46

46:                                               ; preds = %18, %45, %29, %22
  %47 = load ptr, ptr @stderr, align 8, !tbaa !57
  %48 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %47, ptr noundef nonnull @.str.195, ptr noundef nonnull @__func__.RNA_def_struct_ptr, ptr noundef nonnull %1, ptr noundef nonnull %4) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %49

49:                                               ; preds = %36, %46
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %4) #23
  br label %50

50:                                               ; preds = %49, %3
  %51 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %52 = call ptr %51(i64 noundef 200, ptr noundef nonnull @.str.196) #23
  store ptr %52, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %53 = icmp eq ptr %2, null
  br i1 %53, label %69, label %54

54:                                               ; preds = %50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %52, ptr noundef nonnull align 8 dereferenceable(200) %2, i64 200, i1 false)
  %55 = getelementptr inbounds %struct.ContainerRNA, ptr %52, i64 0, i32 2
  %56 = getelementptr inbounds %struct.StructRNA, ptr %52, i64 0, i32 19
  %57 = getelementptr inbounds %struct.StructRNA, ptr %52, i64 0, i32 2
  store ptr null, ptr %57, align 8, !tbaa !81
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %55, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %56, i8 0, i64 16, i1 false)
  %58 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !74
  %59 = icmp eq i32 %58, 0
  %60 = getelementptr inbounds %struct.StructRNA, ptr %52, i64 0, i32 11
  store ptr %2, ptr %60, align 8, !tbaa !82
  br i1 %59, label %69, label %61

61:                                               ; preds = %54, %65
  %62 = phi ptr [ %63, %65 ], [ getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 1), %54 ]
  %63 = load ptr, ptr %62, align 8, !tbaa !57
  %64 = icmp eq ptr %63, null
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.StructDefRNA, ptr %63, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !83
  %68 = icmp eq ptr %67, %2
  br i1 %68, label %69, label %61, !llvm.loop !86

69:                                               ; preds = %65, %61, %54, %50
  %70 = phi ptr [ null, %50 ], [ null, %54 ], [ %63, %65 ], [ null, %61 ]
  %71 = getelementptr inbounds %struct.StructRNA, ptr %52, i64 0, i32 1
  store ptr %1, ptr %71, align 8, !tbaa !71
  %72 = getelementptr inbounds %struct.StructRNA, ptr %52, i64 0, i32 5
  store ptr %1, ptr %72, align 8, !tbaa !72
  %73 = getelementptr inbounds %struct.StructRNA, ptr %52, i64 0, i32 6
  store ptr @.str.2, ptr %73, align 8, !tbaa !73
  %74 = getelementptr inbounds %struct.StructRNA, ptr %52, i64 0, i32 7
  store ptr @.str.67, ptr %74, align 8, !tbaa !87
  %75 = getelementptr inbounds %struct.StructRNA, ptr %52, i64 0, i32 4
  %76 = load i32, ptr %75, align 8, !tbaa !70
  %77 = or i32 %76, 4
  store i32 %77, ptr %75, align 8, !tbaa !70
  br i1 %53, label %78, label %80

78:                                               ; preds = %69
  %79 = getelementptr inbounds %struct.StructRNA, ptr %52, i64 0, i32 8
  store i32 17, ptr %79, align 8, !tbaa !88
  br label %80

80:                                               ; preds = %78, %69
  store ptr null, ptr %52, align 8, !tbaa !52
  %81 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !55
  %83 = getelementptr inbounds %struct.Link, ptr %52, i64 0, i32 1
  store ptr %82, ptr %83, align 8, !tbaa !54
  %84 = icmp eq ptr %82, null
  br i1 %84, label %86, label %85

85:                                               ; preds = %80
  store ptr %52, ptr %82, align 8, !tbaa !52
  br label %86

86:                                               ; preds = %85, %80
  %87 = load ptr, ptr %0, align 8, !tbaa !56
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  store ptr %52, ptr %0, align 8, !tbaa !56
  br label %90

90:                                               ; preds = %86, %89
  store ptr %52, ptr %81, align 8, !tbaa !55
  %91 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !74
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %111, label %93

93:                                               ; preds = %90
  %94 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %95 = call ptr %94(i64 noundef 96, ptr noundef nonnull @.str.197) #23
  %96 = getelementptr inbounds %struct.StructDefRNA, ptr %95, i64 0, i32 1
  store ptr %52, ptr %96, align 8, !tbaa !83
  store ptr null, ptr %95, align 8, !tbaa !52
  %97 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 1, i32 1), align 8, !tbaa !55
  %98 = getelementptr inbounds %struct.Link, ptr %95, i64 0, i32 1
  store ptr %97, ptr %98, align 8, !tbaa !54
  %99 = icmp eq ptr %97, null
  br i1 %99, label %101, label %100

100:                                              ; preds = %93
  store ptr %95, ptr %97, align 8, !tbaa !52
  br label %101

101:                                              ; preds = %100, %93
  %102 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 1), align 8, !tbaa !56
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  store ptr %95, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 1), align 8, !tbaa !56
  br label %105

105:                                              ; preds = %101, %104
  store ptr %95, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 1, i32 1), align 8, !tbaa !55
  %106 = icmp eq ptr %70, null
  br i1 %106, label %111, label %107

107:                                              ; preds = %105
  %108 = getelementptr inbounds %struct.StructDefRNA, ptr %70, i64 0, i32 3
  %109 = load ptr, ptr %108, align 8, !tbaa !89
  %110 = getelementptr inbounds %struct.StructDefRNA, ptr %95, i64 0, i32 4
  store ptr %109, ptr %110, align 8, !tbaa !90
  br label %111

111:                                              ; preds = %105, %107, %90
  %112 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !74
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %124, label %114

114:                                              ; preds = %111
  %115 = load ptr, ptr %71, align 8, !tbaa !71
  br label %116

116:                                              ; preds = %114, %116
  %117 = phi ptr [ %118, %116 ], [ getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 1), %114 ]
  %118 = load ptr, ptr %117, align 8, !tbaa !57, !nonnull !91, !noundef !91
  %119 = getelementptr inbounds %struct.StructDefRNA, ptr %118, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !83
  %121 = icmp eq ptr %120, %52
  br i1 %121, label %122, label %116, !llvm.loop !86

122:                                              ; preds = %116
  %123 = getelementptr inbounds %struct.StructDefRNA, ptr %118, i64 0, i32 3
  store ptr %115, ptr %123, align 8, !tbaa !89
  br label %127

124:                                              ; preds = %111
  %125 = load i32, ptr %75, align 8, !tbaa !70
  %126 = or i32 %125, 8
  store i32 %126, ptr %75, align 8, !tbaa !70
  br label %127

127:                                              ; preds = %124, %122
  br i1 %53, label %135, label %128

128:                                              ; preds = %127
  %129 = getelementptr inbounds %struct.StructRNA, ptr %2, i64 0, i32 9
  %130 = load ptr, ptr %129, align 8, !tbaa !92
  %131 = getelementptr inbounds %struct.StructRNA, ptr %52, i64 0, i32 9
  store ptr %130, ptr %131, align 8, !tbaa !92
  %132 = getelementptr inbounds %struct.StructRNA, ptr %2, i64 0, i32 10
  %133 = load ptr, ptr %132, align 8, !tbaa !93
  %134 = getelementptr inbounds %struct.StructRNA, ptr %52, i64 0, i32 10
  store ptr %133, ptr %134, align 8, !tbaa !93
  br label %235

135:                                              ; preds = %127
  %136 = call ptr @RNA_def_property(ptr noundef nonnull %52, ptr noundef nonnull @.str.64, i32 noundef 6, i32 noundef 0)
  %137 = getelementptr inbounds %struct.PropertyRNA, ptr %136, i64 0, i32 4
  %138 = load i32, ptr %137, align 8, !tbaa !51
  %139 = or i32 %138, 128
  store i32 %139, ptr %137, align 8, !tbaa !51
  %140 = getelementptr inbounds %struct.PropertyRNA, ptr %136, i64 0, i32 5
  store ptr @.str.65, ptr %140, align 8, !tbaa !94
  %141 = getelementptr inbounds %struct.PropertyRNA, ptr %136, i64 0, i32 6
  store ptr @.str.66, ptr %141, align 8, !tbaa !95
  %142 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !74
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %183, label %144

144:                                              ; preds = %135
  %145 = getelementptr inbounds %struct.PropertyRNA, ptr %136, i64 0, i32 9
  %146 = load i32, ptr %145, align 8, !tbaa !96
  switch i32 %146, label %151 [
    i32 5, label %147
    i32 6, label %149
  ]

147:                                              ; preds = %144
  %148 = getelementptr inbounds %struct.PointerPropertyRNA, ptr %136, i64 0, i32 5
  store ptr @.str.198, ptr %148, align 8, !tbaa !97
  br label %159

149:                                              ; preds = %144
  %150 = getelementptr inbounds %struct.CollectionPropertyRNA, ptr %136, i64 0, i32 9
  store ptr @.str.198, ptr %150, align 8, !tbaa !99
  br label %159

151:                                              ; preds = %144
  %152 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %153 = load ptr, ptr @stderr, align 8, !tbaa !57
  %154 = getelementptr inbounds %struct.StructRNA, ptr %152, i64 0, i32 1
  %155 = load ptr, ptr %154, align 8, !tbaa !71
  %156 = getelementptr inbounds %struct.PropertyRNA, ptr %136, i64 0, i32 3
  %157 = load ptr, ptr %156, align 8, !tbaa !101
  %158 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %153, ptr noundef nonnull @.str.227, ptr noundef nonnull @__func__.RNA_def_property_struct_type, ptr noundef %155, ptr noundef %157) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %159

159:                                              ; preds = %147, %149, %151
  %160 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %161 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !74
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %159
  %164 = load ptr, ptr @stderr, align 8, !tbaa !57
  %165 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %164, ptr noundef nonnull @.str.207, ptr noundef nonnull @__func__.RNA_def_property_collection_funcs) #26
  br label %188

166:                                              ; preds = %159
  %167 = getelementptr inbounds %struct.PropertyRNA, ptr %136, i64 0, i32 9
  %168 = load i32, ptr %167, align 8, !tbaa !96
  %169 = icmp eq i32 %168, 6
  br i1 %169, label %170, label %176

170:                                              ; preds = %166
  %171 = getelementptr inbounds %struct.CollectionPropertyRNA, ptr %136, i64 0, i32 1
  store ptr @.str.199, ptr %171, align 8, !tbaa !102
  %172 = getelementptr inbounds %struct.CollectionPropertyRNA, ptr %136, i64 0, i32 2
  store ptr @.str.200, ptr %172, align 8, !tbaa !103
  %173 = getelementptr inbounds %struct.CollectionPropertyRNA, ptr %136, i64 0, i32 3
  store ptr @.str.201, ptr %173, align 8, !tbaa !104
  %174 = getelementptr inbounds %struct.CollectionPropertyRNA, ptr %136, i64 0, i32 4
  store ptr @.str.202, ptr %174, align 8, !tbaa !105
  %175 = getelementptr inbounds %struct.CollectionPropertyRNA, ptr %136, i64 0, i32 7
  store ptr @.str.203, ptr %175, align 8, !tbaa !106
  br label %188

176:                                              ; preds = %166
  %177 = load ptr, ptr @stderr, align 8, !tbaa !57
  %178 = getelementptr inbounds %struct.StructRNA, ptr %160, i64 0, i32 1
  %179 = load ptr, ptr %178, align 8, !tbaa !71
  %180 = getelementptr inbounds %struct.PropertyRNA, ptr %136, i64 0, i32 3
  %181 = load ptr, ptr %180, align 8, !tbaa !101
  %182 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %177, ptr noundef nonnull @.str.243, ptr noundef nonnull @__func__.RNA_def_property_collection_funcs, ptr noundef %179, ptr noundef %181) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %188

183:                                              ; preds = %135
  %184 = getelementptr inbounds %struct.CollectionPropertyRNA, ptr %136, i64 0, i32 1
  store ptr @rna_builtin_properties_begin, ptr %184, align 8, !tbaa !102
  %185 = getelementptr inbounds %struct.CollectionPropertyRNA, ptr %136, i64 0, i32 2
  store ptr @rna_builtin_properties_next, ptr %185, align 8, !tbaa !103
  %186 = getelementptr inbounds %struct.CollectionPropertyRNA, ptr %136, i64 0, i32 4
  store ptr @rna_builtin_properties_get, ptr %186, align 8, !tbaa !105
  %187 = getelementptr inbounds %struct.CollectionPropertyRNA, ptr %136, i64 0, i32 9
  store ptr @RNA_Property, ptr %187, align 8, !tbaa !99
  br label %188

188:                                              ; preds = %176, %170, %163, %183
  %189 = call ptr @RNA_def_property(ptr noundef nonnull %52, ptr noundef nonnull @.str.68, i32 noundef 5, i32 noundef 0)
  %190 = getelementptr inbounds %struct.PropertyRNA, ptr %189, i64 0, i32 4
  %191 = load i32, ptr %190, align 8, !tbaa !51
  %192 = or i32 %191, 524288
  store i32 %192, ptr %190, align 8, !tbaa !51
  %193 = getelementptr inbounds %struct.PropertyRNA, ptr %189, i64 0, i32 5
  store ptr @.str.69, ptr %193, align 8, !tbaa !94
  %194 = getelementptr inbounds %struct.PropertyRNA, ptr %189, i64 0, i32 6
  store ptr @.str.70, ptr %194, align 8, !tbaa !95
  %195 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !74
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %232, label %197

197:                                              ; preds = %188
  %198 = getelementptr inbounds %struct.PropertyRNA, ptr %189, i64 0, i32 9
  %199 = load i32, ptr %198, align 8, !tbaa !96
  switch i32 %199, label %204 [
    i32 5, label %200
    i32 6, label %202
  ]

200:                                              ; preds = %197
  %201 = getelementptr inbounds %struct.PointerPropertyRNA, ptr %189, i64 0, i32 5
  store ptr @.str.204, ptr %201, align 8, !tbaa !97
  br label %212

202:                                              ; preds = %197
  %203 = getelementptr inbounds %struct.CollectionPropertyRNA, ptr %189, i64 0, i32 9
  store ptr @.str.204, ptr %203, align 8, !tbaa !99
  br label %212

204:                                              ; preds = %197
  %205 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %206 = load ptr, ptr @stderr, align 8, !tbaa !57
  %207 = getelementptr inbounds %struct.StructRNA, ptr %205, i64 0, i32 1
  %208 = load ptr, ptr %207, align 8, !tbaa !71
  %209 = getelementptr inbounds %struct.PropertyRNA, ptr %189, i64 0, i32 3
  %210 = load ptr, ptr %209, align 8, !tbaa !101
  %211 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %206, ptr noundef nonnull @.str.227, ptr noundef nonnull @__func__.RNA_def_property_struct_type, ptr noundef %208, ptr noundef %210) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %212

212:                                              ; preds = %200, %202, %204
  %213 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %214 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !74
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %219

216:                                              ; preds = %212
  %217 = load ptr, ptr @stderr, align 8, !tbaa !57
  %218 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %217, ptr noundef nonnull @.str.207, ptr noundef nonnull @__func__.RNA_def_property_pointer_funcs) #26
  br label %235

219:                                              ; preds = %212
  %220 = getelementptr inbounds %struct.PropertyRNA, ptr %189, i64 0, i32 9
  %221 = load i32, ptr %220, align 8, !tbaa !96
  %222 = icmp eq i32 %221, 5
  br i1 %222, label %223, label %225

223:                                              ; preds = %219
  %224 = getelementptr inbounds %struct.PointerPropertyRNA, ptr %189, i64 0, i32 1
  store ptr @.str.205, ptr %224, align 8, !tbaa !107
  br label %235

225:                                              ; preds = %219
  %226 = load ptr, ptr @stderr, align 8, !tbaa !57
  %227 = getelementptr inbounds %struct.StructRNA, ptr %213, i64 0, i32 1
  %228 = load ptr, ptr %227, align 8, !tbaa !71
  %229 = getelementptr inbounds %struct.PropertyRNA, ptr %189, i64 0, i32 3
  %230 = load ptr, ptr %229, align 8, !tbaa !101
  %231 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %226, ptr noundef nonnull @.str.241, ptr noundef nonnull @__func__.RNA_def_property_pointer_funcs, ptr noundef %228, ptr noundef %230) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %235

232:                                              ; preds = %188
  %233 = getelementptr inbounds %struct.PointerPropertyRNA, ptr %189, i64 0, i32 1
  store ptr @rna_builtin_type_get, ptr %233, align 8, !tbaa !107
  %234 = getelementptr inbounds %struct.PointerPropertyRNA, ptr %189, i64 0, i32 5
  store ptr @RNA_Struct, ptr %234, align 8, !tbaa !97
  br label %235

235:                                              ; preds = %225, %223, %216, %232, %128
  ret ptr %52
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @rna_PropertyGroup_refine(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !108
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rna_IDMaterials_assign_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !109
  %5 = tail call ptr @give_totcolp_id(ptr noundef %4) #23
  %6 = load ptr, ptr %2, align 8, !tbaa !109
  %7 = icmp ne ptr %5, null
  %8 = icmp sgt i32 %1, -1
  %9 = and i1 %8, %7
  br i1 %9, label %10, label %17

10:                                               ; preds = %3
  %11 = load i16, ptr %5, align 2, !tbaa !40
  %12 = sext i16 %11 to i32
  %13 = icmp sgt i32 %12, %1
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = trunc i32 %1 to i16
  %16 = add i16 %15, 1
  tail call void @assign_material_id(ptr noundef %4, ptr noundef %6, i16 noundef signext %16) #23
  br label %17

17:                                               ; preds = %3, %10, %14
  %18 = phi i32 [ 1, %14 ], [ 0, %10 ], [ 0, %3 ]
  ret i32 %18
}

declare ptr @give_totcolp_id(ptr noundef) local_unnamed_addr #2

declare void @assign_material_id(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @UnknownType_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !110
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_UnknownType_rna_properties, ptr %4, align 8, !tbaa !111
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #23
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !113
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #23
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !110
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #23
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

declare void @rna_builtin_properties_begin(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @UnknownType_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #23
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @UnknownType_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #23
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !113
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #23
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !110
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #23
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

declare void @rna_builtin_properties_next(ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local void @UnknownType_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #23
  ret void
}

declare void @rna_iterator_listbase_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @UnknownType_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #23
  ret i32 %4
}

declare i32 @rna_builtin_properties_lookup_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @UnknownType_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #23
  ret void
}

declare void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local void @AnyType_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !110
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_AnyType_rna_properties, ptr %4, align 8, !tbaa !111
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #23
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !113
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #23
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !110
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #23
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @AnyType_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #23
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @AnyType_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #23
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !113
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #23
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !110
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #23
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @AnyType_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #23
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @AnyType_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #23
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @AnyType_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #23
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ID_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !110
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_ID_rna_properties, ptr %4, align 8, !tbaa !111
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #23
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !113
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #23
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !110
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #23
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ID_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #23
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ID_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #23
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !113
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #23
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !110
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #23
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ID_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #23
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ID_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #23
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @ID_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #23
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ID_name_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 4, i64 2
  %6 = tail call ptr @BLI_strncpy(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #23
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ID_name_length(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 4, i64 2
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #24
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @ID_name_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 4
  %6 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 4, i64 2
  %7 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %6, ptr noundef %1, i64 noundef 64) #23
  tail call void @test_idbutton(ptr noundef nonnull %5) #23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ID_users_get(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !114
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ID_use_fake_user_get(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 5
  %5 = load i16, ptr %4, align 2, !tbaa !42
  %6 = lshr i16 %5, 9
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define dso_local void @ID_use_fake_user_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 5
  %7 = load i16, ptr %6, align 2, !tbaa !42
  %8 = and i16 %7, 512
  %9 = icmp eq i16 %8, 0
  br i1 %5, label %13, label %10

10:                                               ; preds = %2
  br i1 %9, label %11, label %16

11:                                               ; preds = %10
  %12 = or disjoint i16 %7, 512
  store i16 %12, ptr %6, align 2, !tbaa !42
  tail call void @id_us_plus(ptr noundef %4) #23
  br label %16

13:                                               ; preds = %2
  br i1 %9, label %16, label %14

14:                                               ; preds = %13
  %15 = and i16 %7, -513
  store i16 %15, ptr %6, align 2, !tbaa !42
  tail call void @id_us_min(ptr noundef %4) #23
  br label %16

16:                                               ; preds = %10, %11, %13, %14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ID_tag_get(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 5
  %5 = load i16, ptr %4, align 2, !tbaa !42
  %6 = lshr i16 %5, 10
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ID_tag_set(ptr nocapture noundef readonly %0, i32 noundef %1) #10 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 5
  %7 = load i16, ptr %6, align 2, !tbaa !42
  %8 = and i16 %7, -1025
  %9 = select i1 %5, i16 0, i16 1024
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 2, !tbaa !42
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ID_is_updated_get(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 5
  %5 = load i16, ptr %4, align 2, !tbaa !42
  %6 = lshr i16 %5, 12
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ID_is_updated_data_get(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 5
  %5 = load i16, ptr %4, align 2, !tbaa !42
  %6 = lshr i16 %5, 13
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ID_is_library_indirect_get(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 5
  %5 = load i16, ptr %4, align 2, !tbaa !42
  %6 = lshr i16 %5, 1
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define dso_local void @ID_library_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !115
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Library, ptr noundef %6) #23
  ret void
}

declare void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @PropertyGroupItem_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !110
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_PropertyGroupItem_rna_properties, ptr %4, align 8, !tbaa !111
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #23
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !113
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #23
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !110
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #23
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PropertyGroupItem_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #23
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PropertyGroupItem_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #23
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !113
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #23
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !110
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #23
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PropertyGroupItem_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #23
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @PropertyGroupItem_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #23
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @PropertyGroupItem_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #23
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PropertyGroupItem_idp_array_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !110
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_PropertyGroupItem_idp_array, ptr %4, align 8, !tbaa !111
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.IDProperty, ptr %6, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !116
  %9 = getelementptr inbounds %struct.IDProperty, ptr %6, i64 0, i32 8
  %10 = load i32, ptr %9, align 8, !tbaa !119
  tail call void @rna_iterator_array_begin(ptr noundef %0, ptr noundef %8, i32 noundef 128, i32 noundef %10, i8 noundef zeroext 0, ptr noundef null) #23
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !113
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #23
  %16 = tail call ptr @rna_iterator_array_get(ptr noundef %0) #23, !noalias !120
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @RNA_PropertyGroup, ptr noundef %16) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !110
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #23
  br label %17

17:                                               ; preds = %14, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PropertyGroupItem_idp_array_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = tail call ptr @rna_iterator_array_get(ptr noundef %1) #23
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_PropertyGroup, ptr noundef %3) #23
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PropertyGroupItem_idp_array_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_array_next(ptr noundef %0) #23
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !113
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #23
  %8 = tail call ptr @rna_iterator_array_get(ptr noundef %0) #23, !noalias !123
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @RNA_PropertyGroup, ptr noundef %8) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !110
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #23
  br label %9

9:                                                ; preds = %6, %1
  ret void
}

declare void @rna_iterator_array_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @PropertyGroupItem_idp_array_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_array_end(ptr noundef %0) #23
  ret void
}

declare void @rna_iterator_array_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @PropertyGroup_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !110
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_PropertyGroup_rna_properties, ptr %4, align 8, !tbaa !111
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #23
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !113
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #23
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !110
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #23
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PropertyGroup_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #23
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PropertyGroup_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #23
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !113
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #23
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !110
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #23
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PropertyGroup_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #23
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @PropertyGroup_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #23
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @PropertyGroup_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #23
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @IDMaterials_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !110
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_IDMaterials_rna_properties, ptr %4, align 8, !tbaa !111
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #23
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !113
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #23
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !110
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #23
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @IDMaterials_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #23
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @IDMaterials_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #23
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !113
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #23
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !110
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #23
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @IDMaterials_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #23
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @IDMaterials_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #23
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @IDMaterials_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #23
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Library_filepath_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Library, ptr %4, i64 0, i32 3
  %6 = tail call ptr @BLI_strncpy(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #23
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Library_filepath_length(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Library, ptr %3, i64 0, i32 3
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #24
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @Library_filepath_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  tail call void @BKE_library_filepath_set(ptr noundef %4, ptr noundef %1) #23
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Library_parent_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Library, ptr %4, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !126
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Library, ptr noundef %6) #23
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Library_packed_file_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Library, ptr %4, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !128
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_PackedFile, ptr noundef %6) #23
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ID_copy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #23
  %3 = call zeroext i8 @id_copy(ptr noundef %0, ptr noundef nonnull %2, i8 noundef zeroext 0) #23
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 8, !tbaa !57
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  call void @id_us_min(ptr noundef nonnull %6) #23
  br label %9

9:                                                ; preds = %8, %5
  %10 = load ptr, ptr %2, align 8, !tbaa !57
  br label %11

11:                                               ; preds = %1, %9
  %12 = phi ptr [ %10, %9 ], [ null, %1 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #23
  ret ptr %12
}

; Function Attrs: nounwind uwtable
define dso_local void @ID_copy_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = alloca ptr, align 8
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = load ptr, ptr %3, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #23
  %9 = call zeroext i8 @id_copy(ptr noundef %7, ptr noundef nonnull %5, i8 noundef zeroext 0) #23
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %4
  %12 = load ptr, ptr %5, align 8, !tbaa !57
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  call void @id_us_min(ptr noundef nonnull %12) #23
  br label %15

15:                                               ; preds = %14, %11
  %16 = load ptr, ptr %5, align 8, !tbaa !57
  br label %17

17:                                               ; preds = %4, %15
  %18 = phi ptr [ %16, %15 ], [ null, %4 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #23
  store ptr %18, ptr %8, align 8, !tbaa !57
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ID_user_clear(ptr nocapture noundef %0) local_unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 6
  store i32 0, ptr %2, align 4, !tbaa !114
  %3 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 5
  %4 = load i16, ptr %3, align 2, !tbaa !42
  %5 = and i16 %4, -513
  store i16 %5, ptr %3, align 2, !tbaa !42
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ID_user_clear_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture readnone %3) #10 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 6
  store i32 0, ptr %7, align 4, !tbaa !114
  %8 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 5
  %9 = load i16, ptr %8, align 2, !tbaa !42
  %10 = and i16 %9, -513
  store i16 %10, ptr %8, align 2, !tbaa !42
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ID_animation_data_create(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BKE_id_add_animdata(ptr noundef %0) #23
  ret ptr %2
}

declare ptr @BKE_id_add_animdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ID_animation_data_create_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = load ptr, ptr %3, align 8, !tbaa !129
  %8 = tail call ptr @BKE_id_add_animdata(ptr noundef %6) #23
  store ptr %8, ptr %7, align 8, !tbaa !57
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ID_animation_data_clear(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @BKE_free_animdata(ptr noundef %0) #23
  ret void
}

declare void @BKE_free_animdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ID_animation_data_clear_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture readnone %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  tail call void @BKE_free_animdata(ptr noundef %6) #23
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ID_update_tag(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %7 = load i16, ptr %6, align 8, !tbaa !40
  %8 = icmp eq i16 %7, 16975
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = icmp ult i32 %2, 8
  br i1 %10, label %13, label %11

11:                                               ; preds = %9
  tail call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.268) #23
  br label %15

12:                                               ; preds = %5
  tail call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.269) #23
  br label %15

13:                                               ; preds = %9, %3
  %14 = trunc i32 %2 to i16
  tail call void @DAG_id_tag_update(ptr noundef %0, i16 noundef signext %14) #23
  br label %15

15:                                               ; preds = %11, %12, %13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ID_update_tag_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = load ptr, ptr %3, align 8, !tbaa !129
  %8 = load i32, ptr %7, align 4, !tbaa !131
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 4
  %12 = load i16, ptr %11, align 8, !tbaa !40
  %13 = icmp eq i16 %12, 16975
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = icmp ult i32 %8, 8
  br i1 %15, label %18, label %16

16:                                               ; preds = %14
  tail call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.268) #23
  br label %20

17:                                               ; preds = %10
  tail call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.269) #23
  br label %20

18:                                               ; preds = %14, %4
  %19 = trunc i32 %8 to i16
  tail call void @DAG_id_tag_update(ptr noundef %6, i16 noundef signext %19) #23
  br label %20

20:                                               ; preds = %16, %17, %18
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @IDMaterials_append(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @BKE_material_append_id(ptr noundef %0, ptr noundef %1) #23
  tail call void @WM_main_add_notifier(i32 noundef 85393408, ptr noundef %0) #23
  tail call void @WM_main_add_notifier(i32 noundef 85131264, ptr noundef %0) #23
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @IDMaterials_append_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = load ptr, ptr %3, align 8, !tbaa !129
  %8 = load ptr, ptr %7, align 8, !tbaa !57
  tail call void @BKE_material_append_id(ptr noundef %6, ptr noundef %8) #23
  tail call void @WM_main_add_notifier(i32 noundef 85393408, ptr noundef %6) #23
  tail call void @WM_main_add_notifier(i32 noundef 85131264, ptr noundef %6) #23
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @IDMaterials_pop(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call fastcc ptr @rna_IDMaterials_pop_id(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3)
  ret ptr %5
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @rna_IDMaterials_pop_id(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = tail call ptr @give_totcolp_id(ptr noundef %0) #23
  %6 = load i16, ptr %5, align 2, !tbaa !40
  %7 = icmp slt i32 %2, 0
  %8 = sext i16 %6 to i32
  %9 = select i1 %7, i32 %8, i32 0
  %10 = add nsw i32 %9, %2
  %11 = icmp sgt i32 %10, -1
  %12 = icmp slt i32 %10, %8
  %13 = select i1 %11, i1 %12, i1 false
  br i1 %13, label %15, label %14

14:                                               ; preds = %4
  tail call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.270) #23
  br label %22

15:                                               ; preds = %4
  %16 = trunc i32 %3 to i8
  %17 = tail call ptr @BKE_material_pop_id(ptr noundef %0, i32 noundef %10, i8 noundef zeroext %16) #23
  %18 = load i16, ptr %5, align 2, !tbaa !40
  %19 = icmp eq i16 %18, %6
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  tail call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.271) #23
  br label %22

21:                                               ; preds = %15
  tail call void @DAG_id_tag_update(ptr noundef %0, i16 noundef signext 2) #23
  tail call void @WM_main_add_notifier(i32 noundef 85393408, ptr noundef %0) #23
  tail call void @WM_main_add_notifier(i32 noundef 85131264, ptr noundef %0) #23
  br label %22

22:                                               ; preds = %21, %20, %14
  %23 = phi ptr [ null, %14 ], [ null, %20 ], [ %17, %21 ]
  ret ptr %23
}

; Function Attrs: nounwind uwtable
define dso_local void @IDMaterials_pop_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = load ptr, ptr %3, align 8, !tbaa !129
  %8 = load i32, ptr %7, align 4, !tbaa !131
  %9 = getelementptr inbounds i8, ptr %7, i64 4
  %10 = load i32, ptr %9, align 4, !tbaa !131
  %11 = getelementptr inbounds i8, ptr %7, i64 8
  %12 = tail call fastcc ptr @rna_IDMaterials_pop_id(ptr noundef %6, ptr noundef %1, i32 noundef %8, i32 noundef %10)
  store ptr %12, ptr %11, align 8, !tbaa !57
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @IDMaterials_clear(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = trunc i32 %1 to i8
  tail call void @BKE_material_clear_id(ptr noundef %0, i8 noundef zeroext %3) #23
  tail call void @DAG_id_tag_update(ptr noundef %0, i16 noundef signext 2) #23
  tail call void @WM_main_add_notifier(i32 noundef 85393408, ptr noundef %0) #23
  tail call void @WM_main_add_notifier(i32 noundef 85131264, ptr noundef %0) #23
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @IDMaterials_clear_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = load ptr, ptr %3, align 8, !tbaa !129
  %8 = load i32, ptr %7, align 4, !tbaa !131
  %9 = trunc i32 %8 to i8
  tail call void @BKE_material_clear_id(ptr noundef %6, i8 noundef zeroext %9) #23
  tail call void @DAG_id_tag_update(ptr noundef %6, i16 noundef signext 2) #23
  tail call void @WM_main_add_notifier(i32 noundef 85393408, ptr noundef %6) #23
  tail call void @WM_main_add_notifier(i32 noundef 85131264, ptr noundef %6) #23
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @rna_ID_name_editable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 4
  %5 = load i16, ptr %4, align 8, !tbaa !40
  %6 = icmp eq i16 %5, 18006
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = tail call zeroext i8 @BKE_vfont_is_builtin(ptr noundef %3) #23
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7, %1
  br label %11

11:                                               ; preds = %7, %10
  %12 = phi i32 [ 1, %10 ], [ 0, %7 ]
  ret i32 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @rna_IDPArray_length(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.IDProperty, ptr %3, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !119
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @rna_addtail(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #12 {
  store ptr null, ptr %1, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.Link, ptr %1, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !54
  %6 = icmp eq ptr %4, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  store ptr %1, ptr %4, align 8, !tbaa !52
  br label %8

8:                                                ; preds = %7, %2
  %9 = load ptr, ptr %0, align 8, !tbaa !56
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  store ptr %1, ptr %0, align 8, !tbaa !56
  br label %12

12:                                               ; preds = %11, %8
  store ptr %1, ptr %3, align 8, !tbaa !55
  ret void
}

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @rna_findlink(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #13 {
  br label %3

3:                                                ; preds = %18, %2
  %4 = phi ptr [ %0, %2 ], [ %6, %18 ]
  %5 = phi ptr [ undef, %2 ], [ %19, %18 ]
  %6 = load ptr, ptr %4, align 8, !tbaa !57
  %7 = icmp eq ptr %6, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.PropertyDefRNA, ptr %6, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !132
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.PropertyRNA, ptr %10, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !101
  %15 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %1) #24
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12, %8
  br label %18

18:                                               ; preds = %12, %17
  %19 = phi ptr [ %5, %17 ], [ %6, %12 ]
  %20 = phi i1 [ true, %17 ], [ false, %12 ]
  br i1 %20, label %3, label %21, !llvm.loop !134

21:                                               ; preds = %3, %18
  %22 = phi ptr [ %19, %18 ], [ null, %3 ]
  ret ptr %22
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @rna_freelinkN(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !52
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Link, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !54
  %8 = getelementptr inbounds %struct.Link, ptr %3, i64 0, i32 1
  store ptr %7, ptr %8, align 8, !tbaa !54
  br label %9

9:                                                ; preds = %5, %2
  %10 = getelementptr inbounds %struct.Link, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !54
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  store ptr %3, ptr %11, align 8, !tbaa !52
  br label %14

14:                                               ; preds = %13, %9
  %15 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !55
  %17 = icmp eq ptr %16, %1
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store ptr %11, ptr %15, align 8, !tbaa !55
  br label %19

19:                                               ; preds = %18, %14
  %20 = load ptr, ptr %0, align 8, !tbaa !56
  %21 = icmp eq ptr %20, %1
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load ptr, ptr %1, align 8, !tbaa !52
  store ptr %23, ptr %0, align 8, !tbaa !56
  br label %24

24:                                               ; preds = %19, %22
  %25 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %25(ptr noundef nonnull %1) #23
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @rna_freelistN(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !56
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %6, %4 ], [ %2, %1 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %7(ptr noundef nonnull %5) #23
  %8 = icmp eq ptr %6, null
  br i1 %8, label %9, label %4, !llvm.loop !135

9:                                                ; preds = %4, %1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local ptr @rna_find_struct_def(ptr noundef readnone %0) local_unnamed_addr #14 {
  %2 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !74
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 1, i32 1), align 8, !tbaa !57
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %10

7:                                                ; preds = %1
  %8 = load ptr, ptr @stderr, align 8, !tbaa !57
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.159, ptr noundef nonnull @__func__.rna_find_struct_def) #26
  br label %19

10:                                               ; preds = %4, %15
  %11 = phi ptr [ %17, %15 ], [ %5, %4 ]
  %12 = getelementptr inbounds %struct.StructDefRNA, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !83
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %19, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.ContainerDefRNA, ptr %11, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !57
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %10, !llvm.loop !136

19:                                               ; preds = %10, %15, %4, %7
  %20 = phi ptr [ null, %7 ], [ null, %4 ], [ null, %15 ], [ %11, %10 ]
  ret ptr %20
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #15

; Function Attrs: nofree nounwind uwtable
define dso_local ptr @rna_find_struct_property_def(ptr noundef readnone %0, ptr noundef readnone %1) local_unnamed_addr #14 {
  %3 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !74
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = load ptr, ptr @stderr, align 8, !tbaa !57
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.159, ptr noundef nonnull @__func__.rna_find_struct_property_def) #26
  br label %49

8:                                                ; preds = %2, %8
  %9 = phi ptr [ %14, %8 ], [ getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 1, i32 1), %2 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !57, !nonnull !91, !noundef !91
  %11 = getelementptr inbounds %struct.StructDefRNA, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !83
  %13 = icmp eq ptr %12, %0
  %14 = getelementptr inbounds %struct.ContainerDefRNA, ptr %10, i64 0, i32 1
  br i1 %13, label %15, label %8

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.ContainerDefRNA, ptr %10, i64 0, i32 3, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !57
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %27, %15
  %20 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 1, i32 1), align 8, !tbaa !57
  %21 = icmp eq ptr %20, null
  br i1 %21, label %49, label %31

22:                                               ; preds = %15, %27
  %23 = phi ptr [ %29, %27 ], [ %17, %15 ]
  %24 = getelementptr inbounds %struct.PropertyDefRNA, ptr %23, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !132
  %26 = icmp eq ptr %25, %1
  br i1 %26, label %49, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.PropertyDefRNA, ptr %23, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !57
  %30 = icmp eq ptr %29, null
  br i1 %30, label %19, label %22, !llvm.loop !137

31:                                               ; preds = %19, %45
  %32 = phi ptr [ %47, %45 ], [ %20, %19 ]
  %33 = getelementptr inbounds %struct.ContainerDefRNA, ptr %32, i64 0, i32 3, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !57
  %35 = icmp eq ptr %34, null
  br i1 %35, label %45, label %36

36:                                               ; preds = %31, %41
  %37 = phi ptr [ %43, %41 ], [ %34, %31 ]
  %38 = getelementptr inbounds %struct.PropertyDefRNA, ptr %37, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !132
  %40 = icmp eq ptr %39, %1
  br i1 %40, label %49, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.PropertyDefRNA, ptr %37, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !57
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %36, !llvm.loop !138

45:                                               ; preds = %41, %31
  %46 = getelementptr inbounds %struct.ContainerDefRNA, ptr %32, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !57
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %31, !llvm.loop !139

49:                                               ; preds = %22, %45, %36, %19, %5
  %50 = phi ptr [ null, %5 ], [ null, %19 ], [ %37, %36 ], [ null, %45 ], [ %23, %22 ]
  ret ptr %50
}

; Function Attrs: nofree nounwind uwtable
define dso_local ptr @rna_find_function_def(ptr noundef readnone %0) local_unnamed_addr #14 {
  %2 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !74
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = load ptr, ptr @stderr, align 8, !tbaa !57
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.159, ptr noundef nonnull @__func__.rna_find_function_def) #26
  br label %50

7:                                                ; preds = %1
  %8 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  br label %9

9:                                                ; preds = %9, %7
  %10 = phi ptr [ %15, %9 ], [ getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 1, i32 1), %7 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !57, !nonnull !91, !noundef !91
  %12 = getelementptr inbounds %struct.StructDefRNA, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !83
  %14 = icmp eq ptr %13, %8
  %15 = getelementptr inbounds %struct.ContainerDefRNA, ptr %11, i64 0, i32 1
  br i1 %14, label %16, label %9

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.StructDefRNA, ptr %11, i64 0, i32 6, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !57
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %28, %16
  %21 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 1, i32 1), align 8, !tbaa !57
  %22 = icmp eq ptr %21, null
  br i1 %22, label %50, label %32

23:                                               ; preds = %16, %28
  %24 = phi ptr [ %30, %28 ], [ %18, %16 ]
  %25 = getelementptr inbounds %struct.FunctionDefRNA, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !140
  %27 = icmp eq ptr %26, %0
  br i1 %27, label %50, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.ContainerDefRNA, ptr %24, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !57
  %31 = icmp eq ptr %30, null
  br i1 %31, label %20, label %23, !llvm.loop !142

32:                                               ; preds = %20, %46
  %33 = phi ptr [ %48, %46 ], [ %21, %20 ]
  %34 = getelementptr inbounds %struct.StructDefRNA, ptr %33, i64 0, i32 6, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !57
  %36 = icmp eq ptr %35, null
  br i1 %36, label %46, label %37

37:                                               ; preds = %32, %42
  %38 = phi ptr [ %44, %42 ], [ %35, %32 ]
  %39 = getelementptr inbounds %struct.FunctionDefRNA, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !140
  %41 = icmp eq ptr %40, %0
  br i1 %41, label %50, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.ContainerDefRNA, ptr %38, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !57
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %37, !llvm.loop !143

46:                                               ; preds = %42, %32
  %47 = getelementptr inbounds %struct.ContainerDefRNA, ptr %33, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !57
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %32, !llvm.loop !144

50:                                               ; preds = %23, %46, %37, %20, %4
  %51 = phi ptr [ null, %4 ], [ null, %20 ], [ %38, %37 ], [ null, %46 ], [ %24, %23 ]
  ret ptr %51
}

; Function Attrs: nofree nounwind uwtable
define dso_local ptr @rna_find_parameter_def(ptr noundef readnone %0) local_unnamed_addr #14 {
  %2 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !74
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = load ptr, ptr @stderr, align 8, !tbaa !57
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.159, ptr noundef nonnull @__func__.rna_find_parameter_def) #26
  br label %68

7:                                                ; preds = %1
  %8 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  br label %9

9:                                                ; preds = %9, %7
  %10 = phi ptr [ %15, %9 ], [ getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 1, i32 1), %7 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !57, !nonnull !91, !noundef !91
  %12 = getelementptr inbounds %struct.StructDefRNA, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !83
  %14 = icmp eq ptr %13, %8
  %15 = getelementptr inbounds %struct.ContainerDefRNA, ptr %11, i64 0, i32 1
  br i1 %14, label %16, label %9

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.StructDefRNA, ptr %11, i64 0, i32 6, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !57
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %37, %16
  %21 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 1, i32 1), align 8, !tbaa !57
  %22 = icmp eq ptr %21, null
  br i1 %22, label %68, label %41

23:                                               ; preds = %16, %37
  %24 = phi ptr [ %39, %37 ], [ %18, %16 ]
  %25 = getelementptr inbounds %struct.ContainerDefRNA, ptr %24, i64 0, i32 3, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !57
  %27 = icmp eq ptr %26, null
  br i1 %27, label %37, label %28

28:                                               ; preds = %23, %33
  %29 = phi ptr [ %35, %33 ], [ %26, %23 ]
  %30 = getelementptr inbounds %struct.PropertyDefRNA, ptr %29, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !132
  %32 = icmp eq ptr %31, %0
  br i1 %32, label %68, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.PropertyDefRNA, ptr %29, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !57
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %28, !llvm.loop !145

37:                                               ; preds = %33, %23
  %38 = getelementptr inbounds %struct.ContainerDefRNA, ptr %24, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !57
  %40 = icmp eq ptr %39, null
  br i1 %40, label %20, label %23, !llvm.loop !146

41:                                               ; preds = %20, %64
  %42 = phi ptr [ %66, %64 ], [ %21, %20 ]
  %43 = getelementptr inbounds %struct.StructDefRNA, ptr %42, i64 0, i32 6, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !57
  %45 = icmp eq ptr %44, null
  br i1 %45, label %64, label %46

46:                                               ; preds = %41, %60
  %47 = phi ptr [ %62, %60 ], [ %44, %41 ]
  %48 = getelementptr inbounds %struct.ContainerDefRNA, ptr %47, i64 0, i32 3, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !57
  %50 = icmp eq ptr %49, null
  br i1 %50, label %60, label %51

51:                                               ; preds = %46, %56
  %52 = phi ptr [ %58, %56 ], [ %49, %46 ]
  %53 = getelementptr inbounds %struct.PropertyDefRNA, ptr %52, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !132
  %55 = icmp eq ptr %54, %0
  br i1 %55, label %68, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.PropertyDefRNA, ptr %52, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !57
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %51, !llvm.loop !147

60:                                               ; preds = %56, %46
  %61 = getelementptr inbounds %struct.ContainerDefRNA, ptr %47, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !57
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %46, !llvm.loop !148

64:                                               ; preds = %60, %41
  %65 = getelementptr inbounds %struct.ContainerDefRNA, ptr %42, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !57
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %41, !llvm.loop !149

68:                                               ; preds = %28, %64, %51, %20, %4
  %69 = phi ptr [ null, %4 ], [ null, %20 ], [ %52, %51 ], [ null, %64 ], [ %29, %28 ]
  ret ptr %69
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RNA_identifier_sanitize(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #16 {
  %3 = tail call ptr @__ctype_b_loc() #25
  %4 = load ptr, ptr %3, align 8, !tbaa !57
  %5 = load i8, ptr %0, align 1, !tbaa !76
  %6 = zext i8 %5 to i64
  %7 = getelementptr inbounds i16, ptr %4, i64 %6
  %8 = load i16, ptr %7, align 2, !tbaa !40
  %9 = and i16 %8, 1024
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i8 95, ptr %0, align 1, !tbaa !76
  br label %12

12:                                               ; preds = %11, %2
  %13 = load i8, ptr %0, align 1, !tbaa !76
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %54, label %15

15:                                               ; preds = %12
  %16 = icmp ne i32 %1, 0
  br label %17

17:                                               ; preds = %15, %49
  %18 = phi i64 [ 0, %15 ], [ %50, %49 ]
  %19 = phi i8 [ %13, %15 ], [ %52, %49 ]
  %20 = phi ptr [ %0, %15 ], [ %51, %49 ]
  %21 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !74
  %22 = icmp ne i32 %21, 0
  %23 = and i1 %16, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %17
  %25 = load ptr, ptr %3, align 8, !tbaa !57
  %26 = zext i8 %19 to i64
  %27 = getelementptr inbounds i16, ptr %25, i64 %26
  %28 = load i16, ptr %27, align 2, !tbaa !40
  %29 = and i16 %28, 1280
  %30 = icmp eq i16 %29, 1280
  br i1 %30, label %31, label %37

31:                                               ; preds = %24
  %32 = tail call ptr @__ctype_tolower_loc() #25
  %33 = load ptr, ptr %32, align 8, !tbaa !57
  %34 = getelementptr inbounds i32, ptr %33, i64 %26
  %35 = load i32, ptr %34, align 4, !tbaa !131
  %36 = trunc i32 %35 to i8
  store i8 %36, ptr %20, align 1, !tbaa !76
  br label %37

37:                                               ; preds = %24, %31, %17
  %38 = load i8, ptr %20, align 1, !tbaa !76
  switch i8 %38, label %40 [
    i8 95, label %49
    i8 32, label %39
  ]

39:                                               ; preds = %37
  store i8 95, ptr %20, align 1, !tbaa !76
  br label %40

40:                                               ; preds = %37, %39
  %41 = load ptr, ptr %3, align 8, !tbaa !57
  %42 = load i8, ptr %20, align 1, !tbaa !76
  %43 = zext i8 %42 to i64
  %44 = getelementptr inbounds i16, ptr %41, i64 %43
  %45 = load i16, ptr %44, align 2, !tbaa !40
  %46 = and i16 %45, 8
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  store i8 95, ptr %20, align 1, !tbaa !76
  br label %49

49:                                               ; preds = %37, %40, %48
  %50 = add nuw nsw i64 %18, 1
  %51 = getelementptr inbounds i8, ptr %0, i64 %50
  %52 = load i8, ptr %51, align 1, !tbaa !76
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %17, !llvm.loop !150

54:                                               ; preds = %49, %12
  br label %58

55:                                               ; preds = %58
  %56 = add nuw nsw i64 %59, 1
  %57 = icmp eq i64 %56, 30
  br i1 %57, label %68, label %58, !llvm.loop !151

58:                                               ; preds = %54, %55
  %59 = phi i64 [ %56, %55 ], [ 0, %54 ]
  %60 = getelementptr inbounds [31 x ptr], ptr @rna_validate_identifier.kwlist, i64 0, i64 %59
  %61 = load ptr, ptr %60, align 8, !tbaa !57
  %62 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %61) #24
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %55

64:                                               ; preds = %58
  %65 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #24
  %66 = getelementptr i8, ptr %0, i64 %65
  %67 = getelementptr i8, ptr %66, i64 -1
  store i8 95, ptr %67, align 1, !tbaa !76
  br label %68

68:                                               ; preds = %55, %64
  %69 = icmp eq i32 %1, 0
  br i1 %69, label %83, label %73

70:                                               ; preds = %73
  %71 = add nuw nsw i64 %74, 1
  %72 = icmp eq i64 %71, 4
  br i1 %72, label %83, label %73, !llvm.loop !152

73:                                               ; preds = %68, %70
  %74 = phi i64 [ %71, %70 ], [ 0, %68 ]
  %75 = getelementptr inbounds [5 x ptr], ptr @rna_validate_identifier.kwlist_prop, i64 0, i64 %74
  %76 = load ptr, ptr %75, align 8, !tbaa !57
  %77 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %76) #24
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %70

79:                                               ; preds = %73
  %80 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #24
  %81 = getelementptr i8, ptr %0, i64 %80
  %82 = getelementptr i8, ptr %81, i64 -1
  store i8 95, ptr %82, align 1, !tbaa !76
  br label %83

83:                                               ; preds = %70, %79, %68
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #17

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_tolower_loc() local_unnamed_addr #17

; Function Attrs: nounwind uwtable
define dso_local ptr @RNA_create() local_unnamed_addr #0 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %2 = tail call ptr %1(i64 noundef 16, ptr noundef nonnull @.str.194) #23
  %3 = load i32, ptr @DNAlen, align 4, !tbaa !131
  %4 = tail call ptr @DNA_sdna_from_data(ptr noundef nonnull @DNAstr, i32 noundef %3, i8 noundef zeroext 0) #23
  store ptr %4, ptr @DefRNA, align 8, !tbaa !153
  store i32 0, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 1), i8 0, i64 16, i1 false)
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !74
  ret ptr %2
}

declare ptr @DNA_sdna_from_data(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @RNA_define_free(ptr nocapture readnone %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 2), align 8, !tbaa !57
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %9, %4 ], [ %2, %1 ]
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  %7 = getelementptr inbounds %struct.AllocDefRNA, ptr %5, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !154
  tail call void %6(ptr noundef %8) #23
  %9 = load ptr, ptr %5, align 8, !tbaa !57
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %4, !llvm.loop !156

11:                                               ; preds = %4, %1
  %12 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 2), align 8, !tbaa !56
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %11, %14
  %15 = phi ptr [ %16, %14 ], [ %12, %11 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !52
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %17(ptr noundef nonnull %15) #23
  %18 = icmp eq ptr %16, null
  br i1 %18, label %19, label %14, !llvm.loop !135

19:                                               ; preds = %14, %11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 2), i8 0, i64 16, i1 false)
  %20 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 1), align 8, !tbaa !57
  %21 = icmp eq ptr %20, null
  br i1 %21, label %60, label %22

22:                                               ; preds = %19, %57
  %23 = phi ptr [ %58, %57 ], [ %20, %19 ]
  %24 = getelementptr inbounds %struct.StructDefRNA, ptr %23, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !57
  %26 = icmp eq ptr %25, null
  br i1 %26, label %40, label %27

27:                                               ; preds = %22, %37
  %28 = phi ptr [ %38, %37 ], [ %25, %22 ]
  %29 = getelementptr inbounds %struct.ContainerDefRNA, ptr %28, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !56
  %31 = icmp eq ptr %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %27, %32
  %33 = phi ptr [ %34, %32 ], [ %30, %27 ]
  %34 = load ptr, ptr %33, align 8, !tbaa !52
  %35 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %35(ptr noundef nonnull %33) #23
  %36 = icmp eq ptr %34, null
  br i1 %36, label %37, label %32, !llvm.loop !135

37:                                               ; preds = %32, %27
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %29, i8 0, i64 16, i1 false)
  %38 = load ptr, ptr %28, align 8, !tbaa !57
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %27, !llvm.loop !157

40:                                               ; preds = %37, %22
  %41 = getelementptr inbounds %struct.ContainerDefRNA, ptr %23, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !56
  %43 = icmp eq ptr %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %40, %44
  %45 = phi ptr [ %46, %44 ], [ %42, %40 ]
  %46 = load ptr, ptr %45, align 8, !tbaa !52
  %47 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %47(ptr noundef nonnull %45) #23
  %48 = icmp eq ptr %46, null
  br i1 %48, label %49, label %44, !llvm.loop !135

49:                                               ; preds = %44, %40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %41, i8 0, i64 16, i1 false)
  %50 = load ptr, ptr %24, align 8, !tbaa !56
  %51 = icmp eq ptr %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %49, %52
  %53 = phi ptr [ %54, %52 ], [ %50, %49 ]
  %54 = load ptr, ptr %53, align 8, !tbaa !52
  %55 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %55(ptr noundef nonnull %53) #23
  %56 = icmp eq ptr %54, null
  br i1 %56, label %57, label %52, !llvm.loop !135

57:                                               ; preds = %52, %49
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %24, i8 0, i64 16, i1 false)
  %58 = load ptr, ptr %23, align 8, !tbaa !57
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %22, !llvm.loop !158

60:                                               ; preds = %57, %19
  %61 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 1), align 8, !tbaa !56
  %62 = icmp eq ptr %61, null
  br i1 %62, label %68, label %63

63:                                               ; preds = %60, %63
  %64 = phi ptr [ %65, %63 ], [ %61, %60 ]
  %65 = load ptr, ptr %64, align 8, !tbaa !52
  %66 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %66(ptr noundef nonnull %64) #23
  %67 = icmp eq ptr %65, null
  br i1 %67, label %68, label %63, !llvm.loop !135

68:                                               ; preds = %63, %60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 1), i8 0, i64 16, i1 false)
  %69 = load ptr, ptr @DefRNA, align 8, !tbaa !153
  %70 = icmp eq ptr %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %68
  tail call void @DNA_sdna_free(ptr noundef nonnull %69) #23
  store ptr null, ptr @DefRNA, align 8, !tbaa !153
  br label %72

72:                                               ; preds = %71, %68
  store i32 0, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  ret void
}

declare void @DNA_sdna_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @RNA_define_verify_sdna(i8 noundef zeroext %0) local_unnamed_addr #18 {
  %2 = zext i8 %0 to i32
  store i32 %2, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 7), align 4, !tbaa !159
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @RNA_struct_free_extension(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ExtensionRNA, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !160
  %5 = load ptr, ptr %1, align 8, !tbaa !162
  tail call void %4(ptr noundef %5) #23
  tail call void @RNA_struct_blender_type_set(ptr noundef %0, ptr noundef null) #23
  tail call void @RNA_struct_py_type_set(ptr noundef %0, ptr noundef null) #23
  ret void
}

declare void @RNA_struct_blender_type_set(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_struct_py_type_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @RNA_def_property_free_pointers(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !51
  %4 = and i32 %3, 32768
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %89, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !101
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %11(ptr noundef nonnull %8) #23
  br label %12

12:                                               ; preds = %10, %6
  %13 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !94
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %17(ptr noundef nonnull %14) #23
  br label %18

18:                                               ; preds = %16, %12
  %19 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !95
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %23(ptr noundef nonnull %20) #23
  br label %24

24:                                               ; preds = %22, %18
  %25 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 22
  %26 = load ptr, ptr %25, align 8, !tbaa !163
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %29(ptr noundef nonnull %26) #23
  br label %30

30:                                               ; preds = %28, %24
  %31 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 9
  %32 = load i32, ptr %31, align 8, !tbaa !96
  switch i32 %32, label %89 [
    i32 0, label %39
    i32 1, label %43
    i32 2, label %47
    i32 4, label %33
    i32 3, label %82
  ]

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.EnumPropertyRNA, ptr %0, i64 0, i32 8
  %35 = load i32, ptr %34, align 8, !tbaa !164
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %78

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.EnumPropertyRNA, ptr %0, i64 0, i32 7
  br label %51

39:                                               ; preds = %30
  %40 = getelementptr inbounds %struct.BoolPropertyRNA, ptr %0, i64 0, i32 10
  %41 = load ptr, ptr %40, align 8, !tbaa !166
  %42 = icmp eq ptr %41, null
  br i1 %42, label %89, label %86

43:                                               ; preds = %30
  %44 = getelementptr inbounds %struct.IntPropertyRNA, ptr %0, i64 0, i32 17
  %45 = load ptr, ptr %44, align 8, !tbaa !168
  %46 = icmp eq ptr %45, null
  br i1 %46, label %89, label %86

47:                                               ; preds = %30
  %48 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %0, i64 0, i32 18
  %49 = load ptr, ptr %48, align 8, !tbaa !170
  %50 = icmp eq ptr %49, null
  br i1 %50, label %89, label %86

51:                                               ; preds = %37, %73
  %52 = phi i64 [ 0, %37 ], [ %74, %73 ]
  %53 = load ptr, ptr %38, align 8, !tbaa !173
  %54 = getelementptr inbounds %struct.EnumPropertyItem, ptr %53, i64 %52, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !174
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %51
  %58 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %58(ptr noundef nonnull %55) #23
  br label %59

59:                                               ; preds = %57, %51
  %60 = load ptr, ptr %38, align 8, !tbaa !173
  %61 = getelementptr inbounds %struct.EnumPropertyItem, ptr %60, i64 %52, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !176
  %63 = icmp eq ptr %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %59
  %65 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %65(ptr noundef nonnull %62) #23
  br label %66

66:                                               ; preds = %64, %59
  %67 = load ptr, ptr %38, align 8, !tbaa !173
  %68 = getelementptr inbounds %struct.EnumPropertyItem, ptr %67, i64 %52, i32 4
  %69 = load ptr, ptr %68, align 8, !tbaa !177
  %70 = icmp eq ptr %69, null
  br i1 %70, label %73, label %71

71:                                               ; preds = %66
  %72 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %72(ptr noundef nonnull %69) #23
  br label %73

73:                                               ; preds = %66, %71
  %74 = add nuw nsw i64 %52, 1
  %75 = load i32, ptr %34, align 8, !tbaa !164
  %76 = sext i32 %75 to i64
  %77 = icmp slt i64 %74, %76
  br i1 %77, label %51, label %78, !llvm.loop !178

78:                                               ; preds = %73, %33
  %79 = getelementptr inbounds %struct.EnumPropertyRNA, ptr %0, i64 0, i32 7
  %80 = load ptr, ptr %79, align 8, !tbaa !173
  %81 = icmp eq ptr %80, null
  br i1 %81, label %89, label %86

82:                                               ; preds = %30
  %83 = getelementptr inbounds %struct.StringPropertyRNA, ptr %0, i64 0, i32 8
  %84 = load ptr, ptr %83, align 8, !tbaa !179
  %85 = icmp eq ptr %84, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %82, %78, %47, %43, %39
  %87 = phi ptr [ %41, %39 ], [ %45, %43 ], [ %49, %47 ], [ %80, %78 ], [ %84, %82 ]
  %88 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %88(ptr noundef nonnull %87) #23
  br label %89

89:                                               ; preds = %86, %30, %39, %43, %47, %78, %82, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @RNA_def_func_free_pointers(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.FunctionRNA, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !66
  %4 = and i32 %3, 1024
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.FunctionRNA, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !67
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %11(ptr noundef nonnull %8) #23
  br label %12

12:                                               ; preds = %10, %6
  %13 = getelementptr inbounds %struct.FunctionRNA, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !68
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %17(ptr noundef nonnull %14) #23
  br label %18

18:                                               ; preds = %12, %16, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @RNA_def_struct_free_pointers(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.StructRNA, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !70
  %4 = and i32 %3, 32
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %24, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.StructRNA, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !71
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %11(ptr noundef nonnull %8) #23
  br label %12

12:                                               ; preds = %10, %6
  %13 = getelementptr inbounds %struct.StructRNA, ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !72
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %17(ptr noundef nonnull %14) #23
  br label %18

18:                                               ; preds = %16, %12
  %19 = getelementptr inbounds %struct.StructRNA, ptr %0, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !73
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %23(ptr noundef nonnull %20) #23
  br label %24

24:                                               ; preds = %18, %22, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @RNA_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !74
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %55, label %4

4:                                                ; preds = %1
  tail call void @RNA_define_free(ptr poison)
  %5 = load ptr, ptr %0, align 8, !tbaa !57
  %6 = icmp eq ptr %5, null
  br i1 %6, label %45, label %7

7:                                                ; preds = %4, %42
  %8 = phi ptr [ %43, %42 ], [ %5, %4 ]
  %9 = getelementptr inbounds %struct.StructRNA, ptr %8, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !57
  %11 = icmp eq ptr %10, null
  br i1 %11, label %25, label %12

12:                                               ; preds = %7, %22
  %13 = phi ptr [ %23, %22 ], [ %10, %7 ]
  %14 = getelementptr inbounds %struct.ContainerRNA, ptr %13, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !56
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %12, %17
  %18 = phi ptr [ %19, %17 ], [ %15, %12 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !52
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %20(ptr noundef nonnull %18) #23
  %21 = icmp eq ptr %19, null
  br i1 %21, label %22, label %17, !llvm.loop !135

22:                                               ; preds = %17, %12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  %23 = load ptr, ptr %13, align 8, !tbaa !57
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %12, !llvm.loop !181

25:                                               ; preds = %22, %7
  %26 = getelementptr inbounds %struct.ContainerRNA, ptr %8, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !56
  %28 = icmp eq ptr %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %25, %29
  %30 = phi ptr [ %31, %29 ], [ %27, %25 ]
  %31 = load ptr, ptr %30, align 8, !tbaa !52
  %32 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %32(ptr noundef nonnull %30) #23
  %33 = icmp eq ptr %31, null
  br i1 %33, label %34, label %29, !llvm.loop !135

34:                                               ; preds = %29, %25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %26, i8 0, i64 16, i1 false)
  %35 = load ptr, ptr %9, align 8, !tbaa !56
  %36 = icmp eq ptr %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %34, %37
  %38 = phi ptr [ %39, %37 ], [ %35, %34 ]
  %39 = load ptr, ptr %38, align 8, !tbaa !52
  %40 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %40(ptr noundef nonnull %38) #23
  %41 = icmp eq ptr %39, null
  br i1 %41, label %42, label %37, !llvm.loop !135

42:                                               ; preds = %37, %34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  %43 = load ptr, ptr %8, align 8, !tbaa !57
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %7, !llvm.loop !182

45:                                               ; preds = %42, %4
  %46 = load ptr, ptr %0, align 8, !tbaa !56
  %47 = icmp eq ptr %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %45, %48
  %49 = phi ptr [ %50, %48 ], [ %46, %45 ]
  %50 = load ptr, ptr %49, align 8, !tbaa !52
  %51 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %51(ptr noundef nonnull %49) #23
  %52 = icmp eq ptr %50, null
  br i1 %52, label %53, label %48, !llvm.loop !135

53:                                               ; preds = %48, %45
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %54 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %54(ptr noundef nonnull %0) #23
  br label %62

55:                                               ; preds = %1
  %56 = load ptr, ptr %0, align 8, !tbaa !183
  %57 = icmp eq ptr %56, null
  br i1 %57, label %62, label %58

58:                                               ; preds = %55, %58
  %59 = phi ptr [ %60, %58 ], [ %56, %55 ]
  %60 = load ptr, ptr %59, align 8, !tbaa !185
  tail call void @RNA_struct_free(ptr noundef nonnull %0, ptr noundef nonnull %59)
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %58, !llvm.loop !186

62:                                               ; preds = %58, %55, %53
  ret void
}

; Function Attrs: nofree nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @rna_validate_identifier(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i8 noundef zeroext %2) unnamed_addr #19 {
  %4 = tail call ptr @__ctype_b_loc() #25
  %5 = load ptr, ptr %4, align 8, !tbaa !57
  %6 = load i8, ptr %0, align 1, !tbaa !76
  %7 = zext i8 %6 to i64
  %8 = getelementptr inbounds i16, ptr %5, i64 %7
  %9 = load i16, ptr %8, align 2, !tbaa !40
  %10 = and i16 %9, 1024
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %3
  %13 = load i8, ptr %0, align 1, !tbaa !76
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %45, label %15

15:                                               ; preds = %12
  %16 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !74
  %17 = icmp ne i32 %16, 0
  %18 = icmp ne i8 %2, 0
  %19 = and i1 %18, %17
  br label %21

20:                                               ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %1, ptr noundef nonnull align 1 dereferenceable(39) @.str.276, i64 39, i1 false) #23
  br label %68

21:                                               ; preds = %15, %40
  %22 = phi i64 [ 0, %15 ], [ %41, %40 ]
  %23 = phi i8 [ %13, %15 ], [ %43, %40 ]
  br i1 %19, label %24, label %31

24:                                               ; preds = %21
  %25 = zext i8 %23 to i64
  %26 = getelementptr inbounds i16, ptr %5, i64 %25
  %27 = load i16, ptr %26, align 2, !tbaa !40
  %28 = and i16 %27, 1280
  %29 = icmp eq i16 %28, 1280
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %1, ptr noundef nonnull align 1 dereferenceable(55) @.str.277, i64 55, i1 false) #23
  br label %68

31:                                               ; preds = %24, %21
  switch i8 %23, label %33 [
    i8 95, label %40
    i8 32, label %32
  ]

32:                                               ; preds = %31
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %1, ptr noundef nonnull align 1 dereferenceable(40) @.str.278, i64 40, i1 false) #23
  br label %68

33:                                               ; preds = %31
  %34 = zext i8 %23 to i64
  %35 = getelementptr inbounds i16, ptr %5, i64 %34
  %36 = load i16, ptr %35, align 2, !tbaa !40
  %37 = and i16 %36, 8
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(73) %1, ptr noundef nonnull align 1 dereferenceable(73) @.str.279, i64 73, i1 false) #23
  br label %68

40:                                               ; preds = %31, %33
  %41 = add nuw i64 %22, 1
  %42 = getelementptr inbounds i8, ptr %0, i64 %41
  %43 = load i8, ptr %42, align 1, !tbaa !76
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %21, !llvm.loop !77

45:                                               ; preds = %40, %12
  br label %49

46:                                               ; preds = %49
  %47 = add nuw nsw i64 %50, 1
  %48 = icmp eq i64 %47, 30
  br i1 %48, label %56, label %49, !llvm.loop !78

49:                                               ; preds = %45, %46
  %50 = phi i64 [ %47, %46 ], [ 0, %45 ]
  %51 = getelementptr inbounds [31 x ptr], ptr @rna_validate_identifier.kwlist, i64 0, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !57
  %53 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %52) #24
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %46

55:                                               ; preds = %49
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(35) %1, ptr noundef nonnull align 1 dereferenceable(35) @.str.280, i64 35, i1 false) #23
  br label %68

56:                                               ; preds = %46
  %57 = icmp eq i8 %2, 0
  br i1 %57, label %68, label %61

58:                                               ; preds = %61
  %59 = add nuw nsw i64 %62, 1
  %60 = icmp eq i64 %59, 4
  br i1 %60, label %68, label %61, !llvm.loop !187

61:                                               ; preds = %56, %58
  %62 = phi i64 [ %59, %58 ], [ 0, %56 ]
  %63 = getelementptr inbounds [5 x ptr], ptr @rna_validate_identifier.kwlist_prop, i64 0, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !57
  %65 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %64) #24
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %58

67:                                               ; preds = %61
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(35) %1, ptr noundef nonnull align 1 dereferenceable(35) @.str.280, i64 35, i1 false) #23
  br label %68

68:                                               ; preds = %58, %56, %67, %55, %39, %32, %30, %20
  %69 = phi i32 [ 0, %30 ], [ 0, %32 ], [ 0, %39 ], [ 0, %55 ], [ 0, %67 ], [ 0, %20 ], [ 1, %56 ], [ 1, %58 ]
  ret i32 %69
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @RNA_def_struct_sdna(ptr noundef readnone %0, ptr noundef %1) local_unnamed_addr #14 {
  %3 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !74
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = load ptr, ptr @stderr, align 8, !tbaa !57
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.207, ptr noundef nonnull @__func__.RNA_def_struct_sdna) #26
  br label %16

8:                                                ; preds = %2, %8
  %9 = phi ptr [ %10, %8 ], [ getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 1), %2 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !57, !nonnull !91, !noundef !91
  %11 = getelementptr inbounds %struct.StructDefRNA, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !83
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %14, label %8, !llvm.loop !86

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.StructDefRNA, ptr %10, i64 0, i32 3
  store ptr %1, ptr %15, align 8, !tbaa !89
  br label %16

16:                                               ; preds = %14, %5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @RNA_def_property(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [512 x i8], align 16
  %6 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !74
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %122, label %8

8:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %5) #23
  %9 = call fastcc i32 @rna_validate_identifier(ptr noundef %1, ptr noundef nonnull %5, i8 noundef zeroext 1), !range !188
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  %12 = load ptr, ptr @stderr, align 8, !tbaa !57
  %13 = getelementptr inbounds %struct.ContainerRNA, ptr %0, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !57
  %15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef nonnull @.str.213, ptr noundef nonnull @__func__.RNA_def_property, ptr noundef %14, ptr noundef %1, ptr noundef nonnull %5) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %16

16:                                               ; preds = %11, %8
  %17 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !74
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 1, i32 1), align 8, !tbaa !57
  %21 = icmp eq ptr %20, null
  br i1 %21, label %34, label %25

22:                                               ; preds = %16
  %23 = load ptr, ptr @stderr, align 8, !tbaa !57
  %24 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef nonnull @.str.159, ptr noundef nonnull @__func__.rna_find_container_def) #26
  br label %80

25:                                               ; preds = %19, %30
  %26 = phi ptr [ %32, %30 ], [ %20, %19 ]
  %27 = getelementptr inbounds %struct.StructDefRNA, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !83
  %29 = icmp eq ptr %28, %0
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.ContainerDefRNA, ptr %26, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !57
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %25, !llvm.loop !136

34:                                               ; preds = %30, %25, %19
  %35 = phi ptr [ null, %19 ], [ null, %30 ], [ %26, %25 ]
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %80

37:                                               ; preds = %34
  %38 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  br label %39

39:                                               ; preds = %39, %37
  %40 = phi ptr [ %45, %39 ], [ getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 1, i32 1), %37 ]
  %41 = load ptr, ptr %40, align 8, !tbaa !57, !nonnull !91, !noundef !91
  %42 = getelementptr inbounds %struct.StructDefRNA, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !83
  %44 = icmp eq ptr %43, %38
  %45 = getelementptr inbounds %struct.ContainerDefRNA, ptr %41, i64 0, i32 1
  br i1 %44, label %46, label %39

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.StructDefRNA, ptr %41, i64 0, i32 6, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !57
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %58, %46
  %51 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 1, i32 1), align 8, !tbaa !57
  %52 = icmp eq ptr %51, null
  br i1 %52, label %80, label %62

53:                                               ; preds = %46, %58
  %54 = phi ptr [ %60, %58 ], [ %48, %46 ]
  %55 = getelementptr inbounds %struct.FunctionDefRNA, ptr %54, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !140
  %57 = icmp eq ptr %56, %0
  br i1 %57, label %80, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.ContainerDefRNA, ptr %54, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !57
  %61 = icmp eq ptr %60, null
  br i1 %61, label %50, label %53, !llvm.loop !142

62:                                               ; preds = %50, %76
  %63 = phi ptr [ %78, %76 ], [ %51, %50 ]
  %64 = getelementptr inbounds %struct.StructDefRNA, ptr %63, i64 0, i32 6, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !57
  %66 = icmp eq ptr %65, null
  br i1 %66, label %76, label %67

67:                                               ; preds = %62, %72
  %68 = phi ptr [ %74, %72 ], [ %65, %62 ]
  %69 = getelementptr inbounds %struct.FunctionDefRNA, ptr %68, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !140
  %71 = icmp eq ptr %70, %0
  br i1 %71, label %80, label %72

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.ContainerDefRNA, ptr %68, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !57
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %67, !llvm.loop !143

76:                                               ; preds = %72, %62
  %77 = getelementptr inbounds %struct.ContainerDefRNA, ptr %63, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !57
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %62, !llvm.loop !144

80:                                               ; preds = %53, %76, %67, %50, %22, %34
  %81 = phi ptr [ null, %22 ], [ %35, %34 ], [ null, %50 ], [ %68, %67 ], [ null, %76 ], [ %54, %53 ]
  %82 = getelementptr inbounds %struct.ContainerDefRNA, ptr %81, i64 0, i32 3
  br label %83

83:                                               ; preds = %98, %80
  %84 = phi ptr [ %82, %80 ], [ %86, %98 ]
  %85 = phi ptr [ undef, %80 ], [ %99, %98 ]
  %86 = load ptr, ptr %84, align 8, !tbaa !57
  %87 = icmp eq ptr %86, null
  br i1 %87, label %101, label %88

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.PropertyDefRNA, ptr %86, i64 0, i32 3
  %90 = load ptr, ptr %89, align 8, !tbaa !132
  %91 = icmp eq ptr %90, null
  br i1 %91, label %97, label %92

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.PropertyRNA, ptr %90, i64 0, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !101
  %95 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %94, ptr noundef nonnull dereferenceable(1) %1) #24
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %92, %88
  br label %98

98:                                               ; preds = %97, %92
  %99 = phi ptr [ %85, %97 ], [ %86, %92 ]
  %100 = phi i1 [ true, %97 ], [ false, %92 ]
  br i1 %100, label %83, label %101, !llvm.loop !134

101:                                              ; preds = %83, %98
  %102 = phi ptr [ %99, %98 ], [ null, %83 ]
  %103 = icmp eq ptr %102, null
  br i1 %103, label %109, label %104

104:                                              ; preds = %101
  %105 = load ptr, ptr @stderr, align 8, !tbaa !57
  %106 = getelementptr inbounds %struct.ContainerRNA, ptr %0, i64 1
  %107 = load ptr, ptr %106, align 8, !tbaa !57
  %108 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %105, ptr noundef nonnull @.str.214, ptr noundef nonnull @__func__.RNA_def_property, ptr noundef %107, ptr noundef %1) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %109

109:                                              ; preds = %104, %101
  %110 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %111 = call ptr %110(i64 noundef 112, ptr noundef nonnull @.str.215) #23
  store ptr null, ptr %111, align 8, !tbaa !52
  %112 = getelementptr inbounds %struct.ContainerDefRNA, ptr %81, i64 0, i32 3, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !55
  %114 = getelementptr inbounds %struct.Link, ptr %111, i64 0, i32 1
  store ptr %113, ptr %114, align 8, !tbaa !54
  %115 = icmp eq ptr %113, null
  br i1 %115, label %117, label %116

116:                                              ; preds = %109
  store ptr %111, ptr %113, align 8, !tbaa !52
  br label %117

117:                                              ; preds = %116, %109
  %118 = load ptr, ptr %82, align 8, !tbaa !56
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %121

120:                                              ; preds = %117
  store ptr %111, ptr %82, align 8, !tbaa !56
  br label %121

121:                                              ; preds = %117, %120
  store ptr %111, ptr %112, align 8, !tbaa !55
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %5) #23
  br label %122

122:                                              ; preds = %4, %121
  %123 = phi ptr [ %111, %121 ], [ null, %4 ]
  %124 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %125 = icmp ult i32 %2, 7
  br i1 %125, label %126, label %130

126:                                              ; preds = %122
  %127 = zext nneg i32 %2 to i64
  %128 = getelementptr inbounds [7 x i64], ptr @switch.table.RNA_def_property, i64 0, i64 %127
  %129 = load i64, ptr %128, align 8
  br label %130

130:                                              ; preds = %122, %126
  %131 = phi i64 [ %129, %126 ], [ 0, %122 ]
  %132 = call ptr %124(i64 noundef %131, ptr noundef nonnull @.str.216) #23
  switch i32 %2, label %176 [
    i32 0, label %133
    i32 1, label %144
    i32 2, label %153
    i32 3, label %170
    i32 5, label %172
    i32 4, label %181
    i32 6, label %181
  ]

133:                                              ; preds = %130
  %134 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !74
  %135 = icmp eq i32 %134, 0
  %136 = and i32 %3, -42
  %137 = icmp eq i32 %136, 0
  %138 = or i1 %137, %135
  br i1 %138, label %181, label %139

139:                                              ; preds = %133
  %140 = load ptr, ptr @stderr, align 8, !tbaa !57
  %141 = getelementptr inbounds %struct.ContainerRNA, ptr %0, i64 1
  %142 = load ptr, ptr %141, align 8, !tbaa !57
  %143 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %140, ptr noundef nonnull @.str.217, ptr noundef nonnull @__func__.RNA_def_property, ptr noundef %142, ptr noundef %1) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %181

144:                                              ; preds = %130
  %145 = icmp eq i32 %3, 13
  %146 = select i1 %145, i32 0, i32 -2147483648
  %147 = getelementptr inbounds %struct.IntPropertyRNA, ptr %132, i64 0, i32 13
  store i32 %146, ptr %147, align 8, !tbaa !189
  %148 = getelementptr inbounds %struct.IntPropertyRNA, ptr %132, i64 0, i32 14
  store i32 2147483647, ptr %148, align 4, !tbaa !190
  %149 = select i1 %145, i32 0, i32 -10000
  %150 = getelementptr inbounds %struct.IntPropertyRNA, ptr %132, i64 0, i32 11
  store i32 %149, ptr %150, align 8, !tbaa !191
  %151 = getelementptr inbounds %struct.IntPropertyRNA, ptr %132, i64 0, i32 12
  store i32 10000, ptr %151, align 4, !tbaa !192
  %152 = getelementptr inbounds %struct.IntPropertyRNA, ptr %132, i64 0, i32 15
  store i32 1, ptr %152, align 8, !tbaa !193
  br label %181

153:                                              ; preds = %130
  %154 = icmp eq i32 %3, 13
  %155 = select i1 %154, float 0.000000e+00, float 0xC7EFFFFFE0000000
  %156 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %132, i64 0, i32 13
  store float %155, ptr %156, align 8, !tbaa !194
  %157 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %132, i64 0, i32 14
  store float 0x47EFFFFFE0000000, ptr %157, align 4, !tbaa !195
  switch i32 %3, label %162 [
    i32 30, label %158
    i32 20, label %158
    i32 15, label %160
  ]

158:                                              ; preds = %153, %153
  store float 0.000000e+00, ptr %156, align 8, !tbaa !194
  %159 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %132, i64 0, i32 11
  store float 0.000000e+00, ptr %159, align 8, !tbaa !196
  br label %165

160:                                              ; preds = %153
  store float 0.000000e+00, ptr %156, align 8, !tbaa !194
  %161 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %132, i64 0, i32 11
  store float 0.000000e+00, ptr %161, align 8, !tbaa !196
  store float 1.000000e+00, ptr %157, align 4, !tbaa !195
  br label %165

162:                                              ; preds = %153
  %163 = select i1 %154, float 0.000000e+00, float -1.000000e+04
  %164 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %132, i64 0, i32 11
  store float %163, ptr %164, align 8, !tbaa !196
  br label %165

165:                                              ; preds = %160, %162, %158
  %166 = phi float [ 1.000000e+00, %160 ], [ 1.000000e+04, %162 ], [ 1.000000e+00, %158 ]
  %167 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %132, i64 0, i32 12
  store float %166, ptr %167, align 4, !tbaa !197
  %168 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %132, i64 0, i32 15
  store float 1.000000e+01, ptr %168, align 8, !tbaa !198
  %169 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %132, i64 0, i32 16
  store i32 3, ptr %169, align 4, !tbaa !199
  br label %181

170:                                              ; preds = %130
  %171 = getelementptr inbounds %struct.StringPropertyRNA, ptr %132, i64 0, i32 8
  store ptr @.str.2, ptr %171, align 8, !tbaa !179
  br label %181

172:                                              ; preds = %130
  %173 = getelementptr inbounds %struct.PropertyRNA, ptr %132, i64 0, i32 4
  %174 = load i32, ptr %173, align 8, !tbaa !51
  %175 = or i32 %174, 8388608
  store i32 %175, ptr %173, align 8, !tbaa !51
  br label %181

176:                                              ; preds = %130
  %177 = load ptr, ptr @stderr, align 8, !tbaa !57
  %178 = getelementptr inbounds %struct.ContainerRNA, ptr %0, i64 1
  %179 = load ptr, ptr %178, align 8, !tbaa !57
  %180 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %177, ptr noundef nonnull @.str.218, ptr noundef nonnull @__func__.RNA_def_property, ptr noundef %179, ptr noundef %1) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %261

181:                                              ; preds = %130, %130, %133, %139, %172, %170, %165, %144
  %182 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !74
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %187, label %184

184:                                              ; preds = %181
  %185 = getelementptr inbounds %struct.PropertyDefRNA, ptr %123, i64 0, i32 2
  store ptr %0, ptr %185, align 8, !tbaa !200
  %186 = getelementptr inbounds %struct.PropertyDefRNA, ptr %123, i64 0, i32 3
  store ptr %132, ptr %186, align 8, !tbaa !132
  br label %187

187:                                              ; preds = %184, %181
  %188 = getelementptr inbounds %struct.PropertyRNA, ptr %132, i64 0, i32 2
  store i32 -1, ptr %188, align 8, !tbaa !201
  %189 = getelementptr inbounds %struct.PropertyRNA, ptr %132, i64 0, i32 3
  store ptr %1, ptr %189, align 8, !tbaa !101
  %190 = getelementptr inbounds %struct.PropertyRNA, ptr %132, i64 0, i32 9
  store i32 %2, ptr %190, align 8, !tbaa !96
  %191 = getelementptr inbounds %struct.PropertyRNA, ptr %132, i64 0, i32 10
  store i32 %3, ptr %191, align 4, !tbaa !202
  %192 = getelementptr inbounds %struct.PropertyRNA, ptr %132, i64 0, i32 5
  store ptr %1, ptr %192, align 8, !tbaa !94
  %193 = getelementptr inbounds %struct.PropertyRNA, ptr %132, i64 0, i32 6
  store ptr @.str.2, ptr %193, align 8, !tbaa !95
  %194 = getelementptr inbounds %struct.PropertyRNA, ptr %132, i64 0, i32 8
  store ptr @.str.67, ptr %194, align 8, !tbaa !203
  %195 = getelementptr inbounds %struct.PropertyRNA, ptr %132, i64 0, i32 20
  store i32 -1, ptr %195, align 4, !tbaa !204
  %196 = add i32 %2, -7
  %197 = icmp ult i32 %196, -2
  br i1 %197, label %198, label %202

198:                                              ; preds = %187
  %199 = getelementptr inbounds %struct.PropertyRNA, ptr %132, i64 0, i32 4
  %200 = icmp eq i32 %2, 3
  %201 = select i1 %200, i32 1, i32 3
  store i32 %201, ptr %199, align 8
  br label %202

202:                                              ; preds = %198, %187
  %203 = icmp eq i32 %2, 3
  br i1 %203, label %204, label %208

204:                                              ; preds = %202
  %205 = getelementptr inbounds %struct.PropertyRNA, ptr %132, i64 0, i32 4
  %206 = load i32, ptr %205, align 8, !tbaa !51
  %207 = or i32 %206, 262144
  store i32 %207, ptr %205, align 8, !tbaa !51
  br label %208

208:                                              ; preds = %204, %202
  %209 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !74
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %240, label %211

211:                                              ; preds = %208
  switch i32 %2, label %249 [
    i32 0, label %212
    i32 1, label %213
    i32 2, label %214
    i32 3, label %215
    i32 4, label %237
    i32 5, label %238
    i32 6, label %239
  ]

212:                                              ; preds = %211
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 5), align 4, !tbaa !205
  call void @RNA_def_property_boolean_sdna(ptr noundef %132, ptr noundef null, ptr noundef %1, i32 noundef 0)
  store i32 0, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 5), align 4, !tbaa !205
  br label %249

213:                                              ; preds = %211
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 5), align 4, !tbaa !205
  call void @RNA_def_property_int_sdna(ptr noundef %132, ptr noundef null, ptr noundef %1)
  store i32 0, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 5), align 4, !tbaa !205
  br label %249

214:                                              ; preds = %211
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 5), align 4, !tbaa !205
  call void @RNA_def_property_float_sdna(ptr noundef %132, ptr noundef null, ptr noundef %1)
  store i32 0, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 5), align 4, !tbaa !205
  br label %249

215:                                              ; preds = %211
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 5), align 4, !tbaa !205
  %216 = load i32, ptr %190, align 8, !tbaa !96
  %217 = icmp eq i32 %216, 3
  br i1 %217, label %225, label %218

218:                                              ; preds = %215
  %219 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %220 = load ptr, ptr @stderr, align 8, !tbaa !57
  %221 = getelementptr inbounds %struct.StructRNA, ptr %219, i64 0, i32 1
  %222 = load ptr, ptr %221, align 8, !tbaa !71
  %223 = load ptr, ptr %189, align 8, !tbaa !101
  %224 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %220, ptr noundef nonnull @.str.228, ptr noundef nonnull @__func__.RNA_def_property_string_sdna, ptr noundef %222, ptr noundef %223) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %236

225:                                              ; preds = %215
  %226 = call fastcc ptr @rna_def_property_sdna(ptr noundef %132, ptr noundef null, ptr noundef %1)
  %227 = icmp eq ptr %226, null
  br i1 %227, label %236, label %228

228:                                              ; preds = %225
  %229 = getelementptr inbounds %struct.PropertyRNA, ptr %132, i64 0, i32 12
  %230 = load i32, ptr %229, align 8, !tbaa !206
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %236, label %232

232:                                              ; preds = %228
  %233 = getelementptr inbounds %struct.PropertyRNA, ptr %132, i64 0, i32 14
  %234 = load i32, ptr %233, align 8, !tbaa !207
  %235 = getelementptr inbounds %struct.StringPropertyRNA, ptr %132, i64 0, i32 7
  store i32 %234, ptr %235, align 8, !tbaa !208
  store i32 0, ptr %229, align 8, !tbaa !206
  store i32 0, ptr %233, align 8, !tbaa !207
  br label %236

236:                                              ; preds = %218, %225, %228, %232
  store i32 0, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 5), align 4, !tbaa !205
  br label %249

237:                                              ; preds = %211
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 5), align 4, !tbaa !205
  call void @RNA_def_property_enum_sdna(ptr noundef %132, ptr noundef null, ptr noundef %1)
  store i32 0, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 5), align 4, !tbaa !205
  br label %249

238:                                              ; preds = %211
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 5), align 4, !tbaa !205
  call void @RNA_def_property_pointer_sdna(ptr noundef %132, ptr noundef null, ptr noundef %1)
  store i32 0, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 5), align 4, !tbaa !205
  br label %249

239:                                              ; preds = %211
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 5), align 4, !tbaa !205
  call void @RNA_def_property_collection_sdna(ptr noundef %132, ptr noundef null, ptr noundef %1, ptr noundef null)
  store i32 0, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 5), align 4, !tbaa !205
  br label %249

240:                                              ; preds = %208
  %241 = getelementptr inbounds %struct.PropertyRNA, ptr %132, i64 0, i32 4
  %242 = load i32, ptr %241, align 8, !tbaa !51
  %243 = or i32 %242, 1536
  store i32 %243, ptr %241, align 8, !tbaa !51
  %244 = getelementptr inbounds %struct.ContainerRNA, ptr %0, i64 0, i32 2
  %245 = load ptr, ptr %244, align 8, !tbaa !209
  %246 = icmp eq ptr %245, null
  br i1 %246, label %249, label %247

247:                                              ; preds = %240
  %248 = load ptr, ptr %189, align 8, !tbaa !101
  call void @BLI_ghash_insert(ptr noundef nonnull %245, ptr noundef %248, ptr noundef %132) #23
  br label %249

249:                                              ; preds = %240, %247, %212, %213, %214, %236, %237, %238, %239, %211
  %250 = getelementptr inbounds %struct.ContainerRNA, ptr %0, i64 0, i32 3
  store ptr null, ptr %132, align 8, !tbaa !52
  %251 = getelementptr inbounds %struct.ContainerRNA, ptr %0, i64 0, i32 3, i32 1
  %252 = load ptr, ptr %251, align 8, !tbaa !55
  %253 = getelementptr inbounds %struct.Link, ptr %132, i64 0, i32 1
  store ptr %252, ptr %253, align 8, !tbaa !54
  %254 = icmp eq ptr %252, null
  br i1 %254, label %256, label %255

255:                                              ; preds = %249
  store ptr %132, ptr %252, align 8, !tbaa !52
  br label %256

256:                                              ; preds = %255, %249
  %257 = load ptr, ptr %250, align 8, !tbaa !56
  %258 = icmp eq ptr %257, null
  br i1 %258, label %259, label %260

259:                                              ; preds = %256
  store ptr %132, ptr %250, align 8, !tbaa !56
  br label %260

260:                                              ; preds = %256, %259
  store ptr %132, ptr %251, align 8, !tbaa !55
  br label %261

261:                                              ; preds = %260, %176
  %262 = phi ptr [ null, %176 ], [ %132, %260 ]
  ret ptr %262
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @RNA_def_property_flag(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #11 {
  %3 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !51
  %5 = or i32 %4, %1
  store i32 %5, ptr %3, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @RNA_def_property_ui_text(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #20 {
  %4 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 5
  store ptr %1, ptr %4, align 8, !tbaa !94
  %5 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 6
  store ptr %2, ptr %5, align 8, !tbaa !95
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @RNA_def_property_struct_type(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #14 {
  %3 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %4 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !74
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = load ptr, ptr @stderr, align 8, !tbaa !57
  %8 = getelementptr inbounds %struct.StructRNA, ptr %3, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !71
  %10 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !101
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.226, ptr noundef nonnull @__func__.RNA_def_property_struct_type, ptr noundef %9, ptr noundef %11) #26
  br label %27

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 9
  %15 = load i32, ptr %14, align 8, !tbaa !96
  switch i32 %15, label %20 [
    i32 5, label %16
    i32 6, label %18
  ]

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.PointerPropertyRNA, ptr %0, i64 0, i32 5
  store ptr %1, ptr %17, align 8, !tbaa !97
  br label %27

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.CollectionPropertyRNA, ptr %0, i64 0, i32 9
  store ptr %1, ptr %19, align 8, !tbaa !99
  br label %27

20:                                               ; preds = %13
  %21 = load ptr, ptr @stderr, align 8, !tbaa !57
  %22 = getelementptr inbounds %struct.StructRNA, ptr %3, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !71
  %24 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !101
  %26 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str.227, ptr noundef nonnull @__func__.RNA_def_property_struct_type, ptr noundef %23, ptr noundef %25) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %27

27:                                               ; preds = %16, %18, %20, %6
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @RNA_def_property_collection_funcs(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #14 {
  %10 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %11 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !74
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load ptr, ptr @stderr, align 8, !tbaa !57
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull @.str.207, ptr noundef nonnull @__func__.RNA_def_property_collection_funcs) #26
  br label %59

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 9
  %18 = load i32, ptr %17, align 8, !tbaa !96
  %19 = icmp eq i32 %18, 6
  br i1 %19, label %20, label %52

20:                                               ; preds = %16
  %21 = icmp eq ptr %1, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.CollectionPropertyRNA, ptr %0, i64 0, i32 1
  store ptr %1, ptr %23, align 8, !tbaa !102
  br label %24

24:                                               ; preds = %22, %20
  %25 = icmp eq ptr %2, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.CollectionPropertyRNA, ptr %0, i64 0, i32 2
  store ptr %2, ptr %27, align 8, !tbaa !103
  br label %28

28:                                               ; preds = %26, %24
  %29 = icmp eq ptr %3, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.CollectionPropertyRNA, ptr %0, i64 0, i32 3
  store ptr %3, ptr %31, align 8, !tbaa !104
  br label %32

32:                                               ; preds = %30, %28
  %33 = icmp eq ptr %4, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.CollectionPropertyRNA, ptr %0, i64 0, i32 4
  store ptr %4, ptr %35, align 8, !tbaa !105
  br label %36

36:                                               ; preds = %34, %32
  %37 = icmp eq ptr %5, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.CollectionPropertyRNA, ptr %0, i64 0, i32 5
  store ptr %5, ptr %39, align 8, !tbaa !210
  br label %40

40:                                               ; preds = %38, %36
  %41 = icmp eq ptr %6, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.CollectionPropertyRNA, ptr %0, i64 0, i32 6
  store ptr %6, ptr %43, align 8, !tbaa !211
  br label %44

44:                                               ; preds = %42, %40
  %45 = icmp eq ptr %7, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.CollectionPropertyRNA, ptr %0, i64 0, i32 7
  store ptr %7, ptr %47, align 8, !tbaa !106
  br label %48

48:                                               ; preds = %46, %44
  %49 = icmp eq ptr %8, null
  br i1 %49, label %59, label %50

50:                                               ; preds = %48
  %51 = getelementptr inbounds %struct.CollectionPropertyRNA, ptr %0, i64 0, i32 8
  store ptr %8, ptr %51, align 8, !tbaa !212
  br label %59

52:                                               ; preds = %16
  %53 = load ptr, ptr @stderr, align 8, !tbaa !57
  %54 = getelementptr inbounds %struct.StructRNA, ptr %10, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !71
  %56 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !101
  %58 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %53, ptr noundef nonnull @.str.243, ptr noundef nonnull @__func__.RNA_def_property_collection_funcs, ptr noundef %55, ptr noundef %57) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %59

59:                                               ; preds = %52, %50, %48, %13
  ret void
}

declare void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) #2

; Function Attrs: nofree nounwind uwtable
define dso_local void @RNA_def_property_pointer_funcs(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #14 {
  %6 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %7 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !74
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = load ptr, ptr @stderr, align 8, !tbaa !57
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.207, ptr noundef nonnull @__func__.RNA_def_property_pointer_funcs) #26
  br label %39

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !96
  %15 = icmp eq i32 %14, 5
  br i1 %15, label %16, label %32

16:                                               ; preds = %12
  %17 = icmp eq ptr %1, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.PointerPropertyRNA, ptr %0, i64 0, i32 1
  store ptr %1, ptr %19, align 8, !tbaa !107
  br label %20

20:                                               ; preds = %18, %16
  %21 = icmp eq ptr %2, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.PointerPropertyRNA, ptr %0, i64 0, i32 2
  store ptr %2, ptr %23, align 8, !tbaa !213
  br label %24

24:                                               ; preds = %22, %20
  %25 = icmp eq ptr %3, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.PointerPropertyRNA, ptr %0, i64 0, i32 3
  store ptr %3, ptr %27, align 8, !tbaa !214
  br label %28

28:                                               ; preds = %26, %24
  %29 = icmp eq ptr %4, null
  br i1 %29, label %39, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.PointerPropertyRNA, ptr %0, i64 0, i32 4
  store ptr %4, ptr %31, align 8, !tbaa !215
  br label %39

32:                                               ; preds = %12
  %33 = load ptr, ptr @stderr, align 8, !tbaa !57
  %34 = getelementptr inbounds %struct.StructRNA, ptr %6, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !71
  %36 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !101
  %38 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef nonnull @.str.241, ptr noundef nonnull @__func__.RNA_def_property_pointer_funcs, ptr noundef %35, ptr noundef %37) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %39

39:                                               ; preds = %32, %30, %28, %9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @RNA_def_struct(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %3, %9
  %6 = phi ptr [ %7, %9 ], [ %0, %3 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.StructRNA, ptr %7, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !71
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(1) %2) #24
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %5, !llvm.loop !216

14:                                               ; preds = %5
  %15 = load ptr, ptr @stderr, align 8, !tbaa !57
  %16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.206, ptr noundef nonnull @__func__.RNA_def_struct, ptr noundef nonnull %2, ptr noundef %1) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %17

17:                                               ; preds = %9, %14, %3
  %18 = phi ptr [ null, %14 ], [ null, %3 ], [ %7, %9 ]
  %19 = tail call ptr @RNA_def_struct_ptr(ptr noundef %0, ptr noundef %1, ptr noundef %18)
  ret ptr %19
}

; Function Attrs: nounwind uwtable
define dso_local void @RNA_def_struct_sdna_from(ptr noundef readnone %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !74
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = load ptr, ptr @stderr, align 8, !tbaa !57
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.207, ptr noundef nonnull @__func__.RNA_def_struct_sdna_from) #26
  br label %37

9:                                                ; preds = %3, %13
  %10 = phi ptr [ %11, %13 ], [ getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 1), %3 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !57
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.StructDefRNA, ptr %11, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !83
  %16 = icmp eq ptr %15, %0
  br i1 %16, label %17, label %9, !llvm.loop !86

17:                                               ; preds = %9, %13
  %18 = phi ptr [ %11, %13 ], [ null, %9 ]
  %19 = getelementptr inbounds %struct.StructDefRNA, ptr %18, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !89
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load ptr, ptr @stderr, align 8, !tbaa !57
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef nonnull @.str.208, ptr noundef nonnull @__func__.RNA_def_struct_sdna_from, ptr noundef %1) #26
  br label %37

25:                                               ; preds = %17
  %26 = load ptr, ptr @DefRNA, align 8, !tbaa !153
  %27 = tail call i32 @DNA_struct_find_nr(ptr noundef %26, ptr noundef %1) #23
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 5), align 4, !tbaa !205
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load ptr, ptr @stderr, align 8, !tbaa !57
  %34 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef nonnull @.str.209, ptr noundef nonnull @__func__.RNA_def_struct_sdna_from, ptr noundef %1) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %37

35:                                               ; preds = %25
  %36 = getelementptr inbounds %struct.StructDefRNA, ptr %18, i64 0, i32 5
  store ptr %2, ptr %36, align 8, !tbaa !217
  store ptr %1, ptr %19, align 8, !tbaa !89
  br label %37

37:                                               ; preds = %29, %32, %35, %22, %6
  ret void
}

declare i32 @DNA_struct_find_nr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define dso_local void @RNA_def_struct_name_property(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #14 {
  %3 = getelementptr inbounds %struct.PropertyRNA, ptr %1, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !96
  %5 = icmp eq i32 %4, 3
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr @stderr, align 8, !tbaa !57
  %8 = getelementptr inbounds %struct.StructRNA, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !71
  %10 = getelementptr inbounds %struct.PropertyRNA, ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !101
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.210, ptr noundef nonnull @__func__.RNA_def_struct_name_property, ptr noundef %9, ptr noundef %11) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %15

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.StructRNA, ptr %0, i64 0, i32 9
  store ptr %1, ptr %14, align 8, !tbaa !92
  br label %15

15:                                               ; preds = %13, %6
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @RNA_def_struct_nested(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2) local_unnamed_addr #14 {
  br label %4

4:                                                ; preds = %8, %3
  %5 = phi ptr [ %0, %3 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.StructRNA, ptr %6, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !71
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) %2) #24
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %4, !llvm.loop !218

13:                                               ; preds = %4
  %14 = load ptr, ptr @stderr, align 8, !tbaa !57
  %15 = getelementptr inbounds %struct.StructRNA, ptr %1, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !71
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull @.str.211, ptr noundef nonnull @__func__.RNA_def_struct_nested, ptr noundef %2, ptr noundef %16) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %18

18:                                               ; preds = %8, %13
  %19 = getelementptr inbounds %struct.StructRNA, ptr %1, i64 0, i32 12
  store ptr %6, ptr %19, align 8, !tbaa !219
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @RNA_def_struct_flag(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #11 {
  %3 = getelementptr inbounds %struct.StructRNA, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !70
  %5 = or i32 %4, %1
  store i32 %5, ptr %3, align 8, !tbaa !70
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @RNA_def_struct_clear_flag(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #11 {
  %3 = xor i32 %1, -1
  %4 = getelementptr inbounds %struct.StructRNA, ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !70
  %6 = and i32 %5, %3
  store i32 %6, ptr %4, align 8, !tbaa !70
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @RNA_def_struct_refine_func(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #14 {
  %3 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !74
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = load ptr, ptr @stderr, align 8, !tbaa !57
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.207, ptr noundef nonnull @__func__.RNA_def_struct_refine_func) #26
  br label %12

8:                                                ; preds = %2
  %9 = icmp eq ptr %1, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.StructRNA, ptr %0, i64 0, i32 13
  store ptr %1, ptr %11, align 8, !tbaa !220
  br label %12

12:                                               ; preds = %5, %10, %8
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @RNA_def_struct_idprops_func(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #14 {
  %3 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !74
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = load ptr, ptr @stderr, align 8, !tbaa !57
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.207, ptr noundef nonnull @__func__.RNA_def_struct_idprops_func) #26
  br label %12

8:                                                ; preds = %2
  %9 = icmp eq ptr %1, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.StructRNA, ptr %0, i64 0, i32 18
  store ptr %1, ptr %11, align 8, !tbaa !221
  br label %12

12:                                               ; preds = %5, %10, %8
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @RNA_def_struct_register_funcs(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #14 {
  %5 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !74
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = load ptr, ptr @stderr, align 8, !tbaa !57
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.207, ptr noundef nonnull @__func__.RNA_def_struct_register_funcs) #26
  br label %22

10:                                               ; preds = %4
  %11 = icmp eq ptr %1, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.StructRNA, ptr %0, i64 0, i32 15
  store ptr %1, ptr %13, align 8, !tbaa !222
  br label %14

14:                                               ; preds = %12, %10
  %15 = icmp eq ptr %2, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.StructRNA, ptr %0, i64 0, i32 16
  store ptr %2, ptr %17, align 8, !tbaa !223
  br label %18

18:                                               ; preds = %16, %14
  %19 = icmp eq ptr %3, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.StructRNA, ptr %0, i64 0, i32 17
  store ptr %3, ptr %21, align 8, !tbaa !224
  br label %22

22:                                               ; preds = %7, %20, %18
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @RNA_def_struct_path_func(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #14 {
  %3 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !74
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = load ptr, ptr @stderr, align 8, !tbaa !57
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.207, ptr noundef nonnull @__func__.RNA_def_struct_path_func) #26
  br label %12

8:                                                ; preds = %2
  %9 = icmp eq ptr %1, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.StructRNA, ptr %0, i64 0, i32 14
  store ptr %1, ptr %11, align 8, !tbaa !225
  br label %12

12:                                               ; preds = %5, %10, %8
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @RNA_def_struct_identifier(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #14 {
  %3 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !74
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr @stderr, align 8, !tbaa !57
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.212, ptr noundef nonnull @__func__.RNA_def_struct_identifier) #26
  br label %10

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.StructRNA, ptr %0, i64 0, i32 1
  store ptr %1, ptr %9, align 8, !tbaa !71
  br label %10

10:                                               ; preds = %8, %5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @RNA_def_struct_ui_text(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #20 {
  %4 = getelementptr inbounds %struct.StructRNA, ptr %0, i64 0, i32 5
  store ptr %1, ptr %4, align 8, !tbaa !72
  %5 = getelementptr inbounds %struct.StructRNA, ptr %0, i64 0, i32 6
  store ptr %2, ptr %5, align 8, !tbaa !73
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @RNA_def_struct_ui_icon(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #20 {
  %3 = getelementptr inbounds %struct.StructRNA, ptr %0, i64 0, i32 8
  store i32 %1, ptr %3, align 8, !tbaa !88
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @RNA_def_struct_translation_context(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #20 {
  %3 = icmp eq ptr %1, null
  %4 = select i1 %3, ptr @.str.67, ptr %1
  %5 = getelementptr inbounds %struct.StructRNA, ptr %0, i64 0, i32 7
  store ptr %4, ptr %5, align 8, !tbaa !87
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @RNA_def_property_boolean_sdna(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %6 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !74
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !tbaa !57
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.207, ptr noundef nonnull @__func__.RNA_def_property_boolean_sdna) #26
  br label %61

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 9
  %13 = load i32, ptr %12, align 8, !tbaa !96
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr @stderr, align 8, !tbaa !57
  %17 = getelementptr inbounds %struct.StructRNA, ptr %5, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !71
  %19 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !101
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef nonnull @.str.229, ptr noundef nonnull @__func__.RNA_def_property_boolean_sdna, ptr noundef %18, ptr noundef %20) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %61

22:                                               ; preds = %11
  %23 = tail call fastcc ptr @rna_def_property_sdna(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %24 = icmp eq ptr %23, null
  br i1 %24, label %61, label %25

25:                                               ; preds = %22
  %26 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 5), align 4, !tbaa !205
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %59

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.PropertyDefRNA, ptr %23, i64 0, i32 8
  %30 = load ptr, ptr %29, align 8, !tbaa !226
  %31 = icmp eq ptr %30, null
  br i1 %31, label %59, label %32

32:                                               ; preds = %28
  %33 = load i8, ptr %30, align 1, !tbaa !76
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %59, label %35

35:                                               ; preds = %32
  %36 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %30, ptr noundef nonnull dereferenceable(4) @.str.119) #24
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %59, label %38

38:                                               ; preds = %35
  %39 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %30, ptr noundef nonnull dereferenceable(6) @.str.237) #24
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %59, label %41

41:                                               ; preds = %38
  %42 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %30, ptr noundef nonnull dereferenceable(5) @.str.238) #24
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %59, label %44

44:                                               ; preds = %41
  %45 = load ptr, ptr @stderr, align 8, !tbaa !57
  %46 = getelementptr inbounds %struct.StructRNA, ptr %5, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !71
  %48 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !101
  %50 = load i32, ptr %12, align 8, !tbaa !96
  %51 = icmp ult i32 %50, 7
  br i1 %51, label %52, label %56

52:                                               ; preds = %44
  %53 = zext nneg i32 %50 to i64
  %54 = getelementptr inbounds [7 x ptr], ptr @switch.table.RNA_property_typename, i64 0, i64 %53
  %55 = load ptr, ptr %54, align 8
  br label %56

56:                                               ; preds = %44, %52
  %57 = phi ptr [ %55, %52 ], [ @.str.267, %44 ]
  %58 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %45, ptr noundef nonnull @.str.239, ptr noundef nonnull @__func__.RNA_def_property_boolean_sdna, ptr noundef %47, ptr noundef %49, ptr noundef nonnull %30, ptr noundef nonnull %57) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %61

59:                                               ; preds = %38, %35, %28, %32, %41, %25
  %60 = getelementptr inbounds %struct.PropertyDefRNA, ptr %23, i64 0, i32 14
  store i32 %3, ptr %60, align 4, !tbaa !227
  br label %61

61:                                               ; preds = %22, %59, %56, %15, %8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @RNA_def_property_int_sdna(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %5 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !74
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = load ptr, ptr @stderr, align 8, !tbaa !57
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.207, ptr noundef nonnull @__func__.RNA_def_property_int_sdna) #26
  br label %96

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !96
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %21, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr @stderr, align 8, !tbaa !57
  %16 = getelementptr inbounds %struct.StructRNA, ptr %4, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !71
  %18 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !101
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.230, ptr noundef nonnull @__func__.RNA_def_property_int_sdna, ptr noundef %17, ptr noundef %19) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %96

21:                                               ; preds = %10
  %22 = tail call fastcc ptr @rna_def_property_sdna(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %23 = icmp eq ptr %22, null
  br i1 %23, label %96, label %24

24:                                               ; preds = %21
  %25 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 5), align 4, !tbaa !205
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %58

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.PropertyDefRNA, ptr %22, i64 0, i32 8
  %29 = load ptr, ptr %28, align 8, !tbaa !226
  %30 = icmp eq ptr %29, null
  br i1 %30, label %58, label %31

31:                                               ; preds = %27
  %32 = load i8, ptr %29, align 1, !tbaa !76
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %58, label %34

34:                                               ; preds = %31
  %35 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %29, ptr noundef nonnull dereferenceable(4) @.str.119) #24
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %58, label %37

37:                                               ; preds = %34
  %38 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %29, ptr noundef nonnull dereferenceable(6) @.str.237) #24
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %58, label %40

40:                                               ; preds = %37
  %41 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %29, ptr noundef nonnull dereferenceable(5) @.str.238) #24
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %58, label %43

43:                                               ; preds = %40
  %44 = load ptr, ptr @stderr, align 8, !tbaa !57
  %45 = getelementptr inbounds %struct.StructRNA, ptr %4, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !71
  %47 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !101
  %49 = load i32, ptr %11, align 8, !tbaa !96
  %50 = icmp ult i32 %49, 7
  br i1 %50, label %51, label %55

51:                                               ; preds = %43
  %52 = zext nneg i32 %49 to i64
  %53 = getelementptr inbounds [7 x ptr], ptr @switch.table.RNA_property_typename, i64 0, i64 %52
  %54 = load ptr, ptr %53, align 8
  br label %55

55:                                               ; preds = %43, %51
  %56 = phi ptr [ %54, %51 ], [ @.str.267, %43 ]
  %57 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %44, ptr noundef nonnull @.str.239, ptr noundef nonnull @__func__.RNA_def_property_int_sdna, ptr noundef %46, ptr noundef %48, ptr noundef nonnull %29, ptr noundef nonnull %56) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %96

58:                                               ; preds = %37, %34, %27, %31, %40, %24
  %59 = getelementptr inbounds %struct.PropertyDefRNA, ptr %22, i64 0, i32 8
  %60 = load ptr, ptr %59, align 8, !tbaa !226
  %61 = icmp eq ptr %60, null
  br i1 %61, label %88, label %62

62:                                               ; preds = %58
  %63 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %60, ptr noundef nonnull dereferenceable(5) @.str.238) #24
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.IntPropertyRNA, ptr %0, i64 0, i32 11
  store i32 0, ptr %66, align 8, !tbaa !191
  %67 = getelementptr inbounds %struct.IntPropertyRNA, ptr %0, i64 0, i32 13
  store i32 0, ptr %67, align 8, !tbaa !189
  %68 = getelementptr inbounds %struct.IntPropertyRNA, ptr %0, i64 0, i32 12
  store i32 255, ptr %68, align 4, !tbaa !192
  %69 = getelementptr inbounds %struct.IntPropertyRNA, ptr %0, i64 0, i32 14
  store i32 255, ptr %69, align 4, !tbaa !190
  br label %88

70:                                               ; preds = %62
  br i1 %61, label %88, label %71

71:                                               ; preds = %70
  %72 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %60, ptr noundef nonnull dereferenceable(6) @.str.237) #24
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.IntPropertyRNA, ptr %0, i64 0, i32 11
  store i32 -32768, ptr %75, align 8, !tbaa !191
  %76 = getelementptr inbounds %struct.IntPropertyRNA, ptr %0, i64 0, i32 13
  store i32 -32768, ptr %76, align 8, !tbaa !189
  %77 = getelementptr inbounds %struct.IntPropertyRNA, ptr %0, i64 0, i32 12
  store i32 32767, ptr %77, align 4, !tbaa !192
  %78 = getelementptr inbounds %struct.IntPropertyRNA, ptr %0, i64 0, i32 14
  store i32 32767, ptr %78, align 4, !tbaa !190
  br label %88

79:                                               ; preds = %71
  br i1 %61, label %88, label %80

80:                                               ; preds = %79
  %81 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %60, ptr noundef nonnull dereferenceable(4) @.str.119) #24
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.IntPropertyRNA, ptr %0, i64 0, i32 13
  store i32 -2147483648, ptr %84, align 8, !tbaa !189
  %85 = getelementptr inbounds %struct.IntPropertyRNA, ptr %0, i64 0, i32 14
  store i32 2147483647, ptr %85, align 4, !tbaa !190
  %86 = getelementptr inbounds %struct.IntPropertyRNA, ptr %0, i64 0, i32 11
  store i32 -10000, ptr %86, align 8, !tbaa !191
  %87 = getelementptr inbounds %struct.IntPropertyRNA, ptr %0, i64 0, i32 12
  store i32 10000, ptr %87, align 4, !tbaa !192
  br label %88

88:                                               ; preds = %58, %70, %74, %83, %80, %79, %65
  %89 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 10
  %90 = load i32, ptr %89, align 4, !tbaa !202
  %91 = add i32 %90, -13
  %92 = icmp ult i32 %91, 3
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.IntPropertyRNA, ptr %0, i64 0, i32 11
  store i32 0, ptr %94, align 8, !tbaa !191
  %95 = getelementptr inbounds %struct.IntPropertyRNA, ptr %0, i64 0, i32 13
  store i32 0, ptr %95, align 8, !tbaa !189
  br label %96

96:                                               ; preds = %88, %21, %93, %55, %14, %7
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @RNA_def_property_float_sdna(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %5 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !74
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = load ptr, ptr @stderr, align 8, !tbaa !57
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.207, ptr noundef nonnull @__func__.RNA_def_property_float_sdna) #26
  br label %73

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !96
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %21, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr @stderr, align 8, !tbaa !57
  %16 = getelementptr inbounds %struct.StructRNA, ptr %4, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !71
  %18 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !101
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.231, ptr noundef nonnull @__func__.RNA_def_property_float_sdna, ptr noundef %17, ptr noundef %19) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %73

21:                                               ; preds = %10
  %22 = tail call fastcc ptr @rna_def_property_sdna(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %23 = icmp eq ptr %22, null
  br i1 %23, label %71, label %24

24:                                               ; preds = %21
  %25 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 5), align 4, !tbaa !205
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %59

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.PropertyDefRNA, ptr %22, i64 0, i32 8
  %29 = load ptr, ptr %28, align 8, !tbaa !226
  %30 = icmp eq ptr %29, null
  br i1 %30, label %59, label %31

31:                                               ; preds = %27
  %32 = load i8, ptr %29, align 1, !tbaa !76
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %59, label %34

34:                                               ; preds = %31
  %35 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %29, ptr noundef nonnull dereferenceable(6) @.str.121) #24
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %59, label %37

37:                                               ; preds = %34
  %38 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %29, ptr noundef nonnull dereferenceable(7) @.str.123) #24
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %59, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 10
  %42 = load i32, ptr %41, align 4, !tbaa !202
  %43 = icmp eq i32 %42, 30
  br i1 %43, label %59, label %44

44:                                               ; preds = %40
  %45 = load ptr, ptr @stderr, align 8, !tbaa !57
  %46 = getelementptr inbounds %struct.StructRNA, ptr %4, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !71
  %48 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !101
  %50 = load i32, ptr %11, align 8, !tbaa !96
  %51 = icmp ult i32 %50, 7
  br i1 %51, label %52, label %56

52:                                               ; preds = %44
  %53 = zext nneg i32 %50 to i64
  %54 = getelementptr inbounds [7 x ptr], ptr @switch.table.RNA_property_typename, i64 0, i64 %53
  %55 = load ptr, ptr %54, align 8
  br label %56

56:                                               ; preds = %44, %52
  %57 = phi ptr [ %55, %52 ], [ @.str.267, %44 ]
  %58 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %45, ptr noundef nonnull @.str.239, ptr noundef nonnull @__func__.RNA_def_property_float_sdna, ptr noundef %47, ptr noundef %49, ptr noundef nonnull %29, ptr noundef nonnull %57) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %73

59:                                               ; preds = %34, %27, %31, %37, %40, %24
  %60 = getelementptr inbounds %struct.PropertyDefRNA, ptr %22, i64 0, i32 8
  %61 = load ptr, ptr %60, align 8, !tbaa !226
  %62 = icmp eq ptr %61, null
  br i1 %62, label %71, label %63

63:                                               ; preds = %59
  %64 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %61, ptr noundef nonnull dereferenceable(5) @.str.238) #24
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %0, i64 0, i32 11
  store float 0.000000e+00, ptr %67, align 8, !tbaa !196
  %68 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %0, i64 0, i32 13
  store float 0.000000e+00, ptr %68, align 8, !tbaa !194
  %69 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %0, i64 0, i32 12
  store float 1.000000e+00, ptr %69, align 4, !tbaa !197
  %70 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %0, i64 0, i32 14
  store float 1.000000e+00, ptr %70, align 4, !tbaa !195
  br label %71

71:                                               ; preds = %59, %63, %66, %21
  %72 = tail call fastcc ptr @rna_def_property_sdna(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br label %73

73:                                               ; preds = %71, %56, %14, %7
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @RNA_def_property_string_sdna(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %5 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !74
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = load ptr, ptr @stderr, align 8, !tbaa !57
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.207, ptr noundef nonnull @__func__.RNA_def_property_string_sdna) #26
  br label %32

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !96
  %13 = icmp eq i32 %12, 3
  br i1 %13, label %21, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr @stderr, align 8, !tbaa !57
  %16 = getelementptr inbounds %struct.StructRNA, ptr %4, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !71
  %18 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !101
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.228, ptr noundef nonnull @__func__.RNA_def_property_string_sdna, ptr noundef %17, ptr noundef %19) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %32

21:                                               ; preds = %10
  %22 = tail call fastcc ptr @rna_def_property_sdna(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %23 = icmp eq ptr %22, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 12
  %26 = load i32, ptr %25, align 8, !tbaa !206
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 14
  %30 = load i32, ptr %29, align 8, !tbaa !207
  %31 = getelementptr inbounds %struct.StringPropertyRNA, ptr %0, i64 0, i32 7
  store i32 %30, ptr %31, align 8, !tbaa !208
  store i32 0, ptr %25, align 8, !tbaa !206
  store i32 0, ptr %29, align 8, !tbaa !207
  br label %32

32:                                               ; preds = %21, %28, %24, %14, %7
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @RNA_def_property_enum_sdna(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %5 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !74
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = load ptr, ptr @stderr, align 8, !tbaa !57
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.207, ptr noundef nonnull @__func__.RNA_def_property_enum_sdna) #26
  br label %35

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !96
  %13 = icmp eq i32 %12, 4
  br i1 %13, label %21, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr @stderr, align 8, !tbaa !57
  %16 = getelementptr inbounds %struct.StructRNA, ptr %4, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !71
  %18 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !101
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.236, ptr noundef nonnull @__func__.RNA_def_property_enum_sdna, ptr noundef %17, ptr noundef %19) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %35

21:                                               ; preds = %10
  %22 = tail call fastcc ptr @rna_def_property_sdna(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %23 = icmp eq ptr %22, null
  br i1 %23, label %35, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 12
  %26 = load i32, ptr %25, align 8, !tbaa !206
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %24
  store i32 0, ptr %25, align 8, !tbaa !206
  %29 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 14
  store i32 0, ptr %29, align 8, !tbaa !207
  %30 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 5), align 4, !tbaa !205
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load ptr, ptr @stderr, align 8, !tbaa !57
  %34 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef nonnull @.str.240, ptr noundef nonnull @__func__.RNA_def_property_enum_sdna, ptr noundef %1, ptr noundef %2) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %35

35:                                               ; preds = %21, %28, %32, %24, %14, %7
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @RNA_def_property_pointer_sdna(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %5 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !74
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = load ptr, ptr @stderr, align 8, !tbaa !57
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.207, ptr noundef nonnull @__func__.RNA_def_property_pointer_sdna) #26
  br label %35

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !96
  %13 = icmp eq i32 %12, 5
  br i1 %13, label %21, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr @stderr, align 8, !tbaa !57
  %16 = getelementptr inbounds %struct.StructRNA, ptr %4, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !71
  %18 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !101
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.241, ptr noundef nonnull @__func__.RNA_def_property_pointer_sdna, ptr noundef %17, ptr noundef %19) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %35

21:                                               ; preds = %10
  %22 = tail call fastcc ptr @rna_def_property_sdna(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %23 = icmp eq ptr %22, null
  br i1 %23, label %35, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 12
  %26 = load i32, ptr %25, align 8, !tbaa !206
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %24
  store i32 0, ptr %25, align 8, !tbaa !206
  %29 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 14
  store i32 0, ptr %29, align 8, !tbaa !207
  %30 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 5), align 4, !tbaa !205
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load ptr, ptr @stderr, align 8, !tbaa !57
  %34 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef nonnull @.str.242, ptr noundef nonnull @__func__.RNA_def_property_pointer_sdna, ptr noundef %1, ptr noundef %2) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %35

35:                                               ; preds = %21, %28, %32, %24, %14, %7
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @RNA_def_property_collection_sdna(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.DNAStructMember, align 8
  %6 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %7 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !74
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !tbaa !57
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.207, ptr noundef nonnull @__func__.RNA_def_property_collection_sdna) #26
  br label %116

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !96
  %15 = icmp eq i32 %14, 6
  br i1 %15, label %23, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr @stderr, align 8, !tbaa !57
  %18 = getelementptr inbounds %struct.StructRNA, ptr %6, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !71
  %20 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !101
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.243, ptr noundef nonnull @__func__.RNA_def_property_collection_sdna, ptr noundef %19, ptr noundef %21) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %116

23:                                               ; preds = %12
  %24 = tail call fastcc ptr @rna_def_property_sdna(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %25 = icmp ne ptr %24, null
  br i1 %25, label %26, label %50

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 12
  %28 = load i32, ptr %27, align 8, !tbaa !206
  %29 = icmp eq i32 %28, 0
  %30 = icmp ne ptr %3, null
  %31 = or i1 %30, %29
  br i1 %31, label %39, label %32

32:                                               ; preds = %26
  store i32 0, ptr %27, align 8, !tbaa !206
  %33 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 14
  store i32 0, ptr %33, align 8, !tbaa !207
  %34 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 5), align 4, !tbaa !205
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load ptr, ptr @stderr, align 8, !tbaa !57
  %38 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %37, ptr noundef nonnull @.str.244, ptr noundef nonnull @__func__.RNA_def_property_collection_sdna, ptr noundef %1, ptr noundef %2) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %39

39:                                               ; preds = %32, %36, %26
  %40 = getelementptr inbounds %struct.PropertyDefRNA, ptr %24, i64 0, i32 8
  %41 = load ptr, ptr %40, align 8, !tbaa !226
  %42 = icmp eq ptr %41, null
  br i1 %42, label %50, label %43

43:                                               ; preds = %39
  %44 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %41, ptr noundef nonnull dereferenceable(9) @.str.245) #24
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.CollectionPropertyRNA, ptr %0, i64 0, i32 2
  store ptr @.str.246, ptr %47, align 8, !tbaa !103
  %48 = getelementptr inbounds %struct.CollectionPropertyRNA, ptr %0, i64 0, i32 4
  store ptr @.str.247, ptr %48, align 8, !tbaa !105
  %49 = getelementptr inbounds %struct.CollectionPropertyRNA, ptr %0, i64 0, i32 3
  store ptr @.str.201, ptr %49, align 8, !tbaa !104
  br label %50

50:                                               ; preds = %39, %43, %46, %23
  %51 = icmp ne ptr %3, null
  %52 = and i1 %51, %25
  br i1 %52, label %53, label %116

53:                                               ; preds = %50
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #23
  %54 = getelementptr inbounds %struct.PropertyDefRNA, ptr %24, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !200
  %56 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !74
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %53
  %59 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 1, i32 1), align 8, !tbaa !57
  %60 = icmp eq ptr %59, null
  br i1 %60, label %73, label %64

61:                                               ; preds = %53
  %62 = load ptr, ptr @stderr, align 8, !tbaa !57
  %63 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %62, ptr noundef nonnull @.str.159, ptr noundef nonnull @__func__.rna_find_struct_def) #26
  br label %73

64:                                               ; preds = %58, %69
  %65 = phi ptr [ %71, %69 ], [ %59, %58 ]
  %66 = getelementptr inbounds %struct.StructDefRNA, ptr %65, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !83
  %68 = icmp eq ptr %67, %55
  br i1 %68, label %73, label %69

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.ContainerDefRNA, ptr %65, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !57
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %64, !llvm.loop !136

73:                                               ; preds = %64, %69, %58, %61
  %74 = phi ptr [ null, %61 ], [ null, %58 ], [ null, %69 ], [ %65, %64 ]
  %75 = icmp eq ptr %1, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.StructDefRNA, ptr %74, i64 0, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !89
  br label %79

79:                                               ; preds = %76, %73
  %80 = phi ptr [ %1, %73 ], [ %78, %76 ]
  %81 = load i8, ptr %3, align 1, !tbaa !76
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %79
  %84 = load ptr, ptr @DefRNA, align 8, !tbaa !153
  %85 = call fastcc i32 @rna_find_sdna_member(ptr noundef %84, ptr noundef %80, ptr noundef nonnull %3, ptr noundef nonnull %5), !range !188
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %109, label %87

87:                                               ; preds = %83, %79
  %88 = load i8, ptr %3, align 1, !tbaa !76
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 14
  %92 = load i32, ptr %91, align 8, !tbaa !207
  %93 = getelementptr inbounds %struct.PropertyDefRNA, ptr %24, i64 0, i32 13
  store i32 %92, ptr %93, align 8, !tbaa !228
  %94 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 12
  store i32 0, ptr %94, align 8, !tbaa !206
  br label %99

95:                                               ; preds = %87
  %96 = getelementptr inbounds %struct.PropertyDefRNA, ptr %24, i64 0, i32 11
  store ptr %80, ptr %96, align 8, !tbaa !229
  %97 = getelementptr inbounds %struct.PropertyDefRNA, ptr %24, i64 0, i32 12
  store ptr %3, ptr %97, align 8, !tbaa !230
  %98 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 14
  br label %99

99:                                               ; preds = %95, %90
  %100 = phi ptr [ %98, %95 ], [ %91, %90 ]
  store i32 0, ptr %100, align 8, !tbaa !207
  %101 = getelementptr inbounds %struct.CollectionPropertyRNA, ptr %0, i64 0, i32 2
  store ptr @.str.248, ptr %101, align 8, !tbaa !103
  %102 = getelementptr inbounds %struct.CollectionPropertyRNA, ptr %0, i64 0, i32 3
  store ptr @.str.249, ptr %102, align 8, !tbaa !104
  %103 = getelementptr inbounds %struct.PropertyDefRNA, ptr %24, i64 0, i32 10
  %104 = load i32, ptr %103, align 4, !tbaa !231
  %105 = icmp sgt i32 %104, 1
  %106 = getelementptr inbounds %struct.CollectionPropertyRNA, ptr %0, i64 0, i32 4
  br i1 %105, label %107, label %108

107:                                              ; preds = %99
  store ptr @.str.250, ptr %106, align 8, !tbaa !105
  br label %115

108:                                              ; preds = %99
  store ptr @.str.251, ptr %106, align 8, !tbaa !105
  br label %115

109:                                              ; preds = %83
  %110 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 5), align 4, !tbaa !205
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load ptr, ptr @stderr, align 8, !tbaa !57
  %114 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %113, ptr noundef nonnull @.str.252, ptr noundef nonnull @__func__.RNA_def_property_collection_sdna, ptr noundef %80, ptr noundef nonnull %3) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %115

115:                                              ; preds = %109, %112, %107, %108
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #23
  br label %116

116:                                              ; preds = %50, %115, %16, %9
  ret void
}

declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @RNA_def_property_clear_flag(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #11 {
  %3 = xor i32 %1, -1
  %4 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !51
  %6 = and i32 %5, %3
  store i32 %6, ptr %4, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @RNA_def_property_subtype(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #20 {
  %3 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 10
  store i32 %1, ptr %3, align 4, !tbaa !202
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @RNA_def_property_array(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #14 {
  %3 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %4 = icmp slt i32 %1, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %2
  %6 = load ptr, ptr @stderr, align 8, !tbaa !57
  %7 = getelementptr inbounds %struct.StructRNA, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !71
  %9 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !101
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.219, ptr noundef nonnull @__func__.RNA_def_property_array, ptr noundef %8, ptr noundef %10) #26
  br label %46

12:                                               ; preds = %2
  %13 = icmp sgt i32 %1, 32
  br i1 %13, label %14, label %21

14:                                               ; preds = %12
  %15 = load ptr, ptr @stderr, align 8, !tbaa !57
  %16 = getelementptr inbounds %struct.StructRNA, ptr %3, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !71
  %18 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !101
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.220, ptr noundef nonnull @__func__.RNA_def_property_array, ptr noundef %17, ptr noundef %19, i32 noundef 32) #26
  br label %46

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 12
  %23 = load i32, ptr %22, align 8, !tbaa !206
  %24 = icmp ugt i32 %23, 1
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = load ptr, ptr @stderr, align 8, !tbaa !57
  %27 = getelementptr inbounds %struct.StructRNA, ptr %3, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !71
  %29 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !101
  %31 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef nonnull @.str.221, ptr noundef nonnull @__func__.RNA_def_property_array, ptr noundef %28, ptr noundef %30, i32 noundef %23) #26
  br label %46

32:                                               ; preds = %21
  %33 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 9
  %34 = load i32, ptr %33, align 8, !tbaa !96
  %35 = icmp ult i32 %34, 3
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 13
  store i32 %1, ptr %37, align 4, !tbaa !131
  %38 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 14
  store i32 %1, ptr %38, align 8, !tbaa !207
  br label %46

39:                                               ; preds = %32
  %40 = load ptr, ptr @stderr, align 8, !tbaa !57
  %41 = getelementptr inbounds %struct.StructRNA, ptr %3, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !71
  %43 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !101
  %45 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %40, ptr noundef nonnull @.str.222, ptr noundef nonnull @__func__.RNA_def_property_array, ptr noundef %42, ptr noundef %44) #26
  br label %46

46:                                               ; preds = %36, %39, %25, %14, %5
  %47 = phi ptr [ %22, %36 ], [ getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), %39 ], [ getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), %25 ], [ getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), %14 ], [ getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), %5 ]
  store i32 1, ptr %47, align 8, !tbaa !131
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @RNA_def_property_multi_array(ptr nocapture noundef %0, i32 noundef %1, ptr noundef readonly %2) local_unnamed_addr #14 {
  %4 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %5 = add i32 %1, -4
  %6 = icmp ult i32 %5, -3
  br i1 %6, label %7, label %14

7:                                                ; preds = %3
  %8 = load ptr, ptr @stderr, align 8, !tbaa !57
  %9 = getelementptr inbounds %struct.StructRNA, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !71
  %11 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !101
  %13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.223, ptr noundef nonnull @__func__.RNA_def_property_multi_array, ptr noundef %10, ptr noundef %12, i32 noundef 3) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %47

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 9
  %16 = load i32, ptr %15, align 8, !tbaa !96
  %17 = icmp ult i32 %16, 3
  br i1 %17, label %25, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr @stderr, align 8, !tbaa !57
  %20 = getelementptr inbounds %struct.StructRNA, ptr %4, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !71
  %22 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !101
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.222, ptr noundef nonnull @__func__.RNA_def_property_multi_array, ptr noundef %21, ptr noundef %23) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %25

25:                                               ; preds = %14, %18
  %26 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 12
  store i32 %1, ptr %26, align 8, !tbaa !206
  %27 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 14
  store i32 0, ptr %27, align 8, !tbaa !207
  %28 = icmp eq ptr %2, null
  %29 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 13
  br i1 %28, label %46, label %30

30:                                               ; preds = %25
  %31 = shl nuw nsw i32 %1, 2
  %32 = zext nneg i32 %31 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %29, ptr nonnull align 4 %2, i64 %32, i1 false)
  %33 = load i32, ptr %2, align 4, !tbaa !131
  store i32 %33, ptr %27, align 8, !tbaa !207
  %34 = icmp sgt i32 %1, 1
  br i1 %34, label %35, label %47

35:                                               ; preds = %30
  %36 = load i32, ptr %27, align 8, !tbaa !207
  %37 = zext nneg i32 %1 to i64
  br label %38

38:                                               ; preds = %35, %38
  %39 = phi i64 [ 1, %35 ], [ %44, %38 ]
  %40 = phi i32 [ %36, %35 ], [ %43, %38 ]
  %41 = getelementptr inbounds i32, ptr %2, i64 %39
  %42 = load i32, ptr %41, align 4, !tbaa !131
  %43 = mul i32 %40, %42
  store i32 %43, ptr %27, align 8, !tbaa !207
  %44 = add nuw nsw i64 %39, 1
  %45 = icmp eq i64 %44, %37
  br i1 %45, label %47, label %38, !llvm.loop !232

46:                                               ; preds = %25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %29, i8 0, i64 12, i1 false)
  br label %47

47:                                               ; preds = %38, %30, %46, %7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @RNA_def_property_ui_icon(ptr nocapture noundef %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #11 {
  %4 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 7
  store i32 %1, ptr %4, align 8, !tbaa !233
  %5 = icmp eq i8 %2, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 4
  %8 = load i32, ptr %7, align 8, !tbaa !51
  %9 = or i32 %8, 4096
  store i32 %9, ptr %7, align 8, !tbaa !51
  br label %10

10:                                               ; preds = %6, %3
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @RNA_def_property_ui_range(ptr nocapture noundef %0, double noundef %1, double noundef %2, double noundef %3, i32 noundef %4) local_unnamed_addr #14 {
  %6 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 9
  %7 = load i32, ptr %6, align 8, !tbaa !96
  switch i32 %7, label %23 [
    i32 1, label %8
    i32 2, label %15
  ]

8:                                                ; preds = %5
  %9 = fptosi double %1 to i32
  %10 = getelementptr inbounds %struct.IntPropertyRNA, ptr %0, i64 0, i32 11
  store i32 %9, ptr %10, align 8, !tbaa !191
  %11 = fptosi double %2 to i32
  %12 = getelementptr inbounds %struct.IntPropertyRNA, ptr %0, i64 0, i32 12
  store i32 %11, ptr %12, align 4, !tbaa !192
  %13 = fptosi double %3 to i32
  %14 = getelementptr inbounds %struct.IntPropertyRNA, ptr %0, i64 0, i32 15
  store i32 %13, ptr %14, align 8, !tbaa !193
  br label %31

15:                                               ; preds = %5
  %16 = fptrunc double %1 to float
  %17 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %0, i64 0, i32 11
  store float %16, ptr %17, align 8, !tbaa !196
  %18 = fptrunc double %2 to float
  %19 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %0, i64 0, i32 12
  store float %18, ptr %19, align 4, !tbaa !197
  %20 = fptrunc double %3 to float
  %21 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %0, i64 0, i32 15
  store float %20, ptr %21, align 8, !tbaa !198
  %22 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %0, i64 0, i32 16
  store i32 %4, ptr %22, align 4, !tbaa !199
  br label %31

23:                                               ; preds = %5
  %24 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %25 = load ptr, ptr @stderr, align 8, !tbaa !57
  %26 = getelementptr inbounds %struct.StructRNA, ptr %24, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !71
  %28 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !101
  %30 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef nonnull @.str.224, ptr noundef nonnull @__func__.RNA_def_property_ui_range, ptr noundef %27, ptr noundef %29) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %31

31:                                               ; preds = %23, %15, %8
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @RNA_def_property_range(ptr nocapture noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #14 {
  %4 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 9
  %5 = load i32, ptr %4, align 8, !tbaa !96
  switch i32 %5, label %20 [
    i32 1, label %6
    i32 2, label %13
  ]

6:                                                ; preds = %3
  %7 = fptosi double %1 to i32
  %8 = getelementptr inbounds %struct.IntPropertyRNA, ptr %0, i64 0, i32 13
  store i32 %7, ptr %8, align 8, !tbaa !189
  %9 = fptosi double %2 to i32
  %10 = getelementptr inbounds %struct.IntPropertyRNA, ptr %0, i64 0, i32 14
  store i32 %9, ptr %10, align 4, !tbaa !190
  %11 = getelementptr inbounds %struct.IntPropertyRNA, ptr %0, i64 0, i32 11
  store i32 %7, ptr %11, align 8, !tbaa !191
  %12 = getelementptr inbounds %struct.IntPropertyRNA, ptr %0, i64 0, i32 12
  store i32 %9, ptr %12, align 4, !tbaa !192
  br label %28

13:                                               ; preds = %3
  %14 = fptrunc double %1 to float
  %15 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %0, i64 0, i32 13
  store float %14, ptr %15, align 8, !tbaa !194
  %16 = fptrunc double %2 to float
  %17 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %0, i64 0, i32 14
  store float %16, ptr %17, align 4, !tbaa !195
  %18 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %0, i64 0, i32 11
  store float %14, ptr %18, align 8, !tbaa !196
  %19 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %0, i64 0, i32 12
  store float %16, ptr %19, align 4, !tbaa !197
  br label %28

20:                                               ; preds = %3
  %21 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %22 = load ptr, ptr @stderr, align 8, !tbaa !57
  %23 = getelementptr inbounds %struct.StructRNA, ptr %21, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !71
  %25 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !101
  %27 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.225, ptr noundef nonnull @__func__.RNA_def_property_range, ptr noundef %24, ptr noundef %26) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %28

28:                                               ; preds = %20, %13, %6
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @RNA_def_property_struct_runtime(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #14 {
  %3 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %4 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !74
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr @stderr, align 8, !tbaa !57
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.212, ptr noundef nonnull @__func__.RNA_def_property_struct_runtime) #26
  br label %33

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 9
  %11 = load i32, ptr %10, align 8, !tbaa !96
  switch i32 %11, label %26 [
    i32 5, label %12
    i32 6, label %24
  ]

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.PointerPropertyRNA, ptr %0, i64 0, i32 5
  store ptr %1, ptr %13, align 8, !tbaa !97
  %14 = icmp eq ptr %1, null
  br i1 %14, label %33, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.StructRNA, ptr %1, i64 0, i32 4
  %17 = load i32, ptr %16, align 8, !tbaa !70
  %18 = and i32 %17, 2
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %33, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 4
  %22 = load i32, ptr %21, align 8, !tbaa !51
  %23 = or i32 %22, 64
  store i32 %23, ptr %21, align 8, !tbaa !51
  br label %33

24:                                               ; preds = %9
  %25 = getelementptr inbounds %struct.CollectionPropertyRNA, ptr %0, i64 0, i32 9
  store ptr %1, ptr %25, align 8, !tbaa !99
  br label %33

26:                                               ; preds = %9
  %27 = load ptr, ptr @stderr, align 8, !tbaa !57
  %28 = getelementptr inbounds %struct.StructRNA, ptr %3, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !71
  %30 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !101
  %32 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %27, ptr noundef nonnull @.str.227, ptr noundef nonnull @__func__.RNA_def_property_struct_runtime, ptr noundef %29, ptr noundef %31) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %33

33:                                               ; preds = %24, %26, %20, %15, %12, %6
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @RNA_def_property_enum_items(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #14 {
  %3 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !96
  %5 = icmp eq i32 %4, 4
  br i1 %5, label %6, label %56

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.EnumPropertyRNA, ptr %0, i64 0, i32 7
  store ptr %1, ptr %7, align 8, !tbaa !173
  %8 = getelementptr inbounds %struct.EnumPropertyRNA, ptr %0, i64 0, i32 8
  store i32 0, ptr %8, align 8, !tbaa !164
  %9 = getelementptr inbounds %struct.EnumPropertyItem, ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !174
  %11 = icmp eq ptr %10, null
  br i1 %11, label %38, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.EnumPropertyRNA, ptr %0, i64 0, i32 9
  %14 = load i32, ptr %8, align 8, !tbaa !164
  br label %15

15:                                               ; preds = %12, %29
  %16 = phi i64 [ 0, %12 ], [ %31, %29 ]
  %17 = phi i32 [ %14, %12 ], [ %21, %29 ]
  %18 = phi ptr [ %10, %12 ], [ %34, %29 ]
  %19 = phi ptr [ %1, %12 ], [ %32, %29 ]
  %20 = phi i32 [ 0, %12 ], [ %30, %29 ]
  %21 = add nsw i32 %17, 1
  store i32 %21, ptr %8, align 8, !tbaa !164
  %22 = load i8, ptr %18, align 1, !tbaa !76
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %15
  %25 = load i32, ptr %19, align 8, !tbaa !234
  %26 = load i32, ptr %13, align 4, !tbaa !235
  %27 = icmp eq i32 %25, %26
  %28 = select i1 %27, i32 1, i32 %20
  br label %29

29:                                               ; preds = %24, %15
  %30 = phi i32 [ %20, %15 ], [ %28, %24 ]
  %31 = add nuw nsw i64 %16, 1
  %32 = getelementptr inbounds %struct.EnumPropertyItem, ptr %1, i64 %31
  %33 = getelementptr inbounds %struct.EnumPropertyItem, ptr %1, i64 %31, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !174
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %15, !llvm.loop !236

36:                                               ; preds = %29
  %37 = icmp eq i32 %30, 0
  br i1 %37, label %38, label %64

38:                                               ; preds = %6, %36
  %39 = getelementptr inbounds %struct.EnumPropertyItem, ptr %1, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !174
  %41 = icmp eq ptr %40, null
  br i1 %41, label %64, label %47

42:                                               ; preds = %47
  %43 = add nuw i64 %48, 1
  %44 = getelementptr inbounds %struct.EnumPropertyItem, ptr %1, i64 %43, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !174
  %46 = icmp eq ptr %45, null
  br i1 %46, label %64, label %47, !llvm.loop !237

47:                                               ; preds = %38, %42
  %48 = phi i64 [ %43, %42 ], [ 0, %38 ]
  %49 = phi ptr [ %45, %42 ], [ %40, %38 ]
  %50 = load i8, ptr %49, align 1, !tbaa !76
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %42, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.EnumPropertyItem, ptr %1, i64 %48
  %54 = load i32, ptr %53, align 8, !tbaa !234
  %55 = getelementptr inbounds %struct.EnumPropertyRNA, ptr %0, i64 0, i32 9
  store i32 %54, ptr %55, align 4, !tbaa !235
  br label %64

56:                                               ; preds = %2
  %57 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %58 = load ptr, ptr @stderr, align 8, !tbaa !57
  %59 = getelementptr inbounds %struct.StructRNA, ptr %57, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !71
  %61 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !101
  %63 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %58, ptr noundef nonnull @.str.227, ptr noundef nonnull @__func__.RNA_def_property_enum_items, ptr noundef %60, ptr noundef %62) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %64

64:                                               ; preds = %42, %38, %36, %52, %56
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @RNA_def_property_string_maxlength(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #14 {
  %3 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !96
  %5 = icmp eq i32 %4, 3
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.StringPropertyRNA, ptr %0, i64 0, i32 7
  store i32 %1, ptr %7, align 8, !tbaa !208
  br label %16

8:                                                ; preds = %2
  %9 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %10 = load ptr, ptr @stderr, align 8, !tbaa !57
  %11 = getelementptr inbounds %struct.StructRNA, ptr %9, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !71
  %13 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !101
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.228, ptr noundef nonnull @__func__.RNA_def_property_string_maxlength, ptr noundef %12, ptr noundef %14) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %16

16:                                               ; preds = %8, %6
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @RNA_def_property_boolean_default(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #14 {
  %3 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !96
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.BoolPropertyRNA, ptr %0, i64 0, i32 9
  store i32 %1, ptr %7, align 8, !tbaa !238
  br label %16

8:                                                ; preds = %2
  %9 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %10 = load ptr, ptr @stderr, align 8, !tbaa !57
  %11 = getelementptr inbounds %struct.StructRNA, ptr %9, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !71
  %13 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !101
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.229, ptr noundef nonnull @__func__.RNA_def_property_boolean_default, ptr noundef %12, ptr noundef %14) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %16

16:                                               ; preds = %8, %6
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @RNA_def_property_boolean_array_default(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #14 {
  %3 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !96
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.BoolPropertyRNA, ptr %0, i64 0, i32 10
  store ptr %1, ptr %7, align 8, !tbaa !166
  br label %16

8:                                                ; preds = %2
  %9 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %10 = load ptr, ptr @stderr, align 8, !tbaa !57
  %11 = getelementptr inbounds %struct.StructRNA, ptr %9, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !71
  %13 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !101
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.229, ptr noundef nonnull @__func__.RNA_def_property_boolean_array_default, ptr noundef %12, ptr noundef %14) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %16

16:                                               ; preds = %8, %6
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @RNA_def_property_int_default(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #14 {
  %3 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !96
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.IntPropertyRNA, ptr %0, i64 0, i32 16
  store i32 %1, ptr %7, align 4, !tbaa !239
  br label %16

8:                                                ; preds = %2
  %9 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %10 = load ptr, ptr @stderr, align 8, !tbaa !57
  %11 = getelementptr inbounds %struct.StructRNA, ptr %9, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !71
  %13 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !101
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.230, ptr noundef nonnull @__func__.RNA_def_property_int_default, ptr noundef %12, ptr noundef %14) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %16

16:                                               ; preds = %8, %6
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @RNA_def_property_int_array_default(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #14 {
  %3 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !96
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.IntPropertyRNA, ptr %0, i64 0, i32 17
  store ptr %1, ptr %7, align 8, !tbaa !168
  br label %16

8:                                                ; preds = %2
  %9 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %10 = load ptr, ptr @stderr, align 8, !tbaa !57
  %11 = getelementptr inbounds %struct.StructRNA, ptr %9, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !71
  %13 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !101
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.230, ptr noundef nonnull @__func__.RNA_def_property_int_array_default, ptr noundef %12, ptr noundef %14) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %16

16:                                               ; preds = %8, %6
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @RNA_def_property_float_default(ptr nocapture noundef %0, float noundef %1) local_unnamed_addr #14 {
  %3 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !96
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %0, i64 0, i32 17
  store float %1, ptr %7, align 8, !tbaa !240
  br label %16

8:                                                ; preds = %2
  %9 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %10 = load ptr, ptr @stderr, align 8, !tbaa !57
  %11 = getelementptr inbounds %struct.StructRNA, ptr %9, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !71
  %13 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !101
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.231, ptr noundef nonnull @__func__.RNA_def_property_float_default, ptr noundef %12, ptr noundef %14) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %16

16:                                               ; preds = %8, %6
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @RNA_def_property_float_array_default(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #14 {
  %3 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !96
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %0, i64 0, i32 18
  store ptr %1, ptr %7, align 8, !tbaa !170
  br label %16

8:                                                ; preds = %2
  %9 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %10 = load ptr, ptr @stderr, align 8, !tbaa !57
  %11 = getelementptr inbounds %struct.StructRNA, ptr %9, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !71
  %13 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !101
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.231, ptr noundef nonnull @__func__.RNA_def_property_float_array_default, ptr noundef %12, ptr noundef %14) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %16

16:                                               ; preds = %8, %6
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @RNA_def_property_string_default(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #14 {
  %3 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %4 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 9
  %5 = load i32, ptr %4, align 8, !tbaa !96
  %6 = icmp eq i32 %5, 3
  br i1 %6, label %7, label %28

7:                                                ; preds = %2
  %8 = icmp eq ptr %1, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %7
  %10 = load ptr, ptr @stderr, align 8, !tbaa !57
  %11 = getelementptr inbounds %struct.StructRNA, ptr %3, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !71
  %13 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !101
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.232, ptr noundef nonnull @__func__.RNA_def_property_string_default, ptr noundef %12, ptr noundef %14) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %35

16:                                               ; preds = %7
  %17 = load i8, ptr %1, align 1, !tbaa !76
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = load ptr, ptr @stderr, align 8, !tbaa !57
  %21 = getelementptr inbounds %struct.StructRNA, ptr %3, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !71
  %23 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !101
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str.233, ptr noundef nonnull @__func__.RNA_def_property_string_default, ptr noundef %22, ptr noundef %24) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %35

26:                                               ; preds = %16
  %27 = getelementptr inbounds %struct.StringPropertyRNA, ptr %0, i64 0, i32 8
  store ptr %1, ptr %27, align 8, !tbaa !179
  br label %35

28:                                               ; preds = %2
  %29 = load ptr, ptr @stderr, align 8, !tbaa !57
  %30 = getelementptr inbounds %struct.StructRNA, ptr %3, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !71
  %32 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !101
  %34 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef nonnull @.str.228, ptr noundef nonnull @__func__.RNA_def_property_string_default, ptr noundef %31, ptr noundef %33) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %35

35:                                               ; preds = %9, %19, %26, %28
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @RNA_def_property_enum_default(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #14 {
  %3 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %4 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 9
  %5 = load i32, ptr %4, align 8, !tbaa !96
  %6 = icmp eq i32 %5, 4
  br i1 %6, label %7, label %89

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.EnumPropertyRNA, ptr %0, i64 0, i32 9
  store i32 %1, ptr %8, align 4, !tbaa !235
  %9 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !51
  %11 = and i32 %10, 2097152
  %12 = icmp eq i32 %11, 0
  %13 = getelementptr inbounds %struct.EnumPropertyRNA, ptr %0, i64 0, i32 8
  %14 = load i32, ptr %13, align 8, !tbaa !164
  %15 = icmp sgt i32 %14, 0
  br i1 %12, label %21, label %16

16:                                               ; preds = %7
  br i1 %15, label %17, label %43

17:                                               ; preds = %16
  %18 = getelementptr inbounds %struct.EnumPropertyRNA, ptr %0, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !173
  %20 = zext nneg i32 %14 to i64
  br label %26

21:                                               ; preds = %7
  br i1 %15, label %22, label %72

22:                                               ; preds = %21
  %23 = getelementptr inbounds %struct.EnumPropertyRNA, ptr %0, i64 0, i32 7
  %24 = load ptr, ptr %23, align 8, !tbaa !173
  %25 = zext nneg i32 %14 to i64
  br label %54

26:                                               ; preds = %17, %37
  %27 = phi i64 [ 0, %17 ], [ %39, %37 ]
  %28 = phi i32 [ 0, %17 ], [ %38, %37 ]
  %29 = getelementptr inbounds %struct.EnumPropertyItem, ptr %19, i64 %27, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !174
  %31 = load i8, ptr %30, align 1, !tbaa !76
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.EnumPropertyItem, ptr %19, i64 %27
  %35 = load i32, ptr %34, align 8, !tbaa !234
  %36 = or i32 %35, %28
  br label %37

37:                                               ; preds = %26, %33
  %38 = phi i32 [ %36, %33 ], [ %28, %26 ]
  %39 = add nuw nsw i64 %27, 1
  %40 = icmp eq i64 %39, %20
  br i1 %40, label %41, label %26, !llvm.loop !241

41:                                               ; preds = %37
  %42 = xor i32 %38, -1
  br label %43

43:                                               ; preds = %41, %16
  %44 = phi i32 [ -1, %16 ], [ %42, %41 ]
  %45 = and i32 %44, %1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %96, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr @stderr, align 8, !tbaa !57
  %49 = getelementptr inbounds %struct.StructRNA, ptr %3, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !71
  %51 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !101
  %53 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %48, ptr noundef nonnull @.str.234, ptr noundef nonnull @__func__.RNA_def_property_enum_default, ptr noundef %50, ptr noundef %52, i32 noundef %45) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %96

54:                                               ; preds = %22, %66
  %55 = phi i64 [ 0, %22 ], [ %68, %66 ]
  %56 = phi i32 [ 0, %22 ], [ %67, %66 ]
  %57 = getelementptr inbounds %struct.EnumPropertyItem, ptr %24, i64 %55, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !174
  %59 = load i8, ptr %58, align 1, !tbaa !76
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %54
  %62 = getelementptr inbounds %struct.EnumPropertyItem, ptr %24, i64 %55
  %63 = load i32, ptr %62, align 8, !tbaa !234
  %64 = icmp eq i32 %63, %1
  %65 = select i1 %64, i32 1, i32 %56
  br label %66

66:                                               ; preds = %61, %54
  %67 = phi i32 [ %56, %54 ], [ %65, %61 ]
  %68 = add nuw nsw i64 %55, 1
  %69 = icmp eq i64 %68, %25
  br i1 %69, label %70, label %54, !llvm.loop !242

70:                                               ; preds = %66
  %71 = icmp ne i32 %67, 0
  br label %72

72:                                               ; preds = %70, %21
  %73 = phi i1 [ false, %21 ], [ %71, %70 ]
  %74 = icmp eq i32 %14, 0
  %75 = or i1 %73, %74
  br i1 %75, label %96, label %76

76:                                               ; preds = %72
  %77 = icmp eq i32 %1, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %76
  %79 = getelementptr inbounds %struct.EnumPropertyRNA, ptr %0, i64 0, i32 7
  %80 = load ptr, ptr %79, align 8, !tbaa !173
  %81 = load i32, ptr %80, align 8, !tbaa !234
  store i32 %81, ptr %8, align 4, !tbaa !235
  br label %96

82:                                               ; preds = %76
  %83 = load ptr, ptr @stderr, align 8, !tbaa !57
  %84 = getelementptr inbounds %struct.StructRNA, ptr %3, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !71
  %86 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %87 = load ptr, ptr %86, align 8, !tbaa !101
  %88 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %83, ptr noundef nonnull @.str.235, ptr noundef nonnull @__func__.RNA_def_property_enum_default, ptr noundef %85, ptr noundef %87) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %96

89:                                               ; preds = %2
  %90 = load ptr, ptr @stderr, align 8, !tbaa !57
  %91 = getelementptr inbounds %struct.StructRNA, ptr %3, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !71
  %93 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !101
  %95 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %90, ptr noundef nonnull @.str.236, ptr noundef nonnull @__func__.RNA_def_property_enum_default, ptr noundef %92, ptr noundef %94) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %96

96:                                               ; preds = %78, %82, %72, %47, %43, %89
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @rna_def_property_sdna(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.DNAStructMember, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #23
  %5 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %6 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !74
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = load ptr, ptr @stderr, align 8, !tbaa !57
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.159, ptr noundef nonnull @__func__.rna_find_struct_property_def) #26
  br label %52

11:                                               ; preds = %3, %11
  %12 = phi ptr [ %17, %11 ], [ getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 1, i32 1), %3 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !57, !nonnull !91, !noundef !91
  %14 = getelementptr inbounds %struct.StructDefRNA, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !83
  %16 = icmp eq ptr %15, %5
  %17 = getelementptr inbounds %struct.ContainerDefRNA, ptr %13, i64 0, i32 1
  br i1 %16, label %18, label %11

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.ContainerDefRNA, ptr %13, i64 0, i32 3, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !57
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %30, %18
  %23 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 1, i32 1), align 8, !tbaa !57
  %24 = icmp eq ptr %23, null
  br i1 %24, label %52, label %34

25:                                               ; preds = %18, %30
  %26 = phi ptr [ %32, %30 ], [ %20, %18 ]
  %27 = getelementptr inbounds %struct.PropertyDefRNA, ptr %26, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !132
  %29 = icmp eq ptr %28, %0
  br i1 %29, label %52, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.PropertyDefRNA, ptr %26, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !57
  %33 = icmp eq ptr %32, null
  br i1 %33, label %22, label %25, !llvm.loop !137

34:                                               ; preds = %22, %48
  %35 = phi ptr [ %50, %48 ], [ %23, %22 ]
  %36 = getelementptr inbounds %struct.ContainerDefRNA, ptr %35, i64 0, i32 3, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !57
  %38 = icmp eq ptr %37, null
  br i1 %38, label %48, label %39

39:                                               ; preds = %34, %44
  %40 = phi ptr [ %46, %44 ], [ %37, %34 ]
  %41 = getelementptr inbounds %struct.PropertyDefRNA, ptr %40, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !132
  %43 = icmp eq ptr %42, %0
  br i1 %43, label %52, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.PropertyDefRNA, ptr %40, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !57
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %39, !llvm.loop !138

48:                                               ; preds = %44, %34
  %49 = getelementptr inbounds %struct.ContainerDefRNA, ptr %35, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !57
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %34, !llvm.loop !139

52:                                               ; preds = %25, %48, %39, %8, %22
  %53 = phi ptr [ null, %8 ], [ null, %22 ], [ %40, %39 ], [ null, %48 ], [ %26, %25 ]
  %54 = icmp eq ptr %53, null
  br i1 %54, label %137, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.PropertyDefRNA, ptr %53, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !200
  %58 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !74
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %55
  %61 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 1, i32 1), align 8, !tbaa !57
  %62 = icmp eq ptr %61, null
  br i1 %62, label %75, label %66

63:                                               ; preds = %55
  %64 = load ptr, ptr @stderr, align 8, !tbaa !57
  %65 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %64, ptr noundef nonnull @.str.159, ptr noundef nonnull @__func__.rna_find_struct_def) #26
  br label %75

66:                                               ; preds = %60, %71
  %67 = phi ptr [ %73, %71 ], [ %61, %60 ]
  %68 = getelementptr inbounds %struct.StructDefRNA, ptr %67, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !83
  %70 = icmp eq ptr %69, %57
  br i1 %70, label %75, label %71

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.ContainerDefRNA, ptr %67, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !57
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %66, !llvm.loop !136

75:                                               ; preds = %66, %71, %60, %63
  %76 = phi ptr [ null, %63 ], [ null, %60 ], [ null, %71 ], [ %67, %66 ]
  %77 = icmp eq ptr %1, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.StructDefRNA, ptr %76, i64 0, i32 3
  %80 = load ptr, ptr %79, align 8, !tbaa !89
  br label %81

81:                                               ; preds = %78, %75
  %82 = phi ptr [ %1, %75 ], [ %80, %78 ]
  %83 = icmp eq ptr %2, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %86 = load ptr, ptr %85, align 8, !tbaa !101
  br label %87

87:                                               ; preds = %84, %81
  %88 = phi ptr [ %2, %81 ], [ %86, %84 ]
  %89 = load ptr, ptr @DefRNA, align 8, !tbaa !153
  %90 = call fastcc i32 @rna_find_sdna_member(ptr noundef %89, ptr noundef %82, ptr noundef %88, ptr noundef nonnull %4), !range !188
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %112

92:                                               ; preds = %87
  %93 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 5), align 4, !tbaa !205
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %137

95:                                               ; preds = %92
  %96 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 7), align 4, !tbaa !159
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.PropertyDefRNA, ptr %53, i64 0, i32 4
  store ptr %82, ptr %99, align 8, !tbaa !243
  %100 = getelementptr inbounds %struct.PropertyDefRNA, ptr %53, i64 0, i32 7
  store ptr %88, ptr %100, align 8, !tbaa !244
  %101 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 9
  %102 = load i32, ptr %101, align 8, !tbaa !96
  switch i32 %102, label %137 [
    i32 0, label %103
    i32 5, label %105
  ]

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct.PropertyDefRNA, ptr %53, i64 0, i32 9
  store i32 1, ptr %104, align 8, !tbaa !245
  br label %137

105:                                              ; preds = %98
  %106 = getelementptr inbounds %struct.PropertyDefRNA, ptr %53, i64 0, i32 10
  store i32 1, ptr %106, align 4, !tbaa !231
  br label %137

107:                                              ; preds = %95
  %108 = load ptr, ptr @stderr, align 8, !tbaa !57
  %109 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %110 = load ptr, ptr %109, align 8, !tbaa !101
  %111 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %108, ptr noundef nonnull @.str.281, ptr noundef nonnull @__func__.rna_def_property_sdna, ptr noundef %82, ptr noundef %88, ptr noundef %110) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %137

112:                                              ; preds = %87
  %113 = getelementptr inbounds %struct.DNAStructMember, ptr %4, i64 0, i32 2
  %114 = load i32, ptr %113, align 8, !tbaa !246
  %115 = icmp sgt i32 %114, 1
  %116 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 14
  br i1 %115, label %117, label %120

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 13
  store i32 %114, ptr %118, align 4, !tbaa !131
  store i32 %114, ptr %116, align 8, !tbaa !207
  %119 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 12
  store i32 1, ptr %119, align 8, !tbaa !206
  br label %122

120:                                              ; preds = %112
  %121 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 12
  store i32 0, ptr %121, align 8, !tbaa !206
  store i32 0, ptr %116, align 8, !tbaa !207
  br label %122

122:                                              ; preds = %120, %117
  %123 = getelementptr inbounds %struct.PropertyDefRNA, ptr %53, i64 0, i32 4
  store ptr %82, ptr %123, align 8, !tbaa !243
  %124 = getelementptr inbounds %struct.StructDefRNA, ptr %76, i64 0, i32 4
  %125 = load ptr, ptr %124, align 8, !tbaa !90
  %126 = getelementptr inbounds %struct.PropertyDefRNA, ptr %53, i64 0, i32 5
  store ptr %125, ptr %126, align 8, !tbaa !248
  %127 = getelementptr inbounds %struct.StructDefRNA, ptr %76, i64 0, i32 5
  %128 = load ptr, ptr %127, align 8, !tbaa !217
  %129 = getelementptr inbounds %struct.PropertyDefRNA, ptr %53, i64 0, i32 6
  store ptr %128, ptr %129, align 8, !tbaa !249
  %130 = getelementptr inbounds %struct.PropertyDefRNA, ptr %53, i64 0, i32 7
  store ptr %88, ptr %130, align 8, !tbaa !244
  %131 = load ptr, ptr %4, align 8, !tbaa !250
  %132 = getelementptr inbounds %struct.PropertyDefRNA, ptr %53, i64 0, i32 8
  store ptr %131, ptr %132, align 8, !tbaa !226
  %133 = getelementptr inbounds %struct.PropertyDefRNA, ptr %53, i64 0, i32 9
  store i32 %114, ptr %133, align 8, !tbaa !245
  %134 = getelementptr inbounds %struct.DNAStructMember, ptr %4, i64 0, i32 3
  %135 = load i32, ptr %134, align 4, !tbaa !251
  %136 = getelementptr inbounds %struct.PropertyDefRNA, ptr %53, i64 0, i32 10
  store i32 %135, ptr %136, align 4, !tbaa !231
  br label %137

137:                                              ; preds = %103, %98, %105, %92, %52, %122, %107
  %138 = phi ptr [ %53, %122 ], [ null, %107 ], [ null, %52 ], [ null, %92 ], [ %53, %105 ], [ %53, %103 ], [ %53, %98 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #23
  ret ptr %138
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @RNA_property_typename(i32 noundef %0) local_unnamed_addr #5 {
  %2 = icmp ult i32 %0, 7
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = zext nneg i32 %0 to i64
  %5 = getelementptr inbounds [7 x ptr], ptr @switch.table.RNA_property_typename, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 8
  br label %7

7:                                                ; preds = %1, %3
  %8 = phi ptr [ %6, %3 ], [ @.str.267, %1 ]
  ret ptr %8
}

; Function Attrs: nounwind uwtable
define dso_local void @RNA_def_property_boolean_negative_sdna(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  tail call void @RNA_def_property_boolean_sdna(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3)
  %5 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %6 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !74
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !tbaa !57
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.159, ptr noundef nonnull @__func__.rna_find_struct_property_def) #26
  br label %52

11:                                               ; preds = %4, %11
  %12 = phi ptr [ %17, %11 ], [ getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 1, i32 1), %4 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !57, !nonnull !91, !noundef !91
  %14 = getelementptr inbounds %struct.StructDefRNA, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !83
  %16 = icmp eq ptr %15, %5
  %17 = getelementptr inbounds %struct.ContainerDefRNA, ptr %13, i64 0, i32 1
  br i1 %16, label %18, label %11

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.ContainerDefRNA, ptr %13, i64 0, i32 3, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !57
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %30, %18
  %23 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 1, i32 1), align 8, !tbaa !57
  %24 = icmp eq ptr %23, null
  br i1 %24, label %52, label %34

25:                                               ; preds = %18, %30
  %26 = phi ptr [ %32, %30 ], [ %20, %18 ]
  %27 = getelementptr inbounds %struct.PropertyDefRNA, ptr %26, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !132
  %29 = icmp eq ptr %28, %0
  br i1 %29, label %52, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.PropertyDefRNA, ptr %26, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !57
  %33 = icmp eq ptr %32, null
  br i1 %33, label %22, label %25, !llvm.loop !137

34:                                               ; preds = %22, %48
  %35 = phi ptr [ %50, %48 ], [ %23, %22 ]
  %36 = getelementptr inbounds %struct.ContainerDefRNA, ptr %35, i64 0, i32 3, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !57
  %38 = icmp eq ptr %37, null
  br i1 %38, label %48, label %39

39:                                               ; preds = %34, %44
  %40 = phi ptr [ %46, %44 ], [ %37, %34 ]
  %41 = getelementptr inbounds %struct.PropertyDefRNA, ptr %40, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !132
  %43 = icmp eq ptr %42, %0
  br i1 %43, label %52, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.PropertyDefRNA, ptr %40, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !57
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %39, !llvm.loop !138

48:                                               ; preds = %44, %34
  %49 = getelementptr inbounds %struct.ContainerDefRNA, ptr %35, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !57
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %34, !llvm.loop !139

52:                                               ; preds = %25, %48, %39, %8, %22
  %53 = phi ptr [ null, %8 ], [ null, %22 ], [ %40, %39 ], [ null, %48 ], [ %26, %25 ]
  %54 = icmp eq ptr %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.PropertyDefRNA, ptr %53, i64 0, i32 15
  store i32 1, ptr %56, align 8, !tbaa !252
  br label %57

57:                                               ; preds = %55, %52
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @RNA_def_property_enum_bitflag_sdna(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  tail call void @RNA_def_property_enum_sdna(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %4 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %5 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !74
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = load ptr, ptr @stderr, align 8, !tbaa !57
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.159, ptr noundef nonnull @__func__.rna_find_struct_property_def) #26
  br label %51

10:                                               ; preds = %3, %10
  %11 = phi ptr [ %16, %10 ], [ getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 1, i32 1), %3 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !57, !nonnull !91, !noundef !91
  %13 = getelementptr inbounds %struct.StructDefRNA, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !83
  %15 = icmp eq ptr %14, %4
  %16 = getelementptr inbounds %struct.ContainerDefRNA, ptr %12, i64 0, i32 1
  br i1 %15, label %17, label %10

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.ContainerDefRNA, ptr %12, i64 0, i32 3, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !57
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %29, %17
  %22 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 1, i32 1), align 8, !tbaa !57
  %23 = icmp eq ptr %22, null
  br i1 %23, label %51, label %33

24:                                               ; preds = %17, %29
  %25 = phi ptr [ %31, %29 ], [ %19, %17 ]
  %26 = getelementptr inbounds %struct.PropertyDefRNA, ptr %25, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !132
  %28 = icmp eq ptr %27, %0
  br i1 %28, label %51, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.PropertyDefRNA, ptr %25, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !57
  %32 = icmp eq ptr %31, null
  br i1 %32, label %21, label %24, !llvm.loop !137

33:                                               ; preds = %21, %47
  %34 = phi ptr [ %49, %47 ], [ %22, %21 ]
  %35 = getelementptr inbounds %struct.ContainerDefRNA, ptr %34, i64 0, i32 3, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !57
  %37 = icmp eq ptr %36, null
  br i1 %37, label %47, label %38

38:                                               ; preds = %33, %43
  %39 = phi ptr [ %45, %43 ], [ %36, %33 ]
  %40 = getelementptr inbounds %struct.PropertyDefRNA, ptr %39, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !132
  %42 = icmp eq ptr %41, %0
  br i1 %42, label %51, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.PropertyDefRNA, ptr %39, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !57
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %38, !llvm.loop !138

47:                                               ; preds = %43, %33
  %48 = getelementptr inbounds %struct.ContainerDefRNA, ptr %34, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !57
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %33, !llvm.loop !139

51:                                               ; preds = %24, %47, %38, %7, %21
  %52 = phi ptr [ null, %7 ], [ null, %21 ], [ %39, %38 ], [ null, %47 ], [ %25, %24 ]
  %53 = icmp eq ptr %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.PropertyDefRNA, ptr %52, i64 0, i32 16
  store i32 1, ptr %55, align 4, !tbaa !253
  br label %56

56:                                               ; preds = %54, %51
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @rna_find_sdna_member(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  br label %5

5:                                                ; preds = %122, %4
  %6 = phi ptr [ %1, %4 ], [ %129, %122 ]
  %7 = phi ptr [ %2, %4 ], [ %123, %122 ]
  %8 = phi i32 [ poison, %4 ], [ %130, %122 ]
  %9 = phi i1 [ false, %4 ], [ true, %122 ]
  %10 = tail call i32 @DNA_struct_find_nr(ptr noundef %0, ptr noundef %6) #23
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %131, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 9
  %14 = load ptr, ptr %13, align 8, !tbaa !254
  %15 = sext i32 %10 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !57
  %18 = getelementptr inbounds i16, ptr %17, i64 1
  %19 = load i16, ptr %18, align 2, !tbaa !40
  %20 = sext i16 %19 to i32
  %21 = icmp sgt i16 %19, 0
  br i1 %21, label %22, label %131

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !256
  br label %25

25:                                               ; preds = %22, %119
  %26 = phi ptr [ %17, %22 ], [ %44, %119 ]
  %27 = phi i32 [ 0, %22 ], [ %120, %119 ]
  %28 = getelementptr inbounds i16, ptr %26, i64 3
  %29 = load i16, ptr %28, align 2, !tbaa !40
  %30 = sext i16 %29 to i64
  %31 = getelementptr inbounds ptr, ptr %24, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !57
  br label %33

33:                                               ; preds = %33, %25
  %34 = phi ptr [ %32, %25 ], [ %37, %33 ]
  %35 = load i8, ptr %34, align 1, !tbaa !76
  %36 = icmp eq i8 %35, 42
  %37 = getelementptr inbounds i8, ptr %34, i64 1
  br i1 %36, label %33, label %38, !llvm.loop !257

38:                                               ; preds = %33, %38
  %39 = phi ptr [ %42, %38 ], [ %7, %33 ]
  %40 = load i8, ptr %39, align 1, !tbaa !76
  %41 = icmp eq i8 %40, 42
  %42 = getelementptr inbounds i8, ptr %39, i64 1
  br i1 %41, label %38, label %43, !llvm.loop !258

43:                                               ; preds = %38
  %44 = getelementptr inbounds i16, ptr %26, i64 2
  br label %45

45:                                               ; preds = %43, %65
  %46 = phi i64 [ 0, %43 ], [ %66, %65 ]
  %47 = getelementptr inbounds i8, ptr %34, i64 %46
  %48 = load i8, ptr %47, align 1, !tbaa !76
  %49 = icmp eq i8 %48, 91
  br i1 %49, label %50, label %59

50:                                               ; preds = %45
  %51 = getelementptr inbounds i8, ptr %39, i64 %46
  %52 = load i8, ptr %51, align 1, !tbaa !76
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %77, label %54

54:                                               ; preds = %50
  br i1 %49, label %55, label %59

55:                                               ; preds = %54
  %56 = getelementptr inbounds i8, ptr %39, i64 %46
  %57 = load i8, ptr %56, align 1, !tbaa !76
  %58 = icmp eq i8 %57, 91
  br i1 %58, label %77, label %59

59:                                               ; preds = %45, %55, %54
  %60 = icmp eq i8 %48, 0
  %61 = getelementptr inbounds i8, ptr %39, i64 %46
  %62 = load i8, ptr %61, align 1, !tbaa !76
  br i1 %60, label %67, label %63

63:                                               ; preds = %59
  %64 = icmp eq i8 %48, %62
  br i1 %64, label %65, label %77

65:                                               ; preds = %63
  %66 = add nuw i64 %46, 1
  br label %45, !llvm.loop !259

67:                                               ; preds = %59
  switch i8 %62, label %74 [
    i8 46, label %77
    i8 45, label %68
  ]

68:                                               ; preds = %67
  %69 = add i64 %46, 1
  %70 = and i64 %69, 4294967295
  %71 = getelementptr inbounds i8, ptr %39, i64 %70
  %72 = load i8, ptr %71, align 1, !tbaa !76
  %73 = icmp eq i8 %72, 62
  br i1 %73, label %77, label %74

74:                                               ; preds = %68, %67
  %75 = icmp eq i8 %48, %62
  %76 = zext i1 %75 to i32
  br label %77

77:                                               ; preds = %50, %55, %63, %67, %68, %74
  %78 = phi i32 [ %76, %74 ], [ 2, %67 ], [ 3, %68 ], [ 1, %50 ], [ 1, %55 ], [ 0, %63 ]
  switch i32 %78, label %119 [
    i32 1, label %79
    i32 2, label %107
    i32 3, label %113
  ]

79:                                               ; preds = %77
  %80 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 6
  %81 = load ptr, ptr %80, align 8, !tbaa !260
  %82 = load i16, ptr %44, align 2, !tbaa !40
  %83 = sext i16 %82 to i64
  %84 = getelementptr inbounds ptr, ptr %81, i64 %83
  %85 = load ptr, ptr %84, align 8, !tbaa !57
  store ptr %85, ptr %3, align 8, !tbaa !250
  %86 = getelementptr inbounds %struct.DNAStructMember, ptr %3, i64 0, i32 1
  store ptr %32, ptr %86, align 8, !tbaa !261
  %87 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %7, i32 91)
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %91

89:                                               ; preds = %79
  %90 = tail call i32 @DNA_elem_array_size(ptr noundef %32) #23
  br label %91

91:                                               ; preds = %79, %89
  %92 = phi i32 [ %90, %89 ], [ 0, %79 ]
  %93 = getelementptr inbounds %struct.DNAStructMember, ptr %3, i64 0, i32 2
  store i32 %92, ptr %93, align 8, !tbaa !246
  %94 = getelementptr inbounds %struct.DNAStructMember, ptr %3, i64 0, i32 3
  store i32 0, ptr %94, align 4, !tbaa !251
  %95 = load i8, ptr %32, align 1, !tbaa !76
  %96 = icmp eq i8 %95, 42
  br i1 %96, label %97, label %131

97:                                               ; preds = %91
  %98 = load i32, ptr %94, align 4, !tbaa !251
  br label %99

99:                                               ; preds = %97, %99
  %100 = phi i64 [ 0, %97 ], [ %103, %99 ]
  %101 = phi i32 [ %98, %97 ], [ %102, %99 ]
  %102 = add nsw i32 %101, 1
  store i32 %102, ptr %94, align 4, !tbaa !251
  %103 = add nuw nsw i64 %100, 1
  %104 = getelementptr inbounds i8, ptr %32, i64 %103
  %105 = load i8, ptr %104, align 1, !tbaa !76
  %106 = icmp eq i8 %105, 42
  br i1 %106, label %99, label %131, !llvm.loop !262

107:                                              ; preds = %77
  store ptr @.str.2, ptr %3, align 8, !tbaa !250
  %108 = getelementptr inbounds %struct.DNAStructMember, ptr %3, i64 0, i32 1
  store ptr %32, ptr %108, align 8, !tbaa !261
  %109 = getelementptr inbounds %struct.DNAStructMember, ptr %3, i64 0, i32 3
  store i32 0, ptr %109, align 4, !tbaa !251
  %110 = getelementptr inbounds %struct.DNAStructMember, ptr %3, i64 0, i32 2
  store i32 0, ptr %110, align 8, !tbaa !246
  %111 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %7, i32 46)
  %112 = getelementptr inbounds i8, ptr %111, i64 1
  br label %122

113:                                              ; preds = %77
  store ptr @.str.2, ptr %3, align 8, !tbaa !250
  %114 = getelementptr inbounds %struct.DNAStructMember, ptr %3, i64 0, i32 1
  store ptr %32, ptr %114, align 8, !tbaa !261
  %115 = getelementptr inbounds %struct.DNAStructMember, ptr %3, i64 0, i32 3
  store i32 0, ptr %115, align 4, !tbaa !251
  %116 = getelementptr inbounds %struct.DNAStructMember, ptr %3, i64 0, i32 2
  store i32 0, ptr %116, align 8, !tbaa !246
  %117 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) @.str.284) #24
  %118 = getelementptr inbounds i8, ptr %117, i64 2
  br label %122

119:                                              ; preds = %77
  %120 = add nuw nsw i32 %27, 1
  %121 = icmp eq i32 %120, %20
  br i1 %121, label %131, label %25, !llvm.loop !263

122:                                              ; preds = %107, %113
  %123 = phi ptr [ %118, %113 ], [ %112, %107 ]
  %124 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 6
  %125 = load ptr, ptr %124, align 8, !tbaa !260
  %126 = load i16, ptr %44, align 2, !tbaa !40
  %127 = sext i16 %126 to i64
  %128 = getelementptr inbounds ptr, ptr %125, i64 %127
  %129 = load ptr, ptr %128, align 8, !tbaa !57
  %130 = select i1 %9, i32 %8, i32 1
  br label %5

131:                                              ; preds = %119, %99, %12, %91, %5
  %132 = phi i32 [ 0, %5 ], [ 1, %91 ], [ 0, %12 ], [ 1, %99 ], [ 0, %119 ]
  %133 = select i1 %9, i32 %8, i32 %132
  ret i32 %133
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @RNA_def_property_translation_context(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #20 {
  %3 = icmp eq ptr %1, null
  %4 = select i1 %3, ptr @.str.67, ptr %1
  %5 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 8
  store ptr %4, ptr %5, align 8, !tbaa !203
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @RNA_def_property_editable_func(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #14 {
  %3 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !74
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = load ptr, ptr @stderr, align 8, !tbaa !57
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.207, ptr noundef nonnull @__func__.RNA_def_property_editable_func) #26
  br label %12

8:                                                ; preds = %2
  %9 = icmp eq ptr %1, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 17
  store ptr %1, ptr %11, align 8, !tbaa !264
  br label %12

12:                                               ; preds = %5, %10, %8
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @RNA_def_property_editable_array_func(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #14 {
  %3 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !74
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = load ptr, ptr @stderr, align 8, !tbaa !57
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.207, ptr noundef nonnull @__func__.RNA_def_property_editable_array_func) #26
  br label %12

8:                                                ; preds = %2
  %9 = icmp eq ptr %1, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 18
  store ptr %1, ptr %11, align 8, !tbaa !265
  br label %12

12:                                               ; preds = %5, %10, %8
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @RNA_def_property_update(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #14 {
  %4 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !74
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = load ptr, ptr @stderr, align 8, !tbaa !57
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.207, ptr noundef nonnull @__func__.RNA_def_property_update) #26
  br label %12

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 16
  store i32 %1, ptr %10, align 8, !tbaa !266
  %11 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 15
  store ptr %2, ptr %11, align 8, !tbaa !267
  br label %12

12:                                               ; preds = %9, %6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @RNA_def_property_update_runtime(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #20 {
  %3 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 15
  store ptr %1, ptr %3, align 8, !tbaa !267
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @RNA_def_property_dynamic_array_funcs(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #14 {
  %3 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !74
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = load ptr, ptr @stderr, align 8, !tbaa !57
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.207, ptr noundef nonnull @__func__.RNA_def_property_dynamic_array_funcs) #26
  br label %20

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !51
  %11 = and i32 %10, 131072
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = load ptr, ptr @stderr, align 8, !tbaa !57
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull @.str.253, ptr noundef nonnull @__func__.RNA_def_property_dynamic_array_funcs) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %20

16:                                               ; preds = %8
  %17 = icmp eq ptr %1, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 11
  store ptr %1, ptr %19, align 8, !tbaa !268
  br label %20

20:                                               ; preds = %5, %13, %18, %16
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @RNA_def_property_boolean_funcs(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #14 {
  %4 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %5 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !74
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = load ptr, ptr @stderr, align 8, !tbaa !57
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.207, ptr noundef nonnull @__func__.RNA_def_property_boolean_funcs) #26
  br label %40

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !96
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %33

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 12
  %16 = load i32, ptr %15, align 8, !tbaa !206
  %17 = icmp eq i32 %16, 0
  %18 = icmp eq ptr %1, null
  br i1 %17, label %26, label %19

19:                                               ; preds = %14
  br i1 %18, label %22, label %20

20:                                               ; preds = %19
  %21 = getelementptr inbounds %struct.BoolPropertyRNA, ptr %0, i64 0, i32 3
  store ptr %1, ptr %21, align 8, !tbaa !269
  br label %22

22:                                               ; preds = %20, %19
  %23 = icmp eq ptr %2, null
  br i1 %23, label %40, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.BoolPropertyRNA, ptr %0, i64 0, i32 4
  store ptr %2, ptr %25, align 8, !tbaa !270
  br label %40

26:                                               ; preds = %14
  br i1 %18, label %29, label %27

27:                                               ; preds = %26
  %28 = getelementptr inbounds %struct.BoolPropertyRNA, ptr %0, i64 0, i32 1
  store ptr %1, ptr %28, align 8, !tbaa !271
  br label %29

29:                                               ; preds = %27, %26
  %30 = icmp eq ptr %2, null
  br i1 %30, label %40, label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.BoolPropertyRNA, ptr %0, i64 0, i32 2
  store ptr %2, ptr %32, align 8, !tbaa !272
  br label %40

33:                                               ; preds = %10
  %34 = load ptr, ptr @stderr, align 8, !tbaa !57
  %35 = getelementptr inbounds %struct.StructRNA, ptr %4, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !71
  %37 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !101
  %39 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %34, ptr noundef nonnull @.str.229, ptr noundef nonnull @__func__.RNA_def_property_boolean_funcs, ptr noundef %36, ptr noundef %38) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %40

40:                                               ; preds = %33, %29, %31, %22, %24, %7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @RNA_def_property_boolean_funcs_runtime(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #11 {
  %4 = icmp ne ptr %1, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.BoolPropertyRNA, ptr %0, i64 0, i32 5
  store ptr %1, ptr %6, align 8, !tbaa !273
  br label %7

7:                                                ; preds = %5, %3
  %8 = icmp ne ptr %2, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.BoolPropertyRNA, ptr %0, i64 0, i32 6
  store ptr %2, ptr %10, align 8, !tbaa !274
  br label %11

11:                                               ; preds = %9, %7
  %12 = or i1 %4, %8
  br i1 %12, label %13, label %19

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 4
  %15 = load i32, ptr %14, align 8, !tbaa !51
  %16 = and i32 %15, -1025
  store i32 %16, ptr %14, align 8, !tbaa !51
  br i1 %8, label %19, label %17

17:                                               ; preds = %13
  %18 = and i32 %15, -1026
  store i32 %18, ptr %14, align 8, !tbaa !51
  br label %19

19:                                               ; preds = %13, %17, %11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @RNA_def_property_boolean_array_funcs_runtime(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #11 {
  %4 = icmp ne ptr %1, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.BoolPropertyRNA, ptr %0, i64 0, i32 7
  store ptr %1, ptr %6, align 8, !tbaa !275
  br label %7

7:                                                ; preds = %5, %3
  %8 = icmp ne ptr %2, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.BoolPropertyRNA, ptr %0, i64 0, i32 8
  store ptr %2, ptr %10, align 8, !tbaa !276
  br label %11

11:                                               ; preds = %9, %7
  %12 = or i1 %4, %8
  br i1 %12, label %13, label %19

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 4
  %15 = load i32, ptr %14, align 8, !tbaa !51
  %16 = and i32 %15, -1025
  store i32 %16, ptr %14, align 8, !tbaa !51
  br i1 %8, label %19, label %17

17:                                               ; preds = %13
  %18 = and i32 %15, -1026
  store i32 %18, ptr %14, align 8, !tbaa !51
  br label %19

19:                                               ; preds = %13, %17, %11
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @RNA_def_property_int_funcs(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #14 {
  %5 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %6 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !74
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !tbaa !57
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.207, ptr noundef nonnull @__func__.RNA_def_property_int_funcs) #26
  br label %47

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 9
  %13 = load i32, ptr %12, align 8, !tbaa !96
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %40

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 12
  %17 = load i32, ptr %16, align 8, !tbaa !206
  %18 = icmp eq i32 %17, 0
  %19 = icmp eq ptr %1, null
  br i1 %18, label %27, label %20

20:                                               ; preds = %15
  br i1 %19, label %23, label %21

21:                                               ; preds = %20
  %22 = getelementptr inbounds %struct.IntPropertyRNA, ptr %0, i64 0, i32 3
  store ptr %1, ptr %22, align 8, !tbaa !277
  br label %23

23:                                               ; preds = %21, %20
  %24 = icmp eq ptr %2, null
  br i1 %24, label %36, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.IntPropertyRNA, ptr %0, i64 0, i32 4
  br label %34

27:                                               ; preds = %15
  br i1 %19, label %30, label %28

28:                                               ; preds = %27
  %29 = getelementptr inbounds %struct.IntPropertyRNA, ptr %0, i64 0, i32 1
  store ptr %1, ptr %29, align 8, !tbaa !278
  br label %30

30:                                               ; preds = %28, %27
  %31 = icmp eq ptr %2, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.IntPropertyRNA, ptr %0, i64 0, i32 2
  br label %34

34:                                               ; preds = %25, %32
  %35 = phi ptr [ %33, %32 ], [ %26, %25 ]
  store ptr %2, ptr %35, align 8, !tbaa !57
  br label %36

36:                                               ; preds = %34, %30, %23
  %37 = icmp eq ptr %3, null
  br i1 %37, label %47, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.IntPropertyRNA, ptr %0, i64 0, i32 5
  store ptr %3, ptr %39, align 8, !tbaa !279
  br label %47

40:                                               ; preds = %11
  %41 = load ptr, ptr @stderr, align 8, !tbaa !57
  %42 = getelementptr inbounds %struct.StructRNA, ptr %5, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !71
  %44 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !101
  %46 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %41, ptr noundef nonnull @.str.230, ptr noundef nonnull @__func__.RNA_def_property_int_funcs, ptr noundef %43, ptr noundef %45) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %47

47:                                               ; preds = %40, %38, %36, %8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @RNA_def_property_int_funcs_runtime(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #11 {
  %5 = icmp ne ptr %1, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.IntPropertyRNA, ptr %0, i64 0, i32 6
  store ptr %1, ptr %7, align 8, !tbaa !280
  br label %8

8:                                                ; preds = %6, %4
  %9 = icmp ne ptr %2, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.IntPropertyRNA, ptr %0, i64 0, i32 7
  store ptr %2, ptr %11, align 8, !tbaa !281
  br label %12

12:                                               ; preds = %10, %8
  %13 = icmp eq ptr %3, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.IntPropertyRNA, ptr %0, i64 0, i32 10
  store ptr %3, ptr %15, align 8, !tbaa !282
  br label %16

16:                                               ; preds = %14, %12
  %17 = or i1 %5, %9
  br i1 %17, label %18, label %24

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 4
  %20 = load i32, ptr %19, align 8, !tbaa !51
  %21 = and i32 %20, -1025
  store i32 %21, ptr %19, align 8, !tbaa !51
  br i1 %9, label %24, label %22

22:                                               ; preds = %18
  %23 = and i32 %20, -1026
  store i32 %23, ptr %19, align 8, !tbaa !51
  br label %24

24:                                               ; preds = %18, %22, %16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @RNA_def_property_int_array_funcs_runtime(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #11 {
  %5 = icmp ne ptr %1, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.IntPropertyRNA, ptr %0, i64 0, i32 8
  store ptr %1, ptr %7, align 8, !tbaa !283
  br label %8

8:                                                ; preds = %6, %4
  %9 = icmp ne ptr %2, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.IntPropertyRNA, ptr %0, i64 0, i32 9
  store ptr %2, ptr %11, align 8, !tbaa !284
  br label %12

12:                                               ; preds = %10, %8
  %13 = icmp eq ptr %3, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.IntPropertyRNA, ptr %0, i64 0, i32 10
  store ptr %3, ptr %15, align 8, !tbaa !282
  br label %16

16:                                               ; preds = %14, %12
  %17 = or i1 %5, %9
  br i1 %17, label %18, label %24

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 4
  %20 = load i32, ptr %19, align 8, !tbaa !51
  %21 = and i32 %20, -1025
  store i32 %21, ptr %19, align 8, !tbaa !51
  br i1 %9, label %24, label %22

22:                                               ; preds = %18
  %23 = and i32 %20, -1026
  store i32 %23, ptr %19, align 8, !tbaa !51
  br label %24

24:                                               ; preds = %18, %22, %16
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @RNA_def_property_float_funcs(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #14 {
  %5 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %6 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !74
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !tbaa !57
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.207, ptr noundef nonnull @__func__.RNA_def_property_float_funcs) #26
  br label %47

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 9
  %13 = load i32, ptr %12, align 8, !tbaa !96
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %40

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 12
  %17 = load i32, ptr %16, align 8, !tbaa !206
  %18 = icmp eq i32 %17, 0
  %19 = icmp eq ptr %1, null
  br i1 %18, label %27, label %20

20:                                               ; preds = %15
  br i1 %19, label %23, label %21

21:                                               ; preds = %20
  %22 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %0, i64 0, i32 3
  store ptr %1, ptr %22, align 8, !tbaa !285
  br label %23

23:                                               ; preds = %21, %20
  %24 = icmp eq ptr %2, null
  br i1 %24, label %36, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %0, i64 0, i32 4
  br label %34

27:                                               ; preds = %15
  br i1 %19, label %30, label %28

28:                                               ; preds = %27
  %29 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %0, i64 0, i32 1
  store ptr %1, ptr %29, align 8, !tbaa !286
  br label %30

30:                                               ; preds = %28, %27
  %31 = icmp eq ptr %2, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %0, i64 0, i32 2
  br label %34

34:                                               ; preds = %25, %32
  %35 = phi ptr [ %33, %32 ], [ %26, %25 ]
  store ptr %2, ptr %35, align 8, !tbaa !57
  br label %36

36:                                               ; preds = %34, %30, %23
  %37 = icmp eq ptr %3, null
  br i1 %37, label %47, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %0, i64 0, i32 5
  store ptr %3, ptr %39, align 8, !tbaa !287
  br label %47

40:                                               ; preds = %11
  %41 = load ptr, ptr @stderr, align 8, !tbaa !57
  %42 = getelementptr inbounds %struct.StructRNA, ptr %5, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !71
  %44 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !101
  %46 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %41, ptr noundef nonnull @.str.231, ptr noundef nonnull @__func__.RNA_def_property_float_funcs, ptr noundef %43, ptr noundef %45) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %47

47:                                               ; preds = %40, %38, %36, %8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @RNA_def_property_float_funcs_runtime(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #11 {
  %5 = icmp ne ptr %1, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %0, i64 0, i32 6
  store ptr %1, ptr %7, align 8, !tbaa !288
  br label %8

8:                                                ; preds = %6, %4
  %9 = icmp ne ptr %2, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %0, i64 0, i32 7
  store ptr %2, ptr %11, align 8, !tbaa !289
  br label %12

12:                                               ; preds = %10, %8
  %13 = icmp eq ptr %3, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %0, i64 0, i32 10
  store ptr %3, ptr %15, align 8, !tbaa !290
  br label %16

16:                                               ; preds = %14, %12
  %17 = or i1 %5, %9
  br i1 %17, label %18, label %24

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 4
  %20 = load i32, ptr %19, align 8, !tbaa !51
  %21 = and i32 %20, -1025
  store i32 %21, ptr %19, align 8, !tbaa !51
  br i1 %9, label %24, label %22

22:                                               ; preds = %18
  %23 = and i32 %20, -1026
  store i32 %23, ptr %19, align 8, !tbaa !51
  br label %24

24:                                               ; preds = %18, %22, %16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @RNA_def_property_float_array_funcs_runtime(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #11 {
  %5 = icmp ne ptr %1, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %0, i64 0, i32 8
  store ptr %1, ptr %7, align 8, !tbaa !291
  br label %8

8:                                                ; preds = %6, %4
  %9 = icmp ne ptr %2, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %0, i64 0, i32 9
  store ptr %2, ptr %11, align 8, !tbaa !292
  br label %12

12:                                               ; preds = %10, %8
  %13 = icmp eq ptr %3, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %0, i64 0, i32 10
  store ptr %3, ptr %15, align 8, !tbaa !290
  br label %16

16:                                               ; preds = %14, %12
  %17 = or i1 %5, %9
  br i1 %17, label %18, label %24

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 4
  %20 = load i32, ptr %19, align 8, !tbaa !51
  %21 = and i32 %20, -1025
  store i32 %21, ptr %19, align 8, !tbaa !51
  br i1 %9, label %24, label %22

22:                                               ; preds = %18
  %23 = and i32 %20, -1026
  store i32 %23, ptr %19, align 8, !tbaa !51
  br label %24

24:                                               ; preds = %18, %22, %16
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @RNA_def_property_enum_funcs(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #14 {
  %5 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %6 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !74
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !tbaa !57
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.207, ptr noundef nonnull @__func__.RNA_def_property_enum_funcs) #26
  br label %34

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 9
  %13 = load i32, ptr %12, align 8, !tbaa !96
  %14 = icmp eq i32 %13, 4
  br i1 %14, label %15, label %27

15:                                               ; preds = %11
  %16 = icmp eq ptr %1, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.EnumPropertyRNA, ptr %0, i64 0, i32 1
  store ptr %1, ptr %18, align 8, !tbaa !293
  br label %19

19:                                               ; preds = %17, %15
  %20 = icmp eq ptr %2, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.EnumPropertyRNA, ptr %0, i64 0, i32 2
  store ptr %2, ptr %22, align 8, !tbaa !294
  br label %23

23:                                               ; preds = %21, %19
  %24 = icmp eq ptr %3, null
  br i1 %24, label %34, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.EnumPropertyRNA, ptr %0, i64 0, i32 3
  store ptr %3, ptr %26, align 8, !tbaa !295
  br label %34

27:                                               ; preds = %11
  %28 = load ptr, ptr @stderr, align 8, !tbaa !57
  %29 = getelementptr inbounds %struct.StructRNA, ptr %5, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !71
  %31 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !101
  %33 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef nonnull @.str.236, ptr noundef nonnull @__func__.RNA_def_property_enum_funcs, ptr noundef %30, ptr noundef %32) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %34

34:                                               ; preds = %27, %25, %23, %8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @RNA_def_property_enum_funcs_runtime(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #11 {
  %5 = icmp ne ptr %1, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.EnumPropertyRNA, ptr %0, i64 0, i32 4
  store ptr %1, ptr %7, align 8, !tbaa !296
  br label %8

8:                                                ; preds = %6, %4
  %9 = icmp ne ptr %2, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.EnumPropertyRNA, ptr %0, i64 0, i32 5
  store ptr %2, ptr %11, align 8, !tbaa !297
  br label %12

12:                                               ; preds = %10, %8
  %13 = icmp eq ptr %3, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.EnumPropertyRNA, ptr %0, i64 0, i32 3
  store ptr %3, ptr %15, align 8, !tbaa !295
  br label %16

16:                                               ; preds = %14, %12
  %17 = or i1 %5, %9
  br i1 %17, label %18, label %24

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 4
  %20 = load i32, ptr %19, align 8, !tbaa !51
  %21 = and i32 %20, -1025
  store i32 %21, ptr %19, align 8, !tbaa !51
  br i1 %9, label %24, label %22

22:                                               ; preds = %18
  %23 = and i32 %20, -1026
  store i32 %23, ptr %19, align 8, !tbaa !51
  br label %24

24:                                               ; preds = %18, %22, %16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @RNA_def_property_enum_py_data(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #20 {
  %3 = getelementptr inbounds %struct.EnumPropertyRNA, ptr %0, i64 0, i32 6
  store ptr %1, ptr %3, align 8, !tbaa !298
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @RNA_def_property_string_funcs(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #14 {
  %5 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %6 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !74
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !tbaa !57
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.207, ptr noundef nonnull @__func__.RNA_def_property_string_funcs) #26
  br label %34

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 9
  %13 = load i32, ptr %12, align 8, !tbaa !96
  %14 = icmp eq i32 %13, 3
  br i1 %14, label %15, label %27

15:                                               ; preds = %11
  %16 = icmp eq ptr %1, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.StringPropertyRNA, ptr %0, i64 0, i32 1
  store ptr %1, ptr %18, align 8, !tbaa !299
  br label %19

19:                                               ; preds = %17, %15
  %20 = icmp eq ptr %2, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.StringPropertyRNA, ptr %0, i64 0, i32 2
  store ptr %2, ptr %22, align 8, !tbaa !300
  br label %23

23:                                               ; preds = %21, %19
  %24 = icmp eq ptr %3, null
  br i1 %24, label %34, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.StringPropertyRNA, ptr %0, i64 0, i32 3
  store ptr %3, ptr %26, align 8, !tbaa !301
  br label %34

27:                                               ; preds = %11
  %28 = load ptr, ptr @stderr, align 8, !tbaa !57
  %29 = getelementptr inbounds %struct.StructRNA, ptr %5, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !71
  %31 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !101
  %33 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef nonnull @.str.228, ptr noundef nonnull @__func__.RNA_def_property_string_funcs, ptr noundef %30, ptr noundef %32) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %34

34:                                               ; preds = %27, %25, %23, %8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @RNA_def_property_string_funcs_runtime(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #11 {
  %5 = icmp ne ptr %1, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.StringPropertyRNA, ptr %0, i64 0, i32 4
  store ptr %1, ptr %7, align 8, !tbaa !302
  br label %8

8:                                                ; preds = %6, %4
  %9 = icmp eq ptr %2, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.StringPropertyRNA, ptr %0, i64 0, i32 5
  store ptr %2, ptr %11, align 8, !tbaa !303
  br label %12

12:                                               ; preds = %10, %8
  %13 = icmp ne ptr %3, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.StringPropertyRNA, ptr %0, i64 0, i32 6
  store ptr %3, ptr %15, align 8, !tbaa !304
  br label %16

16:                                               ; preds = %14, %12
  %17 = or i1 %5, %13
  br i1 %17, label %18, label %24

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 4
  %20 = load i32, ptr %19, align 8, !tbaa !51
  %21 = and i32 %20, -1025
  store i32 %21, ptr %19, align 8, !tbaa !51
  br i1 %13, label %24, label %22

22:                                               ; preds = %18
  %23 = and i32 %20, -1026
  store i32 %23, ptr %19, align 8, !tbaa !51
  br label %24

24:                                               ; preds = %18, %22, %16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @RNA_def_property_srna(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #20 {
  %3 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 21
  store ptr %1, ptr %3, align 8, !tbaa !305
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @RNA_def_py_data(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #20 {
  %3 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 22
  store ptr %1, ptr %3, align 8, !tbaa !163
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @RNA_def_boolean(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call ptr @RNA_def_property(ptr noundef %0, ptr noundef %1, i32 noundef 0, i32 noundef 0)
  %7 = getelementptr inbounds %struct.PropertyRNA, ptr %6, i64 0, i32 9
  %8 = load i32, ptr %7, align 8, !tbaa !96
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.BoolPropertyRNA, ptr %6, i64 0, i32 9
  store i32 %2, ptr %11, align 8, !tbaa !238
  br label %20

12:                                               ; preds = %5
  %13 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %14 = load ptr, ptr @stderr, align 8, !tbaa !57
  %15 = getelementptr inbounds %struct.StructRNA, ptr %13, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !71
  %17 = getelementptr inbounds %struct.PropertyRNA, ptr %6, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !101
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull @.str.229, ptr noundef nonnull @__func__.RNA_def_property_boolean_default, ptr noundef %16, ptr noundef %18) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %20

20:                                               ; preds = %10, %12
  %21 = getelementptr inbounds %struct.PropertyRNA, ptr %6, i64 0, i32 5
  store ptr %3, ptr %21, align 8, !tbaa !94
  %22 = getelementptr inbounds %struct.PropertyRNA, ptr %6, i64 0, i32 6
  store ptr %4, ptr %22, align 8, !tbaa !95
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define dso_local ptr @RNA_def_boolean_array(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = tail call ptr @RNA_def_property(ptr noundef %0, ptr noundef %1, i32 noundef 0, i32 noundef 0)
  %8 = icmp eq i32 %2, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @RNA_def_property_array(ptr noundef %7, i32 noundef %2)
  br label %10

10:                                               ; preds = %9, %6
  %11 = icmp eq ptr %3, null
  br i1 %11, label %26, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.PropertyRNA, ptr %7, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !96
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.BoolPropertyRNA, ptr %7, i64 0, i32 10
  store ptr %3, ptr %17, align 8, !tbaa !166
  br label %26

18:                                               ; preds = %12
  %19 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %20 = load ptr, ptr @stderr, align 8, !tbaa !57
  %21 = getelementptr inbounds %struct.StructRNA, ptr %19, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !71
  %23 = getelementptr inbounds %struct.PropertyRNA, ptr %7, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !101
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str.229, ptr noundef nonnull @__func__.RNA_def_property_boolean_array_default, ptr noundef %22, ptr noundef %24) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %26

26:                                               ; preds = %18, %16, %10
  %27 = getelementptr inbounds %struct.PropertyRNA, ptr %7, i64 0, i32 5
  store ptr %4, ptr %27, align 8, !tbaa !94
  %28 = getelementptr inbounds %struct.PropertyRNA, ptr %7, i64 0, i32 6
  store ptr %5, ptr %28, align 8, !tbaa !95
  ret ptr %7
}

; Function Attrs: nounwind uwtable
define dso_local ptr @RNA_def_boolean_layer(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = tail call ptr @RNA_def_property(ptr noundef %0, ptr noundef %1, i32 noundef 0, i32 noundef 40)
  %8 = icmp eq i32 %2, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @RNA_def_property_array(ptr noundef %7, i32 noundef %2)
  br label %10

10:                                               ; preds = %9, %6
  %11 = icmp eq ptr %3, null
  br i1 %11, label %26, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.PropertyRNA, ptr %7, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !96
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.BoolPropertyRNA, ptr %7, i64 0, i32 10
  store ptr %3, ptr %17, align 8, !tbaa !166
  br label %26

18:                                               ; preds = %12
  %19 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %20 = load ptr, ptr @stderr, align 8, !tbaa !57
  %21 = getelementptr inbounds %struct.StructRNA, ptr %19, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !71
  %23 = getelementptr inbounds %struct.PropertyRNA, ptr %7, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !101
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str.229, ptr noundef nonnull @__func__.RNA_def_property_boolean_array_default, ptr noundef %22, ptr noundef %24) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %26

26:                                               ; preds = %18, %16, %10
  %27 = getelementptr inbounds %struct.PropertyRNA, ptr %7, i64 0, i32 5
  store ptr %4, ptr %27, align 8, !tbaa !94
  %28 = getelementptr inbounds %struct.PropertyRNA, ptr %7, i64 0, i32 6
  store ptr %5, ptr %28, align 8, !tbaa !95
  ret ptr %7
}

; Function Attrs: nounwind uwtable
define dso_local ptr @RNA_def_boolean_layer_member(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = tail call ptr @RNA_def_property(ptr noundef %0, ptr noundef %1, i32 noundef 0, i32 noundef 41)
  %8 = icmp eq i32 %2, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @RNA_def_property_array(ptr noundef %7, i32 noundef %2)
  br label %10

10:                                               ; preds = %9, %6
  %11 = icmp eq ptr %3, null
  br i1 %11, label %26, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.PropertyRNA, ptr %7, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !96
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.BoolPropertyRNA, ptr %7, i64 0, i32 10
  store ptr %3, ptr %17, align 8, !tbaa !166
  br label %26

18:                                               ; preds = %12
  %19 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %20 = load ptr, ptr @stderr, align 8, !tbaa !57
  %21 = getelementptr inbounds %struct.StructRNA, ptr %19, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !71
  %23 = getelementptr inbounds %struct.PropertyRNA, ptr %7, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !101
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str.229, ptr noundef nonnull @__func__.RNA_def_property_boolean_array_default, ptr noundef %22, ptr noundef %24) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %26

26:                                               ; preds = %18, %16, %10
  %27 = getelementptr inbounds %struct.PropertyRNA, ptr %7, i64 0, i32 5
  store ptr %4, ptr %27, align 8, !tbaa !94
  %28 = getelementptr inbounds %struct.PropertyRNA, ptr %7, i64 0, i32 6
  store ptr %5, ptr %28, align 8, !tbaa !95
  ret ptr %7
}

; Function Attrs: nounwind uwtable
define dso_local ptr @RNA_def_boolean_vector(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = tail call ptr @RNA_def_property(ptr noundef %0, ptr noundef %1, i32 noundef 0, i32 noundef 29)
  %8 = icmp eq i32 %2, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @RNA_def_property_array(ptr noundef %7, i32 noundef %2)
  br label %10

10:                                               ; preds = %9, %6
  %11 = icmp eq ptr %3, null
  br i1 %11, label %26, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.PropertyRNA, ptr %7, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !96
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.BoolPropertyRNA, ptr %7, i64 0, i32 10
  store ptr %3, ptr %17, align 8, !tbaa !166
  br label %26

18:                                               ; preds = %12
  %19 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %20 = load ptr, ptr @stderr, align 8, !tbaa !57
  %21 = getelementptr inbounds %struct.StructRNA, ptr %19, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !71
  %23 = getelementptr inbounds %struct.PropertyRNA, ptr %7, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !101
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str.229, ptr noundef nonnull @__func__.RNA_def_property_boolean_array_default, ptr noundef %22, ptr noundef %24) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %26

26:                                               ; preds = %18, %16, %10
  %27 = getelementptr inbounds %struct.PropertyRNA, ptr %7, i64 0, i32 5
  store ptr %4, ptr %27, align 8, !tbaa !94
  %28 = getelementptr inbounds %struct.PropertyRNA, ptr %7, i64 0, i32 6
  store ptr %5, ptr %28, align 8, !tbaa !95
  ret ptr %7
}

; Function Attrs: nounwind uwtable
define dso_local ptr @RNA_def_int(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
  %10 = tail call ptr @RNA_def_property(ptr noundef %0, ptr noundef %1, i32 noundef 1, i32 noundef 0)
  %11 = getelementptr inbounds %struct.PropertyRNA, ptr %10, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !96
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.IntPropertyRNA, ptr %10, i64 0, i32 16
  store i32 %2, ptr %15, align 4, !tbaa !239
  br label %24

16:                                               ; preds = %9
  %17 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %18 = load ptr, ptr @stderr, align 8, !tbaa !57
  %19 = getelementptr inbounds %struct.StructRNA, ptr %17, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !71
  %21 = getelementptr inbounds %struct.PropertyRNA, ptr %10, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !101
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef nonnull @.str.230, ptr noundef nonnull @__func__.RNA_def_property_int_default, ptr noundef %20, ptr noundef %22) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %24

24:                                               ; preds = %14, %16
  %25 = icmp eq i32 %3, %4
  br i1 %25, label %48, label %26

26:                                               ; preds = %24
  %27 = load i32, ptr %11, align 8, !tbaa !96
  switch i32 %27, label %40 [
    i32 1, label %28
    i32 2, label %33
  ]

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.IntPropertyRNA, ptr %10, i64 0, i32 13
  store i32 %3, ptr %29, align 8, !tbaa !189
  %30 = getelementptr inbounds %struct.IntPropertyRNA, ptr %10, i64 0, i32 14
  store i32 %4, ptr %30, align 4, !tbaa !190
  %31 = getelementptr inbounds %struct.IntPropertyRNA, ptr %10, i64 0, i32 11
  store i32 %3, ptr %31, align 8, !tbaa !191
  %32 = getelementptr inbounds %struct.IntPropertyRNA, ptr %10, i64 0, i32 12
  store i32 %4, ptr %32, align 4, !tbaa !192
  br label %48

33:                                               ; preds = %26
  %34 = sitofp i32 %3 to float
  %35 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %10, i64 0, i32 13
  store float %34, ptr %35, align 8, !tbaa !194
  %36 = sitofp i32 %4 to float
  %37 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %10, i64 0, i32 14
  store float %36, ptr %37, align 4, !tbaa !195
  %38 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %10, i64 0, i32 11
  store float %34, ptr %38, align 8, !tbaa !196
  %39 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %10, i64 0, i32 12
  store float %36, ptr %39, align 4, !tbaa !197
  br label %48

40:                                               ; preds = %26
  %41 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %42 = load ptr, ptr @stderr, align 8, !tbaa !57
  %43 = getelementptr inbounds %struct.StructRNA, ptr %41, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !71
  %45 = getelementptr inbounds %struct.PropertyRNA, ptr %10, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !101
  %47 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %42, ptr noundef nonnull @.str.225, ptr noundef nonnull @__func__.RNA_def_property_range, ptr noundef %44, ptr noundef %46) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %48

48:                                               ; preds = %40, %33, %28, %24
  %49 = getelementptr inbounds %struct.PropertyRNA, ptr %10, i64 0, i32 5
  store ptr %5, ptr %49, align 8, !tbaa !94
  %50 = getelementptr inbounds %struct.PropertyRNA, ptr %10, i64 0, i32 6
  store ptr %6, ptr %50, align 8, !tbaa !95
  %51 = load i32, ptr %11, align 8, !tbaa !96
  switch i32 %51, label %63 [
    i32 1, label %52
    i32 2, label %56
  ]

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.IntPropertyRNA, ptr %10, i64 0, i32 11
  store i32 %7, ptr %53, align 8, !tbaa !191
  %54 = getelementptr inbounds %struct.IntPropertyRNA, ptr %10, i64 0, i32 12
  store i32 %8, ptr %54, align 4, !tbaa !192
  %55 = getelementptr inbounds %struct.IntPropertyRNA, ptr %10, i64 0, i32 15
  store i32 1, ptr %55, align 8, !tbaa !193
  br label %71

56:                                               ; preds = %48
  %57 = sitofp i32 %7 to float
  %58 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %10, i64 0, i32 11
  store float %57, ptr %58, align 8, !tbaa !196
  %59 = sitofp i32 %8 to float
  %60 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %10, i64 0, i32 12
  store float %59, ptr %60, align 4, !tbaa !197
  %61 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %10, i64 0, i32 15
  store float 1.000000e+00, ptr %61, align 8, !tbaa !198
  %62 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %10, i64 0, i32 16
  store i32 3, ptr %62, align 4, !tbaa !199
  br label %71

63:                                               ; preds = %48
  %64 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %65 = load ptr, ptr @stderr, align 8, !tbaa !57
  %66 = getelementptr inbounds %struct.StructRNA, ptr %64, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !71
  %68 = getelementptr inbounds %struct.PropertyRNA, ptr %10, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !101
  %70 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %65, ptr noundef nonnull @.str.224, ptr noundef nonnull @__func__.RNA_def_property_ui_range, ptr noundef %67, ptr noundef %69) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %71

71:                                               ; preds = %52, %56, %63
  ret ptr %10
}

; Function Attrs: nounwind uwtable
define dso_local ptr @RNA_def_int_vector(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #0 {
  %11 = tail call ptr @RNA_def_property(ptr noundef %0, ptr noundef %1, i32 noundef 1, i32 noundef 29)
  %12 = icmp eq i32 %2, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  tail call void @RNA_def_property_array(ptr noundef %11, i32 noundef %2)
  br label %14

14:                                               ; preds = %13, %10
  %15 = icmp eq ptr %3, null
  br i1 %15, label %30, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.PropertyRNA, ptr %11, i64 0, i32 9
  %18 = load i32, ptr %17, align 8, !tbaa !96
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.IntPropertyRNA, ptr %11, i64 0, i32 17
  store ptr %3, ptr %21, align 8, !tbaa !168
  br label %30

22:                                               ; preds = %16
  %23 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %24 = load ptr, ptr @stderr, align 8, !tbaa !57
  %25 = getelementptr inbounds %struct.StructRNA, ptr %23, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !71
  %27 = getelementptr inbounds %struct.PropertyRNA, ptr %11, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !101
  %29 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef nonnull @.str.230, ptr noundef nonnull @__func__.RNA_def_property_int_array_default, ptr noundef %26, ptr noundef %28) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %30

30:                                               ; preds = %22, %20, %14
  %31 = icmp eq i32 %4, %5
  br i1 %31, label %55, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.PropertyRNA, ptr %11, i64 0, i32 9
  %34 = load i32, ptr %33, align 8, !tbaa !96
  switch i32 %34, label %47 [
    i32 1, label %35
    i32 2, label %40
  ]

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.IntPropertyRNA, ptr %11, i64 0, i32 13
  store i32 %4, ptr %36, align 8, !tbaa !189
  %37 = getelementptr inbounds %struct.IntPropertyRNA, ptr %11, i64 0, i32 14
  store i32 %5, ptr %37, align 4, !tbaa !190
  %38 = getelementptr inbounds %struct.IntPropertyRNA, ptr %11, i64 0, i32 11
  store i32 %4, ptr %38, align 8, !tbaa !191
  %39 = getelementptr inbounds %struct.IntPropertyRNA, ptr %11, i64 0, i32 12
  store i32 %5, ptr %39, align 4, !tbaa !192
  br label %55

40:                                               ; preds = %32
  %41 = sitofp i32 %4 to float
  %42 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %11, i64 0, i32 13
  store float %41, ptr %42, align 8, !tbaa !194
  %43 = sitofp i32 %5 to float
  %44 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %11, i64 0, i32 14
  store float %43, ptr %44, align 4, !tbaa !195
  %45 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %11, i64 0, i32 11
  store float %41, ptr %45, align 8, !tbaa !196
  %46 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %11, i64 0, i32 12
  store float %43, ptr %46, align 4, !tbaa !197
  br label %55

47:                                               ; preds = %32
  %48 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %49 = load ptr, ptr @stderr, align 8, !tbaa !57
  %50 = getelementptr inbounds %struct.StructRNA, ptr %48, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !71
  %52 = getelementptr inbounds %struct.PropertyRNA, ptr %11, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !101
  %54 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %49, ptr noundef nonnull @.str.225, ptr noundef nonnull @__func__.RNA_def_property_range, ptr noundef %51, ptr noundef %53) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %55

55:                                               ; preds = %47, %40, %35, %30
  %56 = getelementptr inbounds %struct.PropertyRNA, ptr %11, i64 0, i32 5
  store ptr %6, ptr %56, align 8, !tbaa !94
  %57 = getelementptr inbounds %struct.PropertyRNA, ptr %11, i64 0, i32 6
  store ptr %7, ptr %57, align 8, !tbaa !95
  %58 = getelementptr inbounds %struct.PropertyRNA, ptr %11, i64 0, i32 9
  %59 = load i32, ptr %58, align 8, !tbaa !96
  switch i32 %59, label %71 [
    i32 1, label %60
    i32 2, label %64
  ]

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.IntPropertyRNA, ptr %11, i64 0, i32 11
  store i32 %8, ptr %61, align 8, !tbaa !191
  %62 = getelementptr inbounds %struct.IntPropertyRNA, ptr %11, i64 0, i32 12
  store i32 %9, ptr %62, align 4, !tbaa !192
  %63 = getelementptr inbounds %struct.IntPropertyRNA, ptr %11, i64 0, i32 15
  store i32 1, ptr %63, align 8, !tbaa !193
  br label %79

64:                                               ; preds = %55
  %65 = sitofp i32 %8 to float
  %66 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %11, i64 0, i32 11
  store float %65, ptr %66, align 8, !tbaa !196
  %67 = sitofp i32 %9 to float
  %68 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %11, i64 0, i32 12
  store float %67, ptr %68, align 4, !tbaa !197
  %69 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %11, i64 0, i32 15
  store float 1.000000e+00, ptr %69, align 8, !tbaa !198
  %70 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %11, i64 0, i32 16
  store i32 3, ptr %70, align 4, !tbaa !199
  br label %79

71:                                               ; preds = %55
  %72 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %73 = load ptr, ptr @stderr, align 8, !tbaa !57
  %74 = getelementptr inbounds %struct.StructRNA, ptr %72, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !71
  %76 = getelementptr inbounds %struct.PropertyRNA, ptr %11, i64 0, i32 3
  %77 = load ptr, ptr %76, align 8, !tbaa !101
  %78 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %73, ptr noundef nonnull @.str.224, ptr noundef nonnull @__func__.RNA_def_property_ui_range, ptr noundef %75, ptr noundef %77) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %79

79:                                               ; preds = %60, %64, %71
  ret ptr %11
}

; Function Attrs: nounwind uwtable
define dso_local ptr @RNA_def_int_array(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #0 {
  %11 = tail call ptr @RNA_def_property(ptr noundef %0, ptr noundef %1, i32 noundef 1, i32 noundef 0)
  %12 = icmp eq i32 %2, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  tail call void @RNA_def_property_array(ptr noundef %11, i32 noundef %2)
  br label %14

14:                                               ; preds = %13, %10
  %15 = icmp eq ptr %3, null
  br i1 %15, label %30, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.PropertyRNA, ptr %11, i64 0, i32 9
  %18 = load i32, ptr %17, align 8, !tbaa !96
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.IntPropertyRNA, ptr %11, i64 0, i32 17
  store ptr %3, ptr %21, align 8, !tbaa !168
  br label %30

22:                                               ; preds = %16
  %23 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %24 = load ptr, ptr @stderr, align 8, !tbaa !57
  %25 = getelementptr inbounds %struct.StructRNA, ptr %23, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !71
  %27 = getelementptr inbounds %struct.PropertyRNA, ptr %11, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !101
  %29 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef nonnull @.str.230, ptr noundef nonnull @__func__.RNA_def_property_int_array_default, ptr noundef %26, ptr noundef %28) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %30

30:                                               ; preds = %22, %20, %14
  %31 = icmp eq i32 %4, %5
  br i1 %31, label %55, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.PropertyRNA, ptr %11, i64 0, i32 9
  %34 = load i32, ptr %33, align 8, !tbaa !96
  switch i32 %34, label %47 [
    i32 1, label %35
    i32 2, label %40
  ]

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.IntPropertyRNA, ptr %11, i64 0, i32 13
  store i32 %4, ptr %36, align 8, !tbaa !189
  %37 = getelementptr inbounds %struct.IntPropertyRNA, ptr %11, i64 0, i32 14
  store i32 %5, ptr %37, align 4, !tbaa !190
  %38 = getelementptr inbounds %struct.IntPropertyRNA, ptr %11, i64 0, i32 11
  store i32 %4, ptr %38, align 8, !tbaa !191
  %39 = getelementptr inbounds %struct.IntPropertyRNA, ptr %11, i64 0, i32 12
  store i32 %5, ptr %39, align 4, !tbaa !192
  br label %55

40:                                               ; preds = %32
  %41 = sitofp i32 %4 to float
  %42 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %11, i64 0, i32 13
  store float %41, ptr %42, align 8, !tbaa !194
  %43 = sitofp i32 %5 to float
  %44 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %11, i64 0, i32 14
  store float %43, ptr %44, align 4, !tbaa !195
  %45 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %11, i64 0, i32 11
  store float %41, ptr %45, align 8, !tbaa !196
  %46 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %11, i64 0, i32 12
  store float %43, ptr %46, align 4, !tbaa !197
  br label %55

47:                                               ; preds = %32
  %48 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %49 = load ptr, ptr @stderr, align 8, !tbaa !57
  %50 = getelementptr inbounds %struct.StructRNA, ptr %48, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !71
  %52 = getelementptr inbounds %struct.PropertyRNA, ptr %11, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !101
  %54 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %49, ptr noundef nonnull @.str.225, ptr noundef nonnull @__func__.RNA_def_property_range, ptr noundef %51, ptr noundef %53) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %55

55:                                               ; preds = %47, %40, %35, %30
  %56 = getelementptr inbounds %struct.PropertyRNA, ptr %11, i64 0, i32 5
  store ptr %6, ptr %56, align 8, !tbaa !94
  %57 = getelementptr inbounds %struct.PropertyRNA, ptr %11, i64 0, i32 6
  store ptr %7, ptr %57, align 8, !tbaa !95
  %58 = getelementptr inbounds %struct.PropertyRNA, ptr %11, i64 0, i32 9
  %59 = load i32, ptr %58, align 8, !tbaa !96
  switch i32 %59, label %71 [
    i32 1, label %60
    i32 2, label %64
  ]

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.IntPropertyRNA, ptr %11, i64 0, i32 11
  store i32 %8, ptr %61, align 8, !tbaa !191
  %62 = getelementptr inbounds %struct.IntPropertyRNA, ptr %11, i64 0, i32 12
  store i32 %9, ptr %62, align 4, !tbaa !192
  %63 = getelementptr inbounds %struct.IntPropertyRNA, ptr %11, i64 0, i32 15
  store i32 1, ptr %63, align 8, !tbaa !193
  br label %79

64:                                               ; preds = %55
  %65 = sitofp i32 %8 to float
  %66 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %11, i64 0, i32 11
  store float %65, ptr %66, align 8, !tbaa !196
  %67 = sitofp i32 %9 to float
  %68 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %11, i64 0, i32 12
  store float %67, ptr %68, align 4, !tbaa !197
  %69 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %11, i64 0, i32 15
  store float 1.000000e+00, ptr %69, align 8, !tbaa !198
  %70 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %11, i64 0, i32 16
  store i32 3, ptr %70, align 4, !tbaa !199
  br label %79

71:                                               ; preds = %55
  %72 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %73 = load ptr, ptr @stderr, align 8, !tbaa !57
  %74 = getelementptr inbounds %struct.StructRNA, ptr %72, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !71
  %76 = getelementptr inbounds %struct.PropertyRNA, ptr %11, i64 0, i32 3
  %77 = load ptr, ptr %76, align 8, !tbaa !101
  %78 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %73, ptr noundef nonnull @.str.224, ptr noundef nonnull @__func__.RNA_def_property_ui_range, ptr noundef %75, ptr noundef %77) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %79

79:                                               ; preds = %60, %64, %71
  ret ptr %11
}

; Function Attrs: nounwind uwtable
define dso_local ptr @RNA_def_string(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = tail call ptr @RNA_def_property(ptr noundef %0, ptr noundef %1, i32 noundef 3, i32 noundef 0)
  %8 = icmp eq i32 %3, 0
  br i1 %8, label %23, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.PropertyRNA, ptr %7, i64 0, i32 9
  %11 = load i32, ptr %10, align 8, !tbaa !96
  %12 = icmp eq i32 %11, 3
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.StringPropertyRNA, ptr %7, i64 0, i32 7
  store i32 %3, ptr %14, align 8, !tbaa !208
  br label %23

15:                                               ; preds = %9
  %16 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %17 = load ptr, ptr @stderr, align 8, !tbaa !57
  %18 = getelementptr inbounds %struct.StructRNA, ptr %16, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !71
  %20 = getelementptr inbounds %struct.PropertyRNA, ptr %7, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !101
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.228, ptr noundef nonnull @__func__.RNA_def_property_string_maxlength, ptr noundef %19, ptr noundef %21) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %23

23:                                               ; preds = %15, %13, %6
  %24 = icmp eq ptr %2, null
  br i1 %24, label %49, label %25

25:                                               ; preds = %23
  %26 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %27 = getelementptr inbounds %struct.PropertyRNA, ptr %7, i64 0, i32 9
  %28 = load i32, ptr %27, align 8, !tbaa !96
  %29 = icmp eq i32 %28, 3
  br i1 %29, label %30, label %42

30:                                               ; preds = %25
  %31 = load i8, ptr %2, align 1, !tbaa !76
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load ptr, ptr @stderr, align 8, !tbaa !57
  %35 = getelementptr inbounds %struct.StructRNA, ptr %26, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !71
  %37 = getelementptr inbounds %struct.PropertyRNA, ptr %7, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !101
  %39 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %34, ptr noundef nonnull @.str.233, ptr noundef nonnull @__func__.RNA_def_property_string_default, ptr noundef %36, ptr noundef %38) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %49

40:                                               ; preds = %30
  %41 = getelementptr inbounds %struct.StringPropertyRNA, ptr %7, i64 0, i32 8
  store ptr %2, ptr %41, align 8, !tbaa !179
  br label %49

42:                                               ; preds = %25
  %43 = load ptr, ptr @stderr, align 8, !tbaa !57
  %44 = getelementptr inbounds %struct.StructRNA, ptr %26, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !71
  %46 = getelementptr inbounds %struct.PropertyRNA, ptr %7, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !101
  %48 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %43, ptr noundef nonnull @.str.228, ptr noundef nonnull @__func__.RNA_def_property_string_default, ptr noundef %45, ptr noundef %47) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %49

49:                                               ; preds = %42, %40, %33, %23
  %50 = getelementptr inbounds %struct.PropertyRNA, ptr %7, i64 0, i32 5
  store ptr %4, ptr %50, align 8, !tbaa !94
  %51 = getelementptr inbounds %struct.PropertyRNA, ptr %7, i64 0, i32 6
  store ptr %5, ptr %51, align 8, !tbaa !95
  ret ptr %7
}

; Function Attrs: nounwind uwtable
define dso_local ptr @RNA_def_string_file_path(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = tail call ptr @RNA_def_property(ptr noundef %0, ptr noundef %1, i32 noundef 3, i32 noundef 1)
  %8 = icmp eq i32 %3, 0
  br i1 %8, label %23, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.PropertyRNA, ptr %7, i64 0, i32 9
  %11 = load i32, ptr %10, align 8, !tbaa !96
  %12 = icmp eq i32 %11, 3
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.StringPropertyRNA, ptr %7, i64 0, i32 7
  store i32 %3, ptr %14, align 8, !tbaa !208
  br label %23

15:                                               ; preds = %9
  %16 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %17 = load ptr, ptr @stderr, align 8, !tbaa !57
  %18 = getelementptr inbounds %struct.StructRNA, ptr %16, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !71
  %20 = getelementptr inbounds %struct.PropertyRNA, ptr %7, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !101
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.228, ptr noundef nonnull @__func__.RNA_def_property_string_maxlength, ptr noundef %19, ptr noundef %21) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %23

23:                                               ; preds = %15, %13, %6
  %24 = icmp eq ptr %2, null
  br i1 %24, label %49, label %25

25:                                               ; preds = %23
  %26 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %27 = getelementptr inbounds %struct.PropertyRNA, ptr %7, i64 0, i32 9
  %28 = load i32, ptr %27, align 8, !tbaa !96
  %29 = icmp eq i32 %28, 3
  br i1 %29, label %30, label %42

30:                                               ; preds = %25
  %31 = load i8, ptr %2, align 1, !tbaa !76
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load ptr, ptr @stderr, align 8, !tbaa !57
  %35 = getelementptr inbounds %struct.StructRNA, ptr %26, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !71
  %37 = getelementptr inbounds %struct.PropertyRNA, ptr %7, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !101
  %39 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %34, ptr noundef nonnull @.str.233, ptr noundef nonnull @__func__.RNA_def_property_string_default, ptr noundef %36, ptr noundef %38) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %49

40:                                               ; preds = %30
  %41 = getelementptr inbounds %struct.StringPropertyRNA, ptr %7, i64 0, i32 8
  store ptr %2, ptr %41, align 8, !tbaa !179
  br label %49

42:                                               ; preds = %25
  %43 = load ptr, ptr @stderr, align 8, !tbaa !57
  %44 = getelementptr inbounds %struct.StructRNA, ptr %26, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !71
  %46 = getelementptr inbounds %struct.PropertyRNA, ptr %7, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !101
  %48 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %43, ptr noundef nonnull @.str.228, ptr noundef nonnull @__func__.RNA_def_property_string_default, ptr noundef %45, ptr noundef %47) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %49

49:                                               ; preds = %42, %40, %33, %23
  %50 = getelementptr inbounds %struct.PropertyRNA, ptr %7, i64 0, i32 5
  store ptr %4, ptr %50, align 8, !tbaa !94
  %51 = getelementptr inbounds %struct.PropertyRNA, ptr %7, i64 0, i32 6
  store ptr %5, ptr %51, align 8, !tbaa !95
  ret ptr %7
}

; Function Attrs: nounwind uwtable
define dso_local ptr @RNA_def_string_dir_path(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = tail call ptr @RNA_def_property(ptr noundef %0, ptr noundef %1, i32 noundef 3, i32 noundef 2)
  %8 = icmp eq i32 %3, 0
  br i1 %8, label %23, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.PropertyRNA, ptr %7, i64 0, i32 9
  %11 = load i32, ptr %10, align 8, !tbaa !96
  %12 = icmp eq i32 %11, 3
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.StringPropertyRNA, ptr %7, i64 0, i32 7
  store i32 %3, ptr %14, align 8, !tbaa !208
  br label %23

15:                                               ; preds = %9
  %16 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %17 = load ptr, ptr @stderr, align 8, !tbaa !57
  %18 = getelementptr inbounds %struct.StructRNA, ptr %16, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !71
  %20 = getelementptr inbounds %struct.PropertyRNA, ptr %7, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !101
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.228, ptr noundef nonnull @__func__.RNA_def_property_string_maxlength, ptr noundef %19, ptr noundef %21) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %23

23:                                               ; preds = %15, %13, %6
  %24 = icmp eq ptr %2, null
  br i1 %24, label %49, label %25

25:                                               ; preds = %23
  %26 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %27 = getelementptr inbounds %struct.PropertyRNA, ptr %7, i64 0, i32 9
  %28 = load i32, ptr %27, align 8, !tbaa !96
  %29 = icmp eq i32 %28, 3
  br i1 %29, label %30, label %42

30:                                               ; preds = %25
  %31 = load i8, ptr %2, align 1, !tbaa !76
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load ptr, ptr @stderr, align 8, !tbaa !57
  %35 = getelementptr inbounds %struct.StructRNA, ptr %26, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !71
  %37 = getelementptr inbounds %struct.PropertyRNA, ptr %7, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !101
  %39 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %34, ptr noundef nonnull @.str.233, ptr noundef nonnull @__func__.RNA_def_property_string_default, ptr noundef %36, ptr noundef %38) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %49

40:                                               ; preds = %30
  %41 = getelementptr inbounds %struct.StringPropertyRNA, ptr %7, i64 0, i32 8
  store ptr %2, ptr %41, align 8, !tbaa !179
  br label %49

42:                                               ; preds = %25
  %43 = load ptr, ptr @stderr, align 8, !tbaa !57
  %44 = getelementptr inbounds %struct.StructRNA, ptr %26, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !71
  %46 = getelementptr inbounds %struct.PropertyRNA, ptr %7, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !101
  %48 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %43, ptr noundef nonnull @.str.228, ptr noundef nonnull @__func__.RNA_def_property_string_default, ptr noundef %45, ptr noundef %47) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %49

49:                                               ; preds = %42, %40, %33, %23
  %50 = getelementptr inbounds %struct.PropertyRNA, ptr %7, i64 0, i32 5
  store ptr %4, ptr %50, align 8, !tbaa !94
  %51 = getelementptr inbounds %struct.PropertyRNA, ptr %7, i64 0, i32 6
  store ptr %5, ptr %51, align 8, !tbaa !95
  ret ptr %7
}

; Function Attrs: nounwind uwtable
define dso_local ptr @RNA_def_string_file_name(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = tail call ptr @RNA_def_property(ptr noundef %0, ptr noundef %1, i32 noundef 3, i32 noundef 3)
  %8 = icmp eq i32 %3, 0
  br i1 %8, label %23, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.PropertyRNA, ptr %7, i64 0, i32 9
  %11 = load i32, ptr %10, align 8, !tbaa !96
  %12 = icmp eq i32 %11, 3
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.StringPropertyRNA, ptr %7, i64 0, i32 7
  store i32 %3, ptr %14, align 8, !tbaa !208
  br label %23

15:                                               ; preds = %9
  %16 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %17 = load ptr, ptr @stderr, align 8, !tbaa !57
  %18 = getelementptr inbounds %struct.StructRNA, ptr %16, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !71
  %20 = getelementptr inbounds %struct.PropertyRNA, ptr %7, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !101
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.228, ptr noundef nonnull @__func__.RNA_def_property_string_maxlength, ptr noundef %19, ptr noundef %21) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %23

23:                                               ; preds = %15, %13, %6
  %24 = icmp eq ptr %2, null
  br i1 %24, label %49, label %25

25:                                               ; preds = %23
  %26 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %27 = getelementptr inbounds %struct.PropertyRNA, ptr %7, i64 0, i32 9
  %28 = load i32, ptr %27, align 8, !tbaa !96
  %29 = icmp eq i32 %28, 3
  br i1 %29, label %30, label %42

30:                                               ; preds = %25
  %31 = load i8, ptr %2, align 1, !tbaa !76
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load ptr, ptr @stderr, align 8, !tbaa !57
  %35 = getelementptr inbounds %struct.StructRNA, ptr %26, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !71
  %37 = getelementptr inbounds %struct.PropertyRNA, ptr %7, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !101
  %39 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %34, ptr noundef nonnull @.str.233, ptr noundef nonnull @__func__.RNA_def_property_string_default, ptr noundef %36, ptr noundef %38) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %49

40:                                               ; preds = %30
  %41 = getelementptr inbounds %struct.StringPropertyRNA, ptr %7, i64 0, i32 8
  store ptr %2, ptr %41, align 8, !tbaa !179
  br label %49

42:                                               ; preds = %25
  %43 = load ptr, ptr @stderr, align 8, !tbaa !57
  %44 = getelementptr inbounds %struct.StructRNA, ptr %26, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !71
  %46 = getelementptr inbounds %struct.PropertyRNA, ptr %7, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !101
  %48 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %43, ptr noundef nonnull @.str.228, ptr noundef nonnull @__func__.RNA_def_property_string_default, ptr noundef %45, ptr noundef %47) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %49

49:                                               ; preds = %42, %40, %33, %23
  %50 = getelementptr inbounds %struct.PropertyRNA, ptr %7, i64 0, i32 5
  store ptr %4, ptr %50, align 8, !tbaa !94
  %51 = getelementptr inbounds %struct.PropertyRNA, ptr %7, i64 0, i32 6
  store ptr %5, ptr %51, align 8, !tbaa !95
  ret ptr %7
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @RNA_def_enum(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = icmp eq ptr %2, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.254, ptr noundef nonnull @__func__.RNA_def_enum)
  br label %14

10:                                               ; preds = %6
  %11 = tail call ptr @RNA_def_property(ptr noundef %0, ptr noundef %1, i32 noundef 4, i32 noundef 0)
  tail call void @RNA_def_property_enum_items(ptr noundef %11, ptr noundef nonnull %2)
  tail call void @RNA_def_property_enum_default(ptr noundef %11, i32 noundef %3)
  %12 = getelementptr inbounds %struct.PropertyRNA, ptr %11, i64 0, i32 5
  store ptr %4, ptr %12, align 8, !tbaa !94
  %13 = getelementptr inbounds %struct.PropertyRNA, ptr %11, i64 0, i32 6
  store ptr %5, ptr %13, align 8, !tbaa !95
  br label %14

14:                                               ; preds = %10, %8
  %15 = phi ptr [ %11, %10 ], [ null, %8 ]
  ret ptr %15
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #15

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @RNA_def_enum_flag(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = icmp eq ptr %2, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.254, ptr noundef nonnull @__func__.RNA_def_enum_flag)
  br label %17

10:                                               ; preds = %6
  %11 = tail call ptr @RNA_def_property(ptr noundef %0, ptr noundef %1, i32 noundef 4, i32 noundef 0)
  %12 = getelementptr inbounds %struct.PropertyRNA, ptr %11, i64 0, i32 4
  %13 = load i32, ptr %12, align 8, !tbaa !51
  %14 = or i32 %13, 2097152
  store i32 %14, ptr %12, align 8, !tbaa !51
  tail call void @RNA_def_property_enum_items(ptr noundef %11, ptr noundef nonnull %2)
  tail call void @RNA_def_property_enum_default(ptr noundef %11, i32 noundef %3)
  %15 = getelementptr inbounds %struct.PropertyRNA, ptr %11, i64 0, i32 5
  store ptr %4, ptr %15, align 8, !tbaa !94
  %16 = getelementptr inbounds %struct.PropertyRNA, ptr %11, i64 0, i32 6
  store ptr %5, ptr %16, align 8, !tbaa !95
  br label %17

17:                                               ; preds = %10, %8
  %18 = phi ptr [ %11, %10 ], [ null, %8 ]
  ret ptr %18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @RNA_def_enum_funcs(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #20 {
  %3 = getelementptr inbounds %struct.EnumPropertyRNA, ptr %0, i64 0, i32 3
  store ptr %1, ptr %3, align 8, !tbaa !295
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @RNA_def_float(ptr noundef %0, ptr noundef %1, float noundef %2, float noundef %3, float noundef %4, ptr noundef %5, ptr noundef %6, float noundef %7, float noundef %8) local_unnamed_addr #0 {
  %10 = tail call ptr @RNA_def_property(ptr noundef %0, ptr noundef %1, i32 noundef 2, i32 noundef 0)
  %11 = getelementptr inbounds %struct.PropertyRNA, ptr %10, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !96
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %10, i64 0, i32 17
  store float %2, ptr %15, align 8, !tbaa !240
  br label %24

16:                                               ; preds = %9
  %17 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %18 = load ptr, ptr @stderr, align 8, !tbaa !57
  %19 = getelementptr inbounds %struct.StructRNA, ptr %17, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !71
  %21 = getelementptr inbounds %struct.PropertyRNA, ptr %10, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !101
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef nonnull @.str.231, ptr noundef nonnull @__func__.RNA_def_property_float_default, ptr noundef %20, ptr noundef %22) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %24

24:                                               ; preds = %14, %16
  %25 = fcmp une float %3, %4
  br i1 %25, label %26, label %48

26:                                               ; preds = %24
  %27 = load i32, ptr %11, align 8, !tbaa !96
  switch i32 %27, label %40 [
    i32 1, label %28
    i32 2, label %35
  ]

28:                                               ; preds = %26
  %29 = fptosi float %3 to i32
  %30 = getelementptr inbounds %struct.IntPropertyRNA, ptr %10, i64 0, i32 13
  store i32 %29, ptr %30, align 8, !tbaa !189
  %31 = fptosi float %4 to i32
  %32 = getelementptr inbounds %struct.IntPropertyRNA, ptr %10, i64 0, i32 14
  store i32 %31, ptr %32, align 4, !tbaa !190
  %33 = getelementptr inbounds %struct.IntPropertyRNA, ptr %10, i64 0, i32 11
  store i32 %29, ptr %33, align 8, !tbaa !191
  %34 = getelementptr inbounds %struct.IntPropertyRNA, ptr %10, i64 0, i32 12
  store i32 %31, ptr %34, align 4, !tbaa !192
  br label %48

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %10, i64 0, i32 13
  store float %3, ptr %36, align 8, !tbaa !194
  %37 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %10, i64 0, i32 14
  store float %4, ptr %37, align 4, !tbaa !195
  %38 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %10, i64 0, i32 11
  store float %3, ptr %38, align 8, !tbaa !196
  %39 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %10, i64 0, i32 12
  store float %4, ptr %39, align 4, !tbaa !197
  br label %48

40:                                               ; preds = %26
  %41 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %42 = load ptr, ptr @stderr, align 8, !tbaa !57
  %43 = getelementptr inbounds %struct.StructRNA, ptr %41, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !71
  %45 = getelementptr inbounds %struct.PropertyRNA, ptr %10, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !101
  %47 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %42, ptr noundef nonnull @.str.225, ptr noundef nonnull @__func__.RNA_def_property_range, ptr noundef %44, ptr noundef %46) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %48

48:                                               ; preds = %40, %35, %28, %24
  %49 = getelementptr inbounds %struct.PropertyRNA, ptr %10, i64 0, i32 5
  store ptr %5, ptr %49, align 8, !tbaa !94
  %50 = getelementptr inbounds %struct.PropertyRNA, ptr %10, i64 0, i32 6
  store ptr %6, ptr %50, align 8, !tbaa !95
  %51 = load i32, ptr %11, align 8, !tbaa !96
  switch i32 %51, label %63 [
    i32 1, label %52
    i32 2, label %58
  ]

52:                                               ; preds = %48
  %53 = fptosi float %7 to i32
  %54 = getelementptr inbounds %struct.IntPropertyRNA, ptr %10, i64 0, i32 11
  store i32 %53, ptr %54, align 8, !tbaa !191
  %55 = fptosi float %8 to i32
  %56 = getelementptr inbounds %struct.IntPropertyRNA, ptr %10, i64 0, i32 12
  store i32 %55, ptr %56, align 4, !tbaa !192
  %57 = getelementptr inbounds %struct.IntPropertyRNA, ptr %10, i64 0, i32 15
  store i32 1, ptr %57, align 8, !tbaa !193
  br label %71

58:                                               ; preds = %48
  %59 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %10, i64 0, i32 11
  store float %7, ptr %59, align 8, !tbaa !196
  %60 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %10, i64 0, i32 12
  store float %8, ptr %60, align 4, !tbaa !197
  %61 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %10, i64 0, i32 15
  store float 1.000000e+00, ptr %61, align 8, !tbaa !198
  %62 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %10, i64 0, i32 16
  store i32 3, ptr %62, align 4, !tbaa !199
  br label %71

63:                                               ; preds = %48
  %64 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %65 = load ptr, ptr @stderr, align 8, !tbaa !57
  %66 = getelementptr inbounds %struct.StructRNA, ptr %64, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !71
  %68 = getelementptr inbounds %struct.PropertyRNA, ptr %10, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !101
  %70 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %65, ptr noundef nonnull @.str.224, ptr noundef nonnull @__func__.RNA_def_property_ui_range, ptr noundef %67, ptr noundef %69) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %71

71:                                               ; preds = %52, %58, %63
  ret ptr %10
}

; Function Attrs: nounwind uwtable
define dso_local ptr @RNA_def_float_vector(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, float noundef %4, float noundef %5, ptr noundef %6, ptr noundef %7, float noundef %8, float noundef %9) local_unnamed_addr #0 {
  %11 = tail call ptr @RNA_def_property(ptr noundef %0, ptr noundef %1, i32 noundef 2, i32 noundef 29)
  %12 = icmp eq i32 %2, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  tail call void @RNA_def_property_array(ptr noundef %11, i32 noundef %2)
  br label %14

14:                                               ; preds = %13, %10
  %15 = icmp eq ptr %3, null
  br i1 %15, label %30, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.PropertyRNA, ptr %11, i64 0, i32 9
  %18 = load i32, ptr %17, align 8, !tbaa !96
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %11, i64 0, i32 18
  store ptr %3, ptr %21, align 8, !tbaa !170
  br label %30

22:                                               ; preds = %16
  %23 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %24 = load ptr, ptr @stderr, align 8, !tbaa !57
  %25 = getelementptr inbounds %struct.StructRNA, ptr %23, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !71
  %27 = getelementptr inbounds %struct.PropertyRNA, ptr %11, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !101
  %29 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef nonnull @.str.231, ptr noundef nonnull @__func__.RNA_def_property_float_array_default, ptr noundef %26, ptr noundef %28) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %30

30:                                               ; preds = %22, %20, %14
  %31 = fcmp une float %4, %5
  br i1 %31, label %32, label %55

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.PropertyRNA, ptr %11, i64 0, i32 9
  %34 = load i32, ptr %33, align 8, !tbaa !96
  switch i32 %34, label %47 [
    i32 1, label %35
    i32 2, label %42
  ]

35:                                               ; preds = %32
  %36 = fptosi float %4 to i32
  %37 = getelementptr inbounds %struct.IntPropertyRNA, ptr %11, i64 0, i32 13
  store i32 %36, ptr %37, align 8, !tbaa !189
  %38 = fptosi float %5 to i32
  %39 = getelementptr inbounds %struct.IntPropertyRNA, ptr %11, i64 0, i32 14
  store i32 %38, ptr %39, align 4, !tbaa !190
  %40 = getelementptr inbounds %struct.IntPropertyRNA, ptr %11, i64 0, i32 11
  store i32 %36, ptr %40, align 8, !tbaa !191
  %41 = getelementptr inbounds %struct.IntPropertyRNA, ptr %11, i64 0, i32 12
  store i32 %38, ptr %41, align 4, !tbaa !192
  br label %55

42:                                               ; preds = %32
  %43 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %11, i64 0, i32 13
  store float %4, ptr %43, align 8, !tbaa !194
  %44 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %11, i64 0, i32 14
  store float %5, ptr %44, align 4, !tbaa !195
  %45 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %11, i64 0, i32 11
  store float %4, ptr %45, align 8, !tbaa !196
  %46 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %11, i64 0, i32 12
  store float %5, ptr %46, align 4, !tbaa !197
  br label %55

47:                                               ; preds = %32
  %48 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %49 = load ptr, ptr @stderr, align 8, !tbaa !57
  %50 = getelementptr inbounds %struct.StructRNA, ptr %48, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !71
  %52 = getelementptr inbounds %struct.PropertyRNA, ptr %11, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !101
  %54 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %49, ptr noundef nonnull @.str.225, ptr noundef nonnull @__func__.RNA_def_property_range, ptr noundef %51, ptr noundef %53) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %55

55:                                               ; preds = %47, %42, %35, %30
  %56 = getelementptr inbounds %struct.PropertyRNA, ptr %11, i64 0, i32 5
  store ptr %6, ptr %56, align 8, !tbaa !94
  %57 = getelementptr inbounds %struct.PropertyRNA, ptr %11, i64 0, i32 6
  store ptr %7, ptr %57, align 8, !tbaa !95
  %58 = getelementptr inbounds %struct.PropertyRNA, ptr %11, i64 0, i32 9
  %59 = load i32, ptr %58, align 8, !tbaa !96
  switch i32 %59, label %71 [
    i32 1, label %60
    i32 2, label %66
  ]

60:                                               ; preds = %55
  %61 = fptosi float %8 to i32
  %62 = getelementptr inbounds %struct.IntPropertyRNA, ptr %11, i64 0, i32 11
  store i32 %61, ptr %62, align 8, !tbaa !191
  %63 = fptosi float %9 to i32
  %64 = getelementptr inbounds %struct.IntPropertyRNA, ptr %11, i64 0, i32 12
  store i32 %63, ptr %64, align 4, !tbaa !192
  %65 = getelementptr inbounds %struct.IntPropertyRNA, ptr %11, i64 0, i32 15
  store i32 1, ptr %65, align 8, !tbaa !193
  br label %79

66:                                               ; preds = %55
  %67 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %11, i64 0, i32 11
  store float %8, ptr %67, align 8, !tbaa !196
  %68 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %11, i64 0, i32 12
  store float %9, ptr %68, align 4, !tbaa !197
  %69 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %11, i64 0, i32 15
  store float 1.000000e+00, ptr %69, align 8, !tbaa !198
  %70 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %11, i64 0, i32 16
  store i32 3, ptr %70, align 4, !tbaa !199
  br label %79

71:                                               ; preds = %55
  %72 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %73 = load ptr, ptr @stderr, align 8, !tbaa !57
  %74 = getelementptr inbounds %struct.StructRNA, ptr %72, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !71
  %76 = getelementptr inbounds %struct.PropertyRNA, ptr %11, i64 0, i32 3
  %77 = load ptr, ptr %76, align 8, !tbaa !101
  %78 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %73, ptr noundef nonnull @.str.224, ptr noundef nonnull @__func__.RNA_def_property_ui_range, ptr noundef %75, ptr noundef %77) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %79

79:                                               ; preds = %60, %66, %71
  ret ptr %11
}

; Function Attrs: nounwind uwtable
define dso_local ptr @RNA_def_float_vector_xyz(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, float noundef %4, float noundef %5, ptr noundef %6, ptr noundef %7, float noundef %8, float noundef %9) local_unnamed_addr #0 {
  %11 = tail call ptr @RNA_def_float_vector(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, float noundef %4, float noundef %5, ptr noundef %6, ptr noundef %7, float noundef %8, float noundef %9)
  %12 = getelementptr inbounds %struct.PropertyRNA, ptr %11, i64 0, i32 10
  store i32 65565, ptr %12, align 4, !tbaa !202
  ret ptr %11
}

; Function Attrs: nounwind uwtable
define dso_local ptr @RNA_def_float_color(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, float noundef %4, float noundef %5, ptr noundef %6, ptr noundef %7, float noundef %8, float noundef %9) local_unnamed_addr #0 {
  %11 = tail call ptr @RNA_def_property(ptr noundef %0, ptr noundef %1, i32 noundef 2, i32 noundef 20)
  %12 = icmp eq i32 %2, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  tail call void @RNA_def_property_array(ptr noundef %11, i32 noundef %2)
  br label %14

14:                                               ; preds = %13, %10
  %15 = icmp eq ptr %3, null
  br i1 %15, label %30, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.PropertyRNA, ptr %11, i64 0, i32 9
  %18 = load i32, ptr %17, align 8, !tbaa !96
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %11, i64 0, i32 18
  store ptr %3, ptr %21, align 8, !tbaa !170
  br label %30

22:                                               ; preds = %16
  %23 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %24 = load ptr, ptr @stderr, align 8, !tbaa !57
  %25 = getelementptr inbounds %struct.StructRNA, ptr %23, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !71
  %27 = getelementptr inbounds %struct.PropertyRNA, ptr %11, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !101
  %29 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef nonnull @.str.231, ptr noundef nonnull @__func__.RNA_def_property_float_array_default, ptr noundef %26, ptr noundef %28) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %30

30:                                               ; preds = %22, %20, %14
  %31 = fcmp une float %4, %5
  br i1 %31, label %32, label %55

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.PropertyRNA, ptr %11, i64 0, i32 9
  %34 = load i32, ptr %33, align 8, !tbaa !96
  switch i32 %34, label %47 [
    i32 1, label %35
    i32 2, label %42
  ]

35:                                               ; preds = %32
  %36 = fptosi float %4 to i32
  %37 = getelementptr inbounds %struct.IntPropertyRNA, ptr %11, i64 0, i32 13
  store i32 %36, ptr %37, align 8, !tbaa !189
  %38 = fptosi float %5 to i32
  %39 = getelementptr inbounds %struct.IntPropertyRNA, ptr %11, i64 0, i32 14
  store i32 %38, ptr %39, align 4, !tbaa !190
  %40 = getelementptr inbounds %struct.IntPropertyRNA, ptr %11, i64 0, i32 11
  store i32 %36, ptr %40, align 8, !tbaa !191
  %41 = getelementptr inbounds %struct.IntPropertyRNA, ptr %11, i64 0, i32 12
  store i32 %38, ptr %41, align 4, !tbaa !192
  br label %55

42:                                               ; preds = %32
  %43 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %11, i64 0, i32 13
  store float %4, ptr %43, align 8, !tbaa !194
  %44 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %11, i64 0, i32 14
  store float %5, ptr %44, align 4, !tbaa !195
  %45 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %11, i64 0, i32 11
  store float %4, ptr %45, align 8, !tbaa !196
  %46 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %11, i64 0, i32 12
  store float %5, ptr %46, align 4, !tbaa !197
  br label %55

47:                                               ; preds = %32
  %48 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %49 = load ptr, ptr @stderr, align 8, !tbaa !57
  %50 = getelementptr inbounds %struct.StructRNA, ptr %48, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !71
  %52 = getelementptr inbounds %struct.PropertyRNA, ptr %11, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !101
  %54 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %49, ptr noundef nonnull @.str.225, ptr noundef nonnull @__func__.RNA_def_property_range, ptr noundef %51, ptr noundef %53) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %55

55:                                               ; preds = %47, %42, %35, %30
  %56 = getelementptr inbounds %struct.PropertyRNA, ptr %11, i64 0, i32 5
  store ptr %6, ptr %56, align 8, !tbaa !94
  %57 = getelementptr inbounds %struct.PropertyRNA, ptr %11, i64 0, i32 6
  store ptr %7, ptr %57, align 8, !tbaa !95
  %58 = getelementptr inbounds %struct.PropertyRNA, ptr %11, i64 0, i32 9
  %59 = load i32, ptr %58, align 8, !tbaa !96
  switch i32 %59, label %71 [
    i32 1, label %60
    i32 2, label %66
  ]

60:                                               ; preds = %55
  %61 = fptosi float %8 to i32
  %62 = getelementptr inbounds %struct.IntPropertyRNA, ptr %11, i64 0, i32 11
  store i32 %61, ptr %62, align 8, !tbaa !191
  %63 = fptosi float %9 to i32
  %64 = getelementptr inbounds %struct.IntPropertyRNA, ptr %11, i64 0, i32 12
  store i32 %63, ptr %64, align 4, !tbaa !192
  %65 = getelementptr inbounds %struct.IntPropertyRNA, ptr %11, i64 0, i32 15
  store i32 1, ptr %65, align 8, !tbaa !193
  br label %79

66:                                               ; preds = %55
  %67 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %11, i64 0, i32 11
  store float %8, ptr %67, align 8, !tbaa !196
  %68 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %11, i64 0, i32 12
  store float %9, ptr %68, align 4, !tbaa !197
  %69 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %11, i64 0, i32 15
  store float 1.000000e+00, ptr %69, align 8, !tbaa !198
  %70 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %11, i64 0, i32 16
  store i32 3, ptr %70, align 4, !tbaa !199
  br label %79

71:                                               ; preds = %55
  %72 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %73 = load ptr, ptr @stderr, align 8, !tbaa !57
  %74 = getelementptr inbounds %struct.StructRNA, ptr %72, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !71
  %76 = getelementptr inbounds %struct.PropertyRNA, ptr %11, i64 0, i32 3
  %77 = load ptr, ptr %76, align 8, !tbaa !101
  %78 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %73, ptr noundef nonnull @.str.224, ptr noundef nonnull @__func__.RNA_def_property_ui_range, ptr noundef %75, ptr noundef %77) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %79

79:                                               ; preds = %60, %66, %71
  ret ptr %11
}

; Function Attrs: nounwind uwtable
define dso_local ptr @RNA_def_float_matrix(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, float noundef %5, float noundef %6, ptr noundef %7, ptr noundef %8, float noundef %9, float noundef %10) local_unnamed_addr #0 {
  %12 = tail call ptr @RNA_def_property(ptr noundef %0, ptr noundef %1, i32 noundef 2, i32 noundef 25)
  %13 = getelementptr inbounds %struct.PropertyRNA, ptr %12, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !96
  %15 = icmp ult i32 %14, 3
  br i1 %15, label %24, label %16

16:                                               ; preds = %11
  %17 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %18 = load ptr, ptr @stderr, align 8, !tbaa !57
  %19 = getelementptr inbounds %struct.StructRNA, ptr %17, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !71
  %21 = getelementptr inbounds %struct.PropertyRNA, ptr %12, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !101
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef nonnull @.str.222, ptr noundef nonnull @__func__.RNA_def_property_multi_array, ptr noundef %20, ptr noundef %22) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %24

24:                                               ; preds = %16, %11
  %25 = getelementptr inbounds %struct.PropertyRNA, ptr %12, i64 0, i32 12
  store i32 2, ptr %25, align 8, !tbaa !206
  %26 = getelementptr inbounds %struct.PropertyRNA, ptr %12, i64 0, i32 14
  store i32 0, ptr %26, align 8, !tbaa !207
  %27 = getelementptr inbounds %struct.PropertyRNA, ptr %12, i64 0, i32 13
  %28 = zext i32 %3 to i64
  %29 = shl nuw i64 %28, 32
  %30 = zext i32 %2 to i64
  %31 = or disjoint i64 %29, %30
  store i64 %31, ptr %27, align 4
  %32 = mul i32 %3, %2
  store i32 %32, ptr %26, align 8, !tbaa !207
  %33 = icmp eq ptr %4, null
  br i1 %33, label %47, label %34

34:                                               ; preds = %24
  %35 = load i32, ptr %13, align 8, !tbaa !96
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %12, i64 0, i32 18
  store ptr %4, ptr %38, align 8, !tbaa !170
  br label %47

39:                                               ; preds = %34
  %40 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %41 = load ptr, ptr @stderr, align 8, !tbaa !57
  %42 = getelementptr inbounds %struct.StructRNA, ptr %40, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !71
  %44 = getelementptr inbounds %struct.PropertyRNA, ptr %12, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !101
  %46 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %41, ptr noundef nonnull @.str.231, ptr noundef nonnull @__func__.RNA_def_property_float_array_default, ptr noundef %43, ptr noundef %45) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %47

47:                                               ; preds = %39, %37, %24
  %48 = fcmp une float %5, %6
  br i1 %48, label %49, label %71

49:                                               ; preds = %47
  %50 = load i32, ptr %13, align 8, !tbaa !96
  switch i32 %50, label %63 [
    i32 1, label %51
    i32 2, label %58
  ]

51:                                               ; preds = %49
  %52 = fptosi float %5 to i32
  %53 = getelementptr inbounds %struct.IntPropertyRNA, ptr %12, i64 0, i32 13
  store i32 %52, ptr %53, align 8, !tbaa !189
  %54 = fptosi float %6 to i32
  %55 = getelementptr inbounds %struct.IntPropertyRNA, ptr %12, i64 0, i32 14
  store i32 %54, ptr %55, align 4, !tbaa !190
  %56 = getelementptr inbounds %struct.IntPropertyRNA, ptr %12, i64 0, i32 11
  store i32 %52, ptr %56, align 8, !tbaa !191
  %57 = getelementptr inbounds %struct.IntPropertyRNA, ptr %12, i64 0, i32 12
  store i32 %54, ptr %57, align 4, !tbaa !192
  br label %71

58:                                               ; preds = %49
  %59 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %12, i64 0, i32 13
  store float %5, ptr %59, align 8, !tbaa !194
  %60 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %12, i64 0, i32 14
  store float %6, ptr %60, align 4, !tbaa !195
  %61 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %12, i64 0, i32 11
  store float %5, ptr %61, align 8, !tbaa !196
  %62 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %12, i64 0, i32 12
  store float %6, ptr %62, align 4, !tbaa !197
  br label %71

63:                                               ; preds = %49
  %64 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %65 = load ptr, ptr @stderr, align 8, !tbaa !57
  %66 = getelementptr inbounds %struct.StructRNA, ptr %64, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !71
  %68 = getelementptr inbounds %struct.PropertyRNA, ptr %12, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !101
  %70 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %65, ptr noundef nonnull @.str.225, ptr noundef nonnull @__func__.RNA_def_property_range, ptr noundef %67, ptr noundef %69) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %71

71:                                               ; preds = %63, %58, %51, %47
  %72 = getelementptr inbounds %struct.PropertyRNA, ptr %12, i64 0, i32 5
  store ptr %7, ptr %72, align 8, !tbaa !94
  %73 = getelementptr inbounds %struct.PropertyRNA, ptr %12, i64 0, i32 6
  store ptr %8, ptr %73, align 8, !tbaa !95
  %74 = load i32, ptr %13, align 8, !tbaa !96
  switch i32 %74, label %86 [
    i32 1, label %75
    i32 2, label %81
  ]

75:                                               ; preds = %71
  %76 = fptosi float %9 to i32
  %77 = getelementptr inbounds %struct.IntPropertyRNA, ptr %12, i64 0, i32 11
  store i32 %76, ptr %77, align 8, !tbaa !191
  %78 = fptosi float %10 to i32
  %79 = getelementptr inbounds %struct.IntPropertyRNA, ptr %12, i64 0, i32 12
  store i32 %78, ptr %79, align 4, !tbaa !192
  %80 = getelementptr inbounds %struct.IntPropertyRNA, ptr %12, i64 0, i32 15
  store i32 1, ptr %80, align 8, !tbaa !193
  br label %94

81:                                               ; preds = %71
  %82 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %12, i64 0, i32 11
  store float %9, ptr %82, align 8, !tbaa !196
  %83 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %12, i64 0, i32 12
  store float %10, ptr %83, align 4, !tbaa !197
  %84 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %12, i64 0, i32 15
  store float 1.000000e+00, ptr %84, align 8, !tbaa !198
  %85 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %12, i64 0, i32 16
  store i32 3, ptr %85, align 4, !tbaa !199
  br label %94

86:                                               ; preds = %71
  %87 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %88 = load ptr, ptr @stderr, align 8, !tbaa !57
  %89 = getelementptr inbounds %struct.StructRNA, ptr %87, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !71
  %91 = getelementptr inbounds %struct.PropertyRNA, ptr %12, i64 0, i32 3
  %92 = load ptr, ptr %91, align 8, !tbaa !101
  %93 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %88, ptr noundef nonnull @.str.224, ptr noundef nonnull @__func__.RNA_def_property_ui_range, ptr noundef %90, ptr noundef %92) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %94

94:                                               ; preds = %75, %81, %86
  ret ptr %12
}

; Function Attrs: nounwind uwtable
define dso_local ptr @RNA_def_float_rotation(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, float noundef %4, float noundef %5, ptr noundef %6, ptr noundef %7, float noundef %8, float noundef %9) local_unnamed_addr #0 {
  %11 = icmp eq i32 %2, 0
  %12 = select i1 %11, i32 327696, i32 327706
  %13 = tail call ptr @RNA_def_property(ptr noundef %0, ptr noundef %1, i32 noundef 2, i32 noundef %12)
  br i1 %11, label %30, label %14

14:                                               ; preds = %10
  tail call void @RNA_def_property_array(ptr noundef %13, i32 noundef %2)
  %15 = icmp eq ptr %3, null
  br i1 %15, label %30, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.PropertyRNA, ptr %13, i64 0, i32 9
  %18 = load i32, ptr %17, align 8, !tbaa !96
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %13, i64 0, i32 18
  store ptr %3, ptr %21, align 8, !tbaa !170
  br label %30

22:                                               ; preds = %16
  %23 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %24 = load ptr, ptr @stderr, align 8, !tbaa !57
  %25 = getelementptr inbounds %struct.StructRNA, ptr %23, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !71
  %27 = getelementptr inbounds %struct.PropertyRNA, ptr %13, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !101
  %29 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef nonnull @.str.231, ptr noundef nonnull @__func__.RNA_def_property_float_array_default, ptr noundef %26, ptr noundef %28) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %30

30:                                               ; preds = %22, %20, %10, %14
  %31 = fcmp une float %4, %5
  br i1 %31, label %32, label %55

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.PropertyRNA, ptr %13, i64 0, i32 9
  %34 = load i32, ptr %33, align 8, !tbaa !96
  switch i32 %34, label %47 [
    i32 1, label %35
    i32 2, label %42
  ]

35:                                               ; preds = %32
  %36 = fptosi float %4 to i32
  %37 = getelementptr inbounds %struct.IntPropertyRNA, ptr %13, i64 0, i32 13
  store i32 %36, ptr %37, align 8, !tbaa !189
  %38 = fptosi float %5 to i32
  %39 = getelementptr inbounds %struct.IntPropertyRNA, ptr %13, i64 0, i32 14
  store i32 %38, ptr %39, align 4, !tbaa !190
  %40 = getelementptr inbounds %struct.IntPropertyRNA, ptr %13, i64 0, i32 11
  store i32 %36, ptr %40, align 8, !tbaa !191
  %41 = getelementptr inbounds %struct.IntPropertyRNA, ptr %13, i64 0, i32 12
  store i32 %38, ptr %41, align 4, !tbaa !192
  br label %55

42:                                               ; preds = %32
  %43 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %13, i64 0, i32 13
  store float %4, ptr %43, align 8, !tbaa !194
  %44 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %13, i64 0, i32 14
  store float %5, ptr %44, align 4, !tbaa !195
  %45 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %13, i64 0, i32 11
  store float %4, ptr %45, align 8, !tbaa !196
  %46 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %13, i64 0, i32 12
  store float %5, ptr %46, align 4, !tbaa !197
  br label %55

47:                                               ; preds = %32
  %48 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %49 = load ptr, ptr @stderr, align 8, !tbaa !57
  %50 = getelementptr inbounds %struct.StructRNA, ptr %48, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !71
  %52 = getelementptr inbounds %struct.PropertyRNA, ptr %13, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !101
  %54 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %49, ptr noundef nonnull @.str.225, ptr noundef nonnull @__func__.RNA_def_property_range, ptr noundef %51, ptr noundef %53) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %55

55:                                               ; preds = %47, %42, %35, %30
  %56 = getelementptr inbounds %struct.PropertyRNA, ptr %13, i64 0, i32 5
  store ptr %6, ptr %56, align 8, !tbaa !94
  %57 = getelementptr inbounds %struct.PropertyRNA, ptr %13, i64 0, i32 6
  store ptr %7, ptr %57, align 8, !tbaa !95
  %58 = getelementptr inbounds %struct.PropertyRNA, ptr %13, i64 0, i32 9
  %59 = load i32, ptr %58, align 8, !tbaa !96
  switch i32 %59, label %71 [
    i32 1, label %60
    i32 2, label %66
  ]

60:                                               ; preds = %55
  %61 = fptosi float %8 to i32
  %62 = getelementptr inbounds %struct.IntPropertyRNA, ptr %13, i64 0, i32 11
  store i32 %61, ptr %62, align 8, !tbaa !191
  %63 = fptosi float %9 to i32
  %64 = getelementptr inbounds %struct.IntPropertyRNA, ptr %13, i64 0, i32 12
  store i32 %63, ptr %64, align 4, !tbaa !192
  %65 = getelementptr inbounds %struct.IntPropertyRNA, ptr %13, i64 0, i32 15
  store i32 1, ptr %65, align 8, !tbaa !193
  br label %79

66:                                               ; preds = %55
  %67 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %13, i64 0, i32 11
  store float %8, ptr %67, align 8, !tbaa !196
  %68 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %13, i64 0, i32 12
  store float %9, ptr %68, align 4, !tbaa !197
  %69 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %13, i64 0, i32 15
  store float 1.000000e+00, ptr %69, align 8, !tbaa !198
  %70 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %13, i64 0, i32 16
  store i32 3, ptr %70, align 4, !tbaa !199
  br label %79

71:                                               ; preds = %55
  %72 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %73 = load ptr, ptr @stderr, align 8, !tbaa !57
  %74 = getelementptr inbounds %struct.StructRNA, ptr %72, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !71
  %76 = getelementptr inbounds %struct.PropertyRNA, ptr %13, i64 0, i32 3
  %77 = load ptr, ptr %76, align 8, !tbaa !101
  %78 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %73, ptr noundef nonnull @.str.224, ptr noundef nonnull @__func__.RNA_def_property_ui_range, ptr noundef %75, ptr noundef %77) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %79

79:                                               ; preds = %60, %66, %71
  ret ptr %13
}

; Function Attrs: nounwind uwtable
define dso_local ptr @RNA_def_float_array(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, float noundef %4, float noundef %5, ptr noundef %6, ptr noundef %7, float noundef %8, float noundef %9) local_unnamed_addr #0 {
  %11 = tail call ptr @RNA_def_property(ptr noundef %0, ptr noundef %1, i32 noundef 2, i32 noundef 0)
  %12 = icmp eq i32 %2, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  tail call void @RNA_def_property_array(ptr noundef %11, i32 noundef %2)
  br label %14

14:                                               ; preds = %13, %10
  %15 = icmp eq ptr %3, null
  br i1 %15, label %30, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.PropertyRNA, ptr %11, i64 0, i32 9
  %18 = load i32, ptr %17, align 8, !tbaa !96
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %11, i64 0, i32 18
  store ptr %3, ptr %21, align 8, !tbaa !170
  br label %30

22:                                               ; preds = %16
  %23 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %24 = load ptr, ptr @stderr, align 8, !tbaa !57
  %25 = getelementptr inbounds %struct.StructRNA, ptr %23, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !71
  %27 = getelementptr inbounds %struct.PropertyRNA, ptr %11, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !101
  %29 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef nonnull @.str.231, ptr noundef nonnull @__func__.RNA_def_property_float_array_default, ptr noundef %26, ptr noundef %28) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %30

30:                                               ; preds = %22, %20, %14
  %31 = fcmp une float %4, %5
  br i1 %31, label %32, label %55

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.PropertyRNA, ptr %11, i64 0, i32 9
  %34 = load i32, ptr %33, align 8, !tbaa !96
  switch i32 %34, label %47 [
    i32 1, label %35
    i32 2, label %42
  ]

35:                                               ; preds = %32
  %36 = fptosi float %4 to i32
  %37 = getelementptr inbounds %struct.IntPropertyRNA, ptr %11, i64 0, i32 13
  store i32 %36, ptr %37, align 8, !tbaa !189
  %38 = fptosi float %5 to i32
  %39 = getelementptr inbounds %struct.IntPropertyRNA, ptr %11, i64 0, i32 14
  store i32 %38, ptr %39, align 4, !tbaa !190
  %40 = getelementptr inbounds %struct.IntPropertyRNA, ptr %11, i64 0, i32 11
  store i32 %36, ptr %40, align 8, !tbaa !191
  %41 = getelementptr inbounds %struct.IntPropertyRNA, ptr %11, i64 0, i32 12
  store i32 %38, ptr %41, align 4, !tbaa !192
  br label %55

42:                                               ; preds = %32
  %43 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %11, i64 0, i32 13
  store float %4, ptr %43, align 8, !tbaa !194
  %44 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %11, i64 0, i32 14
  store float %5, ptr %44, align 4, !tbaa !195
  %45 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %11, i64 0, i32 11
  store float %4, ptr %45, align 8, !tbaa !196
  %46 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %11, i64 0, i32 12
  store float %5, ptr %46, align 4, !tbaa !197
  br label %55

47:                                               ; preds = %32
  %48 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %49 = load ptr, ptr @stderr, align 8, !tbaa !57
  %50 = getelementptr inbounds %struct.StructRNA, ptr %48, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !71
  %52 = getelementptr inbounds %struct.PropertyRNA, ptr %11, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !101
  %54 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %49, ptr noundef nonnull @.str.225, ptr noundef nonnull @__func__.RNA_def_property_range, ptr noundef %51, ptr noundef %53) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %55

55:                                               ; preds = %47, %42, %35, %30
  %56 = getelementptr inbounds %struct.PropertyRNA, ptr %11, i64 0, i32 5
  store ptr %6, ptr %56, align 8, !tbaa !94
  %57 = getelementptr inbounds %struct.PropertyRNA, ptr %11, i64 0, i32 6
  store ptr %7, ptr %57, align 8, !tbaa !95
  %58 = getelementptr inbounds %struct.PropertyRNA, ptr %11, i64 0, i32 9
  %59 = load i32, ptr %58, align 8, !tbaa !96
  switch i32 %59, label %71 [
    i32 1, label %60
    i32 2, label %66
  ]

60:                                               ; preds = %55
  %61 = fptosi float %8 to i32
  %62 = getelementptr inbounds %struct.IntPropertyRNA, ptr %11, i64 0, i32 11
  store i32 %61, ptr %62, align 8, !tbaa !191
  %63 = fptosi float %9 to i32
  %64 = getelementptr inbounds %struct.IntPropertyRNA, ptr %11, i64 0, i32 12
  store i32 %63, ptr %64, align 4, !tbaa !192
  %65 = getelementptr inbounds %struct.IntPropertyRNA, ptr %11, i64 0, i32 15
  store i32 1, ptr %65, align 8, !tbaa !193
  br label %79

66:                                               ; preds = %55
  %67 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %11, i64 0, i32 11
  store float %8, ptr %67, align 8, !tbaa !196
  %68 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %11, i64 0, i32 12
  store float %9, ptr %68, align 4, !tbaa !197
  %69 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %11, i64 0, i32 15
  store float 1.000000e+00, ptr %69, align 8, !tbaa !198
  %70 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %11, i64 0, i32 16
  store i32 3, ptr %70, align 4, !tbaa !199
  br label %79

71:                                               ; preds = %55
  %72 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %73 = load ptr, ptr @stderr, align 8, !tbaa !57
  %74 = getelementptr inbounds %struct.StructRNA, ptr %72, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !71
  %76 = getelementptr inbounds %struct.PropertyRNA, ptr %11, i64 0, i32 3
  %77 = load ptr, ptr %76, align 8, !tbaa !101
  %78 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %73, ptr noundef nonnull @.str.224, ptr noundef nonnull @__func__.RNA_def_property_ui_range, ptr noundef %75, ptr noundef %77) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %79

79:                                               ; preds = %60, %66, %71
  ret ptr %11
}

; Function Attrs: nounwind uwtable
define dso_local ptr @RNA_def_float_percentage(ptr noundef %0, ptr noundef %1, float noundef %2, float noundef %3, float noundef %4, ptr noundef %5, ptr noundef %6, float noundef %7, float noundef %8) local_unnamed_addr #0 {
  %10 = tail call ptr @RNA_def_property(ptr noundef %0, ptr noundef %1, i32 noundef 2, i32 noundef 14)
  %11 = getelementptr inbounds %struct.PropertyRNA, ptr %10, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !96
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %10, i64 0, i32 17
  store float %2, ptr %15, align 8, !tbaa !240
  br label %24

16:                                               ; preds = %9
  %17 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %18 = load ptr, ptr @stderr, align 8, !tbaa !57
  %19 = getelementptr inbounds %struct.StructRNA, ptr %17, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !71
  %21 = getelementptr inbounds %struct.PropertyRNA, ptr %10, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !101
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef nonnull @.str.231, ptr noundef nonnull @__func__.RNA_def_property_float_default, ptr noundef %20, ptr noundef %22) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %24

24:                                               ; preds = %14, %16
  %25 = fcmp une float %3, %4
  br i1 %25, label %26, label %48

26:                                               ; preds = %24
  %27 = load i32, ptr %11, align 8, !tbaa !96
  switch i32 %27, label %40 [
    i32 1, label %28
    i32 2, label %35
  ]

28:                                               ; preds = %26
  %29 = fptosi float %3 to i32
  %30 = getelementptr inbounds %struct.IntPropertyRNA, ptr %10, i64 0, i32 13
  store i32 %29, ptr %30, align 8, !tbaa !189
  %31 = fptosi float %4 to i32
  %32 = getelementptr inbounds %struct.IntPropertyRNA, ptr %10, i64 0, i32 14
  store i32 %31, ptr %32, align 4, !tbaa !190
  %33 = getelementptr inbounds %struct.IntPropertyRNA, ptr %10, i64 0, i32 11
  store i32 %29, ptr %33, align 8, !tbaa !191
  %34 = getelementptr inbounds %struct.IntPropertyRNA, ptr %10, i64 0, i32 12
  store i32 %31, ptr %34, align 4, !tbaa !192
  br label %48

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %10, i64 0, i32 13
  store float %3, ptr %36, align 8, !tbaa !194
  %37 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %10, i64 0, i32 14
  store float %4, ptr %37, align 4, !tbaa !195
  %38 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %10, i64 0, i32 11
  store float %3, ptr %38, align 8, !tbaa !196
  %39 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %10, i64 0, i32 12
  store float %4, ptr %39, align 4, !tbaa !197
  br label %48

40:                                               ; preds = %26
  %41 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %42 = load ptr, ptr @stderr, align 8, !tbaa !57
  %43 = getelementptr inbounds %struct.StructRNA, ptr %41, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !71
  %45 = getelementptr inbounds %struct.PropertyRNA, ptr %10, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !101
  %47 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %42, ptr noundef nonnull @.str.225, ptr noundef nonnull @__func__.RNA_def_property_range, ptr noundef %44, ptr noundef %46) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %48

48:                                               ; preds = %40, %35, %28, %24
  %49 = getelementptr inbounds %struct.PropertyRNA, ptr %10, i64 0, i32 5
  store ptr %5, ptr %49, align 8, !tbaa !94
  %50 = getelementptr inbounds %struct.PropertyRNA, ptr %10, i64 0, i32 6
  store ptr %6, ptr %50, align 8, !tbaa !95
  %51 = load i32, ptr %11, align 8, !tbaa !96
  switch i32 %51, label %63 [
    i32 1, label %52
    i32 2, label %58
  ]

52:                                               ; preds = %48
  %53 = fptosi float %7 to i32
  %54 = getelementptr inbounds %struct.IntPropertyRNA, ptr %10, i64 0, i32 11
  store i32 %53, ptr %54, align 8, !tbaa !191
  %55 = fptosi float %8 to i32
  %56 = getelementptr inbounds %struct.IntPropertyRNA, ptr %10, i64 0, i32 12
  store i32 %55, ptr %56, align 4, !tbaa !192
  %57 = getelementptr inbounds %struct.IntPropertyRNA, ptr %10, i64 0, i32 15
  store i32 1, ptr %57, align 8, !tbaa !193
  br label %71

58:                                               ; preds = %48
  %59 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %10, i64 0, i32 11
  store float %7, ptr %59, align 8, !tbaa !196
  %60 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %10, i64 0, i32 12
  store float %8, ptr %60, align 4, !tbaa !197
  %61 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %10, i64 0, i32 15
  store float 1.000000e+00, ptr %61, align 8, !tbaa !198
  %62 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %10, i64 0, i32 16
  store i32 3, ptr %62, align 4, !tbaa !199
  br label %71

63:                                               ; preds = %48
  %64 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %65 = load ptr, ptr @stderr, align 8, !tbaa !57
  %66 = getelementptr inbounds %struct.StructRNA, ptr %64, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !71
  %68 = getelementptr inbounds %struct.PropertyRNA, ptr %10, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !101
  %70 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %65, ptr noundef nonnull @.str.224, ptr noundef nonnull @__func__.RNA_def_property_ui_range, ptr noundef %67, ptr noundef %69) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %71

71:                                               ; preds = %52, %58, %63
  ret ptr %10
}

; Function Attrs: nounwind uwtable
define dso_local ptr @RNA_def_float_factor(ptr noundef %0, ptr noundef %1, float noundef %2, float noundef %3, float noundef %4, ptr noundef %5, ptr noundef %6, float noundef %7, float noundef %8) local_unnamed_addr #0 {
  %10 = tail call ptr @RNA_def_property(ptr noundef %0, ptr noundef %1, i32 noundef 2, i32 noundef 15)
  %11 = getelementptr inbounds %struct.PropertyRNA, ptr %10, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !96
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %10, i64 0, i32 17
  store float %2, ptr %15, align 8, !tbaa !240
  br label %24

16:                                               ; preds = %9
  %17 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %18 = load ptr, ptr @stderr, align 8, !tbaa !57
  %19 = getelementptr inbounds %struct.StructRNA, ptr %17, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !71
  %21 = getelementptr inbounds %struct.PropertyRNA, ptr %10, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !101
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef nonnull @.str.231, ptr noundef nonnull @__func__.RNA_def_property_float_default, ptr noundef %20, ptr noundef %22) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %24

24:                                               ; preds = %14, %16
  %25 = fcmp une float %3, %4
  br i1 %25, label %26, label %48

26:                                               ; preds = %24
  %27 = load i32, ptr %11, align 8, !tbaa !96
  switch i32 %27, label %40 [
    i32 1, label %28
    i32 2, label %35
  ]

28:                                               ; preds = %26
  %29 = fptosi float %3 to i32
  %30 = getelementptr inbounds %struct.IntPropertyRNA, ptr %10, i64 0, i32 13
  store i32 %29, ptr %30, align 8, !tbaa !189
  %31 = fptosi float %4 to i32
  %32 = getelementptr inbounds %struct.IntPropertyRNA, ptr %10, i64 0, i32 14
  store i32 %31, ptr %32, align 4, !tbaa !190
  %33 = getelementptr inbounds %struct.IntPropertyRNA, ptr %10, i64 0, i32 11
  store i32 %29, ptr %33, align 8, !tbaa !191
  %34 = getelementptr inbounds %struct.IntPropertyRNA, ptr %10, i64 0, i32 12
  store i32 %31, ptr %34, align 4, !tbaa !192
  br label %48

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %10, i64 0, i32 13
  store float %3, ptr %36, align 8, !tbaa !194
  %37 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %10, i64 0, i32 14
  store float %4, ptr %37, align 4, !tbaa !195
  %38 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %10, i64 0, i32 11
  store float %3, ptr %38, align 8, !tbaa !196
  %39 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %10, i64 0, i32 12
  store float %4, ptr %39, align 4, !tbaa !197
  br label %48

40:                                               ; preds = %26
  %41 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %42 = load ptr, ptr @stderr, align 8, !tbaa !57
  %43 = getelementptr inbounds %struct.StructRNA, ptr %41, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !71
  %45 = getelementptr inbounds %struct.PropertyRNA, ptr %10, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !101
  %47 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %42, ptr noundef nonnull @.str.225, ptr noundef nonnull @__func__.RNA_def_property_range, ptr noundef %44, ptr noundef %46) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %48

48:                                               ; preds = %40, %35, %28, %24
  %49 = getelementptr inbounds %struct.PropertyRNA, ptr %10, i64 0, i32 5
  store ptr %5, ptr %49, align 8, !tbaa !94
  %50 = getelementptr inbounds %struct.PropertyRNA, ptr %10, i64 0, i32 6
  store ptr %6, ptr %50, align 8, !tbaa !95
  %51 = load i32, ptr %11, align 8, !tbaa !96
  switch i32 %51, label %63 [
    i32 1, label %52
    i32 2, label %58
  ]

52:                                               ; preds = %48
  %53 = fptosi float %7 to i32
  %54 = getelementptr inbounds %struct.IntPropertyRNA, ptr %10, i64 0, i32 11
  store i32 %53, ptr %54, align 8, !tbaa !191
  %55 = fptosi float %8 to i32
  %56 = getelementptr inbounds %struct.IntPropertyRNA, ptr %10, i64 0, i32 12
  store i32 %55, ptr %56, align 4, !tbaa !192
  %57 = getelementptr inbounds %struct.IntPropertyRNA, ptr %10, i64 0, i32 15
  store i32 1, ptr %57, align 8, !tbaa !193
  br label %71

58:                                               ; preds = %48
  %59 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %10, i64 0, i32 11
  store float %7, ptr %59, align 8, !tbaa !196
  %60 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %10, i64 0, i32 12
  store float %8, ptr %60, align 4, !tbaa !197
  %61 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %10, i64 0, i32 15
  store float 1.000000e+00, ptr %61, align 8, !tbaa !198
  %62 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %10, i64 0, i32 16
  store i32 3, ptr %62, align 4, !tbaa !199
  br label %71

63:                                               ; preds = %48
  %64 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %65 = load ptr, ptr @stderr, align 8, !tbaa !57
  %66 = getelementptr inbounds %struct.StructRNA, ptr %64, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !71
  %68 = getelementptr inbounds %struct.PropertyRNA, ptr %10, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !101
  %70 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %65, ptr noundef nonnull @.str.224, ptr noundef nonnull @__func__.RNA_def_property_ui_range, ptr noundef %67, ptr noundef %69) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %71

71:                                               ; preds = %52, %58, %63
  ret ptr %10
}

; Function Attrs: nounwind uwtable
define dso_local ptr @RNA_def_pointer(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call ptr @RNA_def_property(ptr noundef %0, ptr noundef %1, i32 noundef 5, i32 noundef 0)
  %7 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %8 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !74
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %5
  %11 = load ptr, ptr @stderr, align 8, !tbaa !57
  %12 = getelementptr inbounds %struct.StructRNA, ptr %7, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !71
  %14 = getelementptr inbounds %struct.PropertyRNA, ptr %6, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !101
  %16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str.226, ptr noundef nonnull @__func__.RNA_def_property_struct_type, ptr noundef %13, ptr noundef %15) #26
  br label %31

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.PropertyRNA, ptr %6, i64 0, i32 9
  %19 = load i32, ptr %18, align 8, !tbaa !96
  switch i32 %19, label %24 [
    i32 5, label %20
    i32 6, label %22
  ]

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.PointerPropertyRNA, ptr %6, i64 0, i32 5
  store ptr %2, ptr %21, align 8, !tbaa !97
  br label %31

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.CollectionPropertyRNA, ptr %6, i64 0, i32 9
  store ptr %2, ptr %23, align 8, !tbaa !99
  br label %31

24:                                               ; preds = %17
  %25 = load ptr, ptr @stderr, align 8, !tbaa !57
  %26 = getelementptr inbounds %struct.StructRNA, ptr %7, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !71
  %28 = getelementptr inbounds %struct.PropertyRNA, ptr %6, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !101
  %30 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef nonnull @.str.227, ptr noundef nonnull @__func__.RNA_def_property_struct_type, ptr noundef %27, ptr noundef %29) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %31

31:                                               ; preds = %10, %20, %22, %24
  %32 = getelementptr inbounds %struct.PropertyRNA, ptr %6, i64 0, i32 5
  store ptr %3, ptr %32, align 8, !tbaa !94
  %33 = getelementptr inbounds %struct.PropertyRNA, ptr %6, i64 0, i32 6
  store ptr %4, ptr %33, align 8, !tbaa !95
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define dso_local ptr @RNA_def_pointer_runtime(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call ptr @RNA_def_property(ptr noundef %0, ptr noundef %1, i32 noundef 5, i32 noundef 0)
  %7 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %8 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !74
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr @stderr, align 8, !tbaa !57
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str.212, ptr noundef nonnull @__func__.RNA_def_property_struct_runtime) #26
  br label %37

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.PropertyRNA, ptr %6, i64 0, i32 9
  %15 = load i32, ptr %14, align 8, !tbaa !96
  switch i32 %15, label %30 [
    i32 5, label %16
    i32 6, label %28
  ]

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.PointerPropertyRNA, ptr %6, i64 0, i32 5
  store ptr %2, ptr %17, align 8, !tbaa !97
  %18 = icmp eq ptr %2, null
  br i1 %18, label %37, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.StructRNA, ptr %2, i64 0, i32 4
  %21 = load i32, ptr %20, align 8, !tbaa !70
  %22 = and i32 %21, 2
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %37, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.PropertyRNA, ptr %6, i64 0, i32 4
  %26 = load i32, ptr %25, align 8, !tbaa !51
  %27 = or i32 %26, 64
  store i32 %27, ptr %25, align 8, !tbaa !51
  br label %37

28:                                               ; preds = %13
  %29 = getelementptr inbounds %struct.CollectionPropertyRNA, ptr %6, i64 0, i32 9
  store ptr %2, ptr %29, align 8, !tbaa !99
  br label %37

30:                                               ; preds = %13
  %31 = load ptr, ptr @stderr, align 8, !tbaa !57
  %32 = getelementptr inbounds %struct.StructRNA, ptr %7, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !71
  %34 = getelementptr inbounds %struct.PropertyRNA, ptr %6, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !101
  %36 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %31, ptr noundef nonnull @.str.227, ptr noundef nonnull @__func__.RNA_def_property_struct_runtime, ptr noundef %33, ptr noundef %35) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %37

37:                                               ; preds = %10, %16, %19, %24, %28, %30
  %38 = getelementptr inbounds %struct.PropertyRNA, ptr %6, i64 0, i32 5
  store ptr %3, ptr %38, align 8, !tbaa !94
  %39 = getelementptr inbounds %struct.PropertyRNA, ptr %6, i64 0, i32 6
  store ptr %4, ptr %39, align 8, !tbaa !95
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define dso_local ptr @RNA_def_collection(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call ptr @RNA_def_property(ptr noundef %0, ptr noundef %1, i32 noundef 6, i32 noundef 0)
  %7 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %8 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !74
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %5
  %11 = load ptr, ptr @stderr, align 8, !tbaa !57
  %12 = getelementptr inbounds %struct.StructRNA, ptr %7, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !71
  %14 = getelementptr inbounds %struct.PropertyRNA, ptr %6, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !101
  %16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str.226, ptr noundef nonnull @__func__.RNA_def_property_struct_type, ptr noundef %13, ptr noundef %15) #26
  br label %31

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.PropertyRNA, ptr %6, i64 0, i32 9
  %19 = load i32, ptr %18, align 8, !tbaa !96
  switch i32 %19, label %24 [
    i32 5, label %20
    i32 6, label %22
  ]

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.PointerPropertyRNA, ptr %6, i64 0, i32 5
  store ptr %2, ptr %21, align 8, !tbaa !97
  br label %31

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.CollectionPropertyRNA, ptr %6, i64 0, i32 9
  store ptr %2, ptr %23, align 8, !tbaa !99
  br label %31

24:                                               ; preds = %17
  %25 = load ptr, ptr @stderr, align 8, !tbaa !57
  %26 = getelementptr inbounds %struct.StructRNA, ptr %7, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !71
  %28 = getelementptr inbounds %struct.PropertyRNA, ptr %6, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !101
  %30 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef nonnull @.str.227, ptr noundef nonnull @__func__.RNA_def_property_struct_type, ptr noundef %27, ptr noundef %29) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %31

31:                                               ; preds = %10, %20, %22, %24
  %32 = getelementptr inbounds %struct.PropertyRNA, ptr %6, i64 0, i32 5
  store ptr %3, ptr %32, align 8, !tbaa !94
  %33 = getelementptr inbounds %struct.PropertyRNA, ptr %6, i64 0, i32 6
  store ptr %4, ptr %33, align 8, !tbaa !95
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define dso_local ptr @RNA_def_collection_runtime(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call ptr @RNA_def_property(ptr noundef %0, ptr noundef %1, i32 noundef 6, i32 noundef 0)
  %7 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  %8 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !74
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr @stderr, align 8, !tbaa !57
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str.212, ptr noundef nonnull @__func__.RNA_def_property_struct_runtime) #26
  br label %37

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.PropertyRNA, ptr %6, i64 0, i32 9
  %15 = load i32, ptr %14, align 8, !tbaa !96
  switch i32 %15, label %30 [
    i32 5, label %16
    i32 6, label %28
  ]

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.PointerPropertyRNA, ptr %6, i64 0, i32 5
  store ptr %2, ptr %17, align 8, !tbaa !97
  %18 = icmp eq ptr %2, null
  br i1 %18, label %37, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.StructRNA, ptr %2, i64 0, i32 4
  %21 = load i32, ptr %20, align 8, !tbaa !70
  %22 = and i32 %21, 2
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %37, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.PropertyRNA, ptr %6, i64 0, i32 4
  %26 = load i32, ptr %25, align 8, !tbaa !51
  %27 = or i32 %26, 64
  store i32 %27, ptr %25, align 8, !tbaa !51
  br label %37

28:                                               ; preds = %13
  %29 = getelementptr inbounds %struct.CollectionPropertyRNA, ptr %6, i64 0, i32 9
  store ptr %2, ptr %29, align 8, !tbaa !99
  br label %37

30:                                               ; preds = %13
  %31 = load ptr, ptr @stderr, align 8, !tbaa !57
  %32 = getelementptr inbounds %struct.StructRNA, ptr %7, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !71
  %34 = getelementptr inbounds %struct.PropertyRNA, ptr %6, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !101
  %36 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %31, ptr noundef nonnull @.str.227, ptr noundef nonnull @__func__.RNA_def_property_struct_runtime, ptr noundef %33, ptr noundef %35) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %37

37:                                               ; preds = %10, %16, %19, %24, %28, %30
  %38 = getelementptr inbounds %struct.PropertyRNA, ptr %6, i64 0, i32 5
  store ptr %3, ptr %38, align 8, !tbaa !94
  %39 = getelementptr inbounds %struct.PropertyRNA, ptr %6, i64 0, i32 6
  store ptr %4, ptr %39, align 8, !tbaa !95
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @RNA_def_function(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.StructRNA, ptr %0, i64 0, i32 19
  %5 = tail call ptr @BLI_findstring_ptr(ptr noundef nonnull %4, ptr noundef %1, i32 noundef 40) #23
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @stderr, align 8, !tbaa !57
  %9 = getelementptr inbounds %struct.StructRNA, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !71
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.255, ptr noundef nonnull @__func__.RNA_def_function, ptr noundef %10, ptr noundef %1) #26
  br label %62

12:                                               ; preds = %3
  %13 = tail call fastcc ptr @rna_def_function(ptr noundef %0, ptr noundef %1)
  %14 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !74
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load ptr, ptr @stderr, align 8, !tbaa !57
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.159, ptr noundef nonnull @__func__.RNA_def_function) #26
  br label %62

19:                                               ; preds = %12
  %20 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !80
  br label %21

21:                                               ; preds = %21, %19
  %22 = phi ptr [ %27, %21 ], [ getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 1, i32 1), %19 ]
  %23 = load ptr, ptr %22, align 8, !tbaa !57, !nonnull !91, !noundef !91
  %24 = getelementptr inbounds %struct.StructDefRNA, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !83
  %26 = icmp eq ptr %25, %20
  %27 = getelementptr inbounds %struct.ContainerDefRNA, ptr %23, i64 0, i32 1
  br i1 %26, label %28, label %21

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.StructDefRNA, ptr %23, i64 0, i32 6, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !57
  %31 = icmp eq ptr %30, null
  br i1 %31, label %41, label %32

32:                                               ; preds = %28, %37
  %33 = phi ptr [ %39, %37 ], [ %30, %28 ]
  %34 = getelementptr inbounds %struct.FunctionDefRNA, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !140
  %36 = icmp eq ptr %35, %13
  br i1 %36, label %59, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.ContainerDefRNA, ptr %33, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !57
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %32, !llvm.loop !142

41:                                               ; preds = %37, %28
  br label %42

42:                                               ; preds = %41, %57
  %43 = phi ptr [ %58, %57 ], [ getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 1, i32 1), %41 ]
  %44 = load ptr, ptr %43, align 8, !tbaa !57, !nonnull !91, !noundef !91
  %45 = getelementptr inbounds %struct.StructDefRNA, ptr %44, i64 0, i32 6, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !57
  %47 = icmp eq ptr %46, null
  br i1 %47, label %57, label %48

48:                                               ; preds = %42, %53
  %49 = phi ptr [ %55, %53 ], [ %46, %42 ]
  %50 = getelementptr inbounds %struct.FunctionDefRNA, ptr %49, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !140
  %52 = icmp eq ptr %51, %13
  br i1 %52, label %59, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.ContainerDefRNA, ptr %49, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !57
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %48, !llvm.loop !143

57:                                               ; preds = %53, %42
  %58 = getelementptr inbounds %struct.ContainerDefRNA, ptr %44, i64 0, i32 1
  br label %42

59:                                               ; preds = %32, %48
  %60 = phi ptr [ %49, %48 ], [ %33, %32 ]
  %61 = getelementptr inbounds %struct.FunctionDefRNA, ptr %60, i64 0, i32 3
  store ptr %2, ptr %61, align 8, !tbaa !306
  br label %62

62:                                               ; preds = %59, %16, %7
  %63 = phi ptr [ null, %7 ], [ %13, %59 ], [ %13, %16 ]
  ret ptr %63
}

declare ptr @BLI_findstring_ptr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @rna_def_function(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [512 x i8], align 16
  %4 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !74
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %49, label %6

6:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %3) #23
  %7 = tail call ptr @__ctype_b_loc() #25
  %8 = load ptr, ptr %7, align 8, !tbaa !57
  %9 = load i8, ptr %1, align 1, !tbaa !76
  %10 = zext i8 %9 to i64
  %11 = getelementptr inbounds i16, ptr %8, i64 %10
  %12 = load i16, ptr %11, align 2, !tbaa !40
  %13 = and i16 %12, 1024
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %6
  %16 = icmp eq i8 %9, 0
  br i1 %16, label %34, label %18

17:                                               ; preds = %6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(39) %3, ptr noundef nonnull align 1 dereferenceable(39) @.str.276, i64 39, i1 false) #23
  br label %45

18:                                               ; preds = %15, %29
  %19 = phi i64 [ %30, %29 ], [ 0, %15 ]
  %20 = phi i8 [ %32, %29 ], [ %9, %15 ]
  switch i8 %20, label %22 [
    i8 95, label %29
    i8 32, label %21
  ]

21:                                               ; preds = %18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %3, ptr noundef nonnull align 1 dereferenceable(40) @.str.278, i64 40, i1 false) #23
  br label %45

22:                                               ; preds = %18
  %23 = zext i8 %20 to i64
  %24 = getelementptr inbounds i16, ptr %8, i64 %23
  %25 = load i16, ptr %24, align 2, !tbaa !40
  %26 = and i16 %25, 8
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(73) %3, ptr noundef nonnull align 1 dereferenceable(73) @.str.279, i64 73, i1 false) #23
  br label %45

29:                                               ; preds = %22, %18
  %30 = add nuw i64 %19, 1
  %31 = getelementptr inbounds i8, ptr %1, i64 %30
  %32 = load i8, ptr %31, align 1, !tbaa !76
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %18, !llvm.loop !77

34:                                               ; preds = %29, %15
  br label %38

35:                                               ; preds = %38
  %36 = add nuw nsw i64 %39, 1
  %37 = icmp eq i64 %36, 30
  br i1 %37, label %48, label %38, !llvm.loop !78

38:                                               ; preds = %34, %35
  %39 = phi i64 [ %36, %35 ], [ 0, %34 ]
  %40 = getelementptr inbounds [31 x ptr], ptr @rna_validate_identifier.kwlist, i64 0, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !57
  %42 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %41) #24
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %35

44:                                               ; preds = %38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(35) %3, ptr noundef nonnull align 1 dereferenceable(35) @.str.280, i64 35, i1 false) #23
  br label %45

45:                                               ; preds = %17, %44, %28, %21
  %46 = load ptr, ptr @stderr, align 8, !tbaa !57
  %47 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %46, ptr noundef nonnull @.str.285, ptr noundef nonnull @__func__.rna_def_function, ptr noundef nonnull %1, ptr noundef nonnull %3) #26
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !79
  br label %48

48:                                               ; preds = %35, %45
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %3) #23
  br label %49

49:                                               ; preds = %48, %2
  %50 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %51 = call ptr %50(i64 noundef 80, ptr noundef nonnull @.str.286) #23
  %52 = getelementptr inbounds %struct.FunctionRNA, ptr %51, i64 0, i32 1
  store ptr %1, ptr %52, align 8, !tbaa !67
  %53 = getelementptr inbounds %struct.FunctionRNA, ptr %51, i64 0, i32 3
  store ptr %1, ptr %53, align 8, !tbaa !68
  %54 = getelementptr inbounds %struct.StructRNA, ptr %0, i64 0, i32 19
  store ptr null, ptr %51, align 8, !tbaa !52
  %55 = getelementptr inbounds %struct.StructRNA, ptr %0, i64 0, i32 19, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !55
  %57 = getelementptr inbounds %struct.Link, ptr %51, i64 0, i32 1
  store ptr %56, ptr %57, align 8, !tbaa !54
  %58 = icmp eq ptr %56, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %49
  store ptr %51, ptr %56, align 8, !tbaa !52
  br label %60

60:                                               ; preds = %59, %49
  %61 = load ptr, ptr %54, align 8, !tbaa !56
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  store ptr %51, ptr %54, align 8, !tbaa !56
  br label %64

64:                                               ; preds = %60, %63
  store ptr %51, ptr %55, align 8, !tbaa !55
  %65 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !74
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %95, label %67

67:                                               ; preds = %64
  %68 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 1, i32 1), align 8, !tbaa !57
  %69 = icmp eq ptr %68, null
  br i1 %69, label %79, label %70

70:                                               ; preds = %67, %75
  %71 = phi ptr [ %77, %75 ], [ %68, %67 ]
  %72 = getelementptr inbounds %struct.StructDefRNA, ptr %71, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !83
  %74 = icmp eq ptr %73, %0
  br i1 %74, label %79, label %75

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.ContainerDefRNA, ptr %71, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !57
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %70, !llvm.loop !136

79:                                               ; preds = %70, %75, %67
  %80 = phi ptr [ null, %67 ], [ %71, %70 ], [ null, %75 ]
  %81 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %82 = call ptr %81(i64 noundef 72, ptr noundef nonnull @.str.287) #23
  %83 = getelementptr inbounds %struct.StructDefRNA, ptr %80, i64 0, i32 6
  store ptr null, ptr %82, align 8, !tbaa !52
  %84 = getelementptr inbounds %struct.StructDefRNA, ptr %80, i64 0, i32 6, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !55
  %86 = getelementptr inbounds %struct.Link, ptr %82, i64 0, i32 1
  store ptr %85, ptr %86, align 8, !tbaa !54
  %87 = icmp eq ptr %85, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %79
  store ptr %82, ptr %85, align 8, !tbaa !52
  br label %89

89:                                               ; preds = %88, %79
  %90 = load ptr, ptr %83, align 8, !tbaa !56
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  store ptr %82, ptr %83, align 8, !tbaa !56
  br label %93

93:                                               ; preds = %89, %92
  store ptr %82, ptr %84, align 8, !tbaa !55
  %94 = getelementptr inbounds %struct.FunctionDefRNA, ptr %82, i64 0, i32 1
  store ptr %51, ptr %94, align 8, !tbaa !140
  br label %99

95:                                               ; preds = %64
  %96 = getelementptr inbounds %struct.FunctionRNA, ptr %51, i64 0, i32 2
  %97 = load i32, ptr %96, align 8, !tbaa !66
  %98 = or i32 %97, 512
  store i32 %98, ptr %96, align 8, !tbaa !66
  br label %99

99:                                               ; preds = %95, %93
  ret ptr %51
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @RNA_def_function_runtime(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc ptr @rna_def_function(ptr noundef %0, ptr noundef %1)
  %5 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !74
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @stderr, align 8, !tbaa !57
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.212, ptr noundef nonnull @__func__.RNA_def_function_runtime) #26
  br label %12

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.FunctionRNA, ptr %4, i64 0, i32 4
  store ptr %2, ptr %11, align 8, !tbaa !307
  br label %12

12:                                               ; preds = %10, %7
  ret ptr %4
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @RNA_def_function_return(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #14 {
  %3 = getelementptr inbounds %struct.PropertyRNA, ptr %1, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !51
  %5 = and i32 %4, 131072
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr @stderr, align 8, !tbaa !57
  %9 = getelementptr inbounds %struct.FunctionRNA, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !67
  %11 = getelementptr inbounds %struct.PropertyRNA, ptr %1, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !101
  %13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.256, ptr noundef nonnull @__func__.RNA_def_function_return, ptr noundef %10, ptr noundef %12) #26
  br label %28

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.PropertyRNA, ptr %1, i64 0, i32 12
  %16 = load i32, ptr %15, align 8, !tbaa !206
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr @stderr, align 8, !tbaa !57
  %20 = getelementptr inbounds %struct.FunctionRNA, ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !67
  %22 = getelementptr inbounds %struct.PropertyRNA, ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !101
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.257, ptr noundef nonnull @__func__.RNA_def_function_return, ptr noundef %21, ptr noundef %23) #26
  br label %28

25:                                               ; preds = %14
  %26 = getelementptr inbounds %struct.FunctionRNA, ptr %0, i64 0, i32 5
  store ptr %1, ptr %26, align 8, !tbaa !308
  %27 = or i32 %4, 8
  store i32 %27, ptr %3, align 8, !tbaa !51
  br label %28

28:                                               ; preds = %25, %18, %7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @RNA_def_function_output(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) local_unnamed_addr #11 {
  %3 = getelementptr inbounds %struct.PropertyRNA, ptr %1, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !51
  %5 = or i32 %4, 8
  store i32 %5, ptr %3, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @RNA_def_function_flag(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #11 {
  %3 = getelementptr inbounds %struct.FunctionRNA, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !66
  %5 = or i32 %4, %1
  store i32 %5, ptr %3, align 8, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @RNA_def_function_ui_description(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #20 {
  %3 = getelementptr inbounds %struct.FunctionRNA, ptr %0, i64 0, i32 3
  store ptr %1, ptr %3, align 8, !tbaa !68
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @rna_parameter_size(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !96
  %4 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 14
  %5 = load i32, ptr %4, align 8, !tbaa !207
  %6 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !51
  %8 = and i32 %7, 131072
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %33

10:                                               ; preds = %1
  %11 = icmp sgt i32 %5, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %10
  switch i32 %3, label %32 [
    i32 0, label %13
    i32 1, label %13
    i32 2, label %15
  ]

13:                                               ; preds = %12, %12
  %14 = shl i32 %5, 2
  br label %33

15:                                               ; preds = %12
  %16 = shl i32 %5, 2
  br label %33

17:                                               ; preds = %10
  switch i32 %3, label %32 [
    i32 0, label %33
    i32 1, label %33
    i32 4, label %33
    i32 2, label %33
    i32 3, label %18
    i32 5, label %24
    i32 6, label %31
  ]

18:                                               ; preds = %17
  %19 = and i32 %7, 8388608
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %33, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.StringPropertyRNA, ptr %0, i64 0, i32 7
  %23 = load i32, ptr %22, align 8, !tbaa !208
  br label %33

24:                                               ; preds = %17
  %25 = and i32 %7, 2048
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %24
  %28 = and i32 %7, 8388608
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, i32 8, i32 24
  br label %33

31:                                               ; preds = %17
  br label %33

32:                                               ; preds = %17, %12
  br label %33

33:                                               ; preds = %24, %27, %18, %17, %17, %17, %17, %1, %32, %31, %21, %15, %13
  %34 = phi i32 [ 8, %32 ], [ %16, %15 ], [ %14, %13 ], [ 16, %31 ], [ %23, %21 ], [ 16, %1 ], [ 4, %17 ], [ 4, %17 ], [ 4, %17 ], [ 4, %17 ], [ 8, %18 ], [ %30, %27 ], [ 8, %24 ]
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define dso_local void @RNA_enum_item_add(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = load i32, ptr %1, align 4, !tbaa !131
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %8 = tail call ptr %7(i64 noundef 320, ptr noundef nonnull @.str.258) #23
  br label %23

9:                                                ; preds = %3
  %10 = icmp sgt i32 %4, 7
  %11 = tail call i32 @llvm.ctpop.i32(i32 %4), !range !309
  %12 = icmp ult i32 %11, 2
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %25

14:                                               ; preds = %9
  %15 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %16 = zext nneg i32 %4 to i64
  %17 = mul nuw nsw i64 %16, 40
  %18 = mul nuw nsw i64 %16, 80
  %19 = tail call ptr %15(i64 noundef %18, ptr noundef nonnull @.str.258) #23
  %20 = load ptr, ptr %0, align 8, !tbaa !57
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %19, ptr align 8 %20, i64 %17, i1 false)
  %21 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  %22 = load ptr, ptr %0, align 8, !tbaa !57
  tail call void %21(ptr noundef %22) #23
  br label %23

23:                                               ; preds = %6, %14
  %24 = phi ptr [ %19, %14 ], [ %8, %6 ]
  store ptr %24, ptr %0, align 8, !tbaa !57
  br label %25

25:                                               ; preds = %23, %9
  %26 = load ptr, ptr %0, align 8, !tbaa !57
  %27 = sext i32 %4 to i64
  %28 = getelementptr inbounds %struct.EnumPropertyItem, ptr %26, i64 %27
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %28, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !310
  %29 = add nsw i32 %4, 1
  store i32 %29, ptr %1, align 4, !tbaa !131
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @RNA_enum_item_add_separator(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %1, align 4, !tbaa !131
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %7 = tail call ptr %6(i64 noundef 320, ptr noundef nonnull @.str.258) #23
  br label %22

8:                                                ; preds = %2
  %9 = icmp sgt i32 %3, 7
  %10 = tail call i32 @llvm.ctpop.i32(i32 %3), !range !309
  %11 = icmp ult i32 %10, 2
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %24

13:                                               ; preds = %8
  %14 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %15 = zext nneg i32 %3 to i64
  %16 = mul nuw nsw i64 %15, 40
  %17 = mul nuw nsw i64 %15, 80
  %18 = tail call ptr %14(i64 noundef %17, ptr noundef nonnull @.str.258) #23
  %19 = load ptr, ptr %0, align 8, !tbaa !57
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %18, ptr align 8 %19, i64 %16, i1 false)
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  %21 = load ptr, ptr %0, align 8, !tbaa !57
  tail call void %20(ptr noundef %21) #23
  br label %22

22:                                               ; preds = %13, %5
  %23 = phi ptr [ %7, %5 ], [ %18, %13 ]
  store ptr %23, ptr %0, align 8, !tbaa !57
  br label %24

24:                                               ; preds = %22, %8
  %25 = load ptr, ptr %0, align 8, !tbaa !57
  %26 = sext i32 %3 to i64
  %27 = getelementptr inbounds %struct.EnumPropertyItem, ptr %25, i64 %26
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %27, ptr noundef nonnull align 8 dereferenceable(40) @RNA_enum_item_add_separator.sepr, i64 40, i1 false), !tbaa.struct !310
  %28 = add nsw i32 %3, 1
  store i32 %28, ptr %1, align 4, !tbaa !131
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @RNA_enum_items_add(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.EnumPropertyItem, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !174
  %6 = icmp eq ptr %5, null
  br i1 %6, label %39, label %7

7:                                                ; preds = %3, %30
  %8 = phi ptr [ %35, %30 ], [ %2, %3 ]
  %9 = load i32, ptr %1, align 4, !tbaa !131
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %13 = tail call ptr %12(i64 noundef 320, ptr noundef nonnull @.str.258) #23
  br label %28

14:                                               ; preds = %7
  %15 = icmp sgt i32 %9, 7
  %16 = tail call i32 @llvm.ctpop.i32(i32 %9), !range !309
  %17 = icmp ult i32 %16, 2
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %19, label %30

19:                                               ; preds = %14
  %20 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %21 = zext nneg i32 %9 to i64
  %22 = mul nuw nsw i64 %21, 40
  %23 = mul nuw nsw i64 %21, 80
  %24 = tail call ptr %20(i64 noundef %23, ptr noundef nonnull @.str.258) #23
  %25 = load ptr, ptr %0, align 8, !tbaa !57
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %24, ptr align 8 %25, i64 %22, i1 false)
  %26 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  %27 = load ptr, ptr %0, align 8, !tbaa !57
  tail call void %26(ptr noundef %27) #23
  br label %28

28:                                               ; preds = %19, %11
  %29 = phi ptr [ %13, %11 ], [ %24, %19 ]
  store ptr %29, ptr %0, align 8, !tbaa !57
  br label %30

30:                                               ; preds = %28, %14
  %31 = load ptr, ptr %0, align 8, !tbaa !57
  %32 = sext i32 %9 to i64
  %33 = getelementptr inbounds %struct.EnumPropertyItem, ptr %31, i64 %32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %33, ptr noundef nonnull align 8 dereferenceable(40) %8, i64 40, i1 false), !tbaa.struct !310
  %34 = add nsw i32 %9, 1
  store i32 %34, ptr %1, align 4, !tbaa !131
  %35 = getelementptr inbounds %struct.EnumPropertyItem, ptr %8, i64 1
  %36 = getelementptr inbounds %struct.EnumPropertyItem, ptr %8, i64 1, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !174
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %7, !llvm.loop !311

39:                                               ; preds = %30, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @RNA_enum_items_add_value(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.EnumPropertyItem, ptr %2, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !174
  %7 = icmp eq ptr %6, null
  br i1 %7, label %44, label %8

8:                                                ; preds = %4, %39
  %9 = phi ptr [ %40, %39 ], [ %2, %4 ]
  %10 = load i32, ptr %9, align 8, !tbaa !234
  %11 = icmp eq i32 %10, %3
  br i1 %11, label %12, label %39

12:                                               ; preds = %8
  %13 = load i32, ptr %1, align 4, !tbaa !131
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %17 = tail call ptr %16(i64 noundef 320, ptr noundef nonnull @.str.258) #23
  br label %32

18:                                               ; preds = %12
  %19 = icmp sgt i32 %13, 7
  %20 = tail call i32 @llvm.ctpop.i32(i32 %13), !range !309
  %21 = icmp ult i32 %20, 2
  %22 = select i1 %19, i1 %21, i1 false
  br i1 %22, label %23, label %34

23:                                               ; preds = %18
  %24 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %25 = zext nneg i32 %13 to i64
  %26 = mul nuw nsw i64 %25, 40
  %27 = mul nuw nsw i64 %25, 80
  %28 = tail call ptr %24(i64 noundef %27, ptr noundef nonnull @.str.258) #23
  %29 = load ptr, ptr %0, align 8, !tbaa !57
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %28, ptr align 8 %29, i64 %26, i1 false)
  %30 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  %31 = load ptr, ptr %0, align 8, !tbaa !57
  tail call void %30(ptr noundef %31) #23
  br label %32

32:                                               ; preds = %23, %15
  %33 = phi ptr [ %17, %15 ], [ %28, %23 ]
  store ptr %33, ptr %0, align 8, !tbaa !57
  br label %34

34:                                               ; preds = %32, %18
  %35 = load ptr, ptr %0, align 8, !tbaa !57
  %36 = sext i32 %13 to i64
  %37 = getelementptr inbounds %struct.EnumPropertyItem, ptr %35, i64 %36
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %37, ptr noundef nonnull align 8 dereferenceable(40) %9, i64 40, i1 false), !tbaa.struct !310
  %38 = add nsw i32 %13, 1
  store i32 %38, ptr %1, align 4, !tbaa !131
  br label %44

39:                                               ; preds = %8
  %40 = getelementptr inbounds %struct.EnumPropertyItem, ptr %9, i64 1
  %41 = getelementptr inbounds %struct.EnumPropertyItem, ptr %9, i64 1, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !174
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %8, !llvm.loop !312

44:                                               ; preds = %39, %4, %34
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @RNA_enum_item_end(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %1, align 4, !tbaa !131
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %7 = tail call ptr %6(i64 noundef 320, ptr noundef nonnull @.str.258) #23
  br label %22

8:                                                ; preds = %2
  %9 = icmp sgt i32 %3, 7
  %10 = tail call i32 @llvm.ctpop.i32(i32 %3), !range !309
  %11 = icmp ult i32 %10, 2
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %24

13:                                               ; preds = %8
  %14 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %15 = zext nneg i32 %3 to i64
  %16 = mul nuw nsw i64 %15, 40
  %17 = mul nuw nsw i64 %15, 80
  %18 = tail call ptr %14(i64 noundef %17, ptr noundef nonnull @.str.258) #23
  %19 = load ptr, ptr %0, align 8, !tbaa !57
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %18, ptr align 8 %19, i64 %16, i1 false)
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  %21 = load ptr, ptr %0, align 8, !tbaa !57
  tail call void %20(ptr noundef %21) #23
  br label %22

22:                                               ; preds = %13, %5
  %23 = phi ptr [ %7, %5 ], [ %18, %13 ]
  store ptr %23, ptr %0, align 8, !tbaa !57
  br label %24

24:                                               ; preds = %22, %8
  %25 = load ptr, ptr %0, align 8, !tbaa !57
  %26 = sext i32 %3 to i64
  %27 = getelementptr inbounds %struct.EnumPropertyItem, ptr %25, i64 %26
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %27, ptr noundef nonnull align 8 dereferenceable(40) @RNA_enum_item_end.empty, i64 40, i1 false), !tbaa.struct !310
  %28 = add nsw i32 %3, 1
  store i32 %28, ptr %1, align 4, !tbaa !131
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @RNA_def_struct_duplicate_pointers(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.StructRNA, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !71
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @BLI_strdup(ptr noundef nonnull %3) #23
  store ptr %6, ptr %2, align 8, !tbaa !71
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct.StructRNA, ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !72
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = tail call ptr @BLI_strdup(ptr noundef nonnull %9) #23
  store ptr %12, ptr %8, align 8, !tbaa !72
  br label %13

13:                                               ; preds = %11, %7
  %14 = getelementptr inbounds %struct.StructRNA, ptr %0, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !73
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = tail call ptr @BLI_strdup(ptr noundef nonnull %15) #23
  store ptr %18, ptr %14, align 8, !tbaa !73
  br label %19

19:                                               ; preds = %17, %13
  %20 = getelementptr inbounds %struct.StructRNA, ptr %0, i64 0, i32 4
  %21 = load i32, ptr %20, align 8, !tbaa !70
  %22 = or i32 %21, 32
  store i32 %22, ptr %20, align 8, !tbaa !70
  ret void
}

declare ptr @BLI_strdup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @RNA_def_func_duplicate_pointers(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.FunctionRNA, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !67
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @BLI_strdup(ptr noundef nonnull %3) #23
  store ptr %6, ptr %2, align 8, !tbaa !67
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct.FunctionRNA, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !68
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = tail call ptr @BLI_strdup(ptr noundef nonnull %9) #23
  store ptr %12, ptr %8, align 8, !tbaa !68
  br label %13

13:                                               ; preds = %11, %7
  %14 = getelementptr inbounds %struct.FunctionRNA, ptr %0, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !66
  %16 = or i32 %15, 1024
  store i32 %16, ptr %14, align 8, !tbaa !66
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @RNA_def_property_duplicate_pointers(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.PropertyRNA, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !101
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ContainerRNA, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !209
  %9 = icmp eq ptr %8, null
  %10 = tail call ptr @BLI_strdup(ptr noundef nonnull %4) #23
  store ptr %10, ptr %3, align 8, !tbaa !101
  br i1 %9, label %14, label %11

11:                                               ; preds = %6
  %12 = load ptr, ptr %7, align 8, !tbaa !209
  %13 = tail call zeroext i8 @BLI_ghash_reinsert(ptr noundef %12, ptr noundef %10, ptr noundef %1, ptr noundef null, ptr noundef null) #23
  br label %14

14:                                               ; preds = %6, %11, %2
  %15 = getelementptr inbounds %struct.PropertyRNA, ptr %1, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !94
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = tail call ptr @BLI_strdup(ptr noundef nonnull %16) #23
  store ptr %19, ptr %15, align 8, !tbaa !94
  br label %20

20:                                               ; preds = %18, %14
  %21 = getelementptr inbounds %struct.PropertyRNA, ptr %1, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !95
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = tail call ptr @BLI_strdup(ptr noundef nonnull %22) #23
  store ptr %25, ptr %21, align 8, !tbaa !95
  br label %26

26:                                               ; preds = %24, %20
  %27 = getelementptr inbounds %struct.PropertyRNA, ptr %1, i64 0, i32 9
  %28 = load i32, ptr %27, align 8, !tbaa !96
  switch i32 %28, label %132 [
    i32 0, label %29
    i32 1, label %44
    i32 4, label %59
    i32 2, label %111
    i32 3, label %126
  ]

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.BoolPropertyRNA, ptr %1, i64 0, i32 10
  %31 = load ptr, ptr %30, align 8, !tbaa !166
  %32 = icmp eq ptr %31, null
  br i1 %32, label %132, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %35 = getelementptr inbounds %struct.PropertyRNA, ptr %1, i64 0, i32 14
  %36 = load i32, ptr %35, align 8, !tbaa !207
  %37 = zext i32 %36 to i64
  %38 = shl nuw nsw i64 %37, 2
  %39 = tail call ptr %34(i64 noundef %38, ptr noundef nonnull @.str.259) #23
  %40 = load ptr, ptr %30, align 8, !tbaa !166
  %41 = load i32, ptr %35, align 8, !tbaa !207
  %42 = zext i32 %41 to i64
  %43 = shl nuw nsw i64 %42, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %39, ptr align 4 %40, i64 %43, i1 false)
  store ptr %39, ptr %30, align 8, !tbaa !166
  br label %132

44:                                               ; preds = %26
  %45 = getelementptr inbounds %struct.IntPropertyRNA, ptr %1, i64 0, i32 17
  %46 = load ptr, ptr %45, align 8, !tbaa !168
  %47 = icmp eq ptr %46, null
  br i1 %47, label %132, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %50 = getelementptr inbounds %struct.PropertyRNA, ptr %1, i64 0, i32 14
  %51 = load i32, ptr %50, align 8, !tbaa !207
  %52 = zext i32 %51 to i64
  %53 = shl nuw nsw i64 %52, 2
  %54 = tail call ptr %49(i64 noundef %53, ptr noundef nonnull @.str.259) #23
  %55 = load ptr, ptr %45, align 8, !tbaa !168
  %56 = load i32, ptr %50, align 8, !tbaa !207
  %57 = zext i32 %56 to i64
  %58 = shl nuw nsw i64 %57, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %54, ptr align 4 %55, i64 %58, i1 false)
  store ptr %54, ptr %45, align 8, !tbaa !168
  br label %132

59:                                               ; preds = %26
  %60 = getelementptr inbounds %struct.EnumPropertyRNA, ptr %1, i64 0, i32 7
  %61 = load ptr, ptr %60, align 8, !tbaa !173
  %62 = icmp eq ptr %61, null
  br i1 %62, label %132, label %63

63:                                               ; preds = %59
  %64 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %65 = getelementptr inbounds %struct.EnumPropertyRNA, ptr %1, i64 0, i32 8
  %66 = load i32, ptr %65, align 8, !tbaa !164
  %67 = add nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = mul nsw i64 %68, 40
  %70 = tail call ptr %64(i64 noundef %69, ptr noundef nonnull @.str.259) #23
  %71 = load ptr, ptr %60, align 8, !tbaa !173
  %72 = load i32, ptr %65, align 8, !tbaa !164
  %73 = add nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = mul nsw i64 %74, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %70, ptr align 8 %71, i64 %75, i1 false)
  store ptr %70, ptr %60, align 8, !tbaa !173
  %76 = load i32, ptr %65, align 8, !tbaa !164
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %132

78:                                               ; preds = %63, %106
  %79 = phi i64 [ %107, %106 ], [ 0, %63 ]
  %80 = load ptr, ptr %60, align 8, !tbaa !173
  %81 = getelementptr inbounds %struct.EnumPropertyItem, ptr %80, i64 %79, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !174
  %83 = icmp eq ptr %82, null
  br i1 %83, label %88, label %84

84:                                               ; preds = %78
  %85 = tail call ptr @BLI_strdup(ptr noundef nonnull %82) #23
  %86 = load ptr, ptr %60, align 8, !tbaa !173
  %87 = getelementptr inbounds %struct.EnumPropertyItem, ptr %86, i64 %79, i32 1
  store ptr %85, ptr %87, align 8, !tbaa !174
  br label %88

88:                                               ; preds = %84, %78
  %89 = load ptr, ptr %60, align 8, !tbaa !173
  %90 = getelementptr inbounds %struct.EnumPropertyItem, ptr %89, i64 %79, i32 3
  %91 = load ptr, ptr %90, align 8, !tbaa !176
  %92 = icmp eq ptr %91, null
  br i1 %92, label %97, label %93

93:                                               ; preds = %88
  %94 = tail call ptr @BLI_strdup(ptr noundef nonnull %91) #23
  %95 = load ptr, ptr %60, align 8, !tbaa !173
  %96 = getelementptr inbounds %struct.EnumPropertyItem, ptr %95, i64 %79, i32 3
  store ptr %94, ptr %96, align 8, !tbaa !176
  br label %97

97:                                               ; preds = %93, %88
  %98 = load ptr, ptr %60, align 8, !tbaa !173
  %99 = getelementptr inbounds %struct.EnumPropertyItem, ptr %98, i64 %79, i32 4
  %100 = load ptr, ptr %99, align 8, !tbaa !177
  %101 = icmp eq ptr %100, null
  br i1 %101, label %106, label %102

102:                                              ; preds = %97
  %103 = tail call ptr @BLI_strdup(ptr noundef nonnull %100) #23
  %104 = load ptr, ptr %60, align 8, !tbaa !173
  %105 = getelementptr inbounds %struct.EnumPropertyItem, ptr %104, i64 %79, i32 4
  store ptr %103, ptr %105, align 8, !tbaa !177
  br label %106

106:                                              ; preds = %97, %102
  %107 = add nuw nsw i64 %79, 1
  %108 = load i32, ptr %65, align 8, !tbaa !164
  %109 = sext i32 %108 to i64
  %110 = icmp slt i64 %107, %109
  br i1 %110, label %78, label %132, !llvm.loop !313

111:                                              ; preds = %26
  %112 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %1, i64 0, i32 18
  %113 = load ptr, ptr %112, align 8, !tbaa !170
  %114 = icmp eq ptr %113, null
  br i1 %114, label %132, label %115

115:                                              ; preds = %111
  %116 = load ptr, ptr @MEM_callocN, align 8, !tbaa !57
  %117 = getelementptr inbounds %struct.PropertyRNA, ptr %1, i64 0, i32 14
  %118 = load i32, ptr %117, align 8, !tbaa !207
  %119 = zext i32 %118 to i64
  %120 = shl nuw nsw i64 %119, 2
  %121 = tail call ptr %116(i64 noundef %120, ptr noundef nonnull @.str.259) #23
  %122 = load ptr, ptr %112, align 8, !tbaa !170
  %123 = load i32, ptr %117, align 8, !tbaa !207
  %124 = zext i32 %123 to i64
  %125 = shl nuw nsw i64 %124, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %121, ptr align 4 %122, i64 %125, i1 false)
  store ptr %121, ptr %112, align 8, !tbaa !170
  br label %132

126:                                              ; preds = %26
  %127 = getelementptr inbounds %struct.StringPropertyRNA, ptr %1, i64 0, i32 8
  %128 = load ptr, ptr %127, align 8, !tbaa !179
  %129 = icmp eq ptr %128, null
  br i1 %129, label %132, label %130

130:                                              ; preds = %126
  %131 = tail call ptr @BLI_strdup(ptr noundef nonnull %128) #23
  store ptr %131, ptr %127, align 8, !tbaa !179
  br label %132

132:                                              ; preds = %106, %63, %126, %130, %111, %115, %59, %44, %48, %29, %33, %26
  %133 = getelementptr inbounds %struct.PropertyRNA, ptr %1, i64 0, i32 4
  %134 = load i32, ptr %133, align 8, !tbaa !51
  %135 = or i32 %134, 32768
  store i32 %135, ptr %133, align 8, !tbaa !51
  ret void
}

declare zeroext i8 @BLI_ghash_reinsert(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @RNA_def_property_free_identifier(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ContainerRNA, ptr %0, i64 0, i32 3
  br label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %3, %2 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = icmp eq ptr %6, null
  br i1 %7, label %48, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.PropertyRNA, ptr %6, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !101
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) %1) #24
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %4, !llvm.loop !314

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.PropertyRNA, ptr %6, i64 0, i32 4
  %15 = load i32, ptr %14, align 8, !tbaa !51
  %16 = and i32 %15, 512
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %48, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.ContainerRNA, ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !209
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = tail call zeroext i8 @BLI_ghash_remove(ptr noundef nonnull %20, ptr noundef %10, ptr noundef null, ptr noundef null) #23
  br label %24

24:                                               ; preds = %22, %18
  tail call void @RNA_def_property_free_pointers(ptr noundef nonnull %6)
  %25 = load ptr, ptr %6, align 8, !tbaa !52
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.Link, ptr %6, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !54
  %30 = getelementptr inbounds %struct.Link, ptr %25, i64 0, i32 1
  store ptr %29, ptr %30, align 8, !tbaa !54
  br label %31

31:                                               ; preds = %27, %24
  %32 = getelementptr inbounds %struct.Link, ptr %6, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !54
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  store ptr %25, ptr %33, align 8, !tbaa !52
  br label %36

36:                                               ; preds = %35, %31
  %37 = getelementptr inbounds %struct.ContainerRNA, ptr %0, i64 0, i32 3, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !55
  %39 = icmp eq ptr %38, %6
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store ptr %33, ptr %37, align 8, !tbaa !55
  br label %41

41:                                               ; preds = %40, %36
  %42 = load ptr, ptr %3, align 8, !tbaa !56
  %43 = icmp eq ptr %42, %6
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load ptr, ptr %6, align 8, !tbaa !52
  store ptr %45, ptr %3, align 8, !tbaa !56
  br label %46

46:                                               ; preds = %41, %44
  %47 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  tail call void %47(ptr noundef nonnull %6) #23
  br label %48

48:                                               ; preds = %4, %13, %46
  %49 = phi i32 [ 1, %46 ], [ -1, %13 ], [ 0, %4 ]
  ret i32 %49
}

declare void @rna_iterator_array_begin(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare ptr @rna_iterator_array_get(ptr noundef) local_unnamed_addr #2

declare void @BKE_library_filepath_set(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @id_copy(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare void @BKE_material_append_id(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @WM_main_add_notifier(i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_material_pop_id(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @BKE_material_clear_id(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare zeroext i8 @BKE_vfont_is_builtin(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #4

declare i32 @DNA_elem_array_size(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BLI_ghash_remove(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr, i32) local_unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #22

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree nounwind willreturn memory(argmem: read) }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nounwind }
attributes #24 = { nounwind willreturn memory(read) }
attributes #25 = { nounwind willreturn memory(none) }
attributes #26 = { cold }

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
!34 = !{!35, !37, i64 16}
!35 = !{!"PointerRNA", !36, i64 0, !37, i64 8, !37, i64 16}
!36 = !{!"", !37, i64 0}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!41, !41, i64 0}
!41 = !{!"short", !38, i64 0}
!42 = !{!43, !41, i64 98}
!43 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !41, i64 98, !44, i64 100, !44, i64 104, !44, i64 108, !37, i64 112}
!44 = !{!"int", !38, i64 0}
!45 = !{!46, !37, i64 24}
!46 = !{!"StructRNA", !47, i64 0, !37, i64 40, !37, i64 48, !37, i64 56, !44, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !44, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !48, i64 184}
!47 = !{!"ContainerRNA", !37, i64 0, !37, i64 8, !37, i64 16, !48, i64 24}
!48 = !{!"ListBase", !37, i64 0, !37, i64 8}
!49 = !{!50, !37, i64 0}
!50 = !{!"PropertyRNA", !37, i64 0, !37, i64 8, !44, i64 16, !37, i64 24, !44, i64 32, !37, i64 40, !37, i64 48, !44, i64 56, !37, i64 64, !44, i64 72, !44, i64 76, !37, i64 80, !44, i64 88, !38, i64 92, !44, i64 104, !37, i64 112, !44, i64 120, !37, i64 128, !37, i64 136, !44, i64 144, !44, i64 148, !37, i64 152, !37, i64 160}
!51 = !{!50, !44, i64 32}
!52 = !{!53, !37, i64 0}
!53 = !{!"Link", !37, i64 0, !37, i64 8}
!54 = !{!53, !37, i64 8}
!55 = !{!48, !37, i64 8}
!56 = !{!48, !37, i64 0}
!57 = !{!37, !37, i64 0}
!58 = distinct !{!58, !59, !60}
!59 = !{!"llvm.loop.mustprogress"}
!60 = !{!"llvm.loop.unroll.disable"}
!61 = !{!46, !37, i64 184}
!62 = !{!63, !37, i64 0}
!63 = !{!"FunctionRNA", !47, i64 0, !37, i64 40, !44, i64 48, !37, i64 56, !37, i64 64, !37, i64 72}
!64 = !{!63, !37, i64 24}
!65 = distinct !{!65, !59, !60}
!66 = !{!63, !44, i64 48}
!67 = !{!63, !37, i64 40}
!68 = !{!63, !37, i64 56}
!69 = distinct !{!69, !59, !60}
!70 = !{!46, !44, i64 64}
!71 = !{!46, !37, i64 40}
!72 = !{!46, !37, i64 72}
!73 = !{!46, !37, i64 80}
!74 = !{!75, !44, i64 56}
!75 = !{!"BlenderDefRNA", !37, i64 0, !48, i64 8, !48, i64 24, !37, i64 40, !44, i64 48, !44, i64 52, !44, i64 56, !44, i64 60, !44, i64 64}
!76 = !{!38, !38, i64 0}
!77 = distinct !{!77, !59, !60}
!78 = distinct !{!78, !59, !60}
!79 = !{!75, !44, i64 48}
!80 = !{!75, !37, i64 40}
!81 = !{!46, !37, i64 48}
!82 = !{!46, !37, i64 120}
!83 = !{!84, !37, i64 40}
!84 = !{!"StructDefRNA", !85, i64 0, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !48, i64 80}
!85 = !{!"ContainerDefRNA", !37, i64 0, !37, i64 8, !37, i64 16, !48, i64 24}
!86 = distinct !{!86, !59, !60}
!87 = !{!46, !37, i64 88}
!88 = !{!46, !44, i64 96}
!89 = !{!84, !37, i64 56}
!90 = !{!84, !37, i64 64}
!91 = !{}
!92 = !{!46, !37, i64 104}
!93 = !{!46, !37, i64 112}
!94 = !{!50, !37, i64 40}
!95 = !{!50, !37, i64 48}
!96 = !{!50, !44, i64 72}
!97 = !{!98, !37, i64 200}
!98 = !{!"PointerPropertyRNA", !50, i64 0, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200}
!99 = !{!100, !37, i64 232}
!100 = !{!"CollectionPropertyRNA", !50, i64 0, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !37, i64 208, !37, i64 216, !37, i64 224, !37, i64 232}
!101 = !{!50, !37, i64 24}
!102 = !{!100, !37, i64 168}
!103 = !{!100, !37, i64 176}
!104 = !{!100, !37, i64 184}
!105 = !{!100, !37, i64 192}
!106 = !{!100, !37, i64 216}
!107 = !{!98, !37, i64 168}
!108 = !{!35, !37, i64 8}
!109 = !{!35, !37, i64 0}
!110 = !{i64 0, i64 8, !57, i64 8, i64 8, !57, i64 16, i64 8, !57}
!111 = !{!112, !37, i64 48}
!112 = !{!"CollectionPropertyIterator", !35, i64 0, !35, i64 24, !37, i64 48, !38, i64 56, !44, i64 96, !44, i64 100, !35, i64 104, !44, i64 128}
!113 = !{!112, !44, i64 128}
!114 = !{!43, !44, i64 100}
!115 = !{!43, !37, i64 24}
!116 = !{!117, !37, i64 88}
!117 = !{!"IDProperty", !37, i64 0, !37, i64 8, !38, i64 16, !38, i64 17, !41, i64 18, !38, i64 20, !44, i64 84, !118, i64 88, !44, i64 120, !44, i64 124}
!118 = !{!"IDPropertyData", !37, i64 0, !48, i64 8, !44, i64 24, !44, i64 28}
!119 = !{!117, !44, i64 120}
!120 = !{!121}
!121 = distinct !{!121, !122, !"PropertyGroupItem_idp_array_get: argument 0"}
!122 = distinct !{!122, !"PropertyGroupItem_idp_array_get"}
!123 = !{!124}
!124 = distinct !{!124, !125, !"PropertyGroupItem_idp_array_get: argument 0"}
!125 = distinct !{!125, !"PropertyGroupItem_idp_array_get"}
!126 = !{!127, !37, i64 2184}
!127 = !{!"Library", !43, i64 0, !37, i64 120, !37, i64 128, !38, i64 136, !38, i64 1160, !37, i64 2184, !37, i64 2192}
!128 = !{!127, !37, i64 2192}
!129 = !{!130, !37, i64 0}
!130 = !{!"ParameterList", !37, i64 0, !37, i64 8, !44, i64 16, !44, i64 20, !44, i64 24}
!131 = !{!44, !44, i64 0}
!132 = !{!133, !37, i64 24}
!133 = !{!"PropertyDefRNA", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !44, i64 72, !44, i64 76, !37, i64 80, !37, i64 88, !44, i64 96, !44, i64 100, !44, i64 104, !44, i64 108}
!134 = distinct !{!134, !59, !60}
!135 = distinct !{!135, !59, !60}
!136 = distinct !{!136, !59, !60}
!137 = distinct !{!137, !59, !60}
!138 = distinct !{!138, !59, !60}
!139 = distinct !{!139, !59, !60}
!140 = !{!141, !37, i64 40}
!141 = !{!"FunctionDefRNA", !85, i64 0, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64}
!142 = distinct !{!142, !59, !60}
!143 = distinct !{!143, !59, !60}
!144 = distinct !{!144, !59, !60}
!145 = distinct !{!145, !59, !60}
!146 = distinct !{!146, !59, !60}
!147 = distinct !{!147, !59, !60}
!148 = distinct !{!148, !59, !60}
!149 = distinct !{!149, !59, !60}
!150 = distinct !{!150, !59, !60}
!151 = distinct !{!151, !59, !60}
!152 = distinct !{!152, !59, !60}
!153 = !{!75, !37, i64 0}
!154 = !{!155, !37, i64 16}
!155 = !{!"AllocDefRNA", !37, i64 0, !37, i64 8, !37, i64 16}
!156 = distinct !{!156, !59, !60}
!157 = distinct !{!157, !59, !60}
!158 = distinct !{!158, !59, !60}
!159 = !{!75, !44, i64 60}
!160 = !{!161, !37, i64 24}
!161 = !{!"ExtensionRNA", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24}
!162 = !{!161, !37, i64 0}
!163 = !{!50, !37, i64 160}
!164 = !{!165, !44, i64 224}
!165 = !{!"EnumPropertyRNA", !50, i64 0, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !37, i64 208, !37, i64 216, !44, i64 224, !44, i64 228}
!166 = !{!167, !37, i64 240}
!167 = !{!"BoolPropertyRNA", !50, i64 0, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !37, i64 208, !37, i64 216, !37, i64 224, !44, i64 232, !37, i64 240}
!168 = !{!169, !37, i64 272}
!169 = !{!"IntPropertyRNA", !50, i64 0, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !37, i64 208, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !44, i64 248, !44, i64 252, !44, i64 256, !44, i64 260, !44, i64 264, !44, i64 268, !37, i64 272}
!170 = !{!171, !37, i64 280}
!171 = !{!"FloatPropertyRNA", !50, i64 0, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !37, i64 208, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !172, i64 248, !172, i64 252, !172, i64 256, !172, i64 260, !172, i64 264, !44, i64 268, !172, i64 272, !37, i64 280}
!172 = !{!"float", !38, i64 0}
!173 = !{!165, !37, i64 216}
!174 = !{!175, !37, i64 8}
!175 = !{!"EnumPropertyItem", !44, i64 0, !37, i64 8, !44, i64 16, !37, i64 24, !37, i64 32}
!176 = !{!175, !37, i64 24}
!177 = !{!175, !37, i64 32}
!178 = distinct !{!178, !59, !60}
!179 = !{!180, !37, i64 224}
!180 = !{!"StringPropertyRNA", !50, i64 0, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !37, i64 208, !44, i64 216, !37, i64 224}
!181 = distinct !{!181, !59, !60}
!182 = distinct !{!182, !59, !60}
!183 = !{!184, !37, i64 0}
!184 = !{!"BlenderRNA", !48, i64 0}
!185 = !{!46, !37, i64 0}
!186 = distinct !{!186, !59, !60}
!187 = distinct !{!187, !59, !60}
!188 = !{i32 0, i32 2}
!189 = !{!169, !44, i64 256}
!190 = !{!169, !44, i64 260}
!191 = !{!169, !44, i64 248}
!192 = !{!169, !44, i64 252}
!193 = !{!169, !44, i64 264}
!194 = !{!171, !172, i64 256}
!195 = !{!171, !172, i64 260}
!196 = !{!171, !172, i64 248}
!197 = !{!171, !172, i64 252}
!198 = !{!171, !172, i64 264}
!199 = !{!171, !44, i64 268}
!200 = !{!133, !37, i64 16}
!201 = !{!50, !44, i64 16}
!202 = !{!50, !44, i64 76}
!203 = !{!50, !37, i64 64}
!204 = !{!50, !44, i64 148}
!205 = !{!75, !44, i64 52}
!206 = !{!50, !44, i64 88}
!207 = !{!50, !44, i64 104}
!208 = !{!180, !44, i64 216}
!209 = !{!47, !37, i64 16}
!210 = !{!100, !37, i64 200}
!211 = !{!100, !37, i64 208}
!212 = !{!100, !37, i64 224}
!213 = !{!98, !37, i64 176}
!214 = !{!98, !37, i64 184}
!215 = !{!98, !37, i64 192}
!216 = distinct !{!216, !59, !60}
!217 = !{!84, !37, i64 72}
!218 = distinct !{!218, !59, !60}
!219 = !{!46, !37, i64 128}
!220 = !{!46, !37, i64 136}
!221 = !{!46, !37, i64 176}
!222 = !{!46, !37, i64 152}
!223 = !{!46, !37, i64 160}
!224 = !{!46, !37, i64 168}
!225 = !{!46, !37, i64 144}
!226 = !{!133, !37, i64 64}
!227 = !{!133, !44, i64 100}
!228 = !{!133, !44, i64 96}
!229 = !{!133, !37, i64 80}
!230 = !{!133, !37, i64 88}
!231 = !{!133, !44, i64 76}
!232 = distinct !{!232, !59, !60}
!233 = !{!50, !44, i64 56}
!234 = !{!175, !44, i64 0}
!235 = !{!165, !44, i64 228}
!236 = distinct !{!236, !59, !60}
!237 = distinct !{!237, !59, !60}
!238 = !{!167, !44, i64 232}
!239 = !{!169, !44, i64 268}
!240 = !{!171, !172, i64 272}
!241 = distinct !{!241, !59, !60}
!242 = distinct !{!242, !59, !60}
!243 = !{!133, !37, i64 32}
!244 = !{!133, !37, i64 56}
!245 = !{!133, !44, i64 72}
!246 = !{!247, !44, i64 16}
!247 = !{!"DNAStructMember", !37, i64 0, !37, i64 8, !44, i64 16, !44, i64 20}
!248 = !{!133, !37, i64 40}
!249 = !{!133, !37, i64 48}
!250 = !{!247, !37, i64 0}
!251 = !{!247, !44, i64 20}
!252 = !{!133, !44, i64 104}
!253 = !{!133, !44, i64 108}
!254 = !{!255, !37, i64 56}
!255 = !{!"SDNA", !37, i64 0, !44, i64 8, !44, i64 12, !37, i64 16, !44, i64 24, !44, i64 28, !37, i64 32, !37, i64 40, !44, i64 48, !37, i64 56, !37, i64 64, !44, i64 72}
!256 = !{!255, !37, i64 16}
!257 = distinct !{!257, !59, !60}
!258 = distinct !{!258, !59, !60}
!259 = distinct !{!259, !60}
!260 = !{!255, !37, i64 32}
!261 = !{!247, !37, i64 8}
!262 = distinct !{!262, !59, !60}
!263 = distinct !{!263, !59, !60}
!264 = !{!50, !37, i64 128}
!265 = !{!50, !37, i64 136}
!266 = !{!50, !44, i64 120}
!267 = !{!50, !37, i64 112}
!268 = !{!50, !37, i64 80}
!269 = !{!167, !37, i64 184}
!270 = !{!167, !37, i64 192}
!271 = !{!167, !37, i64 168}
!272 = !{!167, !37, i64 176}
!273 = !{!167, !37, i64 200}
!274 = !{!167, !37, i64 208}
!275 = !{!167, !37, i64 216}
!276 = !{!167, !37, i64 224}
!277 = !{!169, !37, i64 184}
!278 = !{!169, !37, i64 168}
!279 = !{!169, !37, i64 200}
!280 = !{!169, !37, i64 208}
!281 = !{!169, !37, i64 216}
!282 = !{!169, !37, i64 240}
!283 = !{!169, !37, i64 224}
!284 = !{!169, !37, i64 232}
!285 = !{!171, !37, i64 184}
!286 = !{!171, !37, i64 168}
!287 = !{!171, !37, i64 200}
!288 = !{!171, !37, i64 208}
!289 = !{!171, !37, i64 216}
!290 = !{!171, !37, i64 240}
!291 = !{!171, !37, i64 224}
!292 = !{!171, !37, i64 232}
!293 = !{!165, !37, i64 168}
!294 = !{!165, !37, i64 176}
!295 = !{!165, !37, i64 184}
!296 = !{!165, !37, i64 192}
!297 = !{!165, !37, i64 200}
!298 = !{!165, !37, i64 208}
!299 = !{!180, !37, i64 168}
!300 = !{!180, !37, i64 176}
!301 = !{!180, !37, i64 184}
!302 = !{!180, !37, i64 192}
!303 = !{!180, !37, i64 200}
!304 = !{!180, !37, i64 208}
!305 = !{!50, !37, i64 152}
!306 = !{!141, !37, i64 56}
!307 = !{!63, !37, i64 64}
!308 = !{!63, !37, i64 72}
!309 = !{i32 0, i32 32}
!310 = !{i64 0, i64 4, !131, i64 8, i64 8, !57, i64 16, i64 4, !131, i64 24, i64 8, !57, i64 32, i64 8, !57}
!311 = distinct !{!311, !59, !60}
!312 = distinct !{!312, !59, !60}
!313 = distinct !{!313, !59, !60}
!314 = distinct !{!314, !59, !60}
