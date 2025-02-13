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
%struct.StructDefRNA = type { %struct.ContainerDefRNA, ptr, ptr, ptr, ptr, ptr, %struct.ListBase }
%struct.ContainerDefRNA = type { ptr, ptr, ptr, %struct.ListBase }
%struct.CollectionPropertyIterator = type { %struct.PointerRNA, %struct.PointerRNA, ptr, %union.anon, i32, i32, %struct.PointerRNA, i32 }
%union.anon = type { %struct.ArrayIterator }
%struct.ArrayIterator = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.IDProperty = type { ptr, ptr, i8, i8, i16, [64 x i8], i32, %struct.IDPropertyData, i32, i32 }
%struct.IDPropertyData = type { ptr, %struct.ListBase, i32, i32 }
%struct.Library = type { %struct.ID, ptr, ptr, [1024 x i8], [1024 x i8], ptr, ptr }
%struct.Link = type { ptr, ptr }
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
@DefRNA = dso_local global %struct.BlenderDefRNA { ptr null, %struct.ListBase zeroinitializer, %struct.ListBase zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 1, i32 1 }, align 8
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
@RNA_enum_item_add_separator.sepr = internal global %struct.EnumPropertyItem { i32 0, ptr @.str.2, i32 0, ptr null, ptr null }, align 8
@RNA_enum_item_end.empty = internal global %struct.EnumPropertyItem zeroinitializer, align 8
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
@switch.table.rna_property_type_sizeof = private unnamed_addr constant [7 x i64] [i64 248, i64 280, i64 288, i64 232, i64 232, i64 208, i64 240], align 8
@reltable.RNA_property_typename = private unnamed_addr constant [7 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.260 to i64), i64 ptrtoint (ptr @reltable.RNA_property_typename to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.261 to i64), i64 ptrtoint (ptr @reltable.RNA_property_typename to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.262 to i64), i64 ptrtoint (ptr @reltable.RNA_property_typename to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.263 to i64), i64 ptrtoint (ptr @reltable.RNA_property_typename to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.264 to i64), i64 ptrtoint (ptr @reltable.RNA_property_typename to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.265 to i64), i64 ptrtoint (ptr @reltable.RNA_property_typename to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.266 to i64), i64 ptrtoint (ptr @reltable.RNA_property_typename to i64)) to i32)], align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @rna_ID_name_get(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 4, i64 2
  %6 = tail call ptr @BLI_strncpy(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #25
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @rna_ID_name_length(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 4, i64 2
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #26
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @rna_ID_name_set(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 4
  %6 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 4, i64 2
  %7 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %6, ptr noundef %1, i64 noundef 64) #25
  tail call void @test_idbutton(ptr noundef nonnull %5) #25
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_strncpy_utf8(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @test_idbutton(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local signext i16 @RNA_type_to_ID_code(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %0, ptr noundef nonnull @RNA_Action) #25
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %98

4:                                                ; preds = %1
  %5 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %0, ptr noundef nonnull @RNA_Armature) #25
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %98

7:                                                ; preds = %4
  %8 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %0, ptr noundef nonnull @RNA_Brush) #25
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %98

10:                                               ; preds = %7
  %11 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %0, ptr noundef nonnull @RNA_Camera) #25
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %98

13:                                               ; preds = %10
  %14 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %0, ptr noundef nonnull @RNA_Curve) #25
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %98

16:                                               ; preds = %13
  %17 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %0, ptr noundef nonnull @RNA_GreasePencil) #25
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %98

19:                                               ; preds = %16
  %20 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %0, ptr noundef nonnull @RNA_Group) #25
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %98

22:                                               ; preds = %19
  %23 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %0, ptr noundef nonnull @RNA_Image) #25
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %98

25:                                               ; preds = %22
  %26 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %0, ptr noundef nonnull @RNA_Key) #25
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %98

28:                                               ; preds = %25
  %29 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %0, ptr noundef nonnull @RNA_Lamp) #25
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %98

31:                                               ; preds = %28
  %32 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %0, ptr noundef nonnull @RNA_Library) #25
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %98

34:                                               ; preds = %31
  %35 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %0, ptr noundef nonnull @RNA_FreestyleLineStyle) #25
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %98

37:                                               ; preds = %34
  %38 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %0, ptr noundef nonnull @RNA_Lattice) #25
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %98

40:                                               ; preds = %37
  %41 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %0, ptr noundef nonnull @RNA_Material) #25
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %98

43:                                               ; preds = %40
  %44 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %0, ptr noundef nonnull @RNA_MetaBall) #25
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %98

46:                                               ; preds = %43
  %47 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %0, ptr noundef nonnull @RNA_NodeTree) #25
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %98

49:                                               ; preds = %46
  %50 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %0, ptr noundef nonnull @RNA_Mesh) #25
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %98

52:                                               ; preds = %49
  %53 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %0, ptr noundef nonnull @RNA_Object) #25
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %98

55:                                               ; preds = %52
  %56 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %0, ptr noundef nonnull @RNA_ParticleSettings) #25
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %98

58:                                               ; preds = %55
  %59 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %0, ptr noundef nonnull @RNA_Scene) #25
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %98

61:                                               ; preds = %58
  %62 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %0, ptr noundef nonnull @RNA_Screen) #25
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %98

64:                                               ; preds = %61
  %65 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %0, ptr noundef nonnull @RNA_Speaker) #25
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %98

67:                                               ; preds = %64
  %68 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %0, ptr noundef nonnull @RNA_Sound) #25
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %98

70:                                               ; preds = %67
  %71 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %0, ptr noundef nonnull @RNA_Text) #25
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %98

73:                                               ; preds = %70
  %74 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %0, ptr noundef nonnull @RNA_Texture) #25
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %98

76:                                               ; preds = %73
  %77 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %0, ptr noundef nonnull @RNA_VectorFont) #25
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %98

79:                                               ; preds = %76
  %80 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %0, ptr noundef nonnull @RNA_World) #25
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %98

82:                                               ; preds = %79
  %83 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %0, ptr noundef nonnull @RNA_WindowManager) #25
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %85, label %98

85:                                               ; preds = %82
  %86 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %0, ptr noundef nonnull @RNA_MovieClip) #25
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %85
  %89 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %0, ptr noundef nonnull @RNA_Mask) #25
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %88
  %92 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %0, ptr noundef nonnull @RNA_Palette) #25
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %91
  %95 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %0, ptr noundef nonnull @RNA_PaintCurve) #25
  %96 = icmp eq i8 %95, 0
  %97 = select i1 %96, i16 0, i16 17232
  br label %98

98:                                               ; preds = %94, %91, %88, %85, %82, %79, %76, %73, %70, %67, %64, %61, %58, %55, %52, %49, %46, %43, %40, %37, %34, %31, %28, %25, %22, %19, %16, %13, %10, %7, %4, %1
  %99 = phi i16 [ 17217, %1 ], [ 21057, %4 ], [ 21058, %7 ], [ 16707, %10 ], [ 21827, %13 ], [ 17479, %16 ], [ 21063, %19 ], [ 19785, %22 ], [ 17739, %25 ], [ 16716, %28 ], [ 18764, %31 ], [ 21324, %34 ], [ 21580, %37 ], [ 16717, %40 ], [ 16973, %43 ], [ 21582, %46 ], [ 17741, %49 ], [ 16975, %52 ], [ 16720, %55 ], [ 17235, %58 ], [ 21075, %61 ], [ 19283, %64 ], [ 20307, %67 ], [ 22612, %70 ], [ 17748, %73 ], [ 18006, %76 ], [ 20311, %79 ], [ 19799, %82 ], [ 17229, %85 ], [ 21325, %88 ], [ 19536, %91 ], [ %97, %94 ]
  ret i16 %99
}

; Function Attrs: optsize
declare zeroext i8 @RNA_struct_is_a(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef nonnull ptr @rna_ID_refine(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 4
  %5 = load i16, ptr %4, align 8, !tbaa !40
  %6 = tail call ptr @ID_code_to_RNA_type(i16 noundef signext %5) #27
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @rna_ID_idprops(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = tail call ptr @IDP_GetProperties(ptr noundef %4, i8 noundef zeroext %1) #25
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @IDP_GetProperties(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
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
  tail call void @id_us_plus(ptr noundef nonnull %4) #25
  br label %16

13:                                               ; preds = %2
  br i1 %9, label %16, label %14

14:                                               ; preds = %13
  %15 = and i16 %7, -513
  store i16 %15, ptr %6, align 2, !tbaa !42
  tail call void @id_us_min(ptr noundef nonnull %4) #25
  br label %16

16:                                               ; preds = %10, %13, %14, %11
  ret void
}

; Function Attrs: optsize
declare void @id_us_plus(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @id_us_min(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @rna_PropertyGroup_idprops(ptr nocapture noundef readonly %0, i8 zeroext %1) #7 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @rna_PropertyGroup_unregister(ptr nocapture readnone %0, ptr noundef %1) #0 {
  tail call void @RNA_struct_free(ptr noundef nonnull @BLENDER_RNA, ptr noundef %1) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_struct_free(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ContainerRNA, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %2, %14
  %7 = phi ptr [ %8, %14 ], [ %4, %2 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !49
  tail call void @RNA_def_property_free_pointers(ptr noundef nonnull %7) #27
  %9 = getelementptr inbounds %struct.PropertyRNA, ptr %7, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !51
  %11 = and i32 %10, 512
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %6
  tail call void @rna_freelinkN(ptr noundef nonnull %3, ptr noundef nonnull %7) #27
  br label %14

14:                                               ; preds = %6, %13
  %15 = icmp eq ptr %8, null
  br i1 %15, label %16, label %6, !llvm.loop !52

16:                                               ; preds = %14, %2
  %17 = getelementptr inbounds %struct.StructRNA, ptr %1, i64 0, i32 19
  %18 = load ptr, ptr %17, align 8, !tbaa !54
  %19 = icmp eq ptr %18, null
  br i1 %19, label %44, label %20

20:                                               ; preds = %16, %42
  %21 = phi ptr [ %22, %42 ], [ %18, %16 ]
  %22 = load ptr, ptr %21, align 8, !tbaa !55
  %23 = getelementptr inbounds %struct.ContainerRNA, ptr %21, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !57
  %25 = icmp eq ptr %24, null
  br i1 %25, label %36, label %26

26:                                               ; preds = %20, %34
  %27 = phi ptr [ %28, %34 ], [ %24, %20 ]
  %28 = load ptr, ptr %27, align 8, !tbaa !49
  tail call void @RNA_def_property_free_pointers(ptr noundef nonnull %27) #27
  %29 = getelementptr inbounds %struct.PropertyRNA, ptr %27, i64 0, i32 4
  %30 = load i32, ptr %29, align 8, !tbaa !51
  %31 = and i32 %30, 512
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %26
  tail call void @rna_freelinkN(ptr noundef nonnull %23, ptr noundef nonnull %27) #27
  br label %34

34:                                               ; preds = %26, %33
  %35 = icmp eq ptr %28, null
  br i1 %35, label %36, label %26, !llvm.loop !58

36:                                               ; preds = %34, %20
  tail call void @RNA_def_func_free_pointers(ptr noundef nonnull %21) #27
  %37 = getelementptr inbounds %struct.FunctionRNA, ptr %21, i64 0, i32 2
  %38 = load i32, ptr %37, align 8, !tbaa !59
  %39 = and i32 %38, 512
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  tail call void @rna_freelinkN(ptr noundef nonnull %17, ptr noundef nonnull %21) #27
  br label %42

42:                                               ; preds = %36, %41
  %43 = icmp eq ptr %22, null
  br i1 %43, label %44, label %20, !llvm.loop !60

44:                                               ; preds = %42, %16
  tail call void @RNA_def_struct_free_pointers(ptr noundef %1) #27
  %45 = getelementptr inbounds %struct.StructRNA, ptr %1, i64 0, i32 4
  %46 = load i32, ptr %45, align 8, !tbaa !61
  %47 = and i32 %46, 8
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  tail call void @rna_freelinkN(ptr noundef %0, ptr noundef nonnull %1) #27
  br label %50

50:                                               ; preds = %49, %44
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @rna_PropertyGroup_register(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, ptr nocapture readnone %5, ptr nocapture readnone %6) #0 {
  %8 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #28
  call void @RNA_pointer_create(ptr noundef null, ptr noundef nonnull @RNA_PropertyGroup, ptr noundef null, ptr noundef nonnull %8) #25
  %9 = call i32 %4(ptr noundef nonnull %8, ptr noundef %2, ptr noundef null) #25
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %7
  %12 = call i64 @BLI_strnlen(ptr noundef %3, i64 noundef 64) #25
  %13 = icmp eq i64 %12, 64
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.63, ptr noundef %3, i32 noundef 64) #25
  br label %17

15:                                               ; preds = %11
  %16 = call ptr @RNA_def_struct_ptr(ptr noundef nonnull @BLENDER_RNA, ptr noundef %3, ptr noundef nonnull @RNA_PropertyGroup) #27
  br label %17

17:                                               ; preds = %7, %15, %14
  %18 = phi ptr [ null, %14 ], [ %16, %15 ], [ null, %7 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #28
  ret ptr %18
}

; Function Attrs: optsize
declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @BLI_strnlen(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RNA_def_struct_ptr(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [512 x i8], align 16
  %5 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !62
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %4) #28
  %8 = call fastcc i32 @rna_validate_identifier(ptr noundef %1, ptr noundef nonnull %4, i8 noundef zeroext 0) #27, !range !64
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = load ptr, ptr @stderr, align 8, !tbaa !65
  %12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str.195, ptr noundef nonnull @__func__.RNA_def_struct_ptr, ptr noundef %1, ptr noundef nonnull %4) #29
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !66
  br label %13

13:                                               ; preds = %10, %7
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %4) #28
  br label %14

14:                                               ; preds = %13, %3
  %15 = load ptr, ptr @MEM_callocN, align 8, !tbaa !65
  %16 = call ptr %15(i64 noundef 200, ptr noundef nonnull @.str.196) #25
  store ptr %16, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !67
  %17 = icmp eq ptr %2, null
  br i1 %17, label %27, label %18

18:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %16, ptr noundef nonnull align 8 dereferenceable(200) %2, i64 184, i1 false)
  %19 = getelementptr inbounds %struct.ContainerRNA, ptr %16, i64 0, i32 2
  %20 = getelementptr inbounds %struct.StructRNA, ptr %16, i64 0, i32 19
  %21 = getelementptr inbounds %struct.StructRNA, ptr %16, i64 0, i32 2
  store ptr null, ptr %21, align 8, !tbaa !68
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, i8 0, i64 16, i1 false)
  %22 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !62
  %23 = icmp eq i32 %22, 0
  %24 = getelementptr inbounds %struct.StructRNA, ptr %16, i64 0, i32 11
  store ptr %2, ptr %24, align 8, !tbaa !69
  br i1 %23, label %27, label %25

25:                                               ; preds = %18
  %26 = call fastcc ptr @rna_find_def_struct(ptr noundef nonnull %2) #27
  br label %27

27:                                               ; preds = %18, %25, %14
  %28 = phi ptr [ %26, %25 ], [ null, %14 ], [ null, %18 ]
  %29 = getelementptr inbounds %struct.StructRNA, ptr %16, i64 0, i32 1
  store ptr %1, ptr %29, align 8, !tbaa !70
  %30 = getelementptr inbounds %struct.StructRNA, ptr %16, i64 0, i32 5
  store ptr %1, ptr %30, align 8, !tbaa !71
  %31 = getelementptr inbounds %struct.StructRNA, ptr %16, i64 0, i32 6
  store ptr @.str.2, ptr %31, align 8, !tbaa !72
  %32 = getelementptr inbounds %struct.StructRNA, ptr %16, i64 0, i32 7
  store ptr @.str.67, ptr %32, align 8, !tbaa !73
  %33 = getelementptr inbounds %struct.StructRNA, ptr %16, i64 0, i32 4
  %34 = load i32, ptr %33, align 8, !tbaa !61
  %35 = or i32 %34, 4
  store i32 %35, ptr %33, align 8, !tbaa !61
  br i1 %17, label %36, label %38

36:                                               ; preds = %27
  %37 = getelementptr inbounds %struct.StructRNA, ptr %16, i64 0, i32 8
  store i32 17, ptr %37, align 8, !tbaa !74
  br label %38

38:                                               ; preds = %36, %27
  call void @rna_addtail(ptr noundef %0, ptr noundef nonnull %16) #27
  %39 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !62
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %55, label %41

41:                                               ; preds = %38
  %42 = load ptr, ptr @MEM_callocN, align 8, !tbaa !65
  %43 = call ptr %42(i64 noundef 96, ptr noundef nonnull @.str.197) #25
  %44 = getelementptr inbounds %struct.StructDefRNA, ptr %43, i64 0, i32 1
  store ptr %16, ptr %44, align 8, !tbaa !75
  call void @rna_addtail(ptr noundef nonnull getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 1), ptr noundef %43) #27
  %45 = icmp eq ptr %28, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.StructDefRNA, ptr %28, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !78
  %49 = getelementptr inbounds %struct.StructDefRNA, ptr %43, i64 0, i32 4
  store ptr %48, ptr %49, align 8, !tbaa !79
  br label %50

50:                                               ; preds = %41, %46
  %51 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !62
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %50
  %54 = load ptr, ptr %29, align 8, !tbaa !70
  call void @RNA_def_struct_sdna(ptr noundef nonnull %16, ptr noundef %54) #27
  br label %58

55:                                               ; preds = %38, %50
  %56 = load i32, ptr %33, align 8, !tbaa !61
  %57 = or i32 %56, 8
  store i32 %57, ptr %33, align 8, !tbaa !61
  br label %58

58:                                               ; preds = %55, %53
  br i1 %17, label %63, label %59

59:                                               ; preds = %58
  %60 = getelementptr inbounds %struct.StructRNA, ptr %2, i64 0, i32 9
  %61 = getelementptr inbounds %struct.StructRNA, ptr %16, i64 0, i32 9
  %62 = load <2 x ptr>, ptr %60, align 8, !tbaa !65
  store <2 x ptr> %62, ptr %61, align 8, !tbaa !65
  br label %81

63:                                               ; preds = %58
  %64 = call ptr @RNA_def_property(ptr noundef nonnull %16, ptr noundef nonnull @.str.64, i32 noundef 6, i32 noundef 0) #27
  call void @RNA_def_property_flag(ptr noundef %64, i32 noundef 128) #27
  call void @RNA_def_property_ui_text(ptr noundef %64, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.66) #27
  %65 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !62
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %63
  call void @RNA_def_property_struct_type(ptr noundef %64, ptr noundef nonnull @.str.198) #27
  call void @RNA_def_property_collection_funcs(ptr noundef %64, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.200, ptr noundef nonnull @.str.201, ptr noundef nonnull @.str.202, ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.203, ptr noundef null) #27
  br label %73

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.CollectionPropertyRNA, ptr %64, i64 0, i32 1
  store ptr @rna_builtin_properties_begin, ptr %69, align 8, !tbaa !80
  %70 = getelementptr inbounds %struct.CollectionPropertyRNA, ptr %64, i64 0, i32 2
  store ptr @rna_builtin_properties_next, ptr %70, align 8, !tbaa !82
  %71 = getelementptr inbounds %struct.CollectionPropertyRNA, ptr %64, i64 0, i32 4
  store ptr @rna_builtin_properties_get, ptr %71, align 8, !tbaa !83
  %72 = getelementptr inbounds %struct.CollectionPropertyRNA, ptr %64, i64 0, i32 9
  store ptr @RNA_Property, ptr %72, align 8, !tbaa !84
  br label %73

73:                                               ; preds = %68, %67
  %74 = call ptr @RNA_def_property(ptr noundef nonnull %16, ptr noundef nonnull @.str.68, i32 noundef 5, i32 noundef 0) #27
  call void @RNA_def_property_flag(ptr noundef %74, i32 noundef 524288) #27
  call void @RNA_def_property_ui_text(ptr noundef %74, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #27
  %75 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !62
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %73
  call void @RNA_def_property_struct_type(ptr noundef %74, ptr noundef nonnull @.str.204) #27
  call void @RNA_def_property_pointer_funcs(ptr noundef %74, ptr noundef nonnull @.str.205, ptr noundef null, ptr noundef null, ptr noundef null) #27
  br label %81

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.PointerPropertyRNA, ptr %74, i64 0, i32 1
  store ptr @rna_builtin_type_get, ptr %79, align 8, !tbaa !85
  %80 = getelementptr inbounds %struct.PointerPropertyRNA, ptr %74, i64 0, i32 5
  store ptr @RNA_Struct, ptr %80, align 8, !tbaa !87
  br label %81

81:                                               ; preds = %77, %78, %59
  ret ptr %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @rna_PropertyGroup_refine(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !88
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @rna_IDMaterials_assign_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !89
  %5 = tail call ptr @give_totcolp_id(ptr noundef %4) #25
  %6 = load ptr, ptr %2, align 8, !tbaa !89
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
  %16 = add nuw nsw i16 %15, 1
  tail call void @assign_material_id(ptr noundef %4, ptr noundef %6, i16 noundef signext %16) #25
  br label %17

17:                                               ; preds = %3, %10, %14
  %18 = phi i32 [ 1, %14 ], [ 0, %10 ], [ 0, %3 ]
  ret i32 %18
}

; Function Attrs: optsize
declare ptr @give_totcolp_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @assign_material_id(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @UnknownType_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !90
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_UnknownType_rna_properties, ptr %4, align 8, !tbaa !91
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #25
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !93
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #28
  call void @UnknownType_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !90
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #28
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: optsize
declare void @rna_builtin_properties_begin(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @UnknownType_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !94 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @UnknownType_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #25
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !93
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #28
  call void @UnknownType_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !90
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #28
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: optsize
declare void @rna_builtin_properties_next(ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @UnknownType_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #25
  ret void
}

; Function Attrs: optsize
declare void @rna_iterator_listbase_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @UnknownType_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #25
  ret i32 %4
}

; Function Attrs: optsize
declare i32 @rna_builtin_properties_lookup_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @UnknownType_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #25
  ret void
}

; Function Attrs: optsize
declare void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @AnyType_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !90
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_AnyType_rna_properties, ptr %4, align 8, !tbaa !91
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #25
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !93
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #28
  call void @AnyType_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !90
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #28
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @AnyType_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !95 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @AnyType_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #25
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !93
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #28
  call void @AnyType_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !90
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #28
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @AnyType_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @AnyType_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #25
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @AnyType_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ID_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !90
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_ID_rna_properties, ptr %4, align 8, !tbaa !91
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #25
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !93
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #28
  call void @ID_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !90
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #28
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ID_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !96 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ID_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #25
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !93
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #28
  call void @ID_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !90
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #28
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ID_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ID_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #25
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ID_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ID_name_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  tail call void @rna_ID_name_get(ptr noundef %0, ptr noundef %1) #27
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ID_name_length(ptr nocapture noundef readonly %0) #3 {
  %2 = tail call i32 @rna_ID_name_length(ptr noundef %0) #27
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ID_name_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  tail call void @rna_ID_name_set(ptr noundef %0, ptr noundef %1) #27
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ID_users_get(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !97
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ID_use_fake_user_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  tail call void @rna_ID_fake_user_set(ptr noundef %0, i32 noundef %1) #27
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ID_library_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !98
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Library, ptr noundef %6) #25
  ret void
}

; Function Attrs: optsize
declare void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PropertyGroupItem_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !90
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_PropertyGroupItem_rna_properties, ptr %4, align 8, !tbaa !91
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #25
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !93
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #28
  call void @PropertyGroupItem_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !90
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #28
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @PropertyGroupItem_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !99 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PropertyGroupItem_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #25
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !93
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #28
  call void @PropertyGroupItem_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !90
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #28
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PropertyGroupItem_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @PropertyGroupItem_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #25
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PropertyGroupItem_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PropertyGroupItem_idp_array_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !90
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_PropertyGroupItem_idp_array, ptr %4, align 8, !tbaa !91
  tail call fastcc void @rna_IDPArray_begin(ptr noundef %0, ptr noundef %1) #27
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !93
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #28
  call void @PropertyGroupItem_idp_array_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !90
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #28
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_IDPArray_begin(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !100 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.IDProperty, ptr %4, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !101
  %7 = getelementptr inbounds %struct.IDProperty, ptr %4, i64 0, i32 8
  %8 = load i32, ptr %7, align 8, !tbaa !104
  tail call void @rna_iterator_array_begin(ptr noundef %0, ptr noundef %6, i32 noundef 128, i32 noundef %8, i8 noundef zeroext 0, ptr noundef null) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @PropertyGroupItem_idp_array_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !105 {
  %3 = tail call ptr @rna_iterator_array_get(ptr noundef %1) #25
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_PropertyGroup, ptr noundef %3) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PropertyGroupItem_idp_array_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_array_next(ptr noundef %0) #25
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !93
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #28
  call void @PropertyGroupItem_idp_array_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !90
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #28
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: optsize
declare void @rna_iterator_array_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PropertyGroupItem_idp_array_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_array_end(ptr noundef %0) #25
  ret void
}

; Function Attrs: optsize
declare void @rna_iterator_array_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PropertyGroup_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !90
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_PropertyGroup_rna_properties, ptr %4, align 8, !tbaa !91
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #25
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !93
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #28
  call void @PropertyGroup_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !90
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #28
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @PropertyGroup_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !106 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PropertyGroup_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #25
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !93
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #28
  call void @PropertyGroup_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !90
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #28
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PropertyGroup_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @PropertyGroup_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #25
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PropertyGroup_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IDMaterials_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !90
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_IDMaterials_rna_properties, ptr %4, align 8, !tbaa !91
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #25
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !93
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #28
  call void @IDMaterials_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !90
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #28
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @IDMaterials_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !107 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IDMaterials_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #25
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !93
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #28
  call void @IDMaterials_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !90
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #28
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IDMaterials_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @IDMaterials_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #25
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IDMaterials_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Library_filepath_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Library, ptr %4, i64 0, i32 3
  %6 = tail call ptr @BLI_strncpy(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Library_filepath_length(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Library, ptr %3, i64 0, i32 3
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #26
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Library_filepath_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_Library_filepath_set(ptr noundef %0, ptr noundef %1) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Library_filepath_set(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !108 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  tail call void @BKE_library_filepath_set(ptr noundef %4, ptr noundef %1) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Library_parent_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Library, ptr %4, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !109
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Library, ptr noundef %6) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Library_packed_file_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Library, ptr %4, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !111
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_PackedFile, ptr noundef %6) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ID_copy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc ptr @rna_ID_copy(ptr noundef %0) #27
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @rna_ID_copy(ptr noundef %0) unnamed_addr #0 !PGOFuncName !112 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #28
  %3 = call zeroext i8 @id_copy(ptr noundef %0, ptr noundef nonnull %2, i8 noundef zeroext 0) #25
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 8, !tbaa !65
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  call void @id_us_min(ptr noundef nonnull %6) #25
  %9 = load ptr, ptr %2, align 8, !tbaa !65
  br label %10

10:                                               ; preds = %5, %8, %1
  %11 = phi ptr [ null, %1 ], [ %9, %8 ], [ null, %5 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #28
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ID_copy_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = load ptr, ptr %3, align 8, !tbaa !113
  %8 = tail call fastcc ptr @rna_ID_copy(ptr noundef %6) #27
  store ptr %8, ptr %7, align 8, !tbaa !65
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @ID_user_clear(ptr nocapture noundef %0) local_unnamed_addr #11 {
  tail call fastcc void @rna_ID_user_clear(ptr noundef %0) #27
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @rna_ID_user_clear(ptr nocapture noundef %0) unnamed_addr #11 !PGOFuncName !115 {
  %2 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 6
  store i32 0, ptr %2, align 4, !tbaa !97
  %3 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 5
  %4 = load i16, ptr %3, align 2, !tbaa !42
  %5 = and i16 %4, -513
  store i16 %5, ptr %3, align 2, !tbaa !42
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ID_user_clear_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture readnone %3) #10 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  tail call fastcc void @rna_ID_user_clear(ptr noundef %6) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ID_animation_data_create(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BKE_id_add_animdata(ptr noundef %0) #25
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @BKE_id_add_animdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ID_animation_data_create_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = load ptr, ptr %3, align 8, !tbaa !113
  %8 = tail call ptr @BKE_id_add_animdata(ptr noundef %6) #25
  store ptr %8, ptr %7, align 8, !tbaa !65
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ID_animation_data_clear(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @BKE_free_animdata(ptr noundef %0) #25
  ret void
}

; Function Attrs: optsize
declare void @BKE_free_animdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ID_animation_data_clear_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture readnone %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  tail call void @BKE_free_animdata(ptr noundef %6) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ID_update_tag(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @rna_ID_update_tag(ptr noundef %0, ptr noundef %1, i32 noundef %2) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_ID_update_tag(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !116 {
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
  tail call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.268) #25
  br label %15

12:                                               ; preds = %5
  tail call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.269) #25
  br label %15

13:                                               ; preds = %9, %3
  %14 = trunc i32 %2 to i16
  tail call void @DAG_id_tag_update(ptr noundef %0, i16 noundef signext %14) #25
  br label %15

15:                                               ; preds = %13, %12, %11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ID_update_tag_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = load ptr, ptr %3, align 8, !tbaa !113
  %8 = load i32, ptr %7, align 4, !tbaa !117
  tail call fastcc void @rna_ID_update_tag(ptr noundef %6, ptr noundef %1, i32 noundef %8) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IDMaterials_append(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @rna_IDMaterials_append_id(ptr noundef %0, ptr noundef %1) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_IDMaterials_append_id(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !118 {
  tail call void @BKE_material_append_id(ptr noundef %0, ptr noundef %1) #25
  tail call void @WM_main_add_notifier(i32 noundef 85393408, ptr noundef %0) #25
  tail call void @WM_main_add_notifier(i32 noundef 85131264, ptr noundef %0) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IDMaterials_append_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = load ptr, ptr %3, align 8, !tbaa !113
  %8 = load ptr, ptr %7, align 8, !tbaa !65
  tail call fastcc void @rna_IDMaterials_append_id(ptr noundef %6, ptr noundef %8) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @IDMaterials_pop(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call fastcc ptr @rna_IDMaterials_pop_id(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #27
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @rna_IDMaterials_pop_id(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !119 {
  %5 = tail call ptr @give_totcolp_id(ptr noundef %0) #25
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
  tail call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.270) #25
  br label %22

15:                                               ; preds = %4
  %16 = trunc i32 %3 to i8
  %17 = tail call ptr @BKE_material_pop_id(ptr noundef %0, i32 noundef %10, i8 noundef zeroext %16) #25
  %18 = load i16, ptr %5, align 2, !tbaa !40
  %19 = icmp eq i16 %18, %6
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  tail call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.271) #25
  br label %22

21:                                               ; preds = %15
  tail call void @DAG_id_tag_update(ptr noundef %0, i16 noundef signext 2) #25
  tail call void @WM_main_add_notifier(i32 noundef 85393408, ptr noundef %0) #25
  tail call void @WM_main_add_notifier(i32 noundef 85131264, ptr noundef %0) #25
  br label %22

22:                                               ; preds = %21, %20, %14
  %23 = phi ptr [ null, %14 ], [ null, %20 ], [ %17, %21 ]
  ret ptr %23
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IDMaterials_pop_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = load ptr, ptr %3, align 8, !tbaa !113
  %8 = load i32, ptr %7, align 4, !tbaa !117
  %9 = getelementptr inbounds i8, ptr %7, i64 4
  %10 = load i32, ptr %9, align 4, !tbaa !117
  %11 = getelementptr inbounds i8, ptr %7, i64 8
  %12 = tail call fastcc ptr @rna_IDMaterials_pop_id(ptr noundef %6, ptr noundef %1, i32 noundef %8, i32 noundef %10) #27
  store ptr %12, ptr %11, align 8, !tbaa !65
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IDMaterials_clear(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @rna_IDMaterials_clear_id(ptr noundef %0, i32 noundef %1) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_IDMaterials_clear_id(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !120 {
  %3 = trunc i32 %1 to i8
  tail call void @BKE_material_clear_id(ptr noundef %0, i8 noundef zeroext %3) #25
  tail call void @DAG_id_tag_update(ptr noundef %0, i16 noundef signext 2) #25
  tail call void @WM_main_add_notifier(i32 noundef 85393408, ptr noundef %0) #25
  tail call void @WM_main_add_notifier(i32 noundef 85131264, ptr noundef %0) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IDMaterials_clear_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = load ptr, ptr %3, align 8, !tbaa !113
  %8 = load i32, ptr %7, align 4, !tbaa !117
  tail call fastcc void @rna_IDMaterials_clear_id(ptr noundef %6, i32 noundef %8) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rna_ID_name_editable(ptr nocapture noundef readonly %0) #0 !PGOFuncName !121 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 4
  %5 = load i16, ptr %4, align 8, !tbaa !40
  %6 = icmp eq i16 %5, 18006
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = tail call zeroext i8 @BKE_vfont_is_builtin(ptr noundef nonnull %3) #25
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7, %1
  br label %11

11:                                               ; preds = %7, %10
  %12 = phi i32 [ 1, %10 ], [ 0, %7 ]
  ret i32 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @rna_IDPArray_length(ptr nocapture noundef readonly %0) #6 !PGOFuncName !122 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.IDProperty, ptr %3, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !104
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @rna_addtail(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #12 {
  store ptr null, ptr %1, align 8, !tbaa !123
  %3 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !125
  %5 = getelementptr inbounds %struct.Link, ptr %1, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !126
  %6 = icmp eq ptr %4, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  store ptr %1, ptr %4, align 8, !tbaa !123
  br label %8

8:                                                ; preds = %7, %2
  %9 = load ptr, ptr %0, align 8, !tbaa !127
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  store ptr %1, ptr %0, align 8, !tbaa !127
  br label %12

12:                                               ; preds = %11, %8
  store ptr %1, ptr %3, align 8, !tbaa !125
  ret void
}

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @rna_findlink(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #13 {
  %3 = load ptr, ptr %0, align 8, !tbaa !65
  %4 = icmp eq ptr %3, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %2, %15
  %6 = phi ptr [ %16, %15 ], [ %3, %2 ]
  %7 = getelementptr inbounds %struct.PropertyDefRNA, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !128
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.PropertyRNA, ptr %8, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !130
  %13 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) %1) #26
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %5, %10
  %16 = load ptr, ptr %6, align 8, !tbaa !65
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %5, !llvm.loop !131

18:                                               ; preds = %15, %10, %2
  %19 = phi ptr [ null, %2 ], [ %6, %10 ], [ null, %15 ]
  ret ptr %19
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @rna_freelinkN(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @rna_remlink(ptr noundef %0, ptr noundef %1) #27
  %3 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  tail call void %3(ptr noundef %1) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_remlink(ptr nocapture noundef %0, ptr noundef readonly %1) unnamed_addr #12 !PGOFuncName !132 {
  %3 = load ptr, ptr %1, align 8, !tbaa !123
  %4 = icmp eq ptr %3, null
  %5 = getelementptr inbounds %struct.Link, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !126
  br i1 %4, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.Link, ptr %3, i64 0, i32 1
  store ptr %6, ptr %8, align 8, !tbaa !126
  br label %9

9:                                                ; preds = %2, %7
  %10 = icmp eq ptr %6, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %9
  store ptr %3, ptr %6, align 8, !tbaa !123
  br label %12

12:                                               ; preds = %11, %9
  %13 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !125
  %15 = icmp eq ptr %14, %1
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store ptr %6, ptr %13, align 8, !tbaa !125
  br label %17

17:                                               ; preds = %16, %12
  %18 = load ptr, ptr %0, align 8, !tbaa !127
  %19 = icmp eq ptr %18, %1
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load ptr, ptr %1, align 8, !tbaa !123
  store ptr %21, ptr %0, align 8, !tbaa !127
  br label %22

22:                                               ; preds = %20, %17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @rna_freelistN(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !127
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %6, %4 ], [ %2, %1 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !123
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  tail call void %7(ptr noundef nonnull %5) #25
  %8 = icmp eq ptr %6, null
  br i1 %8, label %9, label %4, !llvm.loop !133

9:                                                ; preds = %4, %1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local ptr @rna_find_struct_def(ptr noundef readnone %0) local_unnamed_addr #14 {
  %2 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !62
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 1, i32 1), align 8, !tbaa !65
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %10

7:                                                ; preds = %1
  %8 = load ptr, ptr @stderr, align 8, !tbaa !65
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.159, ptr noundef nonnull @__func__.rna_find_struct_def) #29
  br label %19

10:                                               ; preds = %4, %15
  %11 = phi ptr [ %17, %15 ], [ %5, %4 ]
  %12 = getelementptr inbounds %struct.StructDefRNA, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !75
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %19, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.ContainerDefRNA, ptr %11, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !65
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %10, !llvm.loop !134

19:                                               ; preds = %10, %15, %4, %7
  %20 = phi ptr [ null, %7 ], [ null, %4 ], [ %11, %10 ], [ null, %15 ]
  ret ptr %20
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #15

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local ptr @rna_find_struct_property_def(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #14 {
  %3 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !62
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = load ptr, ptr @stderr, align 8, !tbaa !65
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.159, ptr noundef nonnull @__func__.rna_find_struct_property_def) #29
  br label %43

8:                                                ; preds = %2
  %9 = tail call ptr @rna_find_struct_def(ptr noundef %0) #27
  %10 = getelementptr inbounds %struct.ContainerDefRNA, ptr %9, i64 0, i32 3, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !65
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %21, %8
  %14 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 1, i32 1), align 8, !tbaa !65
  %15 = icmp eq ptr %14, null
  br i1 %15, label %43, label %25

16:                                               ; preds = %8, %21
  %17 = phi ptr [ %23, %21 ], [ %11, %8 ]
  %18 = getelementptr inbounds %struct.PropertyDefRNA, ptr %17, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !128
  %20 = icmp eq ptr %19, %1
  br i1 %20, label %43, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.PropertyDefRNA, ptr %17, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !65
  %24 = icmp eq ptr %23, null
  br i1 %24, label %13, label %16, !llvm.loop !135

25:                                               ; preds = %13, %39
  %26 = phi ptr [ %41, %39 ], [ %14, %13 ]
  %27 = getelementptr inbounds %struct.ContainerDefRNA, ptr %26, i64 0, i32 3, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !65
  %29 = icmp eq ptr %28, null
  br i1 %29, label %39, label %30

30:                                               ; preds = %25, %35
  %31 = phi ptr [ %37, %35 ], [ %28, %25 ]
  %32 = getelementptr inbounds %struct.PropertyDefRNA, ptr %31, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !128
  %34 = icmp eq ptr %33, %1
  br i1 %34, label %43, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.PropertyDefRNA, ptr %31, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !65
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %30, !llvm.loop !136

39:                                               ; preds = %35, %25
  %40 = getelementptr inbounds %struct.ContainerDefRNA, ptr %26, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !65
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %25, !llvm.loop !137

43:                                               ; preds = %16, %39, %30, %13, %5
  %44 = phi ptr [ null, %5 ], [ null, %13 ], [ %31, %30 ], [ null, %39 ], [ %17, %16 ]
  ret ptr %44
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local ptr @rna_find_function_def(ptr noundef readnone %0) local_unnamed_addr #14 {
  %2 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !62
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = load ptr, ptr @stderr, align 8, !tbaa !65
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.159, ptr noundef nonnull @__func__.rna_find_function_def) #29
  br label %43

7:                                                ; preds = %1
  %8 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !67
  %9 = tail call ptr @rna_find_struct_def(ptr noundef %8) #27
  %10 = getelementptr inbounds %struct.StructDefRNA, ptr %9, i64 0, i32 6, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !65
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %21, %7
  %14 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 1, i32 1), align 8, !tbaa !65
  %15 = icmp eq ptr %14, null
  br i1 %15, label %43, label %25

16:                                               ; preds = %7, %21
  %17 = phi ptr [ %23, %21 ], [ %11, %7 ]
  %18 = getelementptr inbounds %struct.FunctionDefRNA, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !138
  %20 = icmp eq ptr %19, %0
  br i1 %20, label %43, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.ContainerDefRNA, ptr %17, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !65
  %24 = icmp eq ptr %23, null
  br i1 %24, label %13, label %16, !llvm.loop !140

25:                                               ; preds = %13, %39
  %26 = phi ptr [ %41, %39 ], [ %14, %13 ]
  %27 = getelementptr inbounds %struct.StructDefRNA, ptr %26, i64 0, i32 6, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !65
  %29 = icmp eq ptr %28, null
  br i1 %29, label %39, label %30

30:                                               ; preds = %25, %35
  %31 = phi ptr [ %37, %35 ], [ %28, %25 ]
  %32 = getelementptr inbounds %struct.FunctionDefRNA, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !138
  %34 = icmp eq ptr %33, %0
  br i1 %34, label %43, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.ContainerDefRNA, ptr %31, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !65
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %30, !llvm.loop !141

39:                                               ; preds = %35, %25
  %40 = getelementptr inbounds %struct.ContainerDefRNA, ptr %26, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !65
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %25, !llvm.loop !142

43:                                               ; preds = %16, %39, %30, %13, %4
  %44 = phi ptr [ null, %4 ], [ null, %13 ], [ %31, %30 ], [ null, %39 ], [ %17, %16 ]
  ret ptr %44
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local ptr @rna_find_parameter_def(ptr noundef readnone %0) local_unnamed_addr #14 {
  %2 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !62
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = load ptr, ptr @stderr, align 8, !tbaa !65
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.159, ptr noundef nonnull @__func__.rna_find_parameter_def) #29
  br label %61

7:                                                ; preds = %1
  %8 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !67
  %9 = tail call ptr @rna_find_struct_def(ptr noundef %8) #27
  %10 = getelementptr inbounds %struct.StructDefRNA, ptr %9, i64 0, i32 6, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !65
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %30, %7
  %14 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 1, i32 1), align 8, !tbaa !65
  %15 = icmp eq ptr %14, null
  br i1 %15, label %61, label %34

16:                                               ; preds = %7, %30
  %17 = phi ptr [ %32, %30 ], [ %11, %7 ]
  %18 = getelementptr inbounds %struct.ContainerDefRNA, ptr %17, i64 0, i32 3, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !65
  %20 = icmp eq ptr %19, null
  br i1 %20, label %30, label %21

21:                                               ; preds = %16, %26
  %22 = phi ptr [ %28, %26 ], [ %19, %16 ]
  %23 = getelementptr inbounds %struct.PropertyDefRNA, ptr %22, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !128
  %25 = icmp eq ptr %24, %0
  br i1 %25, label %61, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.PropertyDefRNA, ptr %22, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !65
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %21, !llvm.loop !143

30:                                               ; preds = %26, %16
  %31 = getelementptr inbounds %struct.ContainerDefRNA, ptr %17, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !65
  %33 = icmp eq ptr %32, null
  br i1 %33, label %13, label %16, !llvm.loop !144

34:                                               ; preds = %13, %57
  %35 = phi ptr [ %59, %57 ], [ %14, %13 ]
  %36 = getelementptr inbounds %struct.StructDefRNA, ptr %35, i64 0, i32 6, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !65
  %38 = icmp eq ptr %37, null
  br i1 %38, label %57, label %39

39:                                               ; preds = %34, %53
  %40 = phi ptr [ %55, %53 ], [ %37, %34 ]
  %41 = getelementptr inbounds %struct.ContainerDefRNA, ptr %40, i64 0, i32 3, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !65
  %43 = icmp eq ptr %42, null
  br i1 %43, label %53, label %44

44:                                               ; preds = %39, %49
  %45 = phi ptr [ %51, %49 ], [ %42, %39 ]
  %46 = getelementptr inbounds %struct.PropertyDefRNA, ptr %45, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !128
  %48 = icmp eq ptr %47, %0
  br i1 %48, label %61, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.PropertyDefRNA, ptr %45, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !65
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %44, !llvm.loop !145

53:                                               ; preds = %49, %39
  %54 = getelementptr inbounds %struct.ContainerDefRNA, ptr %40, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !65
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %39, !llvm.loop !146

57:                                               ; preds = %53, %34
  %58 = getelementptr inbounds %struct.ContainerDefRNA, ptr %35, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !65
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %34, !llvm.loop !147

61:                                               ; preds = %21, %57, %44, %13, %4
  %62 = phi ptr [ null, %4 ], [ null, %13 ], [ %45, %44 ], [ null, %57 ], [ %22, %21 ]
  ret ptr %62
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RNA_identifier_sanitize(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #16 {
  %3 = tail call ptr @__ctype_b_loc() #30
  %4 = load ptr, ptr %3, align 8, !tbaa !65
  %5 = load i8, ptr %0, align 1, !tbaa !148
  %6 = zext i8 %5 to i64
  %7 = getelementptr inbounds i16, ptr %4, i64 %6
  %8 = load i16, ptr %7, align 2, !tbaa !40
  %9 = and i16 %8, 1024
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i8 95, ptr %0, align 1, !tbaa !148
  br label %14

12:                                               ; preds = %2
  %13 = icmp eq i8 %5, 0
  br i1 %13, label %54, label %14

14:                                               ; preds = %11, %12
  %15 = phi i8 [ 95, %11 ], [ %5, %12 ]
  %16 = icmp ne i32 %1, 0
  br label %17

17:                                               ; preds = %14, %49
  %18 = phi i64 [ 0, %14 ], [ %50, %49 ]
  %19 = phi i8 [ %15, %14 ], [ %52, %49 ]
  %20 = phi ptr [ %0, %14 ], [ %51, %49 ]
  %21 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !62
  %22 = icmp ne i32 %21, 0
  %23 = and i1 %16, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %17
  %25 = load ptr, ptr %3, align 8, !tbaa !65
  %26 = zext i8 %19 to i64
  %27 = getelementptr inbounds i16, ptr %25, i64 %26
  %28 = load i16, ptr %27, align 2, !tbaa !40
  %29 = and i16 %28, 1280
  %30 = icmp eq i16 %29, 1280
  br i1 %30, label %31, label %37

31:                                               ; preds = %24
  %32 = tail call ptr @__ctype_tolower_loc() #30
  %33 = load ptr, ptr %32, align 8, !tbaa !65
  %34 = getelementptr inbounds i32, ptr %33, i64 %26
  %35 = load i32, ptr %34, align 4, !tbaa !117
  %36 = trunc i32 %35 to i8
  store i8 %36, ptr %20, align 1, !tbaa !148
  br label %37

37:                                               ; preds = %24, %17, %31
  %38 = phi i8 [ %36, %31 ], [ %19, %17 ], [ %19, %24 ]
  switch i8 %38, label %40 [
    i8 95, label %49
    i8 32, label %39
  ]

39:                                               ; preds = %37
  store i8 95, ptr %20, align 1, !tbaa !148
  br label %40

40:                                               ; preds = %37, %39
  %41 = phi i8 [ %38, %37 ], [ 95, %39 ]
  %42 = load ptr, ptr %3, align 8, !tbaa !65
  %43 = zext i8 %41 to i64
  %44 = getelementptr inbounds i16, ptr %42, i64 %43
  %45 = load i16, ptr %44, align 2, !tbaa !40
  %46 = and i16 %45, 8
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  store i8 95, ptr %20, align 1, !tbaa !148
  br label %49

49:                                               ; preds = %37, %40, %48
  %50 = add nuw nsw i64 %18, 1
  %51 = getelementptr inbounds i8, ptr %0, i64 %50
  %52 = load i8, ptr %51, align 1, !tbaa !148
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %17, !llvm.loop !149

54:                                               ; preds = %49, %12
  br label %58

55:                                               ; preds = %58
  %56 = add nuw nsw i64 %59, 1
  %57 = icmp eq i64 %56, 30
  br i1 %57, label %68, label %58, !llvm.loop !150

58:                                               ; preds = %54, %55
  %59 = phi i64 [ %56, %55 ], [ 0, %54 ]
  %60 = getelementptr inbounds [31 x ptr], ptr @rna_validate_identifier.kwlist, i64 0, i64 %59
  %61 = load ptr, ptr %60, align 8, !tbaa !65
  %62 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %61) #26
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %55

64:                                               ; preds = %58
  %65 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #26
  %66 = getelementptr i8, ptr %0, i64 %65
  %67 = getelementptr i8, ptr %66, i64 -1
  store i8 95, ptr %67, align 1, !tbaa !148
  br label %68

68:                                               ; preds = %55, %64
  %69 = icmp eq i32 %1, 0
  br i1 %69, label %83, label %73

70:                                               ; preds = %73
  %71 = add nuw nsw i64 %74, 1
  %72 = icmp eq i64 %71, 4
  br i1 %72, label %83, label %73, !llvm.loop !151

73:                                               ; preds = %68, %70
  %74 = phi i64 [ %71, %70 ], [ 0, %68 ]
  %75 = getelementptr inbounds [5 x ptr], ptr @rna_validate_identifier.kwlist_prop, i64 0, i64 %74
  %76 = load ptr, ptr %75, align 8, !tbaa !65
  %77 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %76) #26
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %70

79:                                               ; preds = %73
  %80 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #26
  %81 = getelementptr i8, ptr %0, i64 %80
  %82 = getelementptr i8, ptr %81, i64 -1
  store i8 95, ptr %82, align 1, !tbaa !148
  br label %83

83:                                               ; preds = %70, %79, %68
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #17

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_tolower_loc() local_unnamed_addr #17

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RNA_create() local_unnamed_addr #0 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !65
  %2 = tail call ptr %1(i64 noundef 16, ptr noundef nonnull @.str.194) #25
  %3 = load i32, ptr @DNAlen, align 4, !tbaa !117
  %4 = tail call ptr @DNA_sdna_from_data(ptr noundef nonnull @DNAstr, i32 noundef %3, i8 noundef zeroext 0) #25
  store ptr %4, ptr @DefRNA, align 8, !tbaa !152
  store i32 0, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !66
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 1), i8 0, i64 16, i1 false)
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !62
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @DNA_sdna_from_data(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_define_free(ptr nocapture readnone %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 2), align 8, !tbaa !65
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %9, %4 ], [ %2, %1 ]
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  %7 = getelementptr inbounds %struct.AllocDefRNA, ptr %5, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !153
  tail call void %6(ptr noundef %8) #25
  %9 = load ptr, ptr %5, align 8, !tbaa !65
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %4, !llvm.loop !155

11:                                               ; preds = %4, %1
  tail call void @rna_freelistN(ptr noundef nonnull getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 2)) #27
  %12 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 1), align 8, !tbaa !65
  %13 = icmp eq ptr %12, null
  br i1 %13, label %28, label %14

14:                                               ; preds = %11, %24
  %15 = phi ptr [ %26, %24 ], [ %12, %11 ]
  %16 = getelementptr inbounds %struct.StructDefRNA, ptr %15, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !65
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %14, %19
  %20 = phi ptr [ %22, %19 ], [ %17, %14 ]
  %21 = getelementptr inbounds %struct.ContainerDefRNA, ptr %20, i64 0, i32 3
  tail call void @rna_freelistN(ptr noundef nonnull %21) #27
  %22 = load ptr, ptr %20, align 8, !tbaa !65
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %19, !llvm.loop !156

24:                                               ; preds = %19, %14
  %25 = getelementptr inbounds %struct.ContainerDefRNA, ptr %15, i64 0, i32 3
  tail call void @rna_freelistN(ptr noundef nonnull %25) #27
  tail call void @rna_freelistN(ptr noundef nonnull %16) #27
  %26 = load ptr, ptr %15, align 8, !tbaa !65
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %14, !llvm.loop !157

28:                                               ; preds = %24, %11
  tail call void @rna_freelistN(ptr noundef nonnull getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 1)) #27
  %29 = load ptr, ptr @DefRNA, align 8, !tbaa !152
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  tail call void @DNA_sdna_free(ptr noundef nonnull %29) #25
  store ptr null, ptr @DefRNA, align 8, !tbaa !152
  br label %32

32:                                               ; preds = %31, %28
  store i32 0, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !66
  ret void
}

; Function Attrs: optsize
declare void @DNA_sdna_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @RNA_define_verify_sdna(i8 noundef zeroext %0) local_unnamed_addr #18 {
  %2 = zext i8 %0 to i32
  store i32 %2, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 7), align 4, !tbaa !158
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_struct_free_extension(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ExtensionRNA, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !159
  %5 = load ptr, ptr %1, align 8, !tbaa !161
  tail call void %4(ptr noundef %5) #25
  tail call void @RNA_struct_blender_type_set(ptr noundef %0, ptr noundef null) #25
  tail call void @RNA_struct_py_type_set(ptr noundef %0, ptr noundef null) #25
  ret void
}

; Function Attrs: optsize
declare void @RNA_struct_blender_type_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_struct_py_type_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_def_property_free_pointers(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !51
  %4 = and i32 %3, 32768
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %91, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !130
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  tail call void %11(ptr noundef nonnull %8) #25
  br label %12

12:                                               ; preds = %10, %6
  %13 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !162
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  tail call void %17(ptr noundef nonnull %14) #25
  br label %18

18:                                               ; preds = %16, %12
  %19 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !163
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  tail call void %23(ptr noundef nonnull %20) #25
  br label %24

24:                                               ; preds = %22, %18
  %25 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 22
  %26 = load ptr, ptr %25, align 8, !tbaa !164
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  tail call void %29(ptr noundef nonnull %26) #25
  br label %30

30:                                               ; preds = %28, %24
  %31 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 9
  %32 = load i32, ptr %31, align 8, !tbaa !165
  switch i32 %32, label %91 [
    i32 0, label %39
    i32 1, label %43
    i32 2, label %47
    i32 4, label %33
    i32 3, label %84
  ]

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.EnumPropertyRNA, ptr %0, i64 0, i32 8
  %35 = load i32, ptr %34, align 8, !tbaa !166
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %80

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.EnumPropertyRNA, ptr %0, i64 0, i32 7
  br label %51

39:                                               ; preds = %30
  %40 = getelementptr inbounds %struct.BoolPropertyRNA, ptr %0, i64 0, i32 10
  %41 = load ptr, ptr %40, align 8, !tbaa !168
  %42 = icmp eq ptr %41, null
  br i1 %42, label %91, label %88

43:                                               ; preds = %30
  %44 = getelementptr inbounds %struct.IntPropertyRNA, ptr %0, i64 0, i32 17
  %45 = load ptr, ptr %44, align 8, !tbaa !170
  %46 = icmp eq ptr %45, null
  br i1 %46, label %91, label %88

47:                                               ; preds = %30
  %48 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %0, i64 0, i32 18
  %49 = load ptr, ptr %48, align 8, !tbaa !172
  %50 = icmp eq ptr %49, null
  br i1 %50, label %91, label %88

51:                                               ; preds = %37, %75
  %52 = phi i64 [ 0, %37 ], [ %76, %75 ]
  %53 = load ptr, ptr %38, align 8, !tbaa !175
  %54 = getelementptr inbounds %struct.EnumPropertyItem, ptr %53, i64 %52, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !176
  %56 = icmp eq ptr %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %51
  %58 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  tail call void %58(ptr noundef nonnull %55) #25
  %59 = load ptr, ptr %38, align 8, !tbaa !175
  br label %60

60:                                               ; preds = %57, %51
  %61 = phi ptr [ %59, %57 ], [ %53, %51 ]
  %62 = getelementptr inbounds %struct.EnumPropertyItem, ptr %61, i64 %52, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !178
  %64 = icmp eq ptr %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %60
  %66 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  tail call void %66(ptr noundef nonnull %63) #25
  %67 = load ptr, ptr %38, align 8, !tbaa !175
  br label %68

68:                                               ; preds = %65, %60
  %69 = phi ptr [ %67, %65 ], [ %61, %60 ]
  %70 = getelementptr inbounds %struct.EnumPropertyItem, ptr %69, i64 %52, i32 4
  %71 = load ptr, ptr %70, align 8, !tbaa !179
  %72 = icmp eq ptr %71, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %68
  %74 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  tail call void %74(ptr noundef nonnull %71) #25
  br label %75

75:                                               ; preds = %68, %73
  %76 = add nuw nsw i64 %52, 1
  %77 = load i32, ptr %34, align 8, !tbaa !166
  %78 = sext i32 %77 to i64
  %79 = icmp slt i64 %76, %78
  br i1 %79, label %51, label %80, !llvm.loop !180

80:                                               ; preds = %75, %33
  %81 = getelementptr inbounds %struct.EnumPropertyRNA, ptr %0, i64 0, i32 7
  %82 = load ptr, ptr %81, align 8, !tbaa !175
  %83 = icmp eq ptr %82, null
  br i1 %83, label %91, label %88

84:                                               ; preds = %30
  %85 = getelementptr inbounds %struct.StringPropertyRNA, ptr %0, i64 0, i32 8
  %86 = load ptr, ptr %85, align 8, !tbaa !181
  %87 = icmp eq ptr %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %84, %80, %47, %43, %39
  %89 = phi ptr [ %41, %39 ], [ %45, %43 ], [ %49, %47 ], [ %82, %80 ], [ %86, %84 ]
  %90 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  tail call void %90(ptr noundef nonnull %89) #25
  br label %91

91:                                               ; preds = %88, %30, %39, %43, %47, %80, %84, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_def_func_free_pointers(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.FunctionRNA, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !59
  %4 = and i32 %3, 1024
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.FunctionRNA, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !183
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  tail call void %11(ptr noundef nonnull %8) #25
  br label %12

12:                                               ; preds = %10, %6
  %13 = getelementptr inbounds %struct.FunctionRNA, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !184
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  tail call void %17(ptr noundef nonnull %14) #25
  br label %18

18:                                               ; preds = %12, %16, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_def_struct_free_pointers(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.StructRNA, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !61
  %4 = and i32 %3, 32
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %24, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.StructRNA, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !70
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  tail call void %11(ptr noundef nonnull %8) #25
  br label %12

12:                                               ; preds = %10, %6
  %13 = getelementptr inbounds %struct.StructRNA, ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !71
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  tail call void %17(ptr noundef nonnull %14) #25
  br label %18

18:                                               ; preds = %16, %12
  %19 = getelementptr inbounds %struct.StructRNA, ptr %0, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !72
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  tail call void %23(ptr noundef nonnull %20) #25
  br label %24

24:                                               ; preds = %18, %22, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !62
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %23, label %4

4:                                                ; preds = %1
  tail call void @RNA_define_free(ptr poison) #27
  %5 = load ptr, ptr %0, align 8, !tbaa !65
  %6 = icmp eq ptr %5, null
  br i1 %6, label %21, label %7

7:                                                ; preds = %4, %17
  %8 = phi ptr [ %19, %17 ], [ %5, %4 ]
  %9 = getelementptr inbounds %struct.StructRNA, ptr %8, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !65
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %7, %12
  %13 = phi ptr [ %15, %12 ], [ %10, %7 ]
  %14 = getelementptr inbounds %struct.ContainerRNA, ptr %13, i64 0, i32 3
  tail call void @rna_freelistN(ptr noundef nonnull %14) #27
  %15 = load ptr, ptr %13, align 8, !tbaa !65
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %12, !llvm.loop !185

17:                                               ; preds = %12, %7
  %18 = getelementptr inbounds %struct.ContainerRNA, ptr %8, i64 0, i32 3
  tail call void @rna_freelistN(ptr noundef nonnull %18) #27
  tail call void @rna_freelistN(ptr noundef nonnull %9) #27
  %19 = load ptr, ptr %8, align 8, !tbaa !65
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %7, !llvm.loop !186

21:                                               ; preds = %17, %4
  tail call void @rna_freelistN(ptr noundef nonnull %0) #27
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  tail call void %22(ptr noundef nonnull %0) #25
  br label %30

23:                                               ; preds = %1
  %24 = load ptr, ptr %0, align 8, !tbaa !187
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %23, %26
  %27 = phi ptr [ %28, %26 ], [ %24, %23 ]
  %28 = load ptr, ptr %27, align 8, !tbaa !189
  tail call void @RNA_struct_free(ptr noundef nonnull %0, ptr noundef nonnull %27) #27
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %26, !llvm.loop !190

30:                                               ; preds = %26, %23, %21
  ret void
}

; Function Attrs: nofree noinline nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @rna_validate_identifier(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i8 noundef zeroext %2) unnamed_addr #19 !PGOFuncName !191 {
  %4 = tail call ptr @__ctype_b_loc() #30
  %5 = load ptr, ptr %4, align 8, !tbaa !65
  %6 = load i8, ptr %0, align 1, !tbaa !148
  %7 = zext i8 %6 to i64
  %8 = getelementptr inbounds i16, ptr %5, i64 %7
  %9 = load i16, ptr %8, align 2, !tbaa !40
  %10 = and i16 %9, 1024
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %3
  %13 = icmp eq i8 %6, 0
  br i1 %13, label %44, label %14

14:                                               ; preds = %12
  %15 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !62
  %16 = icmp ne i32 %15, 0
  %17 = icmp ne i8 %2, 0
  %18 = and i1 %17, %16
  br label %20

19:                                               ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %1, ptr noundef nonnull align 1 dereferenceable(39) @.str.276, i64 39, i1 false) #25
  br label %67

20:                                               ; preds = %14, %39
  %21 = phi i64 [ 0, %14 ], [ %40, %39 ]
  %22 = phi i8 [ %6, %14 ], [ %42, %39 ]
  br i1 %18, label %23, label %30

23:                                               ; preds = %20
  %24 = zext i8 %22 to i64
  %25 = getelementptr inbounds i16, ptr %5, i64 %24
  %26 = load i16, ptr %25, align 2, !tbaa !40
  %27 = and i16 %26, 1280
  %28 = icmp eq i16 %27, 1280
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %1, ptr noundef nonnull align 1 dereferenceable(55) @.str.277, i64 55, i1 false) #25
  br label %67

30:                                               ; preds = %23, %20
  switch i8 %22, label %32 [
    i8 95, label %39
    i8 32, label %31
  ]

31:                                               ; preds = %30
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %1, ptr noundef nonnull align 1 dereferenceable(40) @.str.278, i64 40, i1 false) #25
  br label %67

32:                                               ; preds = %30
  %33 = zext i8 %22 to i64
  %34 = getelementptr inbounds i16, ptr %5, i64 %33
  %35 = load i16, ptr %34, align 2, !tbaa !40
  %36 = and i16 %35, 8
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(73) %1, ptr noundef nonnull align 1 dereferenceable(73) @.str.279, i64 73, i1 false) #25
  br label %67

39:                                               ; preds = %30, %32
  %40 = add nuw i64 %21, 1
  %41 = getelementptr inbounds i8, ptr %0, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !148
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %20, !llvm.loop !192

44:                                               ; preds = %39, %12
  br label %48

45:                                               ; preds = %48
  %46 = add nuw nsw i64 %49, 1
  %47 = icmp eq i64 %46, 30
  br i1 %47, label %55, label %48, !llvm.loop !193

48:                                               ; preds = %44, %45
  %49 = phi i64 [ %46, %45 ], [ 0, %44 ]
  %50 = getelementptr inbounds [31 x ptr], ptr @rna_validate_identifier.kwlist, i64 0, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !65
  %52 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %51) #26
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %45

54:                                               ; preds = %48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(35) %1, ptr noundef nonnull align 1 dereferenceable(35) @.str.280, i64 35, i1 false) #25
  br label %67

55:                                               ; preds = %45
  %56 = icmp eq i8 %2, 0
  br i1 %56, label %67, label %60

57:                                               ; preds = %60
  %58 = add nuw nsw i64 %61, 1
  %59 = icmp eq i64 %58, 4
  br i1 %59, label %67, label %60, !llvm.loop !194

60:                                               ; preds = %55, %57
  %61 = phi i64 [ %58, %57 ], [ 0, %55 ]
  %62 = getelementptr inbounds [5 x ptr], ptr @rna_validate_identifier.kwlist_prop, i64 0, i64 %61
  %63 = load ptr, ptr %62, align 8, !tbaa !65
  %64 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %63) #26
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %57

66:                                               ; preds = %60
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(35) %1, ptr noundef nonnull align 1 dereferenceable(35) @.str.280, i64 35, i1 false) #25
  br label %67

67:                                               ; preds = %57, %55, %66, %54, %38, %31, %29, %19
  %68 = phi i32 [ 0, %29 ], [ 0, %31 ], [ 0, %38 ], [ 0, %54 ], [ 0, %66 ], [ 0, %19 ], [ 1, %55 ], [ 1, %57 ]
  ret i32 %68
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @rna_find_def_struct(ptr noundef readnone %0) unnamed_addr #20 !PGOFuncName !195 {
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 1), %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 8, !tbaa !65
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.StructDefRNA, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !75
  %9 = icmp eq ptr %8, %0
  br i1 %9, label %10, label %2, !llvm.loop !196

10:                                               ; preds = %2, %6
  ret ptr %4
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @RNA_def_struct_sdna(ptr noundef writeonly %0, ptr noundef %1) local_unnamed_addr #14 {
  %3 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !62
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = load ptr, ptr @stderr, align 8, !tbaa !65
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.207, ptr noundef nonnull @__func__.RNA_def_struct_sdna) #29
  br label %11

8:                                                ; preds = %2
  %9 = tail call fastcc ptr @rna_find_def_struct(ptr noundef %0) #27
  %10 = getelementptr inbounds %struct.StructDefRNA, ptr %9, i64 0, i32 3
  store ptr %1, ptr %10, align 8, !tbaa !78
  br label %11

11:                                               ; preds = %8, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RNA_def_property(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [512 x i8], align 16
  %6 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !62
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %29, label %8

8:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %5) #28
  %9 = call fastcc i32 @rna_validate_identifier(ptr noundef %1, ptr noundef nonnull %5, i8 noundef zeroext 1) #27, !range !64
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  %12 = load ptr, ptr @stderr, align 8, !tbaa !65
  %13 = getelementptr inbounds %struct.ContainerRNA, ptr %0, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !65
  %15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef nonnull @.str.213, ptr noundef nonnull @__func__.RNA_def_property, ptr noundef %14, ptr noundef %1, ptr noundef nonnull %5) #29
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !66
  br label %16

16:                                               ; preds = %11, %8
  %17 = call fastcc ptr @rna_find_container_def(ptr noundef %0) #27
  %18 = getelementptr inbounds %struct.ContainerDefRNA, ptr %17, i64 0, i32 3
  %19 = call ptr @rna_findlink(ptr noundef nonnull %18, ptr noundef %1) #27
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load ptr, ptr @stderr, align 8, !tbaa !65
  %23 = getelementptr inbounds %struct.ContainerRNA, ptr %0, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !65
  %25 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.214, ptr noundef nonnull @__func__.RNA_def_property, ptr noundef %24, ptr noundef %1) #29
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !66
  br label %26

26:                                               ; preds = %21, %16
  %27 = load ptr, ptr @MEM_callocN, align 8, !tbaa !65
  %28 = call ptr %27(i64 noundef 112, ptr noundef nonnull @.str.215) #25
  call void @rna_addtail(ptr noundef nonnull %18, ptr noundef %28) #27
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %5) #28
  br label %29

29:                                               ; preds = %4, %26
  %30 = phi ptr [ %28, %26 ], [ null, %4 ]
  %31 = load ptr, ptr @MEM_callocN, align 8, !tbaa !65
  %32 = call fastcc i64 @rna_property_type_sizeof(i32 noundef %2) #27, !range !197
  %33 = call ptr %31(i64 noundef %32, ptr noundef nonnull @.str.216) #25
  switch i32 %2, label %77 [
    i32 0, label %34
    i32 1, label %45
    i32 2, label %54
    i32 3, label %71
    i32 5, label %73
    i32 4, label %82
    i32 6, label %82
  ]

34:                                               ; preds = %29
  %35 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !62
  %36 = icmp eq i32 %35, 0
  %37 = and i32 %3, -42
  %38 = icmp eq i32 %37, 0
  %39 = or i1 %38, %36
  br i1 %39, label %84, label %40

40:                                               ; preds = %34
  %41 = load ptr, ptr @stderr, align 8, !tbaa !65
  %42 = getelementptr inbounds %struct.ContainerRNA, ptr %0, i64 1
  %43 = load ptr, ptr %42, align 8, !tbaa !65
  %44 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %41, ptr noundef nonnull @.str.217, ptr noundef nonnull @__func__.RNA_def_property, ptr noundef %43, ptr noundef %1) #29
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !66
  br label %82

45:                                               ; preds = %29
  %46 = icmp eq i32 %3, 13
  %47 = select i1 %46, i32 0, i32 -2147483648
  %48 = getelementptr inbounds %struct.IntPropertyRNA, ptr %33, i64 0, i32 13
  store i32 %47, ptr %48, align 8, !tbaa !198
  %49 = getelementptr inbounds %struct.IntPropertyRNA, ptr %33, i64 0, i32 14
  store i32 2147483647, ptr %49, align 4, !tbaa !199
  %50 = select i1 %46, i32 0, i32 -10000
  %51 = getelementptr inbounds %struct.IntPropertyRNA, ptr %33, i64 0, i32 11
  store i32 %50, ptr %51, align 8, !tbaa !200
  %52 = getelementptr inbounds %struct.IntPropertyRNA, ptr %33, i64 0, i32 12
  store i32 10000, ptr %52, align 4, !tbaa !201
  %53 = getelementptr inbounds %struct.IntPropertyRNA, ptr %33, i64 0, i32 15
  store i32 1, ptr %53, align 8, !tbaa !202
  br label %82

54:                                               ; preds = %29
  %55 = icmp eq i32 %3, 13
  %56 = select i1 %55, float 0.000000e+00, float 0xC7EFFFFFE0000000
  %57 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %33, i64 0, i32 13
  store float %56, ptr %57, align 8, !tbaa !203
  %58 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %33, i64 0, i32 14
  store float 0x47EFFFFFE0000000, ptr %58, align 4, !tbaa !204
  switch i32 %3, label %63 [
    i32 30, label %59
    i32 20, label %59
    i32 15, label %61
  ]

59:                                               ; preds = %54, %54
  store float 0.000000e+00, ptr %57, align 8, !tbaa !203
  %60 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %33, i64 0, i32 11
  store float 0.000000e+00, ptr %60, align 8, !tbaa !205
  br label %66

61:                                               ; preds = %54
  %62 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %33, i64 0, i32 11
  store float 0.000000e+00, ptr %62, align 8, !tbaa !205
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %57, align 8, !tbaa !206
  br label %66

63:                                               ; preds = %54
  %64 = select i1 %55, float 0.000000e+00, float -1.000000e+04
  %65 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %33, i64 0, i32 11
  store float %64, ptr %65, align 8, !tbaa !205
  br label %66

66:                                               ; preds = %61, %63, %59
  %67 = phi float [ 1.000000e+00, %61 ], [ 1.000000e+04, %63 ], [ 1.000000e+00, %59 ]
  %68 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %33, i64 0, i32 12
  store float %67, ptr %68, align 4, !tbaa !207
  %69 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %33, i64 0, i32 15
  store float 1.000000e+01, ptr %69, align 8, !tbaa !208
  %70 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %33, i64 0, i32 16
  store i32 3, ptr %70, align 4, !tbaa !209
  br label %82

71:                                               ; preds = %29
  %72 = getelementptr inbounds %struct.StringPropertyRNA, ptr %33, i64 0, i32 8
  store ptr @.str.2, ptr %72, align 8, !tbaa !181
  br label %82

73:                                               ; preds = %29
  %74 = getelementptr inbounds %struct.PropertyRNA, ptr %33, i64 0, i32 4
  %75 = load i32, ptr %74, align 8, !tbaa !51
  %76 = or i32 %75, 8388608
  store i32 %76, ptr %74, align 8, !tbaa !51
  br label %82

77:                                               ; preds = %29
  %78 = load ptr, ptr @stderr, align 8, !tbaa !65
  %79 = getelementptr inbounds %struct.ContainerRNA, ptr %0, i64 1
  %80 = load ptr, ptr %79, align 8, !tbaa !65
  %81 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %78, ptr noundef nonnull @.str.218, ptr noundef nonnull @__func__.RNA_def_property, ptr noundef %80, ptr noundef %1) #29
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !66
  br label %127

82:                                               ; preds = %45, %66, %71, %73, %40, %29, %29
  %83 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !62
  br label %84

84:                                               ; preds = %82, %34
  %85 = phi i32 [ %83, %82 ], [ %35, %34 ]
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.PropertyDefRNA, ptr %30, i64 0, i32 2
  store ptr %0, ptr %88, align 8, !tbaa !210
  %89 = getelementptr inbounds %struct.PropertyDefRNA, ptr %30, i64 0, i32 3
  store ptr %33, ptr %89, align 8, !tbaa !128
  br label %90

90:                                               ; preds = %87, %84
  %91 = getelementptr inbounds %struct.PropertyRNA, ptr %33, i64 0, i32 2
  store i32 -1, ptr %91, align 8, !tbaa !211
  %92 = getelementptr inbounds %struct.PropertyRNA, ptr %33, i64 0, i32 3
  store ptr %1, ptr %92, align 8, !tbaa !130
  %93 = getelementptr inbounds %struct.PropertyRNA, ptr %33, i64 0, i32 9
  store i32 %2, ptr %93, align 8, !tbaa !165
  %94 = getelementptr inbounds %struct.PropertyRNA, ptr %33, i64 0, i32 10
  store i32 %3, ptr %94, align 4, !tbaa !212
  %95 = getelementptr inbounds %struct.PropertyRNA, ptr %33, i64 0, i32 5
  store ptr %1, ptr %95, align 8, !tbaa !162
  %96 = getelementptr inbounds %struct.PropertyRNA, ptr %33, i64 0, i32 6
  store ptr @.str.2, ptr %96, align 8, !tbaa !163
  %97 = getelementptr inbounds %struct.PropertyRNA, ptr %33, i64 0, i32 8
  store ptr @.str.67, ptr %97, align 8, !tbaa !213
  %98 = getelementptr inbounds %struct.PropertyRNA, ptr %33, i64 0, i32 20
  store i32 -1, ptr %98, align 4, !tbaa !214
  %99 = icmp ult i32 %2, 5
  br i1 %99, label %100, label %105

100:                                              ; preds = %90
  %101 = getelementptr inbounds %struct.PropertyRNA, ptr %33, i64 0, i32 4
  %102 = icmp eq i32 %2, 3
  %103 = select i1 %102, i32 1, i32 3
  store i32 %103, ptr %101, align 8
  br i1 %102, label %104, label %105

104:                                              ; preds = %100
  call void @RNA_def_property_flag(ptr noundef nonnull %33, i32 noundef 262144) #27
  br label %105

105:                                              ; preds = %90, %104, %100
  %106 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !62
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %116, label %108

108:                                              ; preds = %105
  switch i32 %2, label %125 [
    i32 0, label %109
    i32 1, label %110
    i32 2, label %111
    i32 3, label %112
    i32 4, label %113
    i32 5, label %114
    i32 6, label %115
  ]

109:                                              ; preds = %108
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 5), align 4, !tbaa !215
  call void @RNA_def_property_boolean_sdna(ptr noundef nonnull %33, ptr noundef null, ptr noundef %1, i32 noundef 0) #27
  store i32 0, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 5), align 4, !tbaa !215
  br label %125

110:                                              ; preds = %108
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 5), align 4, !tbaa !215
  call void @RNA_def_property_int_sdna(ptr noundef nonnull %33, ptr noundef null, ptr noundef %1) #27
  store i32 0, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 5), align 4, !tbaa !215
  br label %125

111:                                              ; preds = %108
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 5), align 4, !tbaa !215
  call void @RNA_def_property_float_sdna(ptr noundef nonnull %33, ptr noundef null, ptr noundef %1) #27
  store i32 0, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 5), align 4, !tbaa !215
  br label %125

112:                                              ; preds = %108
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 5), align 4, !tbaa !215
  call void @RNA_def_property_string_sdna(ptr noundef nonnull %33, ptr noundef null, ptr noundef %1) #27
  store i32 0, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 5), align 4, !tbaa !215
  br label %125

113:                                              ; preds = %108
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 5), align 4, !tbaa !215
  call void @RNA_def_property_enum_sdna(ptr noundef nonnull %33, ptr noundef null, ptr noundef %1) #27
  store i32 0, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 5), align 4, !tbaa !215
  br label %125

114:                                              ; preds = %108
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 5), align 4, !tbaa !215
  call void @RNA_def_property_pointer_sdna(ptr noundef nonnull %33, ptr noundef null, ptr noundef %1) #27
  store i32 0, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 5), align 4, !tbaa !215
  br label %125

115:                                              ; preds = %108
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 5), align 4, !tbaa !215
  call void @RNA_def_property_collection_sdna(ptr noundef nonnull %33, ptr noundef null, ptr noundef %1, ptr noundef null) #27
  store i32 0, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 5), align 4, !tbaa !215
  br label %125

116:                                              ; preds = %105
  %117 = getelementptr inbounds %struct.PropertyRNA, ptr %33, i64 0, i32 4
  %118 = load i32, ptr %117, align 8, !tbaa !51
  %119 = or i32 %118, 1536
  store i32 %119, ptr %117, align 8, !tbaa !51
  %120 = getelementptr inbounds %struct.ContainerRNA, ptr %0, i64 0, i32 2
  %121 = load ptr, ptr %120, align 8, !tbaa !216
  %122 = icmp eq ptr %121, null
  br i1 %122, label %125, label %123

123:                                              ; preds = %116
  %124 = load ptr, ptr %92, align 8, !tbaa !130
  call void @BLI_ghash_insert(ptr noundef nonnull %121, ptr noundef %124, ptr noundef nonnull %33) #25
  br label %125

125:                                              ; preds = %116, %123, %109, %110, %111, %112, %113, %114, %115, %108
  %126 = getelementptr inbounds %struct.ContainerRNA, ptr %0, i64 0, i32 3
  call void @rna_addtail(ptr noundef nonnull %126, ptr noundef nonnull %33) #27
  br label %127

127:                                              ; preds = %125, %77
  %128 = phi ptr [ null, %77 ], [ %33, %125 ]
  ret ptr %128
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @RNA_def_property_flag(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #11 {
  %3 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !51
  %5 = or i32 %4, %1
  store i32 %5, ptr %3, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @RNA_def_property_ui_text(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #21 {
  %4 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 5
  store ptr %1, ptr %4, align 8, !tbaa !162
  %5 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 6
  store ptr %2, ptr %5, align 8, !tbaa !163
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @RNA_def_property_struct_type(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #14 {
  %3 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !67
  %4 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !62
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = load ptr, ptr @stderr, align 8, !tbaa !65
  %8 = getelementptr inbounds %struct.StructRNA, ptr %3, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !70
  %10 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !130
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.226, ptr noundef nonnull @__func__.RNA_def_property_struct_type, ptr noundef %9, ptr noundef %11) #29
  br label %27

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 9
  %15 = load i32, ptr %14, align 8, !tbaa !165
  switch i32 %15, label %20 [
    i32 5, label %16
    i32 6, label %18
  ]

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.PointerPropertyRNA, ptr %0, i64 0, i32 5
  store ptr %1, ptr %17, align 8, !tbaa !87
  br label %27

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.CollectionPropertyRNA, ptr %0, i64 0, i32 9
  store ptr %1, ptr %19, align 8, !tbaa !84
  br label %27

20:                                               ; preds = %13
  %21 = load ptr, ptr @stderr, align 8, !tbaa !65
  %22 = getelementptr inbounds %struct.StructRNA, ptr %3, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !70
  %24 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !130
  %26 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str.227, ptr noundef nonnull @__func__.RNA_def_property_struct_type, ptr noundef %23, ptr noundef %25) #29
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !66
  br label %27

27:                                               ; preds = %16, %18, %20, %6
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @RNA_def_property_collection_funcs(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #14 {
  %10 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !67
  %11 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !62
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load ptr, ptr @stderr, align 8, !tbaa !65
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull @.str.207, ptr noundef nonnull @__func__.RNA_def_property_collection_funcs) #29
  br label %59

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 9
  %18 = load i32, ptr %17, align 8, !tbaa !165
  %19 = icmp eq i32 %18, 6
  br i1 %19, label %20, label %52

20:                                               ; preds = %16
  %21 = icmp eq ptr %1, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.CollectionPropertyRNA, ptr %0, i64 0, i32 1
  store ptr %1, ptr %23, align 8, !tbaa !80
  br label %24

24:                                               ; preds = %22, %20
  %25 = icmp eq ptr %2, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.CollectionPropertyRNA, ptr %0, i64 0, i32 2
  store ptr %2, ptr %27, align 8, !tbaa !82
  br label %28

28:                                               ; preds = %26, %24
  %29 = icmp eq ptr %3, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.CollectionPropertyRNA, ptr %0, i64 0, i32 3
  store ptr %3, ptr %31, align 8, !tbaa !217
  br label %32

32:                                               ; preds = %30, %28
  %33 = icmp eq ptr %4, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.CollectionPropertyRNA, ptr %0, i64 0, i32 4
  store ptr %4, ptr %35, align 8, !tbaa !83
  br label %36

36:                                               ; preds = %34, %32
  %37 = icmp eq ptr %5, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.CollectionPropertyRNA, ptr %0, i64 0, i32 5
  store ptr %5, ptr %39, align 8, !tbaa !218
  br label %40

40:                                               ; preds = %38, %36
  %41 = icmp eq ptr %6, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.CollectionPropertyRNA, ptr %0, i64 0, i32 6
  store ptr %6, ptr %43, align 8, !tbaa !219
  br label %44

44:                                               ; preds = %42, %40
  %45 = icmp eq ptr %7, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.CollectionPropertyRNA, ptr %0, i64 0, i32 7
  store ptr %7, ptr %47, align 8, !tbaa !220
  br label %48

48:                                               ; preds = %46, %44
  %49 = icmp eq ptr %8, null
  br i1 %49, label %59, label %50

50:                                               ; preds = %48
  %51 = getelementptr inbounds %struct.CollectionPropertyRNA, ptr %0, i64 0, i32 8
  store ptr %8, ptr %51, align 8, !tbaa !221
  br label %59

52:                                               ; preds = %16
  %53 = load ptr, ptr @stderr, align 8, !tbaa !65
  %54 = getelementptr inbounds %struct.StructRNA, ptr %10, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !70
  %56 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !130
  %58 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %53, ptr noundef nonnull @.str.243, ptr noundef nonnull @__func__.RNA_def_property_collection_funcs, ptr noundef %55, ptr noundef %57) #29
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !66
  br label %59

59:                                               ; preds = %52, %50, %48, %13
  ret void
}

; Function Attrs: optsize
declare void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) #2

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @RNA_def_property_pointer_funcs(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #14 {
  %6 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !67
  %7 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !62
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = load ptr, ptr @stderr, align 8, !tbaa !65
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.207, ptr noundef nonnull @__func__.RNA_def_property_pointer_funcs) #29
  br label %39

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !165
  %15 = icmp eq i32 %14, 5
  br i1 %15, label %16, label %32

16:                                               ; preds = %12
  %17 = icmp eq ptr %1, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.PointerPropertyRNA, ptr %0, i64 0, i32 1
  store ptr %1, ptr %19, align 8, !tbaa !85
  br label %20

20:                                               ; preds = %18, %16
  %21 = icmp eq ptr %2, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.PointerPropertyRNA, ptr %0, i64 0, i32 2
  store ptr %2, ptr %23, align 8, !tbaa !222
  br label %24

24:                                               ; preds = %22, %20
  %25 = icmp eq ptr %3, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.PointerPropertyRNA, ptr %0, i64 0, i32 3
  store ptr %3, ptr %27, align 8, !tbaa !223
  br label %28

28:                                               ; preds = %26, %24
  %29 = icmp eq ptr %4, null
  br i1 %29, label %39, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.PointerPropertyRNA, ptr %0, i64 0, i32 4
  store ptr %4, ptr %31, align 8, !tbaa !224
  br label %39

32:                                               ; preds = %12
  %33 = load ptr, ptr @stderr, align 8, !tbaa !65
  %34 = getelementptr inbounds %struct.StructRNA, ptr %6, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !70
  %36 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !130
  %38 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef nonnull @.str.241, ptr noundef nonnull @__func__.RNA_def_property_pointer_funcs, ptr noundef %35, ptr noundef %37) #29
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !66
  br label %39

39:                                               ; preds = %32, %30, %28, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RNA_def_struct(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %3, %9
  %6 = phi ptr [ %7, %9 ], [ %0, %3 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !65
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.StructRNA, ptr %7, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !70
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(1) %2) #26
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %5, !llvm.loop !225

14:                                               ; preds = %5
  %15 = load ptr, ptr @stderr, align 8, !tbaa !65
  %16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.206, ptr noundef nonnull @__func__.RNA_def_struct, ptr noundef nonnull %2, ptr noundef %1) #29
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !66
  br label %17

17:                                               ; preds = %9, %14, %3
  %18 = phi ptr [ null, %14 ], [ null, %3 ], [ %7, %9 ]
  %19 = tail call ptr @RNA_def_struct_ptr(ptr noundef %0, ptr noundef %1, ptr noundef %18) #27
  ret ptr %19
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_def_struct_sdna_from(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !62
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = load ptr, ptr @stderr, align 8, !tbaa !65
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.207, ptr noundef nonnull @__func__.RNA_def_struct_sdna_from) #29
  br label %29

9:                                                ; preds = %3
  %10 = tail call fastcc ptr @rna_find_def_struct(ptr noundef %0) #27
  %11 = getelementptr inbounds %struct.StructDefRNA, ptr %10, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !78
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load ptr, ptr @stderr, align 8, !tbaa !65
  %16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.208, ptr noundef nonnull @__func__.RNA_def_struct_sdna_from, ptr noundef %1) #29
  br label %29

17:                                               ; preds = %9
  %18 = load ptr, ptr @DefRNA, align 8, !tbaa !152
  %19 = tail call i32 @DNA_struct_find_nr(ptr noundef %18, ptr noundef %1) #25
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 5), align 4, !tbaa !215
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load ptr, ptr @stderr, align 8, !tbaa !65
  %26 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef nonnull @.str.209, ptr noundef nonnull @__func__.RNA_def_struct_sdna_from, ptr noundef %1) #29
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !66
  br label %29

27:                                               ; preds = %17
  %28 = getelementptr inbounds %struct.StructDefRNA, ptr %10, i64 0, i32 5
  store ptr %2, ptr %28, align 8, !tbaa !226
  store ptr %1, ptr %11, align 8, !tbaa !78
  br label %29

29:                                               ; preds = %21, %24, %27, %14, %6
  ret void
}

; Function Attrs: optsize
declare i32 @DNA_struct_find_nr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @RNA_def_struct_name_property(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #14 {
  %3 = getelementptr inbounds %struct.PropertyRNA, ptr %1, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !165
  %5 = icmp eq i32 %4, 3
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr @stderr, align 8, !tbaa !65
  %8 = getelementptr inbounds %struct.StructRNA, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !70
  %10 = getelementptr inbounds %struct.PropertyRNA, ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !130
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.210, ptr noundef nonnull @__func__.RNA_def_struct_name_property, ptr noundef %9, ptr noundef %11) #29
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !66
  br label %15

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.StructRNA, ptr %0, i64 0, i32 9
  store ptr %1, ptr %14, align 8, !tbaa !227
  br label %15

15:                                               ; preds = %13, %6
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @RNA_def_struct_nested(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2) local_unnamed_addr #14 {
  br label %4

4:                                                ; preds = %8, %3
  %5 = phi ptr [ %0, %3 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !65
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.StructRNA, ptr %6, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !70
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) %2) #26
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %4, !llvm.loop !228

13:                                               ; preds = %4
  %14 = load ptr, ptr @stderr, align 8, !tbaa !65
  %15 = getelementptr inbounds %struct.StructRNA, ptr %1, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !70
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull @.str.211, ptr noundef nonnull @__func__.RNA_def_struct_nested, ptr noundef %2, ptr noundef %16) #29
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !66
  br label %18

18:                                               ; preds = %8, %13
  %19 = getelementptr inbounds %struct.StructRNA, ptr %1, i64 0, i32 12
  store ptr %6, ptr %19, align 8, !tbaa !229
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @RNA_def_struct_flag(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #11 {
  %3 = getelementptr inbounds %struct.StructRNA, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !61
  %5 = or i32 %4, %1
  store i32 %5, ptr %3, align 8, !tbaa !61
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @RNA_def_struct_clear_flag(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #11 {
  %3 = xor i32 %1, -1
  %4 = getelementptr inbounds %struct.StructRNA, ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !61
  %6 = and i32 %5, %3
  store i32 %6, ptr %4, align 8, !tbaa !61
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @RNA_def_struct_refine_func(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #14 {
  %3 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !62
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = load ptr, ptr @stderr, align 8, !tbaa !65
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.207, ptr noundef nonnull @__func__.RNA_def_struct_refine_func) #29
  br label %12

8:                                                ; preds = %2
  %9 = icmp eq ptr %1, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.StructRNA, ptr %0, i64 0, i32 13
  store ptr %1, ptr %11, align 8, !tbaa !230
  br label %12

12:                                               ; preds = %5, %10, %8
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @RNA_def_struct_idprops_func(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #14 {
  %3 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !62
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = load ptr, ptr @stderr, align 8, !tbaa !65
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.207, ptr noundef nonnull @__func__.RNA_def_struct_idprops_func) #29
  br label %12

8:                                                ; preds = %2
  %9 = icmp eq ptr %1, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.StructRNA, ptr %0, i64 0, i32 18
  store ptr %1, ptr %11, align 8, !tbaa !231
  br label %12

12:                                               ; preds = %5, %10, %8
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @RNA_def_struct_register_funcs(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #14 {
  %5 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !62
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = load ptr, ptr @stderr, align 8, !tbaa !65
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.207, ptr noundef nonnull @__func__.RNA_def_struct_register_funcs) #29
  br label %22

10:                                               ; preds = %4
  %11 = icmp eq ptr %1, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.StructRNA, ptr %0, i64 0, i32 15
  store ptr %1, ptr %13, align 8, !tbaa !232
  br label %14

14:                                               ; preds = %12, %10
  %15 = icmp eq ptr %2, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.StructRNA, ptr %0, i64 0, i32 16
  store ptr %2, ptr %17, align 8, !tbaa !233
  br label %18

18:                                               ; preds = %16, %14
  %19 = icmp eq ptr %3, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.StructRNA, ptr %0, i64 0, i32 17
  store ptr %3, ptr %21, align 8, !tbaa !234
  br label %22

22:                                               ; preds = %7, %20, %18
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @RNA_def_struct_path_func(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #14 {
  %3 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !62
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = load ptr, ptr @stderr, align 8, !tbaa !65
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.207, ptr noundef nonnull @__func__.RNA_def_struct_path_func) #29
  br label %12

8:                                                ; preds = %2
  %9 = icmp eq ptr %1, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.StructRNA, ptr %0, i64 0, i32 14
  store ptr %1, ptr %11, align 8, !tbaa !235
  br label %12

12:                                               ; preds = %5, %10, %8
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @RNA_def_struct_identifier(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #14 {
  %3 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !62
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr @stderr, align 8, !tbaa !65
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.212, ptr noundef nonnull @__func__.RNA_def_struct_identifier) #29
  br label %10

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.StructRNA, ptr %0, i64 0, i32 1
  store ptr %1, ptr %9, align 8, !tbaa !70
  br label %10

10:                                               ; preds = %8, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @RNA_def_struct_ui_text(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #21 {
  %4 = getelementptr inbounds %struct.StructRNA, ptr %0, i64 0, i32 5
  store ptr %1, ptr %4, align 8, !tbaa !71
  %5 = getelementptr inbounds %struct.StructRNA, ptr %0, i64 0, i32 6
  store ptr %2, ptr %5, align 8, !tbaa !72
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @RNA_def_struct_ui_icon(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #21 {
  %3 = getelementptr inbounds %struct.StructRNA, ptr %0, i64 0, i32 8
  store i32 %1, ptr %3, align 8, !tbaa !74
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @RNA_def_struct_translation_context(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #21 {
  %3 = icmp eq ptr %1, null
  %4 = select i1 %3, ptr @.str.67, ptr %1
  %5 = getelementptr inbounds %struct.StructRNA, ptr %0, i64 0, i32 7
  store ptr %4, ptr %5, align 8, !tbaa !73
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc ptr @rna_find_container_def(ptr noundef %0) unnamed_addr #14 !PGOFuncName !236 {
  %2 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !62
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = load ptr, ptr @stderr, align 8, !tbaa !65
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.159, ptr noundef nonnull @__func__.rna_find_container_def) #29
  br label %12

7:                                                ; preds = %1
  %8 = tail call ptr @rna_find_struct_def(ptr noundef %0) #27
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = tail call ptr @rna_find_function_def(ptr noundef %0) #27
  br label %12

12:                                               ; preds = %10, %7, %4
  %13 = phi ptr [ null, %4 ], [ %8, %7 ], [ %11, %10 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i64 @rna_property_type_sizeof(i32 noundef %0) unnamed_addr #5 !PGOFuncName !237 {
  %2 = icmp ult i32 %0, 7
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = zext nneg i32 %0 to i64
  %5 = getelementptr inbounds [7 x i64], ptr @switch.table.rna_property_type_sizeof, i64 0, i64 %4
  %6 = load i64, ptr %5, align 8
  br label %7

7:                                                ; preds = %1, %3
  %8 = phi i64 [ %6, %3 ], [ 0, %1 ]
  ret i64 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_def_property_boolean_sdna(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !67
  %6 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !62
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !tbaa !65
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.207, ptr noundef nonnull @__func__.RNA_def_property_boolean_sdna) #29
  br label %55

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 9
  %13 = load i32, ptr %12, align 8, !tbaa !165
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr @stderr, align 8, !tbaa !65
  %17 = getelementptr inbounds %struct.StructRNA, ptr %5, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !70
  %19 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !130
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef nonnull @.str.229, ptr noundef nonnull @__func__.RNA_def_property_boolean_sdna, ptr noundef %18, ptr noundef %20) #29
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !66
  br label %55

22:                                               ; preds = %11
  %23 = tail call fastcc ptr @rna_def_property_sdna(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) #27
  %24 = icmp eq ptr %23, null
  br i1 %24, label %55, label %25

25:                                               ; preds = %22
  %26 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 5), align 4, !tbaa !215
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %53

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.PropertyDefRNA, ptr %23, i64 0, i32 8
  %30 = load ptr, ptr %29, align 8, !tbaa !238
  %31 = icmp eq ptr %30, null
  br i1 %31, label %53, label %32

32:                                               ; preds = %28
  %33 = load i8, ptr %30, align 1, !tbaa !148
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %53, label %35

35:                                               ; preds = %32
  %36 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %30, ptr noundef nonnull dereferenceable(4) @.str.119) #26
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %53, label %38

38:                                               ; preds = %35
  %39 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %30, ptr noundef nonnull dereferenceable(6) @.str.237) #26
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %53, label %41

41:                                               ; preds = %38
  %42 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %30, ptr noundef nonnull dereferenceable(5) @.str.238) #26
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %41
  %45 = load ptr, ptr @stderr, align 8, !tbaa !65
  %46 = getelementptr inbounds %struct.StructRNA, ptr %5, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !70
  %48 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !130
  %50 = load i32, ptr %12, align 8, !tbaa !165
  %51 = tail call ptr @RNA_property_typename(i32 noundef %50) #27
  %52 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %45, ptr noundef nonnull @.str.239, ptr noundef nonnull @__func__.RNA_def_property_boolean_sdna, ptr noundef %47, ptr noundef %49, ptr noundef nonnull %30, ptr noundef nonnull %51) #29
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !66
  br label %55

53:                                               ; preds = %38, %35, %28, %32, %41, %25
  %54 = getelementptr inbounds %struct.PropertyDefRNA, ptr %23, i64 0, i32 14
  store i32 %3, ptr %54, align 4, !tbaa !239
  br label %55

55:                                               ; preds = %22, %53, %44, %15, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_def_property_int_sdna(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !67
  %5 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !62
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = load ptr, ptr @stderr, align 8, !tbaa !65
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.207, ptr noundef nonnull @__func__.RNA_def_property_int_sdna) #29
  br label %76

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !165
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %21, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr @stderr, align 8, !tbaa !65
  %16 = getelementptr inbounds %struct.StructRNA, ptr %4, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !70
  %18 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !130
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.230, ptr noundef nonnull @__func__.RNA_def_property_int_sdna, ptr noundef %17, ptr noundef %19) #29
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !66
  br label %76

21:                                               ; preds = %10
  %22 = tail call fastcc ptr @rna_def_property_sdna(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) #27
  %23 = icmp eq ptr %22, null
  br i1 %23, label %76, label %24

24:                                               ; preds = %21
  %25 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 5), align 4, !tbaa !215
  %26 = icmp eq i32 %25, 0
  %27 = getelementptr inbounds %struct.PropertyDefRNA, ptr %22, i64 0, i32 8
  %28 = load ptr, ptr %27, align 8, !tbaa !238
  %29 = icmp eq ptr %28, null
  br i1 %26, label %30, label %52

30:                                               ; preds = %24
  br i1 %29, label %68, label %31

31:                                               ; preds = %30
  %32 = load i8, ptr %28, align 1, !tbaa !148
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %53, label %34

34:                                               ; preds = %31
  %35 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %28, ptr noundef nonnull dereferenceable(4) @.str.119) #26
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %53, label %37

37:                                               ; preds = %34
  %38 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %28, ptr noundef nonnull dereferenceable(6) @.str.237) #26
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %53, label %40

40:                                               ; preds = %37
  %41 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %28, ptr noundef nonnull dereferenceable(5) @.str.238) #26
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %40
  %44 = load ptr, ptr @stderr, align 8, !tbaa !65
  %45 = getelementptr inbounds %struct.StructRNA, ptr %4, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !70
  %47 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !130
  %49 = load i32, ptr %11, align 8, !tbaa !165
  %50 = tail call ptr @RNA_property_typename(i32 noundef %49) #27
  %51 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %44, ptr noundef nonnull @.str.239, ptr noundef nonnull @__func__.RNA_def_property_int_sdna, ptr noundef %46, ptr noundef %48, ptr noundef nonnull %28, ptr noundef nonnull %50) #29
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !66
  br label %76

52:                                               ; preds = %24
  br i1 %29, label %68, label %53

53:                                               ; preds = %40, %31, %34, %37, %52
  %54 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %28, ptr noundef nonnull dereferenceable(5) @.str.238) #26
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.IntPropertyRNA, ptr %0, i64 0, i32 11
  store <4 x i32> <i32 0, i32 255, i32 0, i32 255>, ptr %57, align 8, !tbaa !117
  br label %68

58:                                               ; preds = %53
  %59 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %28, ptr noundef nonnull dereferenceable(6) @.str.237) #26
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.IntPropertyRNA, ptr %0, i64 0, i32 11
  store <4 x i32> <i32 -32768, i32 32767, i32 -32768, i32 32767>, ptr %62, align 8, !tbaa !117
  br label %68

63:                                               ; preds = %58
  %64 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %28, ptr noundef nonnull dereferenceable(4) @.str.119) #26
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.IntPropertyRNA, ptr %0, i64 0, i32 11
  store <4 x i32> <i32 -10000, i32 10000, i32 -2147483648, i32 2147483647>, ptr %67, align 8, !tbaa !117
  br label %68

68:                                               ; preds = %30, %52, %61, %66, %63, %56
  %69 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 10
  %70 = load i32, ptr %69, align 4, !tbaa !212
  %71 = add i32 %70, -13
  %72 = icmp ult i32 %71, 3
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.IntPropertyRNA, ptr %0, i64 0, i32 11
  store i32 0, ptr %74, align 8, !tbaa !200
  %75 = getelementptr inbounds %struct.IntPropertyRNA, ptr %0, i64 0, i32 13
  store i32 0, ptr %75, align 8, !tbaa !198
  br label %76

76:                                               ; preds = %68, %21, %73, %43, %14, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_def_property_float_sdna(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !67
  %5 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !62
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = load ptr, ptr @stderr, align 8, !tbaa !65
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.207, ptr noundef nonnull @__func__.RNA_def_property_float_sdna) #29
  br label %61

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !165
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %21, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr @stderr, align 8, !tbaa !65
  %16 = getelementptr inbounds %struct.StructRNA, ptr %4, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !70
  %18 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !130
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.231, ptr noundef nonnull @__func__.RNA_def_property_float_sdna, ptr noundef %17, ptr noundef %19) #29
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !66
  br label %61

21:                                               ; preds = %10
  %22 = tail call fastcc ptr @rna_def_property_sdna(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) #27
  %23 = icmp eq ptr %22, null
  br i1 %23, label %59, label %24

24:                                               ; preds = %21
  %25 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 5), align 4, !tbaa !215
  %26 = icmp eq i32 %25, 0
  %27 = getelementptr inbounds %struct.PropertyDefRNA, ptr %22, i64 0, i32 8
  %28 = load ptr, ptr %27, align 8, !tbaa !238
  %29 = icmp eq ptr %28, null
  br i1 %26, label %30, label %53

30:                                               ; preds = %24
  br i1 %29, label %59, label %31

31:                                               ; preds = %30
  %32 = load i8, ptr %28, align 1, !tbaa !148
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %54, label %34

34:                                               ; preds = %31
  %35 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %28, ptr noundef nonnull dereferenceable(6) @.str.121) #26
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %54, label %37

37:                                               ; preds = %34
  %38 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %28, ptr noundef nonnull dereferenceable(7) @.str.123) #26
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %54, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 10
  %42 = load i32, ptr %41, align 4, !tbaa !212
  %43 = icmp eq i32 %42, 30
  br i1 %43, label %54, label %44

44:                                               ; preds = %40
  %45 = load ptr, ptr @stderr, align 8, !tbaa !65
  %46 = getelementptr inbounds %struct.StructRNA, ptr %4, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !70
  %48 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !130
  %50 = load i32, ptr %11, align 8, !tbaa !165
  %51 = tail call ptr @RNA_property_typename(i32 noundef %50) #27
  %52 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %45, ptr noundef nonnull @.str.239, ptr noundef nonnull @__func__.RNA_def_property_float_sdna, ptr noundef %47, ptr noundef %49, ptr noundef nonnull %28, ptr noundef nonnull %51) #29
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !66
  br label %61

53:                                               ; preds = %24
  br i1 %29, label %59, label %54

54:                                               ; preds = %40, %37, %31, %34, %53
  %55 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %28, ptr noundef nonnull dereferenceable(5) @.str.238) #26
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %0, i64 0, i32 11
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %58, align 8, !tbaa !206
  br label %59

59:                                               ; preds = %30, %53, %54, %57, %21
  %60 = tail call fastcc ptr @rna_def_property_sdna(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) #27
  br label %61

61:                                               ; preds = %59, %44, %14, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_def_property_string_sdna(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !67
  %5 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !62
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = load ptr, ptr @stderr, align 8, !tbaa !65
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.207, ptr noundef nonnull @__func__.RNA_def_property_string_sdna) #29
  br label %32

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !165
  %13 = icmp eq i32 %12, 3
  br i1 %13, label %21, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr @stderr, align 8, !tbaa !65
  %16 = getelementptr inbounds %struct.StructRNA, ptr %4, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !70
  %18 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !130
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.228, ptr noundef nonnull @__func__.RNA_def_property_string_sdna, ptr noundef %17, ptr noundef %19) #29
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !66
  br label %32

21:                                               ; preds = %10
  %22 = tail call fastcc ptr @rna_def_property_sdna(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) #27
  %23 = icmp eq ptr %22, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 12
  %26 = load i32, ptr %25, align 8, !tbaa !240
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 14
  %30 = load i32, ptr %29, align 8, !tbaa !241
  %31 = getelementptr inbounds %struct.StringPropertyRNA, ptr %0, i64 0, i32 7
  store i32 %30, ptr %31, align 8, !tbaa !242
  store i32 0, ptr %25, align 8, !tbaa !240
  store i32 0, ptr %29, align 8, !tbaa !241
  br label %32

32:                                               ; preds = %21, %28, %24, %14, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_def_property_enum_sdna(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !67
  %5 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !62
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = load ptr, ptr @stderr, align 8, !tbaa !65
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.207, ptr noundef nonnull @__func__.RNA_def_property_enum_sdna) #29
  br label %35

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !165
  %13 = icmp eq i32 %12, 4
  br i1 %13, label %21, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr @stderr, align 8, !tbaa !65
  %16 = getelementptr inbounds %struct.StructRNA, ptr %4, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !70
  %18 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !130
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.236, ptr noundef nonnull @__func__.RNA_def_property_enum_sdna, ptr noundef %17, ptr noundef %19) #29
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !66
  br label %35

21:                                               ; preds = %10
  %22 = tail call fastcc ptr @rna_def_property_sdna(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) #27
  %23 = icmp eq ptr %22, null
  br i1 %23, label %35, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 12
  %26 = load i32, ptr %25, align 8, !tbaa !240
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %24
  store i32 0, ptr %25, align 8, !tbaa !240
  %29 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 14
  store i32 0, ptr %29, align 8, !tbaa !241
  %30 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 5), align 4, !tbaa !215
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load ptr, ptr @stderr, align 8, !tbaa !65
  %34 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef nonnull @.str.240, ptr noundef nonnull @__func__.RNA_def_property_enum_sdna, ptr noundef %1, ptr noundef %2) #29
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !66
  br label %35

35:                                               ; preds = %21, %28, %32, %24, %14, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_def_property_pointer_sdna(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !67
  %5 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !62
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = load ptr, ptr @stderr, align 8, !tbaa !65
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.207, ptr noundef nonnull @__func__.RNA_def_property_pointer_sdna) #29
  br label %35

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !165
  %13 = icmp eq i32 %12, 5
  br i1 %13, label %21, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr @stderr, align 8, !tbaa !65
  %16 = getelementptr inbounds %struct.StructRNA, ptr %4, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !70
  %18 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !130
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.241, ptr noundef nonnull @__func__.RNA_def_property_pointer_sdna, ptr noundef %17, ptr noundef %19) #29
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !66
  br label %35

21:                                               ; preds = %10
  %22 = tail call fastcc ptr @rna_def_property_sdna(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) #27
  %23 = icmp eq ptr %22, null
  br i1 %23, label %35, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 12
  %26 = load i32, ptr %25, align 8, !tbaa !240
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %24
  store i32 0, ptr %25, align 8, !tbaa !240
  %29 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 14
  store i32 0, ptr %29, align 8, !tbaa !241
  %30 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 5), align 4, !tbaa !215
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load ptr, ptr @stderr, align 8, !tbaa !65
  %34 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef nonnull @.str.242, ptr noundef nonnull @__func__.RNA_def_property_pointer_sdna, ptr noundef %1, ptr noundef %2) #29
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !66
  br label %35

35:                                               ; preds = %21, %28, %32, %24, %14, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_def_property_collection_sdna(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.DNAStructMember, align 8
  %6 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !67
  %7 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !62
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !tbaa !65
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.207, ptr noundef nonnull @__func__.RNA_def_property_collection_sdna) #29
  br label %96

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !165
  %15 = icmp eq i32 %14, 6
  br i1 %15, label %23, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr @stderr, align 8, !tbaa !65
  %18 = getelementptr inbounds %struct.StructRNA, ptr %6, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !70
  %20 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !130
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.243, ptr noundef nonnull @__func__.RNA_def_property_collection_sdna, ptr noundef %19, ptr noundef %21) #29
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !66
  br label %96

23:                                               ; preds = %12
  %24 = tail call fastcc ptr @rna_def_property_sdna(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) #27
  %25 = icmp eq ptr %24, null
  br i1 %25, label %96, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 12
  %28 = load i32, ptr %27, align 8, !tbaa !240
  %29 = icmp eq i32 %28, 0
  %30 = icmp ne ptr %3, null
  %31 = or i1 %30, %29
  br i1 %31, label %39, label %32

32:                                               ; preds = %26
  store i32 0, ptr %27, align 8, !tbaa !240
  %33 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 14
  store i32 0, ptr %33, align 8, !tbaa !241
  %34 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 5), align 4, !tbaa !215
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load ptr, ptr @stderr, align 8, !tbaa !65
  %38 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %37, ptr noundef nonnull @.str.244, ptr noundef nonnull @__func__.RNA_def_property_collection_sdna, ptr noundef %1, ptr noundef %2) #29
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !66
  br label %39

39:                                               ; preds = %32, %36, %26
  %40 = getelementptr inbounds %struct.PropertyDefRNA, ptr %24, i64 0, i32 8
  %41 = load ptr, ptr %40, align 8, !tbaa !238
  %42 = icmp eq ptr %41, null
  br i1 %42, label %50, label %43

43:                                               ; preds = %39
  %44 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %41, ptr noundef nonnull dereferenceable(9) @.str.245) #26
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.CollectionPropertyRNA, ptr %0, i64 0, i32 2
  store ptr @.str.246, ptr %47, align 8, !tbaa !82
  %48 = getelementptr inbounds %struct.CollectionPropertyRNA, ptr %0, i64 0, i32 4
  store ptr @.str.247, ptr %48, align 8, !tbaa !83
  %49 = getelementptr inbounds %struct.CollectionPropertyRNA, ptr %0, i64 0, i32 3
  store ptr @.str.201, ptr %49, align 8, !tbaa !217
  br label %50

50:                                               ; preds = %39, %43, %46
  %51 = icmp eq ptr %3, null
  br i1 %51, label %96, label %52

52:                                               ; preds = %50
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #28
  %53 = getelementptr inbounds %struct.PropertyDefRNA, ptr %24, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !210
  %55 = tail call ptr @rna_find_struct_def(ptr noundef %54) #27
  %56 = icmp eq ptr %1, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.StructDefRNA, ptr %55, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !78
  br label %60

60:                                               ; preds = %57, %52
  %61 = phi ptr [ %1, %52 ], [ %59, %57 ]
  %62 = load i8, ptr %3, align 1, !tbaa !148
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %60
  %65 = load ptr, ptr @DefRNA, align 8, !tbaa !152
  %66 = call fastcc i32 @rna_find_sdna_member(ptr noundef %65, ptr noundef %61, ptr noundef nonnull %3, ptr noundef nonnull %5) #27, !range !64
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %89, label %68

68:                                               ; preds = %64
  %69 = load i8, ptr %3, align 1, !tbaa !148
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %60, %68
  %72 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 14
  %73 = load i32, ptr %72, align 8, !tbaa !241
  %74 = getelementptr inbounds %struct.PropertyDefRNA, ptr %24, i64 0, i32 13
  store i32 %73, ptr %74, align 8, !tbaa !243
  store i32 0, ptr %27, align 8, !tbaa !240
  br label %79

75:                                               ; preds = %68
  %76 = getelementptr inbounds %struct.PropertyDefRNA, ptr %24, i64 0, i32 11
  store ptr %61, ptr %76, align 8, !tbaa !244
  %77 = getelementptr inbounds %struct.PropertyDefRNA, ptr %24, i64 0, i32 12
  store ptr %3, ptr %77, align 8, !tbaa !245
  %78 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 14
  br label %79

79:                                               ; preds = %75, %71
  %80 = phi ptr [ %78, %75 ], [ %72, %71 ]
  store i32 0, ptr %80, align 8, !tbaa !241
  %81 = getelementptr inbounds %struct.CollectionPropertyRNA, ptr %0, i64 0, i32 2
  store ptr @.str.248, ptr %81, align 8, !tbaa !82
  %82 = getelementptr inbounds %struct.CollectionPropertyRNA, ptr %0, i64 0, i32 3
  store ptr @.str.249, ptr %82, align 8, !tbaa !217
  %83 = getelementptr inbounds %struct.PropertyDefRNA, ptr %24, i64 0, i32 10
  %84 = load i32, ptr %83, align 4, !tbaa !246
  %85 = icmp sgt i32 %84, 1
  %86 = getelementptr inbounds %struct.CollectionPropertyRNA, ptr %0, i64 0, i32 4
  br i1 %85, label %87, label %88

87:                                               ; preds = %79
  store ptr @.str.250, ptr %86, align 8, !tbaa !83
  br label %95

88:                                               ; preds = %79
  store ptr @.str.251, ptr %86, align 8, !tbaa !83
  br label %95

89:                                               ; preds = %64
  %90 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 5), align 4, !tbaa !215
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load ptr, ptr @stderr, align 8, !tbaa !65
  %94 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %93, ptr noundef nonnull @.str.252, ptr noundef nonnull @__func__.RNA_def_property_collection_sdna, ptr noundef %61, ptr noundef nonnull %3) #29
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !66
  br label %95

95:                                               ; preds = %89, %92, %87, %88
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #28
  br label %96

96:                                               ; preds = %23, %50, %95, %16, %9
  ret void
}

; Function Attrs: optsize
declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @RNA_def_property_clear_flag(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #11 {
  %3 = xor i32 %1, -1
  %4 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !51
  %6 = and i32 %5, %3
  store i32 %6, ptr %4, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @RNA_def_property_subtype(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #21 {
  %3 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 10
  store i32 %1, ptr %3, align 4, !tbaa !212
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @RNA_def_property_array(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #14 {
  %3 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !67
  %4 = icmp slt i32 %1, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %2
  %6 = load ptr, ptr @stderr, align 8, !tbaa !65
  %7 = getelementptr inbounds %struct.StructRNA, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !70
  %9 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !130
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.219, ptr noundef nonnull @__func__.RNA_def_property_array, ptr noundef %8, ptr noundef %10) #29
  br label %46

12:                                               ; preds = %2
  %13 = icmp ugt i32 %1, 32
  br i1 %13, label %14, label %21

14:                                               ; preds = %12
  %15 = load ptr, ptr @stderr, align 8, !tbaa !65
  %16 = getelementptr inbounds %struct.StructRNA, ptr %3, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !70
  %18 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !130
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.220, ptr noundef nonnull @__func__.RNA_def_property_array, ptr noundef %17, ptr noundef %19, i32 noundef 32) #29
  br label %46

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 12
  %23 = load i32, ptr %22, align 8, !tbaa !240
  %24 = icmp ugt i32 %23, 1
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = load ptr, ptr @stderr, align 8, !tbaa !65
  %27 = getelementptr inbounds %struct.StructRNA, ptr %3, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !70
  %29 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !130
  %31 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef nonnull @.str.221, ptr noundef nonnull @__func__.RNA_def_property_array, ptr noundef %28, ptr noundef %30, i32 noundef %23) #29
  br label %46

32:                                               ; preds = %21
  %33 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 9
  %34 = load i32, ptr %33, align 8, !tbaa !165
  %35 = icmp ult i32 %34, 3
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 13
  store i32 %1, ptr %37, align 4, !tbaa !117
  %38 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 14
  store i32 %1, ptr %38, align 8, !tbaa !241
  br label %46

39:                                               ; preds = %32
  %40 = load ptr, ptr @stderr, align 8, !tbaa !65
  %41 = getelementptr inbounds %struct.StructRNA, ptr %3, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !70
  %43 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !130
  %45 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %40, ptr noundef nonnull @.str.222, ptr noundef nonnull @__func__.RNA_def_property_array, ptr noundef %42, ptr noundef %44) #29
  br label %46

46:                                               ; preds = %36, %39, %25, %14, %5
  %47 = phi ptr [ %22, %36 ], [ getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), %39 ], [ getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), %25 ], [ getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), %14 ], [ getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), %5 ]
  store i32 1, ptr %47, align 8, !tbaa !117
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @RNA_def_property_multi_array(ptr nocapture noundef %0, i32 noundef %1, ptr noundef readonly %2) local_unnamed_addr #14 {
  %4 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !67
  %5 = add i32 %1, -4
  %6 = icmp ult i32 %5, -3
  br i1 %6, label %7, label %14

7:                                                ; preds = %3
  %8 = load ptr, ptr @stderr, align 8, !tbaa !65
  %9 = getelementptr inbounds %struct.StructRNA, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !70
  %11 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !130
  %13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.223, ptr noundef nonnull @__func__.RNA_def_property_multi_array, ptr noundef %10, ptr noundef %12, i32 noundef 3) #29
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !66
  br label %46

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 9
  %16 = load i32, ptr %15, align 8, !tbaa !165
  %17 = icmp ult i32 %16, 3
  br i1 %17, label %25, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr @stderr, align 8, !tbaa !65
  %20 = getelementptr inbounds %struct.StructRNA, ptr %4, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !70
  %22 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !130
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.222, ptr noundef nonnull @__func__.RNA_def_property_multi_array, ptr noundef %21, ptr noundef %23) #29
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !66
  br label %25

25:                                               ; preds = %14, %18
  %26 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 12
  store i32 %1, ptr %26, align 8, !tbaa !240
  %27 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 14
  store i32 0, ptr %27, align 8, !tbaa !241
  %28 = icmp eq ptr %2, null
  %29 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 13
  br i1 %28, label %45, label %30

30:                                               ; preds = %25
  %31 = shl nuw nsw i32 %1, 2
  %32 = zext nneg i32 %31 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %29, ptr nonnull align 4 %2, i64 %32, i1 false)
  %33 = load i32, ptr %2, align 4, !tbaa !117
  store i32 %33, ptr %27, align 8, !tbaa !241
  %34 = icmp ugt i32 %1, 1
  br i1 %34, label %35, label %46

35:                                               ; preds = %30
  %36 = zext nneg i32 %1 to i64
  br label %37

37:                                               ; preds = %35, %37
  %38 = phi i64 [ 1, %35 ], [ %43, %37 ]
  %39 = phi i32 [ %33, %35 ], [ %42, %37 ]
  %40 = getelementptr inbounds i32, ptr %2, i64 %38
  %41 = load i32, ptr %40, align 4, !tbaa !117
  %42 = mul i32 %39, %41
  store i32 %42, ptr %27, align 8, !tbaa !241
  %43 = add nuw nsw i64 %38, 1
  %44 = icmp eq i64 %43, %36
  br i1 %44, label %46, label %37, !llvm.loop !247

45:                                               ; preds = %25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %29, i8 0, i64 12, i1 false)
  br label %46

46:                                               ; preds = %37, %30, %45, %7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @RNA_def_property_ui_icon(ptr nocapture noundef %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #11 {
  %4 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 7
  store i32 %1, ptr %4, align 8, !tbaa !248
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

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @RNA_def_property_ui_range(ptr nocapture noundef %0, double noundef %1, double noundef %2, double noundef %3, i32 noundef %4) local_unnamed_addr #14 {
  %6 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 9
  %7 = load i32, ptr %6, align 8, !tbaa !165
  switch i32 %7, label %23 [
    i32 1, label %8
    i32 2, label %15
  ]

8:                                                ; preds = %5
  %9 = insertelement <2 x double> poison, double %1, i64 0
  %10 = insertelement <2 x double> %9, double %2, i64 1
  %11 = fptosi <2 x double> %10 to <2 x i32>
  %12 = getelementptr inbounds %struct.IntPropertyRNA, ptr %0, i64 0, i32 11
  store <2 x i32> %11, ptr %12, align 8, !tbaa !117
  %13 = fptosi double %3 to i32
  %14 = getelementptr inbounds %struct.IntPropertyRNA, ptr %0, i64 0, i32 15
  store i32 %13, ptr %14, align 8, !tbaa !202
  br label %31

15:                                               ; preds = %5
  %16 = insertelement <2 x double> poison, double %1, i64 0
  %17 = insertelement <2 x double> %16, double %2, i64 1
  %18 = fptrunc <2 x double> %17 to <2 x float>
  %19 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %0, i64 0, i32 11
  store <2 x float> %18, ptr %19, align 8, !tbaa !206
  %20 = fptrunc double %3 to float
  %21 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %0, i64 0, i32 15
  store float %20, ptr %21, align 8, !tbaa !208
  %22 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %0, i64 0, i32 16
  store i32 %4, ptr %22, align 4, !tbaa !209
  br label %31

23:                                               ; preds = %5
  %24 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !67
  %25 = load ptr, ptr @stderr, align 8, !tbaa !65
  %26 = getelementptr inbounds %struct.StructRNA, ptr %24, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !70
  %28 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !130
  %30 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef nonnull @.str.224, ptr noundef nonnull @__func__.RNA_def_property_ui_range, ptr noundef %27, ptr noundef %29) #29
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !66
  br label %31

31:                                               ; preds = %23, %15, %8
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @RNA_def_property_range(ptr nocapture noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #14 {
  %4 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 9
  %5 = load i32, ptr %4, align 8, !tbaa !165
  switch i32 %5, label %18 [
    i32 1, label %6
    i32 2, label %12
  ]

6:                                                ; preds = %3
  %7 = insertelement <2 x double> poison, double %1, i64 0
  %8 = insertelement <2 x double> %7, double %2, i64 1
  %9 = fptosi <2 x double> %8 to <2 x i32>
  %10 = shufflevector <2 x i32> %9, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %11 = getelementptr inbounds %struct.IntPropertyRNA, ptr %0, i64 0, i32 11
  store <4 x i32> %10, ptr %11, align 8, !tbaa !117
  br label %26

12:                                               ; preds = %3
  %13 = insertelement <2 x double> poison, double %1, i64 0
  %14 = insertelement <2 x double> %13, double %2, i64 1
  %15 = fptrunc <2 x double> %14 to <2 x float>
  %16 = shufflevector <2 x float> %15, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %17 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %0, i64 0, i32 11
  store <4 x float> %16, ptr %17, align 8, !tbaa !206
  br label %26

18:                                               ; preds = %3
  %19 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !67
  %20 = load ptr, ptr @stderr, align 8, !tbaa !65
  %21 = getelementptr inbounds %struct.StructRNA, ptr %19, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !70
  %23 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !130
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str.225, ptr noundef nonnull @__func__.RNA_def_property_range, ptr noundef %22, ptr noundef %24) #29
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !66
  br label %26

26:                                               ; preds = %18, %12, %6
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @RNA_def_property_struct_runtime(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #14 {
  %3 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !67
  %4 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !62
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr @stderr, align 8, !tbaa !65
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.212, ptr noundef nonnull @__func__.RNA_def_property_struct_runtime) #29
  br label %33

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 9
  %11 = load i32, ptr %10, align 8, !tbaa !165
  switch i32 %11, label %26 [
    i32 5, label %12
    i32 6, label %24
  ]

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.PointerPropertyRNA, ptr %0, i64 0, i32 5
  store ptr %1, ptr %13, align 8, !tbaa !87
  %14 = icmp eq ptr %1, null
  br i1 %14, label %33, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.StructRNA, ptr %1, i64 0, i32 4
  %17 = load i32, ptr %16, align 8, !tbaa !61
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
  store ptr %1, ptr %25, align 8, !tbaa !84
  br label %33

26:                                               ; preds = %9
  %27 = load ptr, ptr @stderr, align 8, !tbaa !65
  %28 = getelementptr inbounds %struct.StructRNA, ptr %3, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !70
  %30 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !130
  %32 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %27, ptr noundef nonnull @.str.227, ptr noundef nonnull @__func__.RNA_def_property_struct_runtime, ptr noundef %29, ptr noundef %31) #29
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !66
  br label %33

33:                                               ; preds = %24, %26, %20, %15, %12, %6
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @RNA_def_property_enum_items(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #14 {
  %3 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !165
  %5 = icmp eq i32 %4, 4
  br i1 %5, label %6, label %52

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.EnumPropertyRNA, ptr %0, i64 0, i32 7
  store ptr %1, ptr %7, align 8, !tbaa !175
  %8 = getelementptr inbounds %struct.EnumPropertyRNA, ptr %0, i64 0, i32 8
  store i32 0, ptr %8, align 8, !tbaa !166
  %9 = getelementptr inbounds %struct.EnumPropertyItem, ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !176
  %11 = icmp eq ptr %10, null
  br i1 %11, label %60, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.EnumPropertyRNA, ptr %0, i64 0, i32 9
  br label %14

14:                                               ; preds = %12, %28
  %15 = phi i64 [ 0, %12 ], [ %30, %28 ]
  %16 = phi i32 [ 0, %12 ], [ %20, %28 ]
  %17 = phi ptr [ %10, %12 ], [ %33, %28 ]
  %18 = phi ptr [ %1, %12 ], [ %31, %28 ]
  %19 = phi i32 [ 0, %12 ], [ %29, %28 ]
  %20 = add nuw nsw i32 %16, 1
  store i32 %20, ptr %8, align 8, !tbaa !166
  %21 = load i8, ptr %17, align 1, !tbaa !148
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %14
  %24 = load i32, ptr %18, align 8, !tbaa !249
  %25 = load i32, ptr %13, align 4, !tbaa !250
  %26 = icmp eq i32 %24, %25
  %27 = select i1 %26, i32 1, i32 %19
  br label %28

28:                                               ; preds = %23, %14
  %29 = phi i32 [ %19, %14 ], [ %27, %23 ]
  %30 = add nuw nsw i64 %15, 1
  %31 = getelementptr inbounds %struct.EnumPropertyItem, ptr %1, i64 %30
  %32 = getelementptr inbounds %struct.EnumPropertyItem, ptr %1, i64 %30, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !176
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %14, !llvm.loop !251

35:                                               ; preds = %28
  %36 = icmp ne i32 %29, 0
  %37 = or i1 %36, %11
  br i1 %37, label %60, label %43

38:                                               ; preds = %43
  %39 = add nuw i64 %44, 1
  %40 = getelementptr inbounds %struct.EnumPropertyItem, ptr %1, i64 %39, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !176
  %42 = icmp eq ptr %41, null
  br i1 %42, label %60, label %43, !llvm.loop !252

43:                                               ; preds = %35, %38
  %44 = phi i64 [ %39, %38 ], [ 0, %35 ]
  %45 = phi ptr [ %41, %38 ], [ %10, %35 ]
  %46 = load i8, ptr %45, align 1, !tbaa !148
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %38, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.EnumPropertyItem, ptr %1, i64 %44
  %50 = load i32, ptr %49, align 8, !tbaa !249
  %51 = getelementptr inbounds %struct.EnumPropertyRNA, ptr %0, i64 0, i32 9
  store i32 %50, ptr %51, align 4, !tbaa !250
  br label %60

52:                                               ; preds = %2
  %53 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !67
  %54 = load ptr, ptr @stderr, align 8, !tbaa !65
  %55 = getelementptr inbounds %struct.StructRNA, ptr %53, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !70
  %57 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !130
  %59 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %54, ptr noundef nonnull @.str.227, ptr noundef nonnull @__func__.RNA_def_property_enum_items, ptr noundef %56, ptr noundef %58) #29
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !66
  br label %60

60:                                               ; preds = %38, %35, %6, %48, %52
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @RNA_def_property_string_maxlength(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #14 {
  %3 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !165
  %5 = icmp eq i32 %4, 3
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.StringPropertyRNA, ptr %0, i64 0, i32 7
  store i32 %1, ptr %7, align 8, !tbaa !242
  br label %16

8:                                                ; preds = %2
  %9 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !67
  %10 = load ptr, ptr @stderr, align 8, !tbaa !65
  %11 = getelementptr inbounds %struct.StructRNA, ptr %9, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !70
  %13 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !130
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.228, ptr noundef nonnull @__func__.RNA_def_property_string_maxlength, ptr noundef %12, ptr noundef %14) #29
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !66
  br label %16

16:                                               ; preds = %8, %6
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @RNA_def_property_boolean_default(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #14 {
  %3 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !165
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.BoolPropertyRNA, ptr %0, i64 0, i32 9
  store i32 %1, ptr %7, align 8, !tbaa !253
  br label %16

8:                                                ; preds = %2
  %9 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !67
  %10 = load ptr, ptr @stderr, align 8, !tbaa !65
  %11 = getelementptr inbounds %struct.StructRNA, ptr %9, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !70
  %13 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !130
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.229, ptr noundef nonnull @__func__.RNA_def_property_boolean_default, ptr noundef %12, ptr noundef %14) #29
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !66
  br label %16

16:                                               ; preds = %8, %6
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @RNA_def_property_boolean_array_default(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #14 {
  %3 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !165
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.BoolPropertyRNA, ptr %0, i64 0, i32 10
  store ptr %1, ptr %7, align 8, !tbaa !168
  br label %16

8:                                                ; preds = %2
  %9 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !67
  %10 = load ptr, ptr @stderr, align 8, !tbaa !65
  %11 = getelementptr inbounds %struct.StructRNA, ptr %9, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !70
  %13 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !130
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.229, ptr noundef nonnull @__func__.RNA_def_property_boolean_array_default, ptr noundef %12, ptr noundef %14) #29
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !66
  br label %16

16:                                               ; preds = %8, %6
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @RNA_def_property_int_default(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #14 {
  %3 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !165
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.IntPropertyRNA, ptr %0, i64 0, i32 16
  store i32 %1, ptr %7, align 4, !tbaa !254
  br label %16

8:                                                ; preds = %2
  %9 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !67
  %10 = load ptr, ptr @stderr, align 8, !tbaa !65
  %11 = getelementptr inbounds %struct.StructRNA, ptr %9, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !70
  %13 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !130
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.230, ptr noundef nonnull @__func__.RNA_def_property_int_default, ptr noundef %12, ptr noundef %14) #29
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !66
  br label %16

16:                                               ; preds = %8, %6
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @RNA_def_property_int_array_default(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #14 {
  %3 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !165
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.IntPropertyRNA, ptr %0, i64 0, i32 17
  store ptr %1, ptr %7, align 8, !tbaa !170
  br label %16

8:                                                ; preds = %2
  %9 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !67
  %10 = load ptr, ptr @stderr, align 8, !tbaa !65
  %11 = getelementptr inbounds %struct.StructRNA, ptr %9, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !70
  %13 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !130
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.230, ptr noundef nonnull @__func__.RNA_def_property_int_array_default, ptr noundef %12, ptr noundef %14) #29
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !66
  br label %16

16:                                               ; preds = %8, %6
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @RNA_def_property_float_default(ptr nocapture noundef %0, float noundef %1) local_unnamed_addr #14 {
  %3 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !165
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %0, i64 0, i32 17
  store float %1, ptr %7, align 8, !tbaa !255
  br label %16

8:                                                ; preds = %2
  %9 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !67
  %10 = load ptr, ptr @stderr, align 8, !tbaa !65
  %11 = getelementptr inbounds %struct.StructRNA, ptr %9, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !70
  %13 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !130
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.231, ptr noundef nonnull @__func__.RNA_def_property_float_default, ptr noundef %12, ptr noundef %14) #29
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !66
  br label %16

16:                                               ; preds = %8, %6
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @RNA_def_property_float_array_default(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #14 {
  %3 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !165
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %0, i64 0, i32 18
  store ptr %1, ptr %7, align 8, !tbaa !172
  br label %16

8:                                                ; preds = %2
  %9 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !67
  %10 = load ptr, ptr @stderr, align 8, !tbaa !65
  %11 = getelementptr inbounds %struct.StructRNA, ptr %9, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !70
  %13 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !130
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.231, ptr noundef nonnull @__func__.RNA_def_property_float_array_default, ptr noundef %12, ptr noundef %14) #29
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !66
  br label %16

16:                                               ; preds = %8, %6
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @RNA_def_property_string_default(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #14 {
  %3 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !67
  %4 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 9
  %5 = load i32, ptr %4, align 8, !tbaa !165
  %6 = icmp eq i32 %5, 3
  br i1 %6, label %7, label %28

7:                                                ; preds = %2
  %8 = icmp eq ptr %1, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %7
  %10 = load ptr, ptr @stderr, align 8, !tbaa !65
  %11 = getelementptr inbounds %struct.StructRNA, ptr %3, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !70
  %13 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !130
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.232, ptr noundef nonnull @__func__.RNA_def_property_string_default, ptr noundef %12, ptr noundef %14) #29
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !66
  br label %35

16:                                               ; preds = %7
  %17 = load i8, ptr %1, align 1, !tbaa !148
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = load ptr, ptr @stderr, align 8, !tbaa !65
  %21 = getelementptr inbounds %struct.StructRNA, ptr %3, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !70
  %23 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !130
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str.233, ptr noundef nonnull @__func__.RNA_def_property_string_default, ptr noundef %22, ptr noundef %24) #29
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !66
  br label %35

26:                                               ; preds = %16
  %27 = getelementptr inbounds %struct.StringPropertyRNA, ptr %0, i64 0, i32 8
  store ptr %1, ptr %27, align 8, !tbaa !181
  br label %35

28:                                               ; preds = %2
  %29 = load ptr, ptr @stderr, align 8, !tbaa !65
  %30 = getelementptr inbounds %struct.StructRNA, ptr %3, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !70
  %32 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !130
  %34 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef nonnull @.str.228, ptr noundef nonnull @__func__.RNA_def_property_string_default, ptr noundef %31, ptr noundef %33) #29
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !66
  br label %35

35:                                               ; preds = %9, %19, %26, %28
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @RNA_def_property_enum_default(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #14 {
  %3 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !67
  %4 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 9
  %5 = load i32, ptr %4, align 8, !tbaa !165
  %6 = icmp eq i32 %5, 4
  br i1 %6, label %7, label %89

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.EnumPropertyRNA, ptr %0, i64 0, i32 9
  store i32 %1, ptr %8, align 4, !tbaa !250
  %9 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !51
  %11 = and i32 %10, 2097152
  %12 = icmp eq i32 %11, 0
  %13 = getelementptr inbounds %struct.EnumPropertyRNA, ptr %0, i64 0, i32 8
  %14 = load i32, ptr %13, align 8, !tbaa !166
  %15 = icmp sgt i32 %14, 0
  br i1 %12, label %21, label %16

16:                                               ; preds = %7
  br i1 %15, label %17, label %43

17:                                               ; preds = %16
  %18 = getelementptr inbounds %struct.EnumPropertyRNA, ptr %0, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !175
  %20 = zext nneg i32 %14 to i64
  br label %26

21:                                               ; preds = %7
  br i1 %15, label %22, label %72

22:                                               ; preds = %21
  %23 = getelementptr inbounds %struct.EnumPropertyRNA, ptr %0, i64 0, i32 7
  %24 = load ptr, ptr %23, align 8, !tbaa !175
  %25 = zext nneg i32 %14 to i64
  br label %54

26:                                               ; preds = %17, %37
  %27 = phi i64 [ 0, %17 ], [ %39, %37 ]
  %28 = phi i32 [ 0, %17 ], [ %38, %37 ]
  %29 = getelementptr inbounds %struct.EnumPropertyItem, ptr %19, i64 %27, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !176
  %31 = load i8, ptr %30, align 1, !tbaa !148
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.EnumPropertyItem, ptr %19, i64 %27
  %35 = load i32, ptr %34, align 8, !tbaa !249
  %36 = or i32 %35, %28
  br label %37

37:                                               ; preds = %26, %33
  %38 = phi i32 [ %36, %33 ], [ %28, %26 ]
  %39 = add nuw nsw i64 %27, 1
  %40 = icmp eq i64 %39, %20
  br i1 %40, label %41, label %26, !llvm.loop !256

41:                                               ; preds = %37
  %42 = xor i32 %38, -1
  br label %43

43:                                               ; preds = %41, %16
  %44 = phi i32 [ -1, %16 ], [ %42, %41 ]
  %45 = and i32 %44, %1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %96, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr @stderr, align 8, !tbaa !65
  %49 = getelementptr inbounds %struct.StructRNA, ptr %3, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !70
  %51 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !130
  %53 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %48, ptr noundef nonnull @.str.234, ptr noundef nonnull @__func__.RNA_def_property_enum_default, ptr noundef %50, ptr noundef %52, i32 noundef %45) #29
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !66
  br label %96

54:                                               ; preds = %22, %66
  %55 = phi i64 [ 0, %22 ], [ %68, %66 ]
  %56 = phi i32 [ 0, %22 ], [ %67, %66 ]
  %57 = getelementptr inbounds %struct.EnumPropertyItem, ptr %24, i64 %55, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !176
  %59 = load i8, ptr %58, align 1, !tbaa !148
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %54
  %62 = getelementptr inbounds %struct.EnumPropertyItem, ptr %24, i64 %55
  %63 = load i32, ptr %62, align 8, !tbaa !249
  %64 = icmp eq i32 %63, %1
  %65 = select i1 %64, i32 1, i32 %56
  br label %66

66:                                               ; preds = %61, %54
  %67 = phi i32 [ %56, %54 ], [ %65, %61 ]
  %68 = add nuw nsw i64 %55, 1
  %69 = icmp eq i64 %68, %25
  br i1 %69, label %70, label %54, !llvm.loop !257

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
  %80 = load ptr, ptr %79, align 8, !tbaa !175
  %81 = load i32, ptr %80, align 8, !tbaa !249
  store i32 %81, ptr %8, align 4, !tbaa !250
  br label %96

82:                                               ; preds = %76
  %83 = load ptr, ptr @stderr, align 8, !tbaa !65
  %84 = getelementptr inbounds %struct.StructRNA, ptr %3, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !70
  %86 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %87 = load ptr, ptr %86, align 8, !tbaa !130
  %88 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %83, ptr noundef nonnull @.str.235, ptr noundef nonnull @__func__.RNA_def_property_enum_default, ptr noundef %85, ptr noundef %87) #29
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !66
  br label %96

89:                                               ; preds = %2
  %90 = load ptr, ptr @stderr, align 8, !tbaa !65
  %91 = getelementptr inbounds %struct.StructRNA, ptr %3, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !70
  %93 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !130
  %95 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %90, ptr noundef nonnull @.str.236, ptr noundef nonnull @__func__.RNA_def_property_enum_default, ptr noundef %92, ptr noundef %94) #29
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !66
  br label %96

96:                                               ; preds = %78, %82, %72, %47, %43, %89
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @rna_def_property_sdna(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !258 {
  %4 = alloca %struct.DNAStructMember, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #28
  %5 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !67
  %6 = tail call ptr @rna_find_struct_property_def(ptr noundef %5, ptr noundef %0) #27
  %7 = icmp eq ptr %6, null
  br i1 %7, label %69, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.PropertyDefRNA, ptr %6, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !210
  %11 = tail call ptr @rna_find_struct_def(ptr noundef %10) #27
  %12 = icmp eq ptr %1, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.StructDefRNA, ptr %11, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !78
  br label %16

16:                                               ; preds = %13, %8
  %17 = phi ptr [ %1, %8 ], [ %15, %13 ]
  %18 = icmp eq ptr %2, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !130
  br label %22

22:                                               ; preds = %19, %16
  %23 = phi ptr [ %2, %16 ], [ %21, %19 ]
  %24 = load ptr, ptr @DefRNA, align 8, !tbaa !152
  %25 = call fastcc i32 @rna_find_sdna_member(ptr noundef %24, ptr noundef %17, ptr noundef %23, ptr noundef nonnull %4) #27, !range !64
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %47

27:                                               ; preds = %22
  %28 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 5), align 4, !tbaa !215
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %69

30:                                               ; preds = %27
  %31 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 7), align 4, !tbaa !158
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.PropertyDefRNA, ptr %6, i64 0, i32 4
  store ptr %17, ptr %34, align 8, !tbaa !259
  %35 = getelementptr inbounds %struct.PropertyDefRNA, ptr %6, i64 0, i32 7
  store ptr %23, ptr %35, align 8, !tbaa !260
  %36 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 9
  %37 = load i32, ptr %36, align 8, !tbaa !165
  switch i32 %37, label %69 [
    i32 0, label %38
    i32 5, label %40
  ]

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.PropertyDefRNA, ptr %6, i64 0, i32 9
  store i32 1, ptr %39, align 8, !tbaa !261
  br label %69

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.PropertyDefRNA, ptr %6, i64 0, i32 10
  store i32 1, ptr %41, align 4, !tbaa !246
  br label %69

42:                                               ; preds = %30
  %43 = load ptr, ptr @stderr, align 8, !tbaa !65
  %44 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !130
  %46 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %43, ptr noundef nonnull @.str.281, ptr noundef nonnull @__func__.rna_def_property_sdna, ptr noundef %17, ptr noundef %23, ptr noundef %45) #29
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !66
  br label %69

47:                                               ; preds = %22
  %48 = getelementptr inbounds %struct.DNAStructMember, ptr %4, i64 0, i32 2
  %49 = load i32, ptr %48, align 8, !tbaa !262
  %50 = icmp sgt i32 %49, 1
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 13
  store i32 %49, ptr %52, align 4, !tbaa !117
  br label %53

53:                                               ; preds = %47, %51
  %54 = phi i32 [ %49, %51 ], [ 0, %47 ]
  %55 = phi i32 [ 1, %51 ], [ 0, %47 ]
  %56 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 14
  store i32 %54, ptr %56, align 8
  %57 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 12
  store i32 %55, ptr %57, align 8
  %58 = getelementptr inbounds %struct.PropertyDefRNA, ptr %6, i64 0, i32 4
  store ptr %17, ptr %58, align 8, !tbaa !259
  %59 = getelementptr inbounds %struct.StructDefRNA, ptr %11, i64 0, i32 4
  %60 = getelementptr inbounds %struct.PropertyDefRNA, ptr %6, i64 0, i32 5
  %61 = load <2 x ptr>, ptr %59, align 8, !tbaa !65
  store <2 x ptr> %61, ptr %60, align 8, !tbaa !65
  %62 = getelementptr inbounds %struct.PropertyDefRNA, ptr %6, i64 0, i32 7
  store ptr %23, ptr %62, align 8, !tbaa !260
  %63 = load ptr, ptr %4, align 8, !tbaa !264
  %64 = getelementptr inbounds %struct.PropertyDefRNA, ptr %6, i64 0, i32 8
  store ptr %63, ptr %64, align 8, !tbaa !238
  %65 = getelementptr inbounds %struct.PropertyDefRNA, ptr %6, i64 0, i32 9
  store i32 %49, ptr %65, align 8, !tbaa !261
  %66 = getelementptr inbounds %struct.DNAStructMember, ptr %4, i64 0, i32 3
  %67 = load i32, ptr %66, align 4, !tbaa !265
  %68 = getelementptr inbounds %struct.PropertyDefRNA, ptr %6, i64 0, i32 10
  store i32 %67, ptr %68, align 4, !tbaa !246
  br label %69

69:                                               ; preds = %33, %38, %40, %27, %3, %53, %42
  %70 = phi ptr [ %6, %53 ], [ null, %42 ], [ null, %3 ], [ null, %27 ], [ %6, %40 ], [ %6, %38 ], [ %6, %33 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #28
  ret ptr %70
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @RNA_property_typename(i32 noundef %0) local_unnamed_addr #5 {
  %2 = icmp ult i32 %0, 7
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = zext nneg i32 %0 to i64
  %5 = shl i64 %4, 2
  %6 = call ptr @llvm.load.relative.i64(ptr @reltable.RNA_property_typename, i64 %5)
  br label %7

7:                                                ; preds = %1, %3
  %8 = phi ptr [ %6, %3 ], [ @.str.267, %1 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_def_property_boolean_negative_sdna(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  tail call void @RNA_def_property_boolean_sdna(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #27
  %5 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !67
  %6 = tail call ptr @rna_find_struct_property_def(ptr noundef %5, ptr noundef %0) #27
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.PropertyDefRNA, ptr %6, i64 0, i32 15
  store i32 1, ptr %9, align 8, !tbaa !266
  br label %10

10:                                               ; preds = %8, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_def_property_enum_bitflag_sdna(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  tail call void @RNA_def_property_enum_sdna(ptr noundef %0, ptr noundef %1, ptr noundef %2) #27
  %4 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !67
  %5 = tail call ptr @rna_find_struct_property_def(ptr noundef %4, ptr noundef %0) #27
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.PropertyDefRNA, ptr %5, i64 0, i32 16
  store i32 1, ptr %8, align 4, !tbaa !267
  br label %9

9:                                                ; preds = %7, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @rna_find_sdna_member(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 !PGOFuncName !268 {
  %5 = tail call i32 @DNA_struct_find_nr(ptr noundef %0, ptr noundef %1) #25
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %81, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 9
  %9 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 3
  %10 = getelementptr inbounds %struct.DNAStructMember, ptr %3, i64 0, i32 1
  %11 = getelementptr inbounds %struct.DNAStructMember, ptr %3, i64 0, i32 3
  %12 = getelementptr inbounds %struct.DNAStructMember, ptr %3, i64 0, i32 2
  %13 = getelementptr inbounds %struct.SDNA, ptr %0, i64 0, i32 6
  br label %14

14:                                               ; preds = %7, %63
  %15 = phi i32 [ %5, %7 ], [ %70, %63 ]
  %16 = phi i1 [ false, %7 ], [ true, %63 ]
  %17 = phi ptr [ %2, %7 ], [ %64, %63 ]
  %18 = load ptr, ptr %8, align 8, !tbaa !269
  %19 = sext i32 %15 to i64
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !65
  %22 = getelementptr inbounds i16, ptr %21, i64 1
  %23 = load i16, ptr %22, align 2, !tbaa !40
  %24 = sext i16 %23 to i32
  %25 = icmp sgt i16 %23, 0
  br i1 %25, label %26, label %78

26:                                               ; preds = %14
  %27 = load ptr, ptr %9, align 8, !tbaa !271
  br label %28

28:                                               ; preds = %26, %75
  %29 = phi ptr [ %21, %26 ], [ %31, %75 ]
  %30 = phi i32 [ 0, %26 ], [ %76, %75 ]
  %31 = getelementptr inbounds i16, ptr %29, i64 2
  %32 = getelementptr inbounds i16, ptr %29, i64 3
  %33 = load i16, ptr %32, align 2, !tbaa !40
  %34 = sext i16 %33 to i64
  %35 = getelementptr inbounds ptr, ptr %27, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !65
  %37 = tail call fastcc i32 @rna_member_cmp(ptr noundef %36, ptr noundef %17) #27, !range !272
  switch i32 %37, label %75 [
    i32 1, label %38
    i32 2, label %60
    i32 3, label %72
  ]

38:                                               ; preds = %28
  %39 = load ptr, ptr %13, align 8, !tbaa !273
  %40 = load i16, ptr %31, align 2, !tbaa !40
  %41 = sext i16 %40 to i64
  %42 = getelementptr inbounds ptr, ptr %39, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !65
  store ptr %43, ptr %3, align 8, !tbaa !264
  store ptr %36, ptr %10, align 8, !tbaa !274
  %44 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %17, i32 91)
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = tail call i32 @DNA_elem_array_size(ptr noundef %36) #25
  br label %48

48:                                               ; preds = %38, %46
  %49 = phi i32 [ %47, %46 ], [ 0, %38 ]
  store i32 %49, ptr %12, align 8
  store i32 0, ptr %11, align 4, !tbaa !265
  %50 = load i8, ptr %36, align 1, !tbaa !148
  %51 = icmp eq i8 %50, 42
  br i1 %51, label %52, label %78

52:                                               ; preds = %48, %52
  %53 = phi i64 [ %56, %52 ], [ 0, %48 ]
  %54 = phi i32 [ %55, %52 ], [ 0, %48 ]
  %55 = add nuw nsw i32 %54, 1
  store i32 %55, ptr %11, align 4, !tbaa !265
  %56 = add nuw nsw i64 %53, 1
  %57 = getelementptr inbounds i8, ptr %36, i64 %56
  %58 = load i8, ptr %57, align 1, !tbaa !148
  %59 = icmp eq i8 %58, 42
  br i1 %59, label %52, label %78, !llvm.loop !275

60:                                               ; preds = %28
  store ptr @.str.2, ptr %3, align 8, !tbaa !264
  store ptr %36, ptr %10, align 8, !tbaa !274
  store i32 0, ptr %11, align 4, !tbaa !265
  store i32 0, ptr %12, align 8, !tbaa !262
  %61 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %17, i32 46)
  %62 = getelementptr inbounds i8, ptr %61, i64 1
  br label %63

63:                                               ; preds = %60, %72
  %64 = phi ptr [ %62, %60 ], [ %74, %72 ]
  %65 = load ptr, ptr %13, align 8, !tbaa !273
  %66 = load i16, ptr %31, align 2, !tbaa !40
  %67 = sext i16 %66 to i64
  %68 = getelementptr inbounds ptr, ptr %65, i64 %67
  %69 = load ptr, ptr %68, align 8, !tbaa !65
  %70 = tail call i32 @DNA_struct_find_nr(ptr noundef nonnull %0, ptr noundef %69) #25
  %71 = icmp eq i32 %70, -1
  br i1 %71, label %80, label %14

72:                                               ; preds = %28
  store ptr @.str.2, ptr %3, align 8, !tbaa !264
  store ptr %36, ptr %10, align 8, !tbaa !274
  store i32 0, ptr %11, align 4, !tbaa !265
  store i32 0, ptr %12, align 8, !tbaa !262
  %73 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(1) @.str.284) #26
  %74 = getelementptr inbounds i8, ptr %73, i64 2
  br label %63

75:                                               ; preds = %28
  %76 = add nuw nsw i32 %30, 1
  %77 = icmp eq i32 %76, %24
  br i1 %77, label %78, label %28, !llvm.loop !276

78:                                               ; preds = %14, %75, %52, %48
  %79 = phi i32 [ 1, %48 ], [ 1, %52 ], [ 0, %75 ], [ 0, %14 ]
  br i1 %16, label %80, label %81

80:                                               ; preds = %63, %78
  br label %81

81:                                               ; preds = %4, %78, %80
  %82 = phi i32 [ 1, %80 ], [ %79, %78 ], [ 0, %4 ]
  ret i32 %82
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @RNA_def_property_translation_context(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #21 {
  %3 = icmp eq ptr %1, null
  %4 = select i1 %3, ptr @.str.67, ptr %1
  %5 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 8
  store ptr %4, ptr %5, align 8, !tbaa !213
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @RNA_def_property_editable_func(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #14 {
  %3 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !62
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = load ptr, ptr @stderr, align 8, !tbaa !65
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.207, ptr noundef nonnull @__func__.RNA_def_property_editable_func) #29
  br label %12

8:                                                ; preds = %2
  %9 = icmp eq ptr %1, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 17
  store ptr %1, ptr %11, align 8, !tbaa !277
  br label %12

12:                                               ; preds = %5, %10, %8
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @RNA_def_property_editable_array_func(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #14 {
  %3 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !62
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = load ptr, ptr @stderr, align 8, !tbaa !65
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.207, ptr noundef nonnull @__func__.RNA_def_property_editable_array_func) #29
  br label %12

8:                                                ; preds = %2
  %9 = icmp eq ptr %1, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 18
  store ptr %1, ptr %11, align 8, !tbaa !278
  br label %12

12:                                               ; preds = %5, %10, %8
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @RNA_def_property_update(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #14 {
  %4 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !62
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = load ptr, ptr @stderr, align 8, !tbaa !65
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.207, ptr noundef nonnull @__func__.RNA_def_property_update) #29
  br label %12

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 16
  store i32 %1, ptr %10, align 8, !tbaa !279
  %11 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 15
  store ptr %2, ptr %11, align 8, !tbaa !280
  br label %12

12:                                               ; preds = %9, %6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @RNA_def_property_update_runtime(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #21 {
  %3 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 15
  store ptr %1, ptr %3, align 8, !tbaa !280
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @RNA_def_property_dynamic_array_funcs(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #14 {
  %3 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !62
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = load ptr, ptr @stderr, align 8, !tbaa !65
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.207, ptr noundef nonnull @__func__.RNA_def_property_dynamic_array_funcs) #29
  br label %20

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !51
  %11 = and i32 %10, 131072
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = load ptr, ptr @stderr, align 8, !tbaa !65
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull @.str.253, ptr noundef nonnull @__func__.RNA_def_property_dynamic_array_funcs) #29
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !66
  br label %20

16:                                               ; preds = %8
  %17 = icmp eq ptr %1, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 11
  store ptr %1, ptr %19, align 8, !tbaa !281
  br label %20

20:                                               ; preds = %5, %13, %18, %16
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @RNA_def_property_boolean_funcs(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #14 {
  %4 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !67
  %5 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !62
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = load ptr, ptr @stderr, align 8, !tbaa !65
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.207, ptr noundef nonnull @__func__.RNA_def_property_boolean_funcs) #29
  br label %40

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !165
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %33

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 12
  %16 = load i32, ptr %15, align 8, !tbaa !240
  %17 = icmp eq i32 %16, 0
  %18 = icmp eq ptr %1, null
  br i1 %17, label %26, label %19

19:                                               ; preds = %14
  br i1 %18, label %22, label %20

20:                                               ; preds = %19
  %21 = getelementptr inbounds %struct.BoolPropertyRNA, ptr %0, i64 0, i32 3
  store ptr %1, ptr %21, align 8, !tbaa !282
  br label %22

22:                                               ; preds = %20, %19
  %23 = icmp eq ptr %2, null
  br i1 %23, label %40, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.BoolPropertyRNA, ptr %0, i64 0, i32 4
  store ptr %2, ptr %25, align 8, !tbaa !283
  br label %40

26:                                               ; preds = %14
  br i1 %18, label %29, label %27

27:                                               ; preds = %26
  %28 = getelementptr inbounds %struct.BoolPropertyRNA, ptr %0, i64 0, i32 1
  store ptr %1, ptr %28, align 8, !tbaa !284
  br label %29

29:                                               ; preds = %27, %26
  %30 = icmp eq ptr %2, null
  br i1 %30, label %40, label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.BoolPropertyRNA, ptr %0, i64 0, i32 2
  store ptr %2, ptr %32, align 8, !tbaa !285
  br label %40

33:                                               ; preds = %10
  %34 = load ptr, ptr @stderr, align 8, !tbaa !65
  %35 = getelementptr inbounds %struct.StructRNA, ptr %4, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !70
  %37 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !130
  %39 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %34, ptr noundef nonnull @.str.229, ptr noundef nonnull @__func__.RNA_def_property_boolean_funcs, ptr noundef %36, ptr noundef %38) #29
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !66
  br label %40

40:                                               ; preds = %33, %29, %31, %22, %24, %7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @RNA_def_property_boolean_funcs_runtime(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #11 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = icmp eq ptr %2, null
  br i1 %6, label %17, label %10

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.BoolPropertyRNA, ptr %0, i64 0, i32 5
  store ptr %1, ptr %8, align 8, !tbaa !286
  %9 = icmp eq ptr %2, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %7, %5
  %11 = getelementptr inbounds %struct.BoolPropertyRNA, ptr %0, i64 0, i32 6
  store ptr %2, ptr %11, align 8, !tbaa !287
  br label %12

12:                                               ; preds = %7, %10
  %13 = phi i32 [ -1025, %10 ], [ -1026, %7 ]
  %14 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 4
  %15 = load i32, ptr %14, align 8, !tbaa !51
  %16 = and i32 %15, %13
  store i32 %16, ptr %14, align 8, !tbaa !51
  br label %17

17:                                               ; preds = %12, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @RNA_def_property_boolean_array_funcs_runtime(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #11 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = icmp eq ptr %2, null
  br i1 %6, label %17, label %10

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.BoolPropertyRNA, ptr %0, i64 0, i32 7
  store ptr %1, ptr %8, align 8, !tbaa !288
  %9 = icmp eq ptr %2, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %7, %5
  %11 = getelementptr inbounds %struct.BoolPropertyRNA, ptr %0, i64 0, i32 8
  store ptr %2, ptr %11, align 8, !tbaa !289
  br label %12

12:                                               ; preds = %7, %10
  %13 = phi i32 [ -1025, %10 ], [ -1026, %7 ]
  %14 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 4
  %15 = load i32, ptr %14, align 8, !tbaa !51
  %16 = and i32 %15, %13
  store i32 %16, ptr %14, align 8, !tbaa !51
  br label %17

17:                                               ; preds = %12, %5
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @RNA_def_property_int_funcs(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #14 {
  %5 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !67
  %6 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !62
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !tbaa !65
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.207, ptr noundef nonnull @__func__.RNA_def_property_int_funcs) #29
  br label %47

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 9
  %13 = load i32, ptr %12, align 8, !tbaa !165
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %40

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 12
  %17 = load i32, ptr %16, align 8, !tbaa !240
  %18 = icmp eq i32 %17, 0
  %19 = icmp eq ptr %1, null
  br i1 %18, label %27, label %20

20:                                               ; preds = %15
  br i1 %19, label %23, label %21

21:                                               ; preds = %20
  %22 = getelementptr inbounds %struct.IntPropertyRNA, ptr %0, i64 0, i32 3
  store ptr %1, ptr %22, align 8, !tbaa !290
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
  store ptr %1, ptr %29, align 8, !tbaa !291
  br label %30

30:                                               ; preds = %28, %27
  %31 = icmp eq ptr %2, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.IntPropertyRNA, ptr %0, i64 0, i32 2
  br label %34

34:                                               ; preds = %25, %32
  %35 = phi ptr [ %33, %32 ], [ %26, %25 ]
  store ptr %2, ptr %35, align 8, !tbaa !65
  br label %36

36:                                               ; preds = %34, %30, %23
  %37 = icmp eq ptr %3, null
  br i1 %37, label %47, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.IntPropertyRNA, ptr %0, i64 0, i32 5
  store ptr %3, ptr %39, align 8, !tbaa !292
  br label %47

40:                                               ; preds = %11
  %41 = load ptr, ptr @stderr, align 8, !tbaa !65
  %42 = getelementptr inbounds %struct.StructRNA, ptr %5, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !70
  %44 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !130
  %46 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %41, ptr noundef nonnull @.str.230, ptr noundef nonnull @__func__.RNA_def_property_int_funcs, ptr noundef %43, ptr noundef %45) #29
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !66
  br label %47

47:                                               ; preds = %40, %38, %36, %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @RNA_def_property_int_funcs_runtime(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #11 {
  %5 = icmp ne ptr %1, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.IntPropertyRNA, ptr %0, i64 0, i32 6
  store ptr %1, ptr %7, align 8, !tbaa !293
  br label %8

8:                                                ; preds = %6, %4
  %9 = icmp ne ptr %2, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.IntPropertyRNA, ptr %0, i64 0, i32 7
  store ptr %2, ptr %11, align 8, !tbaa !294
  br label %12

12:                                               ; preds = %10, %8
  %13 = icmp eq ptr %3, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.IntPropertyRNA, ptr %0, i64 0, i32 10
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @RNA_def_property_int_array_funcs_runtime(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #11 {
  %5 = icmp ne ptr %1, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.IntPropertyRNA, ptr %0, i64 0, i32 8
  store ptr %1, ptr %7, align 8, !tbaa !296
  br label %8

8:                                                ; preds = %6, %4
  %9 = icmp ne ptr %2, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.IntPropertyRNA, ptr %0, i64 0, i32 9
  store ptr %2, ptr %11, align 8, !tbaa !297
  br label %12

12:                                               ; preds = %10, %8
  %13 = icmp eq ptr %3, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.IntPropertyRNA, ptr %0, i64 0, i32 10
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

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @RNA_def_property_float_funcs(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #14 {
  %5 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !67
  %6 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !62
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !tbaa !65
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.207, ptr noundef nonnull @__func__.RNA_def_property_float_funcs) #29
  br label %47

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 9
  %13 = load i32, ptr %12, align 8, !tbaa !165
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %40

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 12
  %17 = load i32, ptr %16, align 8, !tbaa !240
  %18 = icmp eq i32 %17, 0
  %19 = icmp eq ptr %1, null
  br i1 %18, label %27, label %20

20:                                               ; preds = %15
  br i1 %19, label %23, label %21

21:                                               ; preds = %20
  %22 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %0, i64 0, i32 3
  store ptr %1, ptr %22, align 8, !tbaa !298
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
  store ptr %1, ptr %29, align 8, !tbaa !299
  br label %30

30:                                               ; preds = %28, %27
  %31 = icmp eq ptr %2, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %0, i64 0, i32 2
  br label %34

34:                                               ; preds = %25, %32
  %35 = phi ptr [ %33, %32 ], [ %26, %25 ]
  store ptr %2, ptr %35, align 8, !tbaa !65
  br label %36

36:                                               ; preds = %34, %30, %23
  %37 = icmp eq ptr %3, null
  br i1 %37, label %47, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %0, i64 0, i32 5
  store ptr %3, ptr %39, align 8, !tbaa !300
  br label %47

40:                                               ; preds = %11
  %41 = load ptr, ptr @stderr, align 8, !tbaa !65
  %42 = getelementptr inbounds %struct.StructRNA, ptr %5, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !70
  %44 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !130
  %46 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %41, ptr noundef nonnull @.str.231, ptr noundef nonnull @__func__.RNA_def_property_float_funcs, ptr noundef %43, ptr noundef %45) #29
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !66
  br label %47

47:                                               ; preds = %40, %38, %36, %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @RNA_def_property_float_funcs_runtime(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #11 {
  %5 = icmp ne ptr %1, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %0, i64 0, i32 6
  store ptr %1, ptr %7, align 8, !tbaa !301
  br label %8

8:                                                ; preds = %6, %4
  %9 = icmp ne ptr %2, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %0, i64 0, i32 7
  store ptr %2, ptr %11, align 8, !tbaa !302
  br label %12

12:                                               ; preds = %10, %8
  %13 = icmp eq ptr %3, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %0, i64 0, i32 10
  store ptr %3, ptr %15, align 8, !tbaa !303
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @RNA_def_property_float_array_funcs_runtime(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #11 {
  %5 = icmp ne ptr %1, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %0, i64 0, i32 8
  store ptr %1, ptr %7, align 8, !tbaa !304
  br label %8

8:                                                ; preds = %6, %4
  %9 = icmp ne ptr %2, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %0, i64 0, i32 9
  store ptr %2, ptr %11, align 8, !tbaa !305
  br label %12

12:                                               ; preds = %10, %8
  %13 = icmp eq ptr %3, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %0, i64 0, i32 10
  store ptr %3, ptr %15, align 8, !tbaa !303
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

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @RNA_def_property_enum_funcs(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #14 {
  %5 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !67
  %6 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !62
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !tbaa !65
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.207, ptr noundef nonnull @__func__.RNA_def_property_enum_funcs) #29
  br label %34

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 9
  %13 = load i32, ptr %12, align 8, !tbaa !165
  %14 = icmp eq i32 %13, 4
  br i1 %14, label %15, label %27

15:                                               ; preds = %11
  %16 = icmp eq ptr %1, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.EnumPropertyRNA, ptr %0, i64 0, i32 1
  store ptr %1, ptr %18, align 8, !tbaa !306
  br label %19

19:                                               ; preds = %17, %15
  %20 = icmp eq ptr %2, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.EnumPropertyRNA, ptr %0, i64 0, i32 2
  store ptr %2, ptr %22, align 8, !tbaa !307
  br label %23

23:                                               ; preds = %21, %19
  %24 = icmp eq ptr %3, null
  br i1 %24, label %34, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.EnumPropertyRNA, ptr %0, i64 0, i32 3
  store ptr %3, ptr %26, align 8, !tbaa !308
  br label %34

27:                                               ; preds = %11
  %28 = load ptr, ptr @stderr, align 8, !tbaa !65
  %29 = getelementptr inbounds %struct.StructRNA, ptr %5, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !70
  %31 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !130
  %33 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef nonnull @.str.236, ptr noundef nonnull @__func__.RNA_def_property_enum_funcs, ptr noundef %30, ptr noundef %32) #29
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !66
  br label %34

34:                                               ; preds = %27, %25, %23, %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @RNA_def_property_enum_funcs_runtime(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #11 {
  %5 = icmp ne ptr %1, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.EnumPropertyRNA, ptr %0, i64 0, i32 4
  store ptr %1, ptr %7, align 8, !tbaa !309
  br label %8

8:                                                ; preds = %6, %4
  %9 = icmp ne ptr %2, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.EnumPropertyRNA, ptr %0, i64 0, i32 5
  store ptr %2, ptr %11, align 8, !tbaa !310
  br label %12

12:                                               ; preds = %10, %8
  %13 = icmp eq ptr %3, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.EnumPropertyRNA, ptr %0, i64 0, i32 3
  store ptr %3, ptr %15, align 8, !tbaa !308
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @RNA_def_property_enum_py_data(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #21 {
  %3 = getelementptr inbounds %struct.EnumPropertyRNA, ptr %0, i64 0, i32 6
  store ptr %1, ptr %3, align 8, !tbaa !311
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @RNA_def_property_string_funcs(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #14 {
  %5 = load ptr, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 3), align 8, !tbaa !67
  %6 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !62
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !tbaa !65
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.207, ptr noundef nonnull @__func__.RNA_def_property_string_funcs) #29
  br label %34

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 9
  %13 = load i32, ptr %12, align 8, !tbaa !165
  %14 = icmp eq i32 %13, 3
  br i1 %14, label %15, label %27

15:                                               ; preds = %11
  %16 = icmp eq ptr %1, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.StringPropertyRNA, ptr %0, i64 0, i32 1
  store ptr %1, ptr %18, align 8, !tbaa !312
  br label %19

19:                                               ; preds = %17, %15
  %20 = icmp eq ptr %2, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.StringPropertyRNA, ptr %0, i64 0, i32 2
  store ptr %2, ptr %22, align 8, !tbaa !313
  br label %23

23:                                               ; preds = %21, %19
  %24 = icmp eq ptr %3, null
  br i1 %24, label %34, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.StringPropertyRNA, ptr %0, i64 0, i32 3
  store ptr %3, ptr %26, align 8, !tbaa !314
  br label %34

27:                                               ; preds = %11
  %28 = load ptr, ptr @stderr, align 8, !tbaa !65
  %29 = getelementptr inbounds %struct.StructRNA, ptr %5, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !70
  %31 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !130
  %33 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef nonnull @.str.228, ptr noundef nonnull @__func__.RNA_def_property_string_funcs, ptr noundef %30, ptr noundef %32) #29
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !66
  br label %34

34:                                               ; preds = %27, %25, %23, %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @RNA_def_property_string_funcs_runtime(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #11 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.StringPropertyRNA, ptr %0, i64 0, i32 4
  store ptr %1, ptr %7, align 8, !tbaa !315
  br label %8

8:                                                ; preds = %6, %4
  %9 = icmp eq ptr %2, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.StringPropertyRNA, ptr %0, i64 0, i32 5
  store ptr %2, ptr %11, align 8, !tbaa !316
  br label %12

12:                                               ; preds = %10, %8
  %13 = icmp eq ptr %3, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.StringPropertyRNA, ptr %0, i64 0, i32 6
  store ptr %3, ptr %15, align 8, !tbaa !317
  br label %17

16:                                               ; preds = %12
  br i1 %5, label %22, label %17

17:                                               ; preds = %16, %14
  %18 = phi i32 [ -1025, %14 ], [ -1026, %16 ]
  %19 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 4
  %20 = load i32, ptr %19, align 8, !tbaa !51
  %21 = and i32 %20, %18
  store i32 %21, ptr %19, align 8, !tbaa !51
  br label %22

22:                                               ; preds = %17, %16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @RNA_def_property_srna(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #21 {
  %3 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 21
  store ptr %1, ptr %3, align 8, !tbaa !318
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @RNA_def_py_data(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #21 {
  %3 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 22
  store ptr %1, ptr %3, align 8, !tbaa !164
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @RNA_def_boolean(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call ptr @RNA_def_property(ptr noundef %0, ptr noundef %1, i32 noundef 0, i32 noundef 0) #27
  tail call void @RNA_def_property_boolean_default(ptr noundef %6, i32 noundef %2) #27
  tail call void @RNA_def_property_ui_text(ptr noundef %6, ptr noundef %3, ptr noundef %4) #27
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RNA_def_boolean_array(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = tail call ptr @RNA_def_property(ptr noundef %0, ptr noundef %1, i32 noundef 0, i32 noundef 0) #27
  %8 = icmp eq i32 %2, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @RNA_def_property_array(ptr noundef %7, i32 noundef %2) #27
  br label %10

10:                                               ; preds = %9, %6
  %11 = icmp eq ptr %3, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %10
  tail call void @RNA_def_property_boolean_array_default(ptr noundef %7, ptr noundef nonnull %3) #27
  br label %13

13:                                               ; preds = %12, %10
  tail call void @RNA_def_property_ui_text(ptr noundef %7, ptr noundef %4, ptr noundef %5) #27
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RNA_def_boolean_layer(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = tail call ptr @RNA_def_property(ptr noundef %0, ptr noundef %1, i32 noundef 0, i32 noundef 40) #27
  %8 = icmp eq i32 %2, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @RNA_def_property_array(ptr noundef %7, i32 noundef %2) #27
  br label %10

10:                                               ; preds = %9, %6
  %11 = icmp eq ptr %3, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %10
  tail call void @RNA_def_property_boolean_array_default(ptr noundef %7, ptr noundef nonnull %3) #27
  br label %13

13:                                               ; preds = %12, %10
  tail call void @RNA_def_property_ui_text(ptr noundef %7, ptr noundef %4, ptr noundef %5) #27
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RNA_def_boolean_layer_member(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = tail call ptr @RNA_def_property(ptr noundef %0, ptr noundef %1, i32 noundef 0, i32 noundef 41) #27
  %8 = icmp eq i32 %2, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @RNA_def_property_array(ptr noundef %7, i32 noundef %2) #27
  br label %10

10:                                               ; preds = %9, %6
  %11 = icmp eq ptr %3, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %10
  tail call void @RNA_def_property_boolean_array_default(ptr noundef %7, ptr noundef nonnull %3) #27
  br label %13

13:                                               ; preds = %12, %10
  tail call void @RNA_def_property_ui_text(ptr noundef %7, ptr noundef %4, ptr noundef %5) #27
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RNA_def_boolean_vector(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = tail call ptr @RNA_def_property(ptr noundef %0, ptr noundef %1, i32 noundef 0, i32 noundef 29) #27
  %8 = icmp eq i32 %2, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @RNA_def_property_array(ptr noundef %7, i32 noundef %2) #27
  br label %10

10:                                               ; preds = %9, %6
  %11 = icmp eq ptr %3, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %10
  tail call void @RNA_def_property_boolean_array_default(ptr noundef %7, ptr noundef nonnull %3) #27
  br label %13

13:                                               ; preds = %12, %10
  tail call void @RNA_def_property_ui_text(ptr noundef %7, ptr noundef %4, ptr noundef %5) #27
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @RNA_def_int(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
  %10 = tail call ptr @RNA_def_property(ptr noundef %0, ptr noundef %1, i32 noundef 1, i32 noundef 0) #27
  tail call void @RNA_def_property_int_default(ptr noundef %10, i32 noundef %2) #27
  %11 = icmp eq i32 %3, %4
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = sitofp i32 %3 to double
  %14 = sitofp i32 %4 to double
  tail call void @RNA_def_property_range(ptr noundef %10, double noundef %13, double noundef %14) #27
  br label %15

15:                                               ; preds = %12, %9
  tail call void @RNA_def_property_ui_text(ptr noundef %10, ptr noundef %5, ptr noundef %6) #27
  %16 = sitofp i32 %7 to double
  %17 = sitofp i32 %8 to double
  tail call void @RNA_def_property_ui_range(ptr noundef %10, double noundef %16, double noundef %17, double noundef 1.000000e+00, i32 noundef 3) #27
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RNA_def_int_vector(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #0 {
  %11 = tail call ptr @RNA_def_property(ptr noundef %0, ptr noundef %1, i32 noundef 1, i32 noundef 29) #27
  %12 = icmp eq i32 %2, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  tail call void @RNA_def_property_array(ptr noundef %11, i32 noundef %2) #27
  br label %14

14:                                               ; preds = %13, %10
  %15 = icmp eq ptr %3, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %14
  tail call void @RNA_def_property_int_array_default(ptr noundef %11, ptr noundef nonnull %3) #27
  br label %17

17:                                               ; preds = %16, %14
  %18 = icmp eq i32 %4, %5
  br i1 %18, label %22, label %19

19:                                               ; preds = %17
  %20 = sitofp i32 %4 to double
  %21 = sitofp i32 %5 to double
  tail call void @RNA_def_property_range(ptr noundef %11, double noundef %20, double noundef %21) #27
  br label %22

22:                                               ; preds = %19, %17
  tail call void @RNA_def_property_ui_text(ptr noundef %11, ptr noundef %6, ptr noundef %7) #27
  %23 = sitofp i32 %8 to double
  %24 = sitofp i32 %9 to double
  tail call void @RNA_def_property_ui_range(ptr noundef %11, double noundef %23, double noundef %24, double noundef 1.000000e+00, i32 noundef 3) #27
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RNA_def_int_array(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #0 {
  %11 = tail call ptr @RNA_def_property(ptr noundef %0, ptr noundef %1, i32 noundef 1, i32 noundef 0) #27
  %12 = icmp eq i32 %2, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  tail call void @RNA_def_property_array(ptr noundef %11, i32 noundef %2) #27
  br label %14

14:                                               ; preds = %13, %10
  %15 = icmp eq ptr %3, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %14
  tail call void @RNA_def_property_int_array_default(ptr noundef %11, ptr noundef nonnull %3) #27
  br label %17

17:                                               ; preds = %16, %14
  %18 = icmp eq i32 %4, %5
  br i1 %18, label %22, label %19

19:                                               ; preds = %17
  %20 = sitofp i32 %4 to double
  %21 = sitofp i32 %5 to double
  tail call void @RNA_def_property_range(ptr noundef %11, double noundef %20, double noundef %21) #27
  br label %22

22:                                               ; preds = %19, %17
  tail call void @RNA_def_property_ui_text(ptr noundef %11, ptr noundef %6, ptr noundef %7) #27
  %23 = sitofp i32 %8 to double
  %24 = sitofp i32 %9 to double
  tail call void @RNA_def_property_ui_range(ptr noundef %11, double noundef %23, double noundef %24, double noundef 1.000000e+00, i32 noundef 3) #27
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RNA_def_string(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = tail call ptr @RNA_def_property(ptr noundef %0, ptr noundef %1, i32 noundef 3, i32 noundef 0) #27
  %8 = icmp eq i32 %3, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @RNA_def_property_string_maxlength(ptr noundef %7, i32 noundef %3) #27
  br label %10

10:                                               ; preds = %9, %6
  %11 = icmp eq ptr %2, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %10
  tail call void @RNA_def_property_string_default(ptr noundef %7, ptr noundef nonnull %2) #27
  br label %13

13:                                               ; preds = %12, %10
  tail call void @RNA_def_property_ui_text(ptr noundef %7, ptr noundef %4, ptr noundef %5) #27
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RNA_def_string_file_path(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = tail call ptr @RNA_def_property(ptr noundef %0, ptr noundef %1, i32 noundef 3, i32 noundef 1) #27
  %8 = icmp eq i32 %3, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @RNA_def_property_string_maxlength(ptr noundef %7, i32 noundef %3) #27
  br label %10

10:                                               ; preds = %9, %6
  %11 = icmp eq ptr %2, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %10
  tail call void @RNA_def_property_string_default(ptr noundef %7, ptr noundef nonnull %2) #27
  br label %13

13:                                               ; preds = %12, %10
  tail call void @RNA_def_property_ui_text(ptr noundef %7, ptr noundef %4, ptr noundef %5) #27
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RNA_def_string_dir_path(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = tail call ptr @RNA_def_property(ptr noundef %0, ptr noundef %1, i32 noundef 3, i32 noundef 2) #27
  %8 = icmp eq i32 %3, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @RNA_def_property_string_maxlength(ptr noundef %7, i32 noundef %3) #27
  br label %10

10:                                               ; preds = %9, %6
  %11 = icmp eq ptr %2, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %10
  tail call void @RNA_def_property_string_default(ptr noundef %7, ptr noundef nonnull %2) #27
  br label %13

13:                                               ; preds = %12, %10
  tail call void @RNA_def_property_ui_text(ptr noundef %7, ptr noundef %4, ptr noundef %5) #27
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RNA_def_string_file_name(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = tail call ptr @RNA_def_property(ptr noundef %0, ptr noundef %1, i32 noundef 3, i32 noundef 3) #27
  %8 = icmp eq i32 %3, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @RNA_def_property_string_maxlength(ptr noundef %7, i32 noundef %3) #27
  br label %10

10:                                               ; preds = %9, %6
  %11 = icmp eq ptr %2, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %10
  tail call void @RNA_def_property_string_default(ptr noundef %7, ptr noundef nonnull %2) #27
  br label %13

13:                                               ; preds = %12, %10
  tail call void @RNA_def_property_ui_text(ptr noundef %7, ptr noundef %4, ptr noundef %5) #27
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @RNA_def_enum(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = icmp eq ptr %2, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.254, ptr noundef nonnull @__func__.RNA_def_enum) #27
  br label %12

10:                                               ; preds = %6
  %11 = tail call ptr @RNA_def_property(ptr noundef %0, ptr noundef %1, i32 noundef 4, i32 noundef 0) #27
  tail call void @RNA_def_property_enum_items(ptr noundef %11, ptr noundef nonnull %2) #27
  tail call void @RNA_def_property_enum_default(ptr noundef %11, i32 noundef %3) #27
  tail call void @RNA_def_property_ui_text(ptr noundef %11, ptr noundef %4, ptr noundef %5) #27
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi ptr [ %11, %10 ], [ null, %8 ]
  ret ptr %13
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #15

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @RNA_def_enum_flag(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = icmp eq ptr %2, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.254, ptr noundef nonnull @__func__.RNA_def_enum_flag) #27
  br label %12

10:                                               ; preds = %6
  %11 = tail call ptr @RNA_def_property(ptr noundef %0, ptr noundef %1, i32 noundef 4, i32 noundef 0) #27
  tail call void @RNA_def_property_flag(ptr noundef %11, i32 noundef 2097152) #27
  tail call void @RNA_def_property_enum_items(ptr noundef %11, ptr noundef nonnull %2) #27
  tail call void @RNA_def_property_enum_default(ptr noundef %11, i32 noundef %3) #27
  tail call void @RNA_def_property_ui_text(ptr noundef %11, ptr noundef %4, ptr noundef %5) #27
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi ptr [ %11, %10 ], [ null, %8 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @RNA_def_enum_funcs(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #21 {
  %3 = getelementptr inbounds %struct.EnumPropertyRNA, ptr %0, i64 0, i32 3
  store ptr %1, ptr %3, align 8, !tbaa !308
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @RNA_def_float(ptr noundef %0, ptr noundef %1, float noundef %2, float noundef %3, float noundef %4, ptr noundef %5, ptr noundef %6, float noundef %7, float noundef %8) local_unnamed_addr #0 {
  %10 = tail call ptr @RNA_def_property(ptr noundef %0, ptr noundef %1, i32 noundef 2, i32 noundef 0) #27
  tail call void @RNA_def_property_float_default(ptr noundef %10, float noundef %2) #27
  %11 = fcmp une float %3, %4
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = fpext float %3 to double
  %14 = fpext float %4 to double
  tail call void @RNA_def_property_range(ptr noundef %10, double noundef %13, double noundef %14) #27
  br label %15

15:                                               ; preds = %12, %9
  tail call void @RNA_def_property_ui_text(ptr noundef %10, ptr noundef %5, ptr noundef %6) #27
  %16 = fpext float %7 to double
  %17 = fpext float %8 to double
  tail call void @RNA_def_property_ui_range(ptr noundef %10, double noundef %16, double noundef %17, double noundef 1.000000e+00, i32 noundef 3) #27
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RNA_def_float_vector(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, float noundef %4, float noundef %5, ptr noundef %6, ptr noundef %7, float noundef %8, float noundef %9) local_unnamed_addr #0 {
  %11 = tail call ptr @RNA_def_property(ptr noundef %0, ptr noundef %1, i32 noundef 2, i32 noundef 29) #27
  %12 = icmp eq i32 %2, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  tail call void @RNA_def_property_array(ptr noundef %11, i32 noundef %2) #27
  br label %14

14:                                               ; preds = %13, %10
  %15 = icmp eq ptr %3, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %14
  tail call void @RNA_def_property_float_array_default(ptr noundef %11, ptr noundef nonnull %3) #27
  br label %17

17:                                               ; preds = %16, %14
  %18 = fcmp une float %4, %5
  br i1 %18, label %19, label %22

19:                                               ; preds = %17
  %20 = fpext float %4 to double
  %21 = fpext float %5 to double
  tail call void @RNA_def_property_range(ptr noundef %11, double noundef %20, double noundef %21) #27
  br label %22

22:                                               ; preds = %19, %17
  tail call void @RNA_def_property_ui_text(ptr noundef %11, ptr noundef %6, ptr noundef %7) #27
  %23 = fpext float %8 to double
  %24 = fpext float %9 to double
  tail call void @RNA_def_property_ui_range(ptr noundef %11, double noundef %23, double noundef %24, double noundef 1.000000e+00, i32 noundef 3) #27
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RNA_def_float_vector_xyz(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, float noundef %4, float noundef %5, ptr noundef %6, ptr noundef %7, float noundef %8, float noundef %9) local_unnamed_addr #0 {
  %11 = tail call ptr @RNA_def_float_vector(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, float noundef %4, float noundef %5, ptr noundef %6, ptr noundef %7, float noundef %8, float noundef %9) #27
  %12 = getelementptr inbounds %struct.PropertyRNA, ptr %11, i64 0, i32 10
  store i32 65565, ptr %12, align 4, !tbaa !212
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RNA_def_float_color(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, float noundef %4, float noundef %5, ptr noundef %6, ptr noundef %7, float noundef %8, float noundef %9) local_unnamed_addr #0 {
  %11 = tail call ptr @RNA_def_property(ptr noundef %0, ptr noundef %1, i32 noundef 2, i32 noundef 20) #27
  %12 = icmp eq i32 %2, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  tail call void @RNA_def_property_array(ptr noundef %11, i32 noundef %2) #27
  br label %14

14:                                               ; preds = %13, %10
  %15 = icmp eq ptr %3, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %14
  tail call void @RNA_def_property_float_array_default(ptr noundef %11, ptr noundef nonnull %3) #27
  br label %17

17:                                               ; preds = %16, %14
  %18 = fcmp une float %4, %5
  br i1 %18, label %19, label %22

19:                                               ; preds = %17
  %20 = fpext float %4 to double
  %21 = fpext float %5 to double
  tail call void @RNA_def_property_range(ptr noundef %11, double noundef %20, double noundef %21) #27
  br label %22

22:                                               ; preds = %19, %17
  tail call void @RNA_def_property_ui_text(ptr noundef %11, ptr noundef %6, ptr noundef %7) #27
  %23 = fpext float %8 to double
  %24 = fpext float %9 to double
  tail call void @RNA_def_property_ui_range(ptr noundef %11, double noundef %23, double noundef %24, double noundef 1.000000e+00, i32 noundef 3) #27
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @RNA_def_float_matrix(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, float noundef %5, float noundef %6, ptr noundef %7, ptr noundef %8, float noundef %9, float noundef %10) local_unnamed_addr #0 {
  %12 = alloca [2 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #28
  store i32 %2, ptr %12, align 4, !tbaa !117
  %13 = getelementptr inbounds i32, ptr %12, i64 1
  store i32 %3, ptr %13, align 4, !tbaa !117
  %14 = tail call ptr @RNA_def_property(ptr noundef %0, ptr noundef %1, i32 noundef 2, i32 noundef 25) #27
  call void @RNA_def_property_multi_array(ptr noundef %14, i32 noundef 2, ptr noundef nonnull %12) #27
  %15 = icmp eq ptr %4, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  call void @RNA_def_property_float_array_default(ptr noundef %14, ptr noundef nonnull %4) #27
  br label %17

17:                                               ; preds = %16, %11
  %18 = fcmp une float %5, %6
  br i1 %18, label %19, label %22

19:                                               ; preds = %17
  %20 = fpext float %5 to double
  %21 = fpext float %6 to double
  call void @RNA_def_property_range(ptr noundef %14, double noundef %20, double noundef %21) #27
  br label %22

22:                                               ; preds = %19, %17
  call void @RNA_def_property_ui_text(ptr noundef %14, ptr noundef %7, ptr noundef %8) #27
  %23 = fpext float %9 to double
  %24 = fpext float %10 to double
  call void @RNA_def_property_ui_range(ptr noundef %14, double noundef %23, double noundef %24, double noundef 1.000000e+00, i32 noundef 3) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #28
  ret ptr %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RNA_def_float_rotation(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, float noundef %4, float noundef %5, ptr noundef %6, ptr noundef %7, float noundef %8, float noundef %9) local_unnamed_addr #0 {
  %11 = icmp eq i32 %2, 0
  %12 = select i1 %11, i32 327696, i32 327706
  %13 = tail call ptr @RNA_def_property(ptr noundef %0, ptr noundef %1, i32 noundef 2, i32 noundef %12) #27
  br i1 %11, label %17, label %14

14:                                               ; preds = %10
  tail call void @RNA_def_property_array(ptr noundef %13, i32 noundef %2) #27
  %15 = icmp eq ptr %3, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %14
  tail call void @RNA_def_property_float_array_default(ptr noundef %13, ptr noundef nonnull %3) #27
  br label %17

17:                                               ; preds = %10, %14, %16
  %18 = fcmp une float %4, %5
  br i1 %18, label %19, label %22

19:                                               ; preds = %17
  %20 = fpext float %4 to double
  %21 = fpext float %5 to double
  tail call void @RNA_def_property_range(ptr noundef %13, double noundef %20, double noundef %21) #27
  br label %22

22:                                               ; preds = %19, %17
  tail call void @RNA_def_property_ui_text(ptr noundef %13, ptr noundef %6, ptr noundef %7) #27
  %23 = fpext float %8 to double
  %24 = fpext float %9 to double
  tail call void @RNA_def_property_ui_range(ptr noundef %13, double noundef %23, double noundef %24, double noundef 1.000000e+00, i32 noundef 3) #27
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RNA_def_float_array(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, float noundef %4, float noundef %5, ptr noundef %6, ptr noundef %7, float noundef %8, float noundef %9) local_unnamed_addr #0 {
  %11 = tail call ptr @RNA_def_property(ptr noundef %0, ptr noundef %1, i32 noundef 2, i32 noundef 0) #27
  %12 = icmp eq i32 %2, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  tail call void @RNA_def_property_array(ptr noundef %11, i32 noundef %2) #27
  br label %14

14:                                               ; preds = %13, %10
  %15 = icmp eq ptr %3, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %14
  tail call void @RNA_def_property_float_array_default(ptr noundef %11, ptr noundef nonnull %3) #27
  br label %17

17:                                               ; preds = %16, %14
  %18 = fcmp une float %4, %5
  br i1 %18, label %19, label %22

19:                                               ; preds = %17
  %20 = fpext float %4 to double
  %21 = fpext float %5 to double
  tail call void @RNA_def_property_range(ptr noundef %11, double noundef %20, double noundef %21) #27
  br label %22

22:                                               ; preds = %19, %17
  tail call void @RNA_def_property_ui_text(ptr noundef %11, ptr noundef %6, ptr noundef %7) #27
  %23 = fpext float %8 to double
  %24 = fpext float %9 to double
  tail call void @RNA_def_property_ui_range(ptr noundef %11, double noundef %23, double noundef %24, double noundef 1.000000e+00, i32 noundef 3) #27
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @RNA_def_float_percentage(ptr noundef %0, ptr noundef %1, float noundef %2, float noundef %3, float noundef %4, ptr noundef %5, ptr noundef %6, float noundef %7, float noundef %8) local_unnamed_addr #0 {
  %10 = tail call ptr @RNA_def_property(ptr noundef %0, ptr noundef %1, i32 noundef 2, i32 noundef 14) #27
  tail call void @RNA_def_property_float_default(ptr noundef %10, float noundef %2) #27
  %11 = fcmp une float %3, %4
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = fpext float %3 to double
  %14 = fpext float %4 to double
  tail call void @RNA_def_property_range(ptr noundef %10, double noundef %13, double noundef %14) #27
  br label %15

15:                                               ; preds = %12, %9
  tail call void @RNA_def_property_ui_text(ptr noundef %10, ptr noundef %5, ptr noundef %6) #27
  %16 = fpext float %7 to double
  %17 = fpext float %8 to double
  tail call void @RNA_def_property_ui_range(ptr noundef %10, double noundef %16, double noundef %17, double noundef 1.000000e+00, i32 noundef 3) #27
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @RNA_def_float_factor(ptr noundef %0, ptr noundef %1, float noundef %2, float noundef %3, float noundef %4, ptr noundef %5, ptr noundef %6, float noundef %7, float noundef %8) local_unnamed_addr #0 {
  %10 = tail call ptr @RNA_def_property(ptr noundef %0, ptr noundef %1, i32 noundef 2, i32 noundef 15) #27
  tail call void @RNA_def_property_float_default(ptr noundef %10, float noundef %2) #27
  %11 = fcmp une float %3, %4
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = fpext float %3 to double
  %14 = fpext float %4 to double
  tail call void @RNA_def_property_range(ptr noundef %10, double noundef %13, double noundef %14) #27
  br label %15

15:                                               ; preds = %12, %9
  tail call void @RNA_def_property_ui_text(ptr noundef %10, ptr noundef %5, ptr noundef %6) #27
  %16 = fpext float %7 to double
  %17 = fpext float %8 to double
  tail call void @RNA_def_property_ui_range(ptr noundef %10, double noundef %16, double noundef %17, double noundef 1.000000e+00, i32 noundef 3) #27
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @RNA_def_pointer(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call ptr @RNA_def_property(ptr noundef %0, ptr noundef %1, i32 noundef 5, i32 noundef 0) #27
  tail call void @RNA_def_property_struct_type(ptr noundef %6, ptr noundef %2) #27
  tail call void @RNA_def_property_ui_text(ptr noundef %6, ptr noundef %3, ptr noundef %4) #27
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @RNA_def_pointer_runtime(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call ptr @RNA_def_property(ptr noundef %0, ptr noundef %1, i32 noundef 5, i32 noundef 0) #27
  tail call void @RNA_def_property_struct_runtime(ptr noundef %6, ptr noundef %2) #27
  tail call void @RNA_def_property_ui_text(ptr noundef %6, ptr noundef %3, ptr noundef %4) #27
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @RNA_def_collection(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call ptr @RNA_def_property(ptr noundef %0, ptr noundef %1, i32 noundef 6, i32 noundef 0) #27
  tail call void @RNA_def_property_struct_type(ptr noundef %6, ptr noundef %2) #27
  tail call void @RNA_def_property_ui_text(ptr noundef %6, ptr noundef %3, ptr noundef %4) #27
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @RNA_def_collection_runtime(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call ptr @RNA_def_property(ptr noundef %0, ptr noundef %1, i32 noundef 6, i32 noundef 0) #27
  tail call void @RNA_def_property_struct_runtime(ptr noundef %6, ptr noundef %2) #27
  tail call void @RNA_def_property_ui_text(ptr noundef %6, ptr noundef %3, ptr noundef %4) #27
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @RNA_def_function(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.StructRNA, ptr %0, i64 0, i32 19
  %5 = tail call ptr @BLI_findstring_ptr(ptr noundef nonnull %4, ptr noundef %1, i32 noundef 40) #25
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @stderr, align 8, !tbaa !65
  %9 = getelementptr inbounds %struct.StructRNA, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !70
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.255, ptr noundef nonnull @__func__.RNA_def_function, ptr noundef %10, ptr noundef %1) #29
  br label %22

12:                                               ; preds = %3
  %13 = tail call fastcc ptr @rna_def_function(ptr noundef %0, ptr noundef %1) #27
  %14 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !62
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load ptr, ptr @stderr, align 8, !tbaa !65
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.159, ptr noundef nonnull @__func__.RNA_def_function) #29
  br label %22

19:                                               ; preds = %12
  %20 = tail call ptr @rna_find_function_def(ptr noundef %13) #27
  %21 = getelementptr inbounds %struct.FunctionDefRNA, ptr %20, i64 0, i32 3
  store ptr %2, ptr %21, align 8, !tbaa !319
  br label %22

22:                                               ; preds = %19, %16, %7
  %23 = phi ptr [ null, %7 ], [ %13, %19 ], [ %13, %16 ]
  ret ptr %23
}

; Function Attrs: optsize
declare ptr @BLI_findstring_ptr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @rna_def_function(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !320 {
  %3 = alloca [512 x i8], align 16
  %4 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !62
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %3) #28
  %7 = call fastcc i32 @rna_validate_identifier(ptr noundef %1, ptr noundef nonnull %3, i8 noundef zeroext 0) #27, !range !64
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = load ptr, ptr @stderr, align 8, !tbaa !65
  %11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.285, ptr noundef nonnull @__func__.rna_def_function, ptr noundef %1, ptr noundef nonnull %3) #29
  store i32 1, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 4), align 8, !tbaa !66
  br label %12

12:                                               ; preds = %9, %6
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %3) #28
  br label %13

13:                                               ; preds = %12, %2
  %14 = load ptr, ptr @MEM_callocN, align 8, !tbaa !65
  %15 = call ptr %14(i64 noundef 80, ptr noundef nonnull @.str.286) #25
  %16 = getelementptr inbounds %struct.FunctionRNA, ptr %15, i64 0, i32 1
  store ptr %1, ptr %16, align 8, !tbaa !183
  %17 = getelementptr inbounds %struct.FunctionRNA, ptr %15, i64 0, i32 3
  store ptr %1, ptr %17, align 8, !tbaa !184
  %18 = getelementptr inbounds %struct.StructRNA, ptr %0, i64 0, i32 19
  call void @rna_addtail(ptr noundef nonnull %18, ptr noundef %15) #27
  %19 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !62
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %13
  %22 = call ptr @rna_find_struct_def(ptr noundef %0) #27
  %23 = load ptr, ptr @MEM_callocN, align 8, !tbaa !65
  %24 = call ptr %23(i64 noundef 72, ptr noundef nonnull @.str.287) #25
  %25 = getelementptr inbounds %struct.StructDefRNA, ptr %22, i64 0, i32 6
  call void @rna_addtail(ptr noundef nonnull %25, ptr noundef %24) #27
  %26 = getelementptr inbounds %struct.FunctionDefRNA, ptr %24, i64 0, i32 1
  store ptr %15, ptr %26, align 8, !tbaa !138
  br label %31

27:                                               ; preds = %13
  %28 = getelementptr inbounds %struct.FunctionRNA, ptr %15, i64 0, i32 2
  %29 = load i32, ptr %28, align 8, !tbaa !59
  %30 = or i32 %29, 512
  store i32 %30, ptr %28, align 8, !tbaa !59
  br label %31

31:                                               ; preds = %27, %21
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @RNA_def_function_runtime(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc ptr @rna_def_function(ptr noundef %0, ptr noundef %1) #27
  %5 = load i32, ptr getelementptr inbounds (%struct.BlenderDefRNA, ptr @DefRNA, i64 0, i32 6), align 8, !tbaa !62
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @stderr, align 8, !tbaa !65
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.212, ptr noundef nonnull @__func__.RNA_def_function_runtime) #29
  br label %12

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.FunctionRNA, ptr %4, i64 0, i32 4
  store ptr %2, ptr %11, align 8, !tbaa !321
  br label %12

12:                                               ; preds = %10, %7
  ret ptr %4
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @RNA_def_function_return(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #14 {
  %3 = getelementptr inbounds %struct.PropertyRNA, ptr %1, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !51
  %5 = and i32 %4, 131072
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr @stderr, align 8, !tbaa !65
  %9 = getelementptr inbounds %struct.FunctionRNA, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !183
  %11 = getelementptr inbounds %struct.PropertyRNA, ptr %1, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !130
  %13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.256, ptr noundef nonnull @__func__.RNA_def_function_return, ptr noundef %10, ptr noundef %12) #29
  br label %27

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.PropertyRNA, ptr %1, i64 0, i32 12
  %16 = load i32, ptr %15, align 8, !tbaa !240
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr @stderr, align 8, !tbaa !65
  %20 = getelementptr inbounds %struct.FunctionRNA, ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !183
  %22 = getelementptr inbounds %struct.PropertyRNA, ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !130
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.257, ptr noundef nonnull @__func__.RNA_def_function_return, ptr noundef %21, ptr noundef %23) #29
  br label %27

25:                                               ; preds = %14
  %26 = getelementptr inbounds %struct.FunctionRNA, ptr %0, i64 0, i32 5
  store ptr %1, ptr %26, align 8, !tbaa !322
  tail call void @RNA_def_function_output(ptr poison, ptr noundef nonnull %1) #27
  br label %27

27:                                               ; preds = %25, %18, %7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @RNA_def_function_output(ptr nocapture readnone %0, ptr nocapture noundef %1) local_unnamed_addr #11 {
  %3 = getelementptr inbounds %struct.PropertyRNA, ptr %1, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !51
  %5 = or i32 %4, 8
  store i32 %5, ptr %3, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @RNA_def_function_flag(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #11 {
  %3 = getelementptr inbounds %struct.FunctionRNA, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !59
  %5 = or i32 %4, %1
  store i32 %5, ptr %3, align 8, !tbaa !59
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @RNA_def_function_ui_description(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #21 {
  %3 = getelementptr inbounds %struct.FunctionRNA, ptr %0, i64 0, i32 3
  store ptr %1, ptr %3, align 8, !tbaa !184
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @rna_parameter_size(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !165
  %4 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 14
  %5 = load i32, ptr %4, align 8, !tbaa !241
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
  %23 = load i32, ptr %22, align 8, !tbaa !242
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_enum_item_add(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = load i32, ptr %1, align 4, !tbaa !117
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = load ptr, ptr @MEM_callocN, align 8, !tbaa !65
  %8 = tail call ptr %7(i64 noundef 320, ptr noundef nonnull @.str.258) #25
  store ptr %8, ptr %0, align 8, !tbaa !65
  br label %25

9:                                                ; preds = %3
  %10 = icmp sgt i32 %4, 7
  %11 = tail call i32 @llvm.ctpop.i32(i32 %4), !range !323
  %12 = icmp ult i32 %11, 2
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = load ptr, ptr %0, align 8, !tbaa !65
  br label %25

16:                                               ; preds = %9
  %17 = load ptr, ptr @MEM_callocN, align 8, !tbaa !65
  %18 = zext nneg i32 %4 to i64
  %19 = mul nuw nsw i64 %18, 40
  %20 = mul nuw nsw i64 %18, 80
  %21 = tail call ptr %17(i64 noundef %20, ptr noundef nonnull @.str.258) #25
  %22 = load ptr, ptr %0, align 8, !tbaa !65
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %21, ptr align 8 %22, i64 %19, i1 false)
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  %24 = load ptr, ptr %0, align 8, !tbaa !65
  tail call void %23(ptr noundef %24) #25
  store ptr %21, ptr %0, align 8, !tbaa !65
  br label %25

25:                                               ; preds = %14, %16, %6
  %26 = phi ptr [ %15, %14 ], [ %21, %16 ], [ %8, %6 ]
  %27 = sext i32 %4 to i64
  %28 = getelementptr inbounds %struct.EnumPropertyItem, ptr %26, i64 %27
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %28, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !324
  %29 = add nsw i32 %4, 1
  store i32 %29, ptr %1, align 4, !tbaa !117
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_enum_item_add_separator(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  tail call void @RNA_enum_item_add(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @RNA_enum_item_add_separator.sepr) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_enum_items_add(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.EnumPropertyItem, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !176
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %3, %7
  %8 = phi ptr [ %9, %7 ], [ %2, %3 ]
  tail call void @RNA_enum_item_add(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %8) #27
  %9 = getelementptr inbounds %struct.EnumPropertyItem, ptr %8, i64 1
  %10 = getelementptr inbounds %struct.EnumPropertyItem, ptr %8, i64 1, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !176
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %7, !llvm.loop !325

13:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_enum_items_add_value(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.EnumPropertyItem, ptr %2, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !176
  %7 = icmp eq ptr %6, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %4, %13
  %9 = phi ptr [ %14, %13 ], [ %2, %4 ]
  %10 = load i32, ptr %9, align 8, !tbaa !249
  %11 = icmp eq i32 %10, %3
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  tail call void @RNA_enum_item_add(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %9) #27
  br label %18

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.EnumPropertyItem, ptr %9, i64 1
  %15 = getelementptr inbounds %struct.EnumPropertyItem, ptr %9, i64 1, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !176
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %8, !llvm.loop !326

18:                                               ; preds = %13, %4, %12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_enum_item_end(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  tail call void @RNA_enum_item_add(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @RNA_enum_item_end.empty) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_def_struct_duplicate_pointers(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.StructRNA, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !70
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @BLI_strdup(ptr noundef nonnull %3) #25
  store ptr %6, ptr %2, align 8, !tbaa !70
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct.StructRNA, ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !71
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = tail call ptr @BLI_strdup(ptr noundef nonnull %9) #25
  store ptr %12, ptr %8, align 8, !tbaa !71
  br label %13

13:                                               ; preds = %11, %7
  %14 = getelementptr inbounds %struct.StructRNA, ptr %0, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !72
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = tail call ptr @BLI_strdup(ptr noundef nonnull %15) #25
  store ptr %18, ptr %14, align 8, !tbaa !72
  br label %19

19:                                               ; preds = %17, %13
  %20 = getelementptr inbounds %struct.StructRNA, ptr %0, i64 0, i32 4
  %21 = load i32, ptr %20, align 8, !tbaa !61
  %22 = or i32 %21, 32
  store i32 %22, ptr %20, align 8, !tbaa !61
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_strdup(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_def_func_duplicate_pointers(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.FunctionRNA, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !183
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @BLI_strdup(ptr noundef nonnull %3) #25
  store ptr %6, ptr %2, align 8, !tbaa !183
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct.FunctionRNA, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !184
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = tail call ptr @BLI_strdup(ptr noundef nonnull %9) #25
  store ptr %12, ptr %8, align 8, !tbaa !184
  br label %13

13:                                               ; preds = %11, %7
  %14 = getelementptr inbounds %struct.FunctionRNA, ptr %0, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !59
  %16 = or i32 %15, 1024
  store i32 %16, ptr %14, align 8, !tbaa !59
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_def_property_duplicate_pointers(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.PropertyRNA, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !130
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ContainerRNA, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !216
  %9 = icmp eq ptr %8, null
  %10 = tail call ptr @BLI_strdup(ptr noundef nonnull %4) #25
  store ptr %10, ptr %3, align 8, !tbaa !130
  br i1 %9, label %14, label %11

11:                                               ; preds = %6
  %12 = load ptr, ptr %7, align 8, !tbaa !216
  %13 = tail call zeroext i8 @BLI_ghash_reinsert(ptr noundef %12, ptr noundef %10, ptr noundef nonnull %1, ptr noundef null, ptr noundef null) #25
  br label %14

14:                                               ; preds = %6, %11, %2
  %15 = getelementptr inbounds %struct.PropertyRNA, ptr %1, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !162
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = tail call ptr @BLI_strdup(ptr noundef nonnull %16) #25
  store ptr %19, ptr %15, align 8, !tbaa !162
  br label %20

20:                                               ; preds = %18, %14
  %21 = getelementptr inbounds %struct.PropertyRNA, ptr %1, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !163
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = tail call ptr @BLI_strdup(ptr noundef nonnull %22) #25
  store ptr %25, ptr %21, align 8, !tbaa !163
  br label %26

26:                                               ; preds = %24, %20
  %27 = getelementptr inbounds %struct.PropertyRNA, ptr %1, i64 0, i32 9
  %28 = load i32, ptr %27, align 8, !tbaa !165
  switch i32 %28, label %133 [
    i32 0, label %29
    i32 1, label %44
    i32 4, label %59
    i32 2, label %112
    i32 3, label %127
  ]

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.BoolPropertyRNA, ptr %1, i64 0, i32 10
  %31 = load ptr, ptr %30, align 8, !tbaa !168
  %32 = icmp eq ptr %31, null
  br i1 %32, label %133, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr @MEM_callocN, align 8, !tbaa !65
  %35 = getelementptr inbounds %struct.PropertyRNA, ptr %1, i64 0, i32 14
  %36 = load i32, ptr %35, align 8, !tbaa !241
  %37 = zext i32 %36 to i64
  %38 = shl nuw nsw i64 %37, 2
  %39 = tail call ptr %34(i64 noundef %38, ptr noundef nonnull @.str.259) #25
  %40 = load ptr, ptr %30, align 8, !tbaa !168
  %41 = load i32, ptr %35, align 8, !tbaa !241
  %42 = zext i32 %41 to i64
  %43 = shl nuw nsw i64 %42, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %39, ptr align 4 %40, i64 %43, i1 false)
  store ptr %39, ptr %30, align 8, !tbaa !168
  br label %133

44:                                               ; preds = %26
  %45 = getelementptr inbounds %struct.IntPropertyRNA, ptr %1, i64 0, i32 17
  %46 = load ptr, ptr %45, align 8, !tbaa !170
  %47 = icmp eq ptr %46, null
  br i1 %47, label %133, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr @MEM_callocN, align 8, !tbaa !65
  %50 = getelementptr inbounds %struct.PropertyRNA, ptr %1, i64 0, i32 14
  %51 = load i32, ptr %50, align 8, !tbaa !241
  %52 = zext i32 %51 to i64
  %53 = shl nuw nsw i64 %52, 2
  %54 = tail call ptr %49(i64 noundef %53, ptr noundef nonnull @.str.259) #25
  %55 = load ptr, ptr %45, align 8, !tbaa !170
  %56 = load i32, ptr %50, align 8, !tbaa !241
  %57 = zext i32 %56 to i64
  %58 = shl nuw nsw i64 %57, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %54, ptr align 4 %55, i64 %58, i1 false)
  store ptr %54, ptr %45, align 8, !tbaa !170
  br label %133

59:                                               ; preds = %26
  %60 = getelementptr inbounds %struct.EnumPropertyRNA, ptr %1, i64 0, i32 7
  %61 = load ptr, ptr %60, align 8, !tbaa !175
  %62 = icmp eq ptr %61, null
  br i1 %62, label %133, label %63

63:                                               ; preds = %59
  %64 = load ptr, ptr @MEM_callocN, align 8, !tbaa !65
  %65 = getelementptr inbounds %struct.EnumPropertyRNA, ptr %1, i64 0, i32 8
  %66 = load i32, ptr %65, align 8, !tbaa !166
  %67 = add nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = mul nsw i64 %68, 40
  %70 = tail call ptr %64(i64 noundef %69, ptr noundef nonnull @.str.259) #25
  %71 = load ptr, ptr %60, align 8, !tbaa !175
  %72 = load i32, ptr %65, align 8, !tbaa !166
  %73 = add nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = mul nsw i64 %74, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %70, ptr align 8 %71, i64 %75, i1 false)
  store ptr %70, ptr %60, align 8, !tbaa !175
  %76 = load i32, ptr %65, align 8, !tbaa !166
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %133

78:                                               ; preds = %63, %106
  %79 = phi ptr [ %107, %106 ], [ %70, %63 ]
  %80 = phi i64 [ %108, %106 ], [ 0, %63 ]
  %81 = getelementptr inbounds %struct.EnumPropertyItem, ptr %79, i64 %80, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !176
  %83 = icmp eq ptr %82, null
  br i1 %83, label %88, label %84

84:                                               ; preds = %78
  %85 = tail call ptr @BLI_strdup(ptr noundef nonnull %82) #25
  %86 = load ptr, ptr %60, align 8, !tbaa !175
  %87 = getelementptr inbounds %struct.EnumPropertyItem, ptr %86, i64 %80, i32 1
  store ptr %85, ptr %87, align 8, !tbaa !176
  br label %88

88:                                               ; preds = %84, %78
  %89 = phi ptr [ %86, %84 ], [ %79, %78 ]
  %90 = getelementptr inbounds %struct.EnumPropertyItem, ptr %89, i64 %80, i32 3
  %91 = load ptr, ptr %90, align 8, !tbaa !178
  %92 = icmp eq ptr %91, null
  br i1 %92, label %97, label %93

93:                                               ; preds = %88
  %94 = tail call ptr @BLI_strdup(ptr noundef nonnull %91) #25
  %95 = load ptr, ptr %60, align 8, !tbaa !175
  %96 = getelementptr inbounds %struct.EnumPropertyItem, ptr %95, i64 %80, i32 3
  store ptr %94, ptr %96, align 8, !tbaa !178
  br label %97

97:                                               ; preds = %93, %88
  %98 = phi ptr [ %95, %93 ], [ %89, %88 ]
  %99 = getelementptr inbounds %struct.EnumPropertyItem, ptr %98, i64 %80, i32 4
  %100 = load ptr, ptr %99, align 8, !tbaa !179
  %101 = icmp eq ptr %100, null
  br i1 %101, label %106, label %102

102:                                              ; preds = %97
  %103 = tail call ptr @BLI_strdup(ptr noundef nonnull %100) #25
  %104 = load ptr, ptr %60, align 8, !tbaa !175
  %105 = getelementptr inbounds %struct.EnumPropertyItem, ptr %104, i64 %80, i32 4
  store ptr %103, ptr %105, align 8, !tbaa !179
  br label %106

106:                                              ; preds = %97, %102
  %107 = phi ptr [ %98, %97 ], [ %104, %102 ]
  %108 = add nuw nsw i64 %80, 1
  %109 = load i32, ptr %65, align 8, !tbaa !166
  %110 = sext i32 %109 to i64
  %111 = icmp slt i64 %108, %110
  br i1 %111, label %78, label %133, !llvm.loop !327

112:                                              ; preds = %26
  %113 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %1, i64 0, i32 18
  %114 = load ptr, ptr %113, align 8, !tbaa !172
  %115 = icmp eq ptr %114, null
  br i1 %115, label %133, label %116

116:                                              ; preds = %112
  %117 = load ptr, ptr @MEM_callocN, align 8, !tbaa !65
  %118 = getelementptr inbounds %struct.PropertyRNA, ptr %1, i64 0, i32 14
  %119 = load i32, ptr %118, align 8, !tbaa !241
  %120 = zext i32 %119 to i64
  %121 = shl nuw nsw i64 %120, 2
  %122 = tail call ptr %117(i64 noundef %121, ptr noundef nonnull @.str.259) #25
  %123 = load ptr, ptr %113, align 8, !tbaa !172
  %124 = load i32, ptr %118, align 8, !tbaa !241
  %125 = zext i32 %124 to i64
  %126 = shl nuw nsw i64 %125, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %122, ptr align 4 %123, i64 %126, i1 false)
  store ptr %122, ptr %113, align 8, !tbaa !172
  br label %133

127:                                              ; preds = %26
  %128 = getelementptr inbounds %struct.StringPropertyRNA, ptr %1, i64 0, i32 8
  %129 = load ptr, ptr %128, align 8, !tbaa !181
  %130 = icmp eq ptr %129, null
  br i1 %130, label %133, label %131

131:                                              ; preds = %127
  %132 = tail call ptr @BLI_strdup(ptr noundef nonnull %129) #25
  store ptr %132, ptr %128, align 8, !tbaa !181
  br label %133

133:                                              ; preds = %106, %63, %127, %131, %112, %116, %59, %44, %48, %29, %33, %26
  %134 = getelementptr inbounds %struct.PropertyRNA, ptr %1, i64 0, i32 4
  %135 = load i32, ptr %134, align 8, !tbaa !51
  %136 = or i32 %135, 32768
  store i32 %136, ptr %134, align 8, !tbaa !51
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BLI_ghash_reinsert(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @RNA_def_property_free_identifier(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ContainerRNA, ptr %0, i64 0, i32 3
  br label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %3, %2 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !65
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.PropertyRNA, ptr %6, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !130
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) %1) #26
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %4, !llvm.loop !328

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.PropertyRNA, ptr %6, i64 0, i32 4
  %15 = load i32, ptr %14, align 8, !tbaa !51
  %16 = and i32 %15, 512
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  tail call fastcc void @rna_def_property_free(ptr noundef %0, ptr noundef nonnull %6) #27
  br label %19

19:                                               ; preds = %4, %13, %18
  %20 = phi i32 [ 1, %18 ], [ -1, %13 ], [ 0, %4 ]
  ret i32 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_def_property_free(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !329 {
  %3 = getelementptr inbounds %struct.PropertyRNA, ptr %1, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !51
  %5 = and i32 %4, 512
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ContainerRNA, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !216
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.PropertyRNA, ptr %1, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !130
  %14 = tail call zeroext i8 @BLI_ghash_remove(ptr noundef nonnull %9, ptr noundef %13, ptr noundef null, ptr noundef null) #25
  br label %15

15:                                               ; preds = %11, %7
  tail call void @RNA_def_property_free_pointers(ptr noundef nonnull %1) #27
  %16 = getelementptr inbounds %struct.ContainerRNA, ptr %0, i64 0, i32 3
  tail call void @rna_freelinkN(ptr noundef nonnull %16, ptr noundef nonnull %1) #27
  br label %18

17:                                               ; preds = %2
  tail call void @RNA_def_property_free_pointers(ptr noundef nonnull %1) #27
  br label %18

18:                                               ; preds = %17, %15
  ret void
}

; Function Attrs: optsize
declare void @rna_iterator_array_begin(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @rna_iterator_array_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_library_filepath_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @id_copy(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_material_append_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_main_add_notifier(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_material_pop_id(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_material_clear_id(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BKE_vfont_is_builtin(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @rna_member_cmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #20 !PGOFuncName !330 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi ptr [ %0, %2 ], [ %7, %3 ]
  %5 = load i8, ptr %4, align 1, !tbaa !148
  %6 = icmp eq i8 %5, 42
  %7 = getelementptr inbounds i8, ptr %4, i64 1
  br i1 %6, label %3, label %8, !llvm.loop !331

8:                                                ; preds = %3, %8
  %9 = phi ptr [ %12, %8 ], [ %1, %3 ]
  %10 = load i8, ptr %9, align 1, !tbaa !148
  %11 = icmp eq i8 %10, 42
  %12 = getelementptr inbounds i8, ptr %9, i64 1
  br i1 %11, label %8, label %13, !llvm.loop !332

13:                                               ; preds = %8, %21
  %14 = phi i8 [ %24, %21 ], [ %5, %8 ]
  %15 = phi i64 [ %22, %21 ], [ 0, %8 ]
  %16 = getelementptr inbounds i8, ptr %9, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !148
  switch i8 %14, label %19 [
    i8 91, label %18
    i8 0, label %25
  ]

18:                                               ; preds = %13
  switch i8 %17, label %19 [
    i8 0, label %35
    i8 91, label %35
  ]

19:                                               ; preds = %13, %18
  %20 = icmp eq i8 %14, %17
  br i1 %20, label %21, label %35

21:                                               ; preds = %19
  %22 = add nuw i64 %15, 1
  %23 = getelementptr inbounds i8, ptr %4, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !148
  br label %13

25:                                               ; preds = %13
  switch i8 %17, label %32 [
    i8 46, label %35
    i8 45, label %26
  ]

26:                                               ; preds = %25
  %27 = add i64 %15, 1
  %28 = and i64 %27, 4294967295
  %29 = getelementptr inbounds i8, ptr %9, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !148
  %31 = icmp eq i8 %30, 62
  br i1 %31, label %35, label %32

32:                                               ; preds = %25, %26
  %33 = icmp eq i8 %17, 0
  %34 = zext i1 %33 to i32
  br label %35

35:                                               ; preds = %19, %18, %18, %25, %26, %32
  %36 = phi i32 [ %34, %32 ], [ 2, %25 ], [ 3, %26 ], [ 0, %19 ], [ 1, %18 ], [ 1, %18 ]
  ret i32 %36
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @DNA_elem_array_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BLI_ghash_remove(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr, i32) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #24

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree noinline nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree nounwind willreturn memory(argmem: read) }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #25 = { nounwind optsize }
attributes #26 = { nounwind optsize willreturn memory(read) }
attributes #27 = { optsize }
attributes #28 = { nounwind }
attributes #29 = { cold optsize }
attributes #30 = { nounwind optsize willreturn memory(none) }

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
!52 = distinct !{!52, !53}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!46, !37, i64 184}
!55 = !{!56, !37, i64 0}
!56 = !{!"FunctionRNA", !47, i64 0, !37, i64 40, !44, i64 48, !37, i64 56, !37, i64 64, !37, i64 72}
!57 = !{!56, !37, i64 24}
!58 = distinct !{!58, !53}
!59 = !{!56, !44, i64 48}
!60 = distinct !{!60, !53}
!61 = !{!46, !44, i64 64}
!62 = !{!63, !44, i64 56}
!63 = !{!"BlenderDefRNA", !37, i64 0, !48, i64 8, !48, i64 24, !37, i64 40, !44, i64 48, !44, i64 52, !44, i64 56, !44, i64 60, !44, i64 64}
!64 = !{i32 0, i32 2}
!65 = !{!37, !37, i64 0}
!66 = !{!63, !44, i64 48}
!67 = !{!63, !37, i64 40}
!68 = !{!46, !37, i64 48}
!69 = !{!46, !37, i64 120}
!70 = !{!46, !37, i64 40}
!71 = !{!46, !37, i64 72}
!72 = !{!46, !37, i64 80}
!73 = !{!46, !37, i64 88}
!74 = !{!46, !44, i64 96}
!75 = !{!76, !37, i64 40}
!76 = !{!"StructDefRNA", !77, i64 0, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !48, i64 80}
!77 = !{!"ContainerDefRNA", !37, i64 0, !37, i64 8, !37, i64 16, !48, i64 24}
!78 = !{!76, !37, i64 56}
!79 = !{!76, !37, i64 64}
!80 = !{!81, !37, i64 168}
!81 = !{!"CollectionPropertyRNA", !50, i64 0, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !37, i64 208, !37, i64 216, !37, i64 224, !37, i64 232}
!82 = !{!81, !37, i64 176}
!83 = !{!81, !37, i64 192}
!84 = !{!81, !37, i64 232}
!85 = !{!86, !37, i64 168}
!86 = !{!"PointerPropertyRNA", !50, i64 0, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200}
!87 = !{!86, !37, i64 200}
!88 = !{!35, !37, i64 8}
!89 = !{!35, !37, i64 0}
!90 = !{i64 0, i64 8, !65, i64 8, i64 8, !65, i64 16, i64 8, !65}
!91 = !{!92, !37, i64 48}
!92 = !{!"CollectionPropertyIterator", !35, i64 0, !35, i64 24, !37, i64 48, !38, i64 56, !44, i64 96, !44, i64 100, !35, i64 104, !44, i64 128}
!93 = !{!92, !44, i64 128}
!94 = !{!"rna_ID_gen.c:UnknownType_rna_properties_get"}
!95 = !{!"rna_ID_gen.c:AnyType_rna_properties_get"}
!96 = !{!"rna_ID_gen.c:ID_rna_properties_get"}
!97 = !{!43, !44, i64 100}
!98 = !{!43, !37, i64 24}
!99 = !{!"rna_ID_gen.c:PropertyGroupItem_rna_properties_get"}
!100 = !{!"rna_ID_gen.c:rna_IDPArray_begin"}
!101 = !{!102, !37, i64 88}
!102 = !{!"IDProperty", !37, i64 0, !37, i64 8, !38, i64 16, !38, i64 17, !41, i64 18, !38, i64 20, !44, i64 84, !103, i64 88, !44, i64 120, !44, i64 124}
!103 = !{!"IDPropertyData", !37, i64 0, !48, i64 8, !44, i64 24, !44, i64 28}
!104 = !{!102, !44, i64 120}
!105 = !{!"rna_ID_gen.c:PropertyGroupItem_idp_array_get"}
!106 = !{!"rna_ID_gen.c:PropertyGroup_rna_properties_get"}
!107 = !{!"rna_ID_gen.c:IDMaterials_rna_properties_get"}
!108 = !{!"rna_ID_gen.c:rna_Library_filepath_set"}
!109 = !{!110, !37, i64 2184}
!110 = !{!"Library", !43, i64 0, !37, i64 120, !37, i64 128, !38, i64 136, !38, i64 1160, !37, i64 2184, !37, i64 2192}
!111 = !{!110, !37, i64 2192}
!112 = !{!"rna_ID_gen.c:rna_ID_copy"}
!113 = !{!114, !37, i64 0}
!114 = !{!"ParameterList", !37, i64 0, !37, i64 8, !44, i64 16, !44, i64 20, !44, i64 24}
!115 = !{!"rna_ID_gen.c:rna_ID_user_clear"}
!116 = !{!"rna_ID_gen.c:rna_ID_update_tag"}
!117 = !{!44, !44, i64 0}
!118 = !{!"rna_ID_gen.c:rna_IDMaterials_append_id"}
!119 = !{!"rna_ID_gen.c:rna_IDMaterials_pop_id"}
!120 = !{!"rna_ID_gen.c:rna_IDMaterials_clear_id"}
!121 = !{!"rna_ID_gen.c:rna_ID_name_editable"}
!122 = !{!"rna_ID_gen.c:rna_IDPArray_length"}
!123 = !{!124, !37, i64 0}
!124 = !{!"Link", !37, i64 0, !37, i64 8}
!125 = !{!48, !37, i64 8}
!126 = !{!124, !37, i64 8}
!127 = !{!48, !37, i64 0}
!128 = !{!129, !37, i64 24}
!129 = !{!"PropertyDefRNA", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !44, i64 72, !44, i64 76, !37, i64 80, !37, i64 88, !44, i64 96, !44, i64 100, !44, i64 104, !44, i64 108}
!130 = !{!50, !37, i64 24}
!131 = distinct !{!131, !53}
!132 = !{!"rna_ID_gen.c:rna_remlink"}
!133 = distinct !{!133, !53}
!134 = distinct !{!134, !53}
!135 = distinct !{!135, !53}
!136 = distinct !{!136, !53}
!137 = distinct !{!137, !53}
!138 = !{!139, !37, i64 40}
!139 = !{!"FunctionDefRNA", !77, i64 0, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64}
!140 = distinct !{!140, !53}
!141 = distinct !{!141, !53}
!142 = distinct !{!142, !53}
!143 = distinct !{!143, !53}
!144 = distinct !{!144, !53}
!145 = distinct !{!145, !53}
!146 = distinct !{!146, !53}
!147 = distinct !{!147, !53}
!148 = !{!38, !38, i64 0}
!149 = distinct !{!149, !53}
!150 = distinct !{!150, !53}
!151 = distinct !{!151, !53}
!152 = !{!63, !37, i64 0}
!153 = !{!154, !37, i64 16}
!154 = !{!"AllocDefRNA", !37, i64 0, !37, i64 8, !37, i64 16}
!155 = distinct !{!155, !53}
!156 = distinct !{!156, !53}
!157 = distinct !{!157, !53}
!158 = !{!63, !44, i64 60}
!159 = !{!160, !37, i64 24}
!160 = !{!"ExtensionRNA", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24}
!161 = !{!160, !37, i64 0}
!162 = !{!50, !37, i64 40}
!163 = !{!50, !37, i64 48}
!164 = !{!50, !37, i64 160}
!165 = !{!50, !44, i64 72}
!166 = !{!167, !44, i64 224}
!167 = !{!"EnumPropertyRNA", !50, i64 0, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !37, i64 208, !37, i64 216, !44, i64 224, !44, i64 228}
!168 = !{!169, !37, i64 240}
!169 = !{!"BoolPropertyRNA", !50, i64 0, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !37, i64 208, !37, i64 216, !37, i64 224, !44, i64 232, !37, i64 240}
!170 = !{!171, !37, i64 272}
!171 = !{!"IntPropertyRNA", !50, i64 0, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !37, i64 208, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !44, i64 248, !44, i64 252, !44, i64 256, !44, i64 260, !44, i64 264, !44, i64 268, !37, i64 272}
!172 = !{!173, !37, i64 280}
!173 = !{!"FloatPropertyRNA", !50, i64 0, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !37, i64 208, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !174, i64 248, !174, i64 252, !174, i64 256, !174, i64 260, !174, i64 264, !44, i64 268, !174, i64 272, !37, i64 280}
!174 = !{!"float", !38, i64 0}
!175 = !{!167, !37, i64 216}
!176 = !{!177, !37, i64 8}
!177 = !{!"EnumPropertyItem", !44, i64 0, !37, i64 8, !44, i64 16, !37, i64 24, !37, i64 32}
!178 = !{!177, !37, i64 24}
!179 = !{!177, !37, i64 32}
!180 = distinct !{!180, !53}
!181 = !{!182, !37, i64 224}
!182 = !{!"StringPropertyRNA", !50, i64 0, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !37, i64 208, !44, i64 216, !37, i64 224}
!183 = !{!56, !37, i64 40}
!184 = !{!56, !37, i64 56}
!185 = distinct !{!185, !53}
!186 = distinct !{!186, !53}
!187 = !{!188, !37, i64 0}
!188 = !{!"BlenderRNA", !48, i64 0}
!189 = !{!46, !37, i64 0}
!190 = distinct !{!190, !53}
!191 = !{!"rna_ID_gen.c:rna_validate_identifier"}
!192 = distinct !{!192, !53}
!193 = distinct !{!193, !53}
!194 = distinct !{!194, !53}
!195 = !{!"rna_ID_gen.c:rna_find_def_struct"}
!196 = distinct !{!196, !53}
!197 = !{i64 0, i64 289}
!198 = !{!171, !44, i64 256}
!199 = !{!171, !44, i64 260}
!200 = !{!171, !44, i64 248}
!201 = !{!171, !44, i64 252}
!202 = !{!171, !44, i64 264}
!203 = !{!173, !174, i64 256}
!204 = !{!173, !174, i64 260}
!205 = !{!173, !174, i64 248}
!206 = !{!174, !174, i64 0}
!207 = !{!173, !174, i64 252}
!208 = !{!173, !174, i64 264}
!209 = !{!173, !44, i64 268}
!210 = !{!129, !37, i64 16}
!211 = !{!50, !44, i64 16}
!212 = !{!50, !44, i64 76}
!213 = !{!50, !37, i64 64}
!214 = !{!50, !44, i64 148}
!215 = !{!63, !44, i64 52}
!216 = !{!47, !37, i64 16}
!217 = !{!81, !37, i64 184}
!218 = !{!81, !37, i64 200}
!219 = !{!81, !37, i64 208}
!220 = !{!81, !37, i64 216}
!221 = !{!81, !37, i64 224}
!222 = !{!86, !37, i64 176}
!223 = !{!86, !37, i64 184}
!224 = !{!86, !37, i64 192}
!225 = distinct !{!225, !53}
!226 = !{!76, !37, i64 72}
!227 = !{!46, !37, i64 104}
!228 = distinct !{!228, !53}
!229 = !{!46, !37, i64 128}
!230 = !{!46, !37, i64 136}
!231 = !{!46, !37, i64 176}
!232 = !{!46, !37, i64 152}
!233 = !{!46, !37, i64 160}
!234 = !{!46, !37, i64 168}
!235 = !{!46, !37, i64 144}
!236 = !{!"rna_ID_gen.c:rna_find_container_def"}
!237 = !{!"rna_ID_gen.c:rna_property_type_sizeof"}
!238 = !{!129, !37, i64 64}
!239 = !{!129, !44, i64 100}
!240 = !{!50, !44, i64 88}
!241 = !{!50, !44, i64 104}
!242 = !{!182, !44, i64 216}
!243 = !{!129, !44, i64 96}
!244 = !{!129, !37, i64 80}
!245 = !{!129, !37, i64 88}
!246 = !{!129, !44, i64 76}
!247 = distinct !{!247, !53}
!248 = !{!50, !44, i64 56}
!249 = !{!177, !44, i64 0}
!250 = !{!167, !44, i64 228}
!251 = distinct !{!251, !53}
!252 = distinct !{!252, !53}
!253 = !{!169, !44, i64 232}
!254 = !{!171, !44, i64 268}
!255 = !{!173, !174, i64 272}
!256 = distinct !{!256, !53}
!257 = distinct !{!257, !53}
!258 = !{!"rna_ID_gen.c:rna_def_property_sdna"}
!259 = !{!129, !37, i64 32}
!260 = !{!129, !37, i64 56}
!261 = !{!129, !44, i64 72}
!262 = !{!263, !44, i64 16}
!263 = !{!"DNAStructMember", !37, i64 0, !37, i64 8, !44, i64 16, !44, i64 20}
!264 = !{!263, !37, i64 0}
!265 = !{!263, !44, i64 20}
!266 = !{!129, !44, i64 104}
!267 = !{!129, !44, i64 108}
!268 = !{!"rna_ID_gen.c:rna_find_sdna_member"}
!269 = !{!270, !37, i64 56}
!270 = !{!"SDNA", !37, i64 0, !44, i64 8, !44, i64 12, !37, i64 16, !44, i64 24, !44, i64 28, !37, i64 32, !37, i64 40, !44, i64 48, !37, i64 56, !37, i64 64, !44, i64 72}
!271 = !{!270, !37, i64 16}
!272 = !{i32 0, i32 4}
!273 = !{!270, !37, i64 32}
!274 = !{!263, !37, i64 8}
!275 = distinct !{!275, !53}
!276 = distinct !{!276, !53}
!277 = !{!50, !37, i64 128}
!278 = !{!50, !37, i64 136}
!279 = !{!50, !44, i64 120}
!280 = !{!50, !37, i64 112}
!281 = !{!50, !37, i64 80}
!282 = !{!169, !37, i64 184}
!283 = !{!169, !37, i64 192}
!284 = !{!169, !37, i64 168}
!285 = !{!169, !37, i64 176}
!286 = !{!169, !37, i64 200}
!287 = !{!169, !37, i64 208}
!288 = !{!169, !37, i64 216}
!289 = !{!169, !37, i64 224}
!290 = !{!171, !37, i64 184}
!291 = !{!171, !37, i64 168}
!292 = !{!171, !37, i64 200}
!293 = !{!171, !37, i64 208}
!294 = !{!171, !37, i64 216}
!295 = !{!171, !37, i64 240}
!296 = !{!171, !37, i64 224}
!297 = !{!171, !37, i64 232}
!298 = !{!173, !37, i64 184}
!299 = !{!173, !37, i64 168}
!300 = !{!173, !37, i64 200}
!301 = !{!173, !37, i64 208}
!302 = !{!173, !37, i64 216}
!303 = !{!173, !37, i64 240}
!304 = !{!173, !37, i64 224}
!305 = !{!173, !37, i64 232}
!306 = !{!167, !37, i64 168}
!307 = !{!167, !37, i64 176}
!308 = !{!167, !37, i64 184}
!309 = !{!167, !37, i64 192}
!310 = !{!167, !37, i64 200}
!311 = !{!167, !37, i64 208}
!312 = !{!182, !37, i64 168}
!313 = !{!182, !37, i64 176}
!314 = !{!182, !37, i64 184}
!315 = !{!182, !37, i64 192}
!316 = !{!182, !37, i64 200}
!317 = !{!182, !37, i64 208}
!318 = !{!50, !37, i64 152}
!319 = !{!139, !37, i64 56}
!320 = !{!"rna_ID_gen.c:rna_def_function"}
!321 = !{!56, !37, i64 64}
!322 = !{!56, !37, i64 72}
!323 = !{i32 0, i32 32}
!324 = !{i64 0, i64 4, !117, i64 8, i64 8, !65, i64 16, i64 4, !117, i64 24, i64 8, !65, i64 32, i64 8, !65}
!325 = distinct !{!325, !53}
!326 = distinct !{!326, !53}
!327 = distinct !{!327, !53}
!328 = distinct !{!328, !53}
!329 = !{!"rna_ID_gen.c:rna_def_property_free"}
!330 = !{!"rna_ID_gen.c:rna_member_cmp"}
!331 = distinct !{!331, !53}
!332 = distinct !{!332, !53}
