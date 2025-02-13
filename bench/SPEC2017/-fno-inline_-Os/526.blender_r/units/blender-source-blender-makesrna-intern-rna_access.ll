; ModuleID = 'blender/source/blender/makesrna/intern/rna_access.c'
source_filename = "blender/source/blender/makesrna/intern/rna_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.BlenderRNA = type { %struct.ListBase }
%struct.ListBase = type { ptr, ptr }
%struct.StructRNA = type { %struct.ContainerRNA, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase }
%struct.ContainerRNA = type { ptr, ptr, ptr, %struct.ListBase }
%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.IntPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr }
%struct.PropertyRNA = type { ptr, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, i32, ptr, i32, [3 x i32], i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr }
%struct.FloatPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, float, float, float, float, i32, float, ptr }
%struct.CollectionPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.StringPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.PointerPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr }
%struct.tRnaUpdateCacheElem = type { ptr, ptr, %struct.PointerRNA, %struct.ListBase }
%struct.IDProperty = type { ptr, ptr, i8, i8, i16, [64 x i8], i32, %struct.IDPropertyData, i32, i32 }
%struct.IDPropertyData = type { ptr, %struct.ListBase, i32, i32 }
%struct.CollectionPropertyIterator = type { %struct.PointerRNA, %struct.PointerRNA, ptr, %union.anon, i32, i32, %struct.PointerRNA, i32 }
%union.anon = type { %struct.ArrayIterator }
%struct.ArrayIterator = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.EnumPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.LinkData = type { ptr, ptr, ptr }
%struct.BoolPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%union.IDPropertyTemplate = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, i16, i8 }
%struct.anon.1 = type { i16, i16 }
%struct.RawArray = type { ptr, i32, i32, i32 }
%struct.PropertyElemRNA = type { ptr, ptr, %struct.PointerRNA, ptr, i32 }
%struct.FunctionRNA = type { %struct.ContainerRNA, ptr, i32, ptr, ptr, ptr }
%struct.ParameterList = type { ptr, ptr, i32, i32, i32 }
%struct.ParameterDynAlloc = type { i64, ptr }
%struct.ParameterIterator = type { ptr, ptr, i32, i32, ptr, i32 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.CollectionPointerLink = type { ptr, ptr, %struct.PointerRNA }
%struct.IDP_Chain = type { ptr, ptr, i32 }

@PointerRNA_NULL = dso_local local_unnamed_addr constant %struct.PointerRNA zeroinitializer, align 8
@BLENDER_RNA = external global %struct.BlenderRNA, align 8
@.str = private unnamed_addr constant [12 x i8] c"RNA_init gh\00", align 1
@RNA_BlendData = external global %struct.StructRNA, align 8
@RNA_BlenderRNA = external global %struct.StructRNA, align 8
@arraytypemap = internal unnamed_addr constant [10 x ptr] [ptr null, ptr @rna_PropertyGroupItem_int_array, ptr @rna_PropertyGroupItem_float_array, ptr null, ptr null, ptr null, ptr @rna_PropertyGroupItem_collection, ptr null, ptr @rna_PropertyGroupItem_double_array, ptr null], align 16
@typemap = internal unnamed_addr constant [10 x ptr] [ptr @rna_PropertyGroupItem_string, ptr @rna_PropertyGroupItem_int, ptr @rna_PropertyGroupItem_float, ptr null, ptr null, ptr null, ptr @rna_PropertyGroupItem_group, ptr null, ptr @rna_PropertyGroupItem_double, ptr @rna_PropertyGroupItem_idp_array], align 16
@RNA_AnyType = external global %struct.StructRNA, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"XYZW\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"WXYZ\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"RGBA\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"soft_min\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"soft_max\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"step\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"precision\00", align 1
@RNA_UnknownType = external global %struct.StructRNA, align 8
@.str.10 = private unnamed_addr constant [35 x i8] c"%s %s: is not a pointer property.\0A\00", align 1
@__func__.RNA_property_pointer_poll = private unnamed_addr constant [26 x i8] c"RNA_property_pointer_poll\00", align 1
@DummyRNA_NULL_items = dso_local local_unnamed_addr global [1 x %struct.EnumPropertyItem] zeroinitializer, align 16
@.str.11 = private unnamed_addr constant [8 x i8] c"DEFAULT\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"Default\00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@DummyRNA_DEFAULT_items = dso_local local_unnamed_addr global [2 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.11, i32 0, ptr @.str.12, ptr @.str.13 }, %struct.EnumPropertyItem zeroinitializer], align 16
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.14 = private unnamed_addr constant [17 x i8] c"enum_gettext_all\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@rna_updates_cache = internal global %struct.ListBase zeroinitializer, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.15 = private unnamed_addr constant [20 x i8] c"tRnaUpdateCacheElem\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"RNA_property_boolean_get_index\00", align 1
@.str.17 = private unnamed_addr constant [39 x i8] c"RNA_property_boolean_get_default_index\00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"RNA_property_int_get_array_range\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"RNA_property_int_get_index\00", align 1
@.str.20 = private unnamed_addr constant [35 x i8] c"RNA_property_int_get_default_index\00", align 1
@.str.21 = private unnamed_addr constant [35 x i8] c"RNA_property_float_get_array_range\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"RNA_property_float_get_index\00", align 1
@.str.23 = private unnamed_addr constant [37 x i8] c"RNA_property_float_get_default_index\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"RNA_string_get_alloc\00", align 1
@.str.25 = private unnamed_addr constant [45 x i8] c"%s %s.%s: only supported for id properties.\0A\00", align 1
@__func__.RNA_property_pointer_add = private unnamed_addr constant [25 x i8] c"RNA_property_pointer_add\00", align 1
@__func__.RNA_property_pointer_remove = private unnamed_addr constant [28 x i8] c"RNA_property_pointer_remove\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@RNA_PropertyGroup = external global %struct.StructRNA, align 8
@.str.32 = private unnamed_addr constant [6 x i8] c"%s.%s\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"%s[\22%s\22]\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"[\22%s\22]\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c"bpy.data.%s[\22%s\22]\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"%s.%s[%d]\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"%s[%d]\00", align 1
@.str.39 = private unnamed_addr constant [32 x i8] c"%s: %s.%s has no enum id '%s'.\0A\00", align 1
@__func__.RNA_enum_set_identifier = private unnamed_addr constant [24 x i8] c"RNA_enum_set_identifier\00", align 1
@.str.40 = private unnamed_addr constant [30 x i8] c"%s: %s.%s item %s not found.\0A\00", align 1
@__func__.RNA_enum_is_equal = private unnamed_addr constant [18 x i8] c"RNA_enum_is_equal\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"rna_type\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"\22%s\22:%s\00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c", %s\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"%s=%s\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c", %s=%s\00", align 1
@RNA_Function = external global %struct.StructRNA, align 8
@.str.50 = private unnamed_addr constant [11 x i8] c"parameters\00", align 1
@.str.51 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.52 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.53 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c", %d\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"%g\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c", %g\00", align 1
@.str.57 = private unnamed_addr constant [23 x i8] c"RNA_property_as_string\00", align 1
@.str.58 = private unnamed_addr constant [27 x i8] c"RNA_property_as_string esc\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"\22%s\22\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"'%s'\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c", '%s'\00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"set()\00", align 1
@.str.63 = private unnamed_addr constant [17 x i8] c"'<UNKNOWN ENUM>'\00", align 1
@.str.64 = private unnamed_addr constant [17 x i8] c"'<UNKNOWN TYPE>'\00", align 1
@.str.65 = private unnamed_addr constant [26 x i8] c"RNA_parameter_list_create\00", align 1
@__func__.RNA_parameter_set = private unnamed_addr constant [18 x i8] c"RNA_parameter_set\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.66 = private unnamed_addr constant [38 x i8] c"%s.%s: missing required parameter %s\0A\00", align 1
@.str.67 = private unnamed_addr constant [92 x i8] c"%s.%s: for parameter %s, was expecting an array of %i elements, passed %i elements instead\0A\00", align 1
@.str.68 = private unnamed_addr constant [99 x i8] c"%s.%s: for return parameter %s, was expecting an array of %i elements, passed %i elements instead\0A\00", align 1
@.str.69 = private unnamed_addr constant [25 x i8] c"reset_defaults - boolean\00", align 1
@.str.70 = private unnamed_addr constant [21 x i8] c"reset_defaults - int\00", align 1
@.str.71 = private unnamed_addr constant [23 x i8] c"reset_defaults - float\00", align 1
@.str.72 = private unnamed_addr constant [15 x i8] c"copy - boolean\00", align 1
@.str.73 = private unnamed_addr constant [11 x i8] c"copy - int\00", align 1
@.str.74 = private unnamed_addr constant [13 x i8] c"copy - float\00", align 1
@.str.75 = private unnamed_addr constant [11 x i8] c"RNA equals\00", align 1
@rna_PropertyGroupItem_int_array = external global %struct.IntPropertyRNA, align 8
@rna_PropertyGroupItem_float_array = external global %struct.FloatPropertyRNA, align 8
@rna_PropertyGroupItem_collection = external global %struct.CollectionPropertyRNA, align 8
@rna_PropertyGroupItem_double_array = external global %struct.FloatPropertyRNA, align 8
@rna_PropertyGroupItem_string = external global %struct.StringPropertyRNA, align 8
@rna_PropertyGroupItem_int = external global %struct.IntPropertyRNA, align 8
@rna_PropertyGroupItem_float = external global %struct.FloatPropertyRNA, align 8
@rna_PropertyGroupItem_group = external global %struct.PointerPropertyRNA, align 8
@rna_PropertyGroupItem_double = external global %struct.FloatPropertyRNA, align 8
@rna_PropertyGroupItem_idp_array = external global %struct.CollectionPropertyRNA, align 8
@.str.76 = private unnamed_addr constant [12 x i8] c"description\00", align 1
@.str.77 = private unnamed_addr constant [8 x i8] c"_RNA_UI\00", align 1
@.str.78 = private unnamed_addr constant [49 x i8] c"Only boolean, int and float properties supported\00", align 1
@.str.79 = private unnamed_addr constant [44 x i8] c"Array length mismatch (expected %d, got %d)\00", align 1
@.str.80 = private unnamed_addr constant [30 x i8] c"Property named '%s' not found\00", align 1
@.str.81 = private unnamed_addr constant [46 x i8] c"Array length mismatch (got %d, expected more)\00", align 1
@.str.82 = private unnamed_addr constant [14 x i8] c"RNA tmparray\0A\00", align 1
@__func__.rna_path_parse = private unnamed_addr constant [15 x i8] c"rna_path_parse\00", align 1
@.str.83 = private unnamed_addr constant [15 x i8] c"rna_path_token\00", align 1
@.str.84 = private unnamed_addr constant [8 x i8] c".%s[%d]\00", align 1
@.str.85 = private unnamed_addr constant [4 x i8] c".%s\00", align 1
@.str.86 = private unnamed_addr constant [5 x i8] c"True\00", align 1
@.str.87 = private unnamed_addr constant [6 x i8] c"False\00", align 1
@.str.88 = private unnamed_addr constant [60 x i8] c"%s.%s: wrong type for parameter %s, a boolean was expected\0A\00", align 1
@.str.89 = private unnamed_addr constant [61 x i8] c"%s.%s: wrong type for parameter %s, an integer was expected\0A\00", align 1
@.str.90 = private unnamed_addr constant [58 x i8] c"%s.%s: wrong type for parameter %s, a float was expected\0A\00", align 1
@.str.91 = private unnamed_addr constant [59 x i8] c"%s.%s: wrong type for parameter %s, a string was expected\0A\00", align 1
@.str.92 = private unnamed_addr constant [58 x i8] c"%s.%s: wrong type for parameter %s, an enum was expected\0A\00", align 1
@.str.93 = private unnamed_addr constant [60 x i8] c"%s.%s: wrong type for parameter %s, an object was expected\0A\00", align 1
@.str.94 = private unnamed_addr constant [100 x i8] c"%s.%s: wrong type for parameter %s, an object of type %s was expected, passed an object of type %s\0A\00", align 1
@.str.95 = private unnamed_addr constant [63 x i8] c"%s.%s: wrong type for parameter %s, a collection was expected\0A\00", align 1
@.str.96 = private unnamed_addr constant [128 x i8] c"%s.%s: wrong type for parameter %s, a collection of objects of type %s was expected, passed a collection of objects of type %s\0A\00", align 1
@.str.97 = private unnamed_addr constant [23 x i8] c"CCollectionPointerLink\00", align 1
@.str.98 = private unnamed_addr constant [38 x i8] c"%s.%s: unknown type for parameter %s\0A\00", align 1
@.str.99 = private unnamed_addr constant [44 x i8] c"%s.%s: unknown array type for parameter %s\0A\00", align 1
@switch.table.RNA_property_array_item_index = private unnamed_addr constant [4 x i32] [i32 3, i32 0, i32 1, i32 2], align 4
@switch.table.RNA_raw_type_sizeof = private unnamed_addr constant [5 x i32] [i32 4, i32 2, i32 1, i32 8, i32 4], align 4
@switch.table.RNA_property_raw_type = private unnamed_addr constant [5 x i32] [i32 0, i32 0, i32 4, i32 0, i32 0], align 4
@switch.table.RNA_parameter_set = private unnamed_addr constant [4 x i64] [i64 4, i64 4, i64 4, i64 1], align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_init() local_unnamed_addr #0 {
  %1 = load ptr, ptr @BLENDER_RNA, align 8, !tbaa !34
  %2 = icmp eq ptr %1, null
  br i1 %2, label %29, label %3

3:                                                ; preds = %0, %26
  %4 = phi ptr [ %27, %26 ], [ %1, %0 ]
  %5 = getelementptr inbounds %struct.ContainerRNA, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !38
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %26

8:                                                ; preds = %3
  %9 = tail call ptr @BLI_ghash_str_new(ptr noundef nonnull @.str) #28
  store ptr %9, ptr %5, align 8, !tbaa !38
  %10 = getelementptr inbounds %struct.ContainerRNA, ptr %4, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %26, label %13

13:                                               ; preds = %8, %23
  %14 = phi ptr [ %24, %23 ], [ %11, %8 ]
  %15 = getelementptr inbounds %struct.PropertyRNA, ptr %14, i64 0, i32 4
  %16 = load i32, ptr %15, align 8, !tbaa !43
  %17 = and i32 %16, 128
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load ptr, ptr %5, align 8, !tbaa !38
  %21 = getelementptr inbounds %struct.PropertyRNA, ptr %14, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !45
  tail call void @BLI_ghash_insert(ptr noundef %20, ptr noundef %22, ptr noundef nonnull %14) #28
  br label %23

23:                                               ; preds = %13, %19
  %24 = load ptr, ptr %14, align 8, !tbaa !34
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %13, !llvm.loop !46

26:                                               ; preds = %23, %8, %3
  %27 = load ptr, ptr %4, align 8, !tbaa !34
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %3, !llvm.loop !48

29:                                               ; preds = %26, %0
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @BLI_ghash_str_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_exit() local_unnamed_addr #0 {
  tail call void @RNA_property_update_cache_free() #29
  %1 = load ptr, ptr @BLENDER_RNA, align 8, !tbaa !34
  %2 = icmp eq ptr %1, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %0, %9
  %4 = phi ptr [ %10, %9 ], [ %1, %0 ]
  %5 = getelementptr inbounds %struct.ContainerRNA, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !38
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @BLI_ghash_free(ptr noundef nonnull %6, ptr noundef null, ptr noundef null) #28
  store ptr null, ptr %5, align 8, !tbaa !38
  br label %9

9:                                                ; preds = %3, %8
  %10 = load ptr, ptr %4, align 8, !tbaa !34
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %3, !llvm.loop !49

12:                                               ; preds = %9, %0
  tail call void @RNA_free(ptr noundef nonnull @BLENDER_RNA) #28
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_property_update_cache_free() local_unnamed_addr #0 {
  %1 = load ptr, ptr @rna_updates_cache, align 8, !tbaa !50
  %2 = icmp eq ptr %1, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %0, %3
  %4 = phi ptr [ %5, %3 ], [ %1, %0 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !51
  %6 = getelementptr inbounds %struct.tRnaUpdateCacheElem, ptr %4, i64 0, i32 3
  tail call void @BLI_freelistN(ptr noundef nonnull %6) #28
  tail call void @BLI_freelinkN(ptr noundef nonnull @rna_updates_cache, ptr noundef nonnull %4) #28
  %7 = icmp eq ptr %5, null
  br i1 %7, label %8, label %3, !llvm.loop !55

8:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: optsize
declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @RNA_main_pointer_create(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #3 {
  store ptr null, ptr %1, align 8, !tbaa !56
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  store ptr @RNA_BlendData, ptr %3, align 8, !tbaa !57
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  store ptr %0, ptr %4, align 8, !tbaa !58
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_id_pointer_create(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = icmp eq ptr %0, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 16, i1 false)
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  store ptr %0, ptr %6, align 8, !tbaa !58
  %7 = call ptr @rna_ID_refine(ptr noundef nonnull %3) #28
  br label %8

8:                                                ; preds = %13, %5
  %9 = phi ptr [ %7, %5 ], [ %14, %13 ]
  %10 = getelementptr inbounds %struct.StructRNA, ptr %9, i64 0, i32 13
  %11 = load ptr, ptr %10, align 8, !tbaa !59
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  %14 = call ptr %11(ptr noundef nonnull %3) #28
  %15 = icmp eq ptr %14, %9
  br i1 %15, label %16, label %8, !llvm.loop !60

16:                                               ; preds = %13, %8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #30
  br label %17

17:                                               ; preds = %16, %2
  %18 = phi ptr [ %9, %16 ], [ null, %2 ]
  store ptr %0, ptr %1, align 8, !tbaa !56
  %19 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  store ptr %18, ptr %19, align 8, !tbaa !57
  %20 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  store ptr %0, ptr %20, align 8, !tbaa !58
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: optsize
declare ptr @rna_ID_refine(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_pointer_create(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  store ptr %0, ptr %3, align 8, !tbaa !56
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 1
  store ptr %1, ptr %5, align 8, !tbaa !57
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  store ptr %2, ptr %6, align 8, !tbaa !58
  %7 = icmp eq ptr %2, null
  %8 = icmp eq ptr %1, null
  %9 = or i1 %7, %8
  br i1 %9, label %21, label %12

10:                                               ; preds = %17
  store ptr %18, ptr %5, align 8, !tbaa !57
  %11 = icmp eq ptr %18, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %4, %10
  %13 = phi ptr [ %18, %10 ], [ %1, %4 ]
  %14 = getelementptr inbounds %struct.StructRNA, ptr %13, i64 0, i32 13
  %15 = load ptr, ptr %14, align 8, !tbaa !59
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  %18 = tail call ptr %15(ptr noundef nonnull %3) #28
  %19 = load ptr, ptr %5, align 8, !tbaa !57
  %20 = icmp eq ptr %18, %19
  br i1 %20, label %21, label %10

21:                                               ; preds = %10, %12, %17, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @RNA_blender_rna_pointer_create(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr null, ptr %0, align 8, !tbaa !56
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 1
  store ptr @RNA_BlenderRNA, ptr %2, align 8, !tbaa !57
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  store ptr @BLENDER_RNA, ptr %3, align 8, !tbaa !58
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @rna_pointer_inherit_refine(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %3, null
  br i1 %5, label %22, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  store ptr %3, ptr %7, align 8, !tbaa !58
  %8 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 1
  store ptr %2, ptr %8, align 8, !tbaa !57
  tail call fastcc void @rna_pointer_inherit_id(ptr noundef %2, ptr noundef %1, ptr noundef %0) #29
  %9 = load ptr, ptr %8, align 8, !tbaa !57
  %10 = getelementptr inbounds %struct.StructRNA, ptr %9, i64 0, i32 13
  %11 = load ptr, ptr %10, align 8, !tbaa !59
  %12 = icmp eq ptr %11, null
  br i1 %12, label %23, label %13

13:                                               ; preds = %6, %18
  %14 = phi ptr [ %20, %18 ], [ %11, %6 ]
  %15 = tail call ptr %14(ptr noundef nonnull %0) #28
  %16 = load ptr, ptr %8, align 8, !tbaa !57
  %17 = icmp eq ptr %15, %16
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  store ptr %15, ptr %8, align 8, !tbaa !57
  %19 = getelementptr inbounds %struct.StructRNA, ptr %15, i64 0, i32 13
  %20 = load ptr, ptr %19, align 8, !tbaa !59
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %13, !llvm.loop !61

22:                                               ; preds = %4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %23

23:                                               ; preds = %13, %18, %6, %22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_pointer_inherit_id(ptr noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #5 !PGOFuncName !62 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.StructRNA, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !63
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %11 = select i1 %9, ptr %1, ptr %10
  br label %12

12:                                               ; preds = %5, %3
  %13 = phi ptr [ %1, %3 ], [ %11, %5 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  store ptr %14, ptr %2, align 8, !tbaa !56
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_pointer_recast(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !64
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !57
  %6 = getelementptr inbounds %struct.StructRNA, ptr %5, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !65
  %8 = icmp eq ptr %7, null
  br i1 %8, label %30, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds i8, ptr %3, i64 8
  %12 = getelementptr inbounds i8, ptr %3, i64 16
  %13 = getelementptr inbounds i8, ptr %1, i64 8
  %14 = getelementptr inbounds i8, ptr %1, i64 16
  br label %15

15:                                               ; preds = %9, %26
  %16 = phi ptr [ %7, %9 ], [ %28, %26 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #30
  %17 = load ptr, ptr %10, align 8, !tbaa !58
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0, ptr noundef nonnull %16, ptr noundef %17) #29
  %18 = load ptr, ptr %3, align 8, !tbaa.struct !64
  %19 = load ptr, ptr %11, align 8, !tbaa.struct !66
  %20 = load ptr, ptr %12, align 8, !tbaa.struct !67
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #30
  %21 = icmp eq ptr %19, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %15
  %23 = load ptr, ptr %4, align 8, !tbaa !57
  %24 = icmp eq ptr %19, %23
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  store ptr %18, ptr %1, align 8, !tbaa.struct !64
  store ptr %19, ptr %13, align 8, !tbaa.struct !66
  store ptr %20, ptr %14, align 8, !tbaa.struct !67
  br label %26

26:                                               ; preds = %15, %22, %25
  %27 = getelementptr inbounds %struct.StructRNA, ptr %16, i64 0, i32 11
  %28 = load ptr, ptr %27, align 8, !tbaa !65
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %15, !llvm.loop !68

30:                                               ; preds = %26, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RNA_struct_idprops(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !57
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.StructRNA, ptr %4, i64 0, i32 18
  %8 = load ptr, ptr %7, align 8, !tbaa !69
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call ptr %8(ptr noundef nonnull %0, i8 noundef zeroext %1) #28
  br label %12

12:                                               ; preds = %2, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %2 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @RNA_struct_idprops_check(ptr noundef readonly %0) local_unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.StructRNA, ptr %0, i64 0, i32 18
  %5 = load ptr, ptr %4, align 8, !tbaa !69
  %6 = icmp ne ptr %5, null
  %7 = zext i1 %6 to i8
  br label %8

8:                                                ; preds = %3, %1
  %9 = phi i8 [ 0, %1 ], [ %7, %3 ]
  ret i8 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @rna_idproperty_check(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.PropertyRNA, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %7, label %23

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.PropertyRNA, ptr %3, i64 0, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !43
  %10 = and i32 %9, 1024
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %33, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.PropertyRNA, ptr %3, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !45
  %15 = tail call fastcc ptr @rna_idproperty_find(ptr noundef %1, ptr noundef %14) #29
  %16 = icmp eq ptr %15, null
  br i1 %16, label %33, label %17

17:                                               ; preds = %12
  %18 = load ptr, ptr %0, align 8, !tbaa !34
  %19 = tail call fastcc zeroext i8 @rna_idproperty_verify_valid(ptr noundef %1, ptr noundef %18, ptr noundef nonnull %15) #29, !range !70
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %17
  %22 = tail call ptr @RNA_struct_idprops(ptr noundef %1, i8 noundef zeroext 0) #29
  tail call void @IDP_FreeFromGroup(ptr noundef %22, ptr noundef nonnull %15) #28
  br label %33

23:                                               ; preds = %2
  %24 = lshr i32 %5, 8
  %25 = and i32 %5, 255
  %26 = icmp eq i32 %25, 5
  %27 = select i1 %26, i32 %24, i32 %5
  %28 = select i1 %26, ptr @arraytypemap, ptr @typemap
  %29 = and i32 %27, 255
  %30 = zext nneg i32 %29 to i64
  %31 = getelementptr inbounds [10 x ptr], ptr %28, i64 0, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !34
  store ptr %32, ptr %0, align 8, !tbaa !34
  br label %33

33:                                               ; preds = %7, %21, %17, %12, %23
  %34 = phi ptr [ %3, %23 ], [ null, %21 ], [ %15, %17 ], [ null, %12 ], [ null, %7 ]
  ret ptr %34
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @rna_idproperty_find(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !71 {
  %3 = tail call ptr @RNA_struct_idprops(ptr noundef %0, i8 noundef zeroext 0) #29
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @IDP_GetPropertyFromGroup(ptr noundef nonnull %3, ptr noundef %1) #28
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @rna_idproperty_verify_valid(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !72 {
  %4 = getelementptr inbounds %struct.IDProperty, ptr %2, i64 0, i32 2
  %5 = load i8, ptr %4, align 8, !tbaa !73
  switch i8 %5, label %53 [
    i8 9, label %6
    i8 5, label %10
    i8 1, label %26
    i8 2, label %30
    i8 8, label %30
    i8 0, label %34
    i8 6, label %38
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.PropertyRNA, ptr %1, i64 0, i32 9
  %8 = load i32, ptr %7, align 8, !tbaa !77
  %9 = icmp eq i32 %8, 6
  br i1 %9, label %42, label %53

10:                                               ; preds = %3
  %11 = tail call fastcc i32 @rna_ensure_property_array_length(ptr noundef %0, ptr noundef %1) #29
  %12 = getelementptr inbounds %struct.IDProperty, ptr %2, i64 0, i32 8
  %13 = load i32, ptr %12, align 8, !tbaa !78
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %15, label %53

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.IDProperty, ptr %2, i64 0, i32 3
  %17 = load i8, ptr %16, align 1, !tbaa !79
  switch i8 %17, label %42 [
    i8 2, label %18
    i8 1, label %22
  ]

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.PropertyRNA, ptr %1, i64 0, i32 9
  %20 = load i32, ptr %19, align 8, !tbaa !77
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %42, label %53

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.PropertyRNA, ptr %1, i64 0, i32 9
  %24 = load i32, ptr %23, align 8, !tbaa !77
  %25 = icmp ult i32 %24, 5
  br i1 %25, label %43, label %53

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.PropertyRNA, ptr %1, i64 0, i32 9
  %28 = load i32, ptr %27, align 8, !tbaa !77
  %29 = icmp ult i32 %28, 5
  br i1 %29, label %48, label %53

30:                                               ; preds = %3, %3
  %31 = getelementptr inbounds %struct.PropertyRNA, ptr %1, i64 0, i32 9
  %32 = load i32, ptr %31, align 8, !tbaa !77
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %42, label %53

34:                                               ; preds = %3
  %35 = getelementptr inbounds %struct.PropertyRNA, ptr %1, i64 0, i32 9
  %36 = load i32, ptr %35, align 8, !tbaa !77
  %37 = icmp eq i32 %36, 3
  br i1 %37, label %42, label %53

38:                                               ; preds = %3
  %39 = getelementptr inbounds %struct.PropertyRNA, ptr %1, i64 0, i32 9
  %40 = load i32, ptr %39, align 8, !tbaa !77
  %41 = icmp eq i32 %40, 5
  br i1 %41, label %42, label %53

42:                                               ; preds = %15, %18, %38, %34, %30, %6
  br label %53

43:                                               ; preds = %22
  %44 = shl nuw nsw i32 %24, 3
  %45 = zext nneg i32 %44 to i40
  %46 = lshr i40 4294967553, %45
  %47 = trunc i40 %46 to i8
  br label %53

48:                                               ; preds = %26
  %49 = shl nuw nsw i32 %28, 3
  %50 = zext nneg i32 %49 to i40
  %51 = lshr i40 4294967553, %50
  %52 = trunc i40 %51 to i8
  br label %53

53:                                               ; preds = %48, %26, %43, %22, %3, %38, %34, %30, %18, %10, %6, %42
  %54 = phi i8 [ 1, %42 ], [ 0, %6 ], [ 0, %10 ], [ 0, %18 ], [ 0, %22 ], [ 0, %26 ], [ 0, %30 ], [ 0, %34 ], [ 0, %38 ], [ 0, %3 ], [ %47, %43 ], [ %52, %48 ]
  ret i8 %54
}

; Function Attrs: optsize
declare void @IDP_FreeFromGroup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @RNA_struct_find(ptr noundef readonly %0) local_unnamed_addr #8 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1, %7
  %4 = phi ptr [ %5, %7 ], [ @BLENDER_RNA, %1 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.StructRNA, ptr %5, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !80
  %10 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %0) #31
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %3, !llvm.loop !81

12:                                               ; preds = %3, %7, %1
  %13 = phi ptr [ null, %1 ], [ null, %3 ], [ %5, %7 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @RNA_struct_identifier(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.StructRNA, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !80
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @RNA_struct_ui_name(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.StructRNA, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !82
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @RNA_struct_ui_name_raw(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.StructRNA, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !82
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @RNA_struct_ui_icon(ptr noundef readonly %0) local_unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.StructRNA, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !83
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi i32 [ %5, %3 ], [ 17, %1 ]
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @RNA_struct_ui_description(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.StructRNA, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !84
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @RNA_struct_ui_description_raw(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.StructRNA, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !84
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @RNA_struct_translation_context(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.StructRNA, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !85
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @RNA_struct_name_property(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.StructRNA, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !86
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @RNA_struct_iterator_property(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.StructRNA, ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !87
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @RNA_struct_base(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.StructRNA, ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @RNA_struct_is_ID(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.StructRNA, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !63
  %4 = trunc i32 %3 to i8
  %5 = and i8 %4, 1
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @RNA_struct_undo_check(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.StructRNA, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !63
  %4 = trunc i32 %3 to i8
  %5 = lshr i8 %4, 2
  %6 = and i8 %5, 1
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @RNA_struct_idprops_register_check(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.StructRNA, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !63
  %4 = and i32 %3, 64
  %5 = icmp eq i32 %4, 0
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @RNA_struct_idprops_unset(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @RNA_struct_idprops(ptr noundef %0, i8 noundef zeroext 0) #29
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @IDP_GetPropertyFromGroup(ptr noundef nonnull %3, ptr noundef %1) #28
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  tail call void @IDP_FreeFromGroup(ptr noundef nonnull %3, ptr noundef nonnull %6) #28
  br label %9

9:                                                ; preds = %2, %5, %8
  %10 = phi i8 [ 1, %8 ], [ 0, %5 ], [ 0, %2 ]
  ret i8 %10
}

; Function Attrs: optsize
declare ptr @IDP_GetPropertyFromGroup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @RNA_struct_is_a(ptr noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #10 {
  %3 = icmp eq ptr %1, @RNA_AnyType
  br i1 %3, label %13, label %4

4:                                                ; preds = %2
  %5 = icmp eq ptr %0, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %4, %9
  %7 = phi ptr [ %11, %9 ], [ %0, %4 ]
  %8 = icmp eq ptr %7, %1
  br i1 %8, label %13, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.StructRNA, ptr %7, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !65
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %6, !llvm.loop !88

13:                                               ; preds = %9, %6, %4, %2
  %14 = phi i8 [ 1, %2 ], [ 0, %4 ], [ 0, %9 ], [ 1, %6 ]
  ret i8 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RNA_struct_find_property(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = load i8, ptr %1, align 1, !tbaa !89
  %7 = icmp eq i8 %6, 91
  br i1 %7, label %8, label %29

8:                                                ; preds = %2
  %9 = getelementptr inbounds i8, ptr %1, i64 1
  %10 = load i8, ptr %9, align 1, !tbaa !89
  %11 = icmp eq i8 %10, 34
  br i1 %11, label %12, label %29

12:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #30
  store ptr null, ptr %3, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #30
  %13 = call zeroext i8 @RNA_path_resolve(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %4, ptr noundef nonnull %3) #29, !range !70
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.PointerRNA, ptr %4, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !57
  %18 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !57
  %20 = icmp eq ptr %17, %19
  br i1 %20, label %22, label %21

21:                                               ; preds = %15, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #30
  br label %37

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.PointerRNA, ptr %4, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !58
  %25 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !58
  %27 = icmp eq ptr %24, %26
  %28 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #30
  br i1 %27, label %38, label %37

29:                                               ; preds = %8, %2
  %30 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !57
  %32 = tail call ptr @RNA_struct_iterator_property(ptr noundef %31) #29
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #30
  %33 = call i32 @RNA_property_collection_lookup_string(ptr noundef %0, ptr noundef %32, ptr noundef nonnull %1, ptr noundef nonnull %5) #29
  %34 = icmp eq i32 %33, 0
  %35 = getelementptr inbounds %struct.PointerRNA, ptr %5, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #30
  br i1 %34, label %37, label %38

37:                                               ; preds = %21, %29, %22
  br label %38

38:                                               ; preds = %29, %22, %37
  %39 = phi ptr [ %28, %22 ], [ null, %37 ], [ %36, %29 ]
  ret ptr %39
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @RNA_path_resolve(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call fastcc zeroext i8 @rna_path_parse(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef null, ptr noundef null, i8 noundef zeroext 1) #29
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !58
  %10 = icmp ne ptr %9, null
  %11 = zext i1 %10 to i8
  br label %12

12:                                               ; preds = %4, %7
  %13 = phi i8 [ %11, %7 ], [ 0, %4 ]
  ret i8 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @RNA_property_collection_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.CollectionPropertyIterator, align 8
  %6 = alloca [256 x i8], align 16
  %7 = alloca i32, align 4
  %8 = tail call fastcc ptr @rna_ensure_property(ptr noundef %1) #29
  %9 = getelementptr inbounds %struct.CollectionPropertyRNA, ptr %8, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !90
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %4
  %13 = tail call i32 %10(ptr noundef %0, ptr noundef %2, ptr noundef %3) #28
  br label %54

14:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %5) #30
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %6) #30
  %15 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #31
  %16 = trunc i64 %15 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #30
  call void @RNA_property_collection_begin(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5) #29
  %17 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 7
  %18 = load i32, ptr %17, align 8, !tbaa !92
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %49, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 6
  %22 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 6, i32 2
  %23 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 6, i32 1
  br label %24

24:                                               ; preds = %20, %46
  %25 = load ptr, ptr %22, align 8, !tbaa !94
  %26 = icmp eq ptr %25, null
  br i1 %26, label %46, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr %23, align 8, !tbaa !95
  %29 = getelementptr inbounds %struct.StructRNA, ptr %28, i64 0, i32 9
  %30 = load ptr, ptr %29, align 8, !tbaa !86
  %31 = icmp eq ptr %30, null
  br i1 %31, label %46, label %32

32:                                               ; preds = %27
  %33 = call ptr @RNA_property_string_get_alloc(ptr noundef nonnull %21, ptr noundef nonnull %30, ptr noundef nonnull %6, i32 noundef 256, ptr noundef nonnull %7) #29
  %34 = load i32, ptr %7, align 4, !tbaa !96
  %35 = icmp eq i32 %34, %16
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %33, ptr noundef nonnull dereferenceable(1) %2) #31
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %21, i64 24, i1 false), !tbaa.struct !64
  br label %40

40:                                               ; preds = %39, %36, %32
  %41 = phi i1 [ false, %39 ], [ true, %36 ], [ true, %32 ]
  %42 = icmp eq ptr %6, %33
  br i1 %42, label %45, label %43

43:                                               ; preds = %40
  %44 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %44(ptr noundef %33) #28
  br label %45

45:                                               ; preds = %43, %40
  br i1 %41, label %46, label %49

46:                                               ; preds = %24, %27, %45
  call void @RNA_property_collection_next(ptr noundef nonnull %5) #29
  %47 = load i32, ptr %17, align 8, !tbaa !92
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %24, !llvm.loop !97

49:                                               ; preds = %46, %45, %14
  call void @RNA_property_collection_end(ptr noundef nonnull %5) #29
  %50 = load i32, ptr %17, align 8, !tbaa !92
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  br label %53

53:                                               ; preds = %52, %49
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %5) #30
  br label %54

54:                                               ; preds = %53, %12
  %55 = phi i32 [ %13, %12 ], [ %50, %53 ]
  ret i32 %55
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @RNA_struct_contains_property(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #0 {
  %3 = alloca %struct.CollectionPropertyIterator, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !57
  %6 = tail call ptr @RNA_struct_iterator_property(ptr noundef %5) #29
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %3) #30
  call void @RNA_property_collection_begin(ptr noundef %0, ptr noundef %6, ptr noundef nonnull %3) #29
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %3, i64 0, i32 6, i32 2
  %8 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %3, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !92
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %2, %14
  %12 = load ptr, ptr %7, align 8, !tbaa.struct !67
  %13 = icmp eq ptr %12, %1
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  call void @RNA_property_collection_next(ptr noundef nonnull %3) #29
  %15 = load i32, ptr %8, align 8, !tbaa !92
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %11, !llvm.loop !98

17:                                               ; preds = %14, %11, %2
  %18 = phi i8 [ 0, %2 ], [ 1, %11 ], [ 0, %14 ]
  call void @RNA_property_collection_end(ptr noundef nonnull %3) #29
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %3) #30
  ret i8 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_property_collection_begin(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8, !tbaa !34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %2, i8 0, i64 136, i1 false)
  %5 = call ptr @rna_idproperty_check(ptr noundef nonnull %4, ptr noundef %0) #29
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = load ptr, ptr %4, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.PropertyRNA, ptr %8, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !43
  %11 = and i32 %10, 1024
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %29, label %20

13:                                               ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !64
  %14 = load ptr, ptr %4, align 8, !tbaa !34
  %15 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %2, i64 0, i32 2
  store ptr %14, ptr %15, align 8, !tbaa !99
  %16 = getelementptr inbounds %struct.IDProperty, ptr %5, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !100
  %18 = getelementptr inbounds %struct.IDProperty, ptr %5, i64 0, i32 8
  %19 = load i32, ptr %18, align 8, !tbaa !78
  tail call void @rna_iterator_array_begin(ptr noundef nonnull %2, ptr noundef %17, i32 noundef 128, i32 noundef %19, i8 noundef zeroext 0, ptr noundef null) #29
  br label %22

20:                                               ; preds = %7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !64
  %21 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %2, i64 0, i32 2
  store ptr %8, ptr %21, align 8, !tbaa !99
  tail call void @rna_iterator_array_begin(ptr noundef nonnull %2, ptr noundef null, i32 noundef 128, i32 noundef 0, i8 noundef zeroext 0, ptr noundef null) #29
  br label %22

22:                                               ; preds = %20, %13
  %23 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %2, i64 0, i32 7
  %24 = load i32, ptr %23, align 8, !tbaa !92
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  tail call fastcc void @rna_property_collection_get_idp(ptr noundef nonnull %2) #29
  br label %27

27:                                               ; preds = %26, %22
  %28 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %2, i64 0, i32 4
  store i32 1, ptr %28, align 8, !tbaa !101
  br label %32

29:                                               ; preds = %7
  %30 = getelementptr inbounds %struct.CollectionPropertyRNA, ptr %8, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !102
  tail call void %31(ptr noundef nonnull %2, ptr noundef %0) #28
  br label %32

32:                                               ; preds = %29, %27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_property_collection_next(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !101
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  tail call void @rna_iterator_array_next(ptr noundef nonnull %0) #29
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !92
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %5
  tail call fastcc void @rna_property_collection_get_idp(ptr noundef nonnull %0) #29
  br label %16

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !99
  %13 = tail call fastcc ptr @rna_ensure_property(ptr noundef %12) #29
  %14 = getelementptr inbounds %struct.CollectionPropertyRNA, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !103
  tail call void %15(ptr noundef nonnull %0) #28
  br label %16

16:                                               ; preds = %5, %9, %10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_property_collection_end(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !101
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @rna_iterator_array_end(ptr noundef nonnull %0) #29
  br label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !99
  %9 = tail call fastcc ptr @rna_ensure_property(ptr noundef %8) #29
  %10 = getelementptr inbounds %struct.CollectionPropertyRNA, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !104
  tail call void %11(ptr noundef nonnull %0) #28
  br label %12

12:                                               ; preds = %6, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local nonnull ptr @RNA_struct_type_properties(ptr noundef readnone %0) local_unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.ContainerRNA, ptr %0, i64 0, i32 3
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RNA_struct_type_find_property(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ContainerRNA, ptr %0, i64 0, i32 3
  %4 = tail call ptr @BLI_findstring_ptr(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 24) #28
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @BLI_findstring_ptr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RNA_struct_find_function(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %2, %9
  %5 = phi ptr [ %11, %9 ], [ %0, %2 ]
  %6 = getelementptr inbounds %struct.StructRNA, ptr %5, i64 0, i32 19
  %7 = tail call ptr @BLI_findstring_ptr(ptr noundef nonnull %6, ptr noundef %1, i32 noundef 40) #28
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.StructRNA, ptr %5, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !65
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %4, !llvm.loop !105

13:                                               ; preds = %4, %9, %2
  %14 = phi ptr [ null, %2 ], [ null, %9 ], [ %7, %4 ]
  ret ptr %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local nonnull ptr @RNA_struct_type_functions(ptr noundef readnone %0) local_unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.StructRNA, ptr %0, i64 0, i32 19
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @RNA_struct_register(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.StructRNA, ptr %0, i64 0, i32 15
  %3 = load ptr, ptr %2, align 8, !tbaa !106
  ret ptr %3
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @RNA_struct_unregister(ptr nocapture noundef readonly %0) local_unnamed_addr #10 {
  br label %2

2:                                                ; preds = %7, %1
  %3 = phi ptr [ %0, %1 ], [ %9, %7 ]
  %4 = getelementptr inbounds %struct.StructRNA, ptr %3, i64 0, i32 16
  %5 = load ptr, ptr %4, align 8, !tbaa !107
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.StructRNA, ptr %3, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !65
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %2, !llvm.loop !108

11:                                               ; preds = %7, %2
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RNA_struct_instance(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !57
  br label %4

4:                                                ; preds = %11, %1
  %5 = phi ptr [ %3, %1 ], [ %13, %11 ]
  %6 = getelementptr inbounds %struct.StructRNA, ptr %5, i64 0, i32 17
  %7 = load ptr, ptr %6, align 8, !tbaa !109
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = tail call ptr %7(ptr noundef %0) #28
  br label %15

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.StructRNA, ptr %5, i64 0, i32 11
  %13 = load ptr, ptr %12, align 8, !tbaa !65
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %4, !llvm.loop !110

15:                                               ; preds = %11, %9
  %16 = phi ptr [ %10, %9 ], [ null, %11 ]
  ret ptr %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @RNA_struct_py_type_get(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.StructRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !111
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @RNA_struct_py_type_set(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.StructRNA, ptr %0, i64 0, i32 2
  store ptr %1, ptr %3, align 8, !tbaa !111
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @RNA_struct_blender_type_get(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.StructRNA, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !112
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @RNA_struct_blender_type_set(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.StructRNA, ptr %0, i64 0, i32 3
  store ptr %1, ptr %3, align 8, !tbaa !112
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @RNA_struct_name_get_alloc(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !58
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !57
  %11 = tail call ptr @RNA_struct_name_property(ptr noundef %10) #29
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = tail call ptr @RNA_property_string_get_alloc(ptr noundef nonnull %0, ptr noundef nonnull %11, ptr noundef %1, i32 noundef %2, ptr noundef %3) #29
  br label %15

15:                                               ; preds = %4, %8, %13
  %16 = phi ptr [ %14, %13 ], [ null, %8 ], [ null, %4 ]
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @RNA_property_string_get_alloc(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef writeonly %4) local_unnamed_addr #0 {
  %6 = tail call i32 @RNA_property_string_length(ptr noundef %0, ptr noundef %1) #29
  %7 = add nsw i32 %6, 1
  %8 = icmp slt i32 %7, %3
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %11 = sext i32 %7 to i64
  %12 = tail call ptr %10(i64 noundef %11, ptr noundef nonnull @.str.24) #28
  br label %13

13:                                               ; preds = %5, %9
  %14 = phi ptr [ %12, %9 ], [ %2, %5 ]
  tail call void @RNA_property_string_get(ptr noundef %0, ptr noundef %1, ptr noundef %14) #29
  %15 = icmp eq ptr %4, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  store i32 %6, ptr %4, align 4, !tbaa !96
  br label %17

17:                                               ; preds = %16, %13
  ret ptr %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @RNA_property_identifier(ptr noundef readonly %0) local_unnamed_addr #7 {
  %2 = tail call fastcc ptr @rna_ensure_property_identifier(ptr noundef %0) #29
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @rna_ensure_property_identifier(ptr noundef readonly %0) unnamed_addr #7 !PGOFuncName !113 {
  %2 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !114
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  br label %10

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 5
  br label %10

10:                                               ; preds = %8, %5
  %11 = phi ptr [ %7, %5 ], [ %9, %8 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RNA_property_description(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc ptr @rna_ensure_property_description(ptr noundef %0) #29
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @rna_ensure_property_description(ptr noundef %0) unnamed_addr #0 !PGOFuncName !115 {
  %2 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !114
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !116
  br label %22

8:                                                ; preds = %1
  %9 = tail call fastcc ptr @rna_idproperty_ui(ptr noundef nonnull %0) #29
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %8
  %12 = tail call ptr @IDP_GetPropertyTypeFromGroup(ptr noundef nonnull %9, ptr noundef nonnull @.str.76, i8 noundef zeroext 0) #28
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.IDProperty, ptr %12, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !100
  br label %17

17:                                               ; preds = %11, %14, %8
  %18 = phi ptr [ null, %8 ], [ %16, %14 ], [ null, %11 ]
  %19 = icmp eq ptr %18, null
  %20 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 5
  %21 = select i1 %19, ptr %20, ptr %18
  br label %22

22:                                               ; preds = %17, %5
  %23 = phi ptr [ %7, %5 ], [ %21, %17 ]
  ret ptr %23
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @RNA_property_type(ptr noundef readonly %0) local_unnamed_addr #12 {
  %2 = tail call fastcc ptr @rna_ensure_property(ptr noundef %0) #29
  %3 = getelementptr inbounds %struct.PropertyRNA, ptr %2, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !77
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @rna_ensure_property(ptr noundef readonly %0) unnamed_addr #7 !PGOFuncName !117 {
  %2 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  %6 = lshr i32 %3, 8
  %7 = and i32 %3, 255
  %8 = icmp eq i32 %7, 5
  %9 = select i1 %8, i32 %6, i32 %3
  %10 = select i1 %8, ptr @arraytypemap, ptr @typemap
  %11 = and i32 %9, 255
  %12 = zext nneg i32 %11 to i64
  %13 = getelementptr inbounds [10 x ptr], ptr %10, i64 0, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  br label %15

15:                                               ; preds = %1, %5
  %16 = phi ptr [ %14, %5 ], [ %0, %1 ]
  ret ptr %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @RNA_property_subtype(ptr noundef readonly %0) local_unnamed_addr #12 {
  %2 = tail call fastcc ptr @rna_ensure_property(ptr noundef %0) #29
  %3 = getelementptr inbounds %struct.PropertyRNA, ptr %2, i64 0, i32 10
  %4 = load i32, ptr %3, align 4, !tbaa !118
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @RNA_property_unit(ptr noundef readonly %0) local_unnamed_addr #12 {
  %2 = tail call fastcc ptr @rna_ensure_property(ptr noundef %0) #29
  %3 = getelementptr inbounds %struct.PropertyRNA, ptr %2, i64 0, i32 10
  %4 = load i32, ptr %3, align 4, !tbaa !118
  %5 = and i32 %4, 16711680
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @RNA_property_flag(ptr noundef readonly %0) local_unnamed_addr #12 {
  %2 = tail call fastcc ptr @rna_ensure_property(ptr noundef %0) #29
  %3 = getelementptr inbounds %struct.PropertyRNA, ptr %2, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !43
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @RNA_property_py_data_get(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 22
  %3 = load ptr, ptr %2, align 8, !tbaa !119
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @RNA_property_array_length(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @rna_ensure_property_array_length(ptr noundef %0, ptr noundef %1) #29
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @rna_ensure_property_array_length(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !120 {
  %3 = alloca [3 x i32], align 4
  %4 = getelementptr inbounds %struct.PropertyRNA, ptr %1, i64 0, i32 2
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %7, label %22

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #30
  %8 = getelementptr inbounds %struct.PropertyRNA, ptr %1, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !121
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !58
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = call i32 %9(ptr noundef nonnull %0, ptr noundef nonnull %3) #28
  br label %20

17:                                               ; preds = %11, %7
  %18 = getelementptr inbounds %struct.PropertyRNA, ptr %1, i64 0, i32 14
  %19 = load i32, ptr %18, align 8, !tbaa !122
  br label %20

20:                                               ; preds = %17, %15
  %21 = phi i32 [ %16, %15 ], [ %19, %17 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #30
  br label %28

22:                                               ; preds = %2
  %23 = and i32 %5, 255
  %24 = icmp eq i32 %23, 5
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.IDProperty, ptr %1, i64 0, i32 8
  %27 = load i32, ptr %26, align 8, !tbaa !78
  br label %28

28:                                               ; preds = %25, %22, %20
  %29 = phi i32 [ %21, %20 ], [ %27, %25 ], [ 0, %22 ]
  ret i32 %29
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @RNA_property_array_check(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = tail call fastcc zeroext i8 @rna_ensure_property_array_check(ptr noundef %0) #29, !range !70
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @rna_ensure_property_array_check(ptr nocapture noundef readonly %0) unnamed_addr #7 !PGOFuncName !123 {
  %2 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !121
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 14
  %11 = load i32, ptr %10, align 8, !tbaa !122
  %12 = icmp ne i32 %11, 0
  br label %16

13:                                               ; preds = %1
  %14 = and i32 %3, 255
  %15 = icmp eq i32 %14, 5
  br label %16

16:                                               ; preds = %5, %9, %13
  %17 = phi i1 [ %15, %13 ], [ true, %5 ], [ %12, %9 ]
  %18 = zext i1 %17 to i8
  ret i8 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @RNA_property_array_dimension(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc ptr @rna_ensure_property(ptr noundef %1) #29
  %5 = icmp eq ptr %2, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call fastcc void @rna_ensure_property_multi_array_length(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #29
  br label %7

7:                                                ; preds = %6, %3
  %8 = getelementptr inbounds %struct.PropertyRNA, ptr %4, i64 0, i32 12
  %9 = load i32, ptr %8, align 8, !tbaa !124
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_ensure_property_multi_array_length(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !125 {
  %4 = getelementptr inbounds %struct.PropertyRNA, ptr %1, i64 0, i32 2
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %7, label %19

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.PropertyRNA, ptr %1, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !121
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = tail call i32 %9(ptr noundef %0, ptr noundef %2) #28
  br label %27

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.PropertyRNA, ptr %1, i64 0, i32 13
  %15 = getelementptr inbounds %struct.PropertyRNA, ptr %1, i64 0, i32 12
  %16 = load i32, ptr %15, align 8, !tbaa !124
  %17 = zext i32 %16 to i64
  %18 = shl nuw nsw i64 %17, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2, ptr nonnull align 4 %14, i64 %18, i1 false)
  br label %27

19:                                               ; preds = %3
  %20 = and i32 %5, 255
  %21 = icmp eq i32 %20, 5
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.IDProperty, ptr %1, i64 0, i32 8
  %24 = load i32, ptr %23, align 8, !tbaa !78
  br label %25

25:                                               ; preds = %19, %22
  %26 = phi i32 [ %24, %22 ], [ 0, %19 ]
  store i32 %26, ptr %2, align 4, !tbaa !96
  br label %27

27:                                               ; preds = %11, %13, %25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @RNA_property_multi_array_length(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [3 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #30
  call fastcc void @rna_ensure_property_multi_array_length(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4) #29
  %5 = sext i32 %2 to i64
  %6 = getelementptr inbounds [3 x i32], ptr %4, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !96
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #30
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @RNA_property_array_item_char(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #12 {
  %3 = tail call fastcc ptr @rna_ensure_property(ptr noundef %0) #29
  %4 = getelementptr inbounds %struct.PropertyRNA, ptr %3, i64 0, i32 10
  %5 = load i32, ptr %4, align 4, !tbaa !118
  %6 = icmp slt i32 %1, 4
  %7 = add i32 %5, -27
  %8 = icmp ult i32 %7, 2
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  br i1 %6, label %11, label %18

11:                                               ; preds = %10
  switch i32 %5, label %18 [
    i32 524312, label %13
    i32 458775, label %13
    i32 327706, label %13
    i32 65565, label %13
    i32 65557, label %13
    i32 31, label %13
    i32 29, label %13
    i32 22, label %13
    i32 30, label %12
    i32 20, label %12
  ]

12:                                               ; preds = %11, %11
  br label %13

13:                                               ; preds = %11, %11, %11, %11, %11, %11, %11, %11, %2, %12
  %14 = phi ptr [ @.str.3, %12 ], [ @.str.2, %2 ], [ @.str.1, %11 ], [ @.str.1, %11 ], [ @.str.1, %11 ], [ @.str.1, %11 ], [ @.str.1, %11 ], [ @.str.1, %11 ], [ @.str.1, %11 ], [ @.str.1, %11 ]
  %15 = sext i32 %1 to i64
  %16 = getelementptr inbounds i8, ptr %14, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !89
  br label %18

18:                                               ; preds = %13, %11, %10
  %19 = phi i8 [ 0, %10 ], [ 0, %11 ], [ %17, %13 ]
  ret i8 %19
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @RNA_property_array_item_index(ptr noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #12 {
  %3 = tail call fastcc ptr @rna_ensure_property(ptr noundef %0) #29
  %4 = getelementptr inbounds %struct.PropertyRNA, ptr %3, i64 0, i32 10
  %5 = load i32, ptr %4, align 4, !tbaa !118
  %6 = add i32 %5, -27
  %7 = icmp ult i32 %6, 2
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = add i8 %1, -119
  %10 = icmp ult i8 %9, 4
  br i1 %10, label %20, label %19

11:                                               ; preds = %2
  switch i32 %5, label %19 [
    i32 524312, label %12
    i32 458775, label %12
    i32 327706, label %12
    i32 65565, label %12
    i32 65557, label %12
    i32 29, label %12
    i32 22, label %12
    i32 30, label %15
    i32 20, label %15
  ]

12:                                               ; preds = %11, %11, %11, %11, %11, %11, %11
  %13 = add i8 %1, -119
  %14 = icmp ult i8 %13, 4
  br i1 %14, label %22, label %19

15:                                               ; preds = %11, %11
  switch i8 %1, label %19 [
    i8 114, label %26
    i8 103, label %16
    i8 98, label %17
    i8 97, label %18
  ]

16:                                               ; preds = %15
  br label %26

17:                                               ; preds = %15
  br label %26

18:                                               ; preds = %15
  br label %26

19:                                               ; preds = %12, %8, %11, %15
  br label %26

20:                                               ; preds = %8
  %21 = zext nneg i8 %9 to i32
  br label %26

22:                                               ; preds = %12
  %23 = zext nneg i8 %13 to i64
  %24 = getelementptr inbounds [4 x i32], ptr @switch.table.RNA_property_array_item_index, i64 0, i64 %23
  %25 = load i32, ptr %24, align 4
  br label %26

26:                                               ; preds = %22, %20, %15, %19, %18, %17, %16
  %27 = phi i32 [ -1, %19 ], [ 3, %18 ], [ 2, %17 ], [ 1, %16 ], [ 0, %15 ], [ %21, %20 ], [ %25, %22 ]
  ret i32 %27
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_property_int_range(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = tail call fastcc ptr @rna_ensure_property(ptr noundef %1) #29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #30
  %8 = getelementptr inbounds %struct.PropertyRNA, ptr %1, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !114
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %29, label %11

11:                                               ; preds = %4
  %12 = tail call fastcc ptr @rna_idproperty_ui(ptr noundef nonnull %1) #29
  %13 = icmp eq ptr %12, null
  br i1 %13, label %29, label %14

14:                                               ; preds = %11
  %15 = tail call ptr @IDP_GetPropertyTypeFromGroup(ptr noundef nonnull %12, ptr noundef nonnull @.str.4, i8 noundef zeroext 1) #28
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.IDProperty, ptr %15, i64 0, i32 7, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !126
  br label %20

20:                                               ; preds = %14, %17
  %21 = phi i32 [ %19, %17 ], [ -2147483648, %14 ]
  store i32 %21, ptr %2, align 4, !tbaa !96
  %22 = tail call ptr @IDP_GetPropertyTypeFromGroup(ptr noundef nonnull %12, ptr noundef nonnull @.str.5, i8 noundef zeroext 1) #28
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.IDProperty, ptr %22, i64 0, i32 7, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !126
  br label %27

27:                                               ; preds = %20, %24
  %28 = phi i32 [ %26, %24 ], [ 2147483647, %20 ]
  store i32 %28, ptr %3, align 4, !tbaa !96
  br label %44

29:                                               ; preds = %11, %4
  %30 = getelementptr inbounds %struct.IntPropertyRNA, ptr %7, i64 0, i32 5
  %31 = load ptr, ptr %30, align 8, !tbaa !127
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  store i32 -2147483648, ptr %2, align 4, !tbaa !96
  store i32 2147483647, ptr %3, align 4, !tbaa !96
  call void %31(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %6) #28
  br label %44

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.IntPropertyRNA, ptr %7, i64 0, i32 10
  %36 = load ptr, ptr %35, align 8, !tbaa !129
  %37 = icmp eq ptr %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  store i32 -2147483648, ptr %2, align 4, !tbaa !96
  store i32 2147483647, ptr %3, align 4, !tbaa !96
  call void %36(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %6) #28
  br label %44

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.IntPropertyRNA, ptr %7, i64 0, i32 13
  %41 = load i32, ptr %40, align 8, !tbaa !130
  store i32 %41, ptr %2, align 4, !tbaa !96
  %42 = getelementptr inbounds %struct.IntPropertyRNA, ptr %7, i64 0, i32 14
  %43 = load i32, ptr %42, align 4, !tbaa !131
  store i32 %43, ptr %3, align 4, !tbaa !96
  br label %44

44:                                               ; preds = %27, %33, %39, %38
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #30
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @rna_idproperty_ui(ptr noundef %0) unnamed_addr #0 !PGOFuncName !132 {
  br label %2

2:                                                ; preds = %7, %1
  %3 = phi ptr [ %0, %1 ], [ %5, %7 ]
  %4 = getelementptr inbounds %struct.IDProperty, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !133
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.IDProperty, ptr %5, i64 0, i32 5
  %9 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(8) @.str.77, ptr noundef nonnull dereferenceable(1) %8) #31
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %19, label %2, !llvm.loop !134

11:                                               ; preds = %2, %15
  %12 = phi ptr [ %13, %15 ], [ %0, %2 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !135
  %14 = icmp eq ptr %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.IDProperty, ptr %13, i64 0, i32 5
  %17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(8) @.str.77, ptr noundef nonnull dereferenceable(1) %16) #31
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %11, !llvm.loop !136

19:                                               ; preds = %7, %15
  %20 = phi ptr [ %13, %15 ], [ %5, %7 ]
  %21 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 5
  %22 = tail call ptr @IDP_GetPropertyTypeFromGroup(ptr noundef nonnull %20, ptr noundef nonnull %21, i8 noundef zeroext 6) #28
  br label %23

23:                                               ; preds = %11, %19
  %24 = phi ptr [ %22, %19 ], [ null, %11 ]
  ret ptr %24
}

; Function Attrs: optsize
declare ptr @IDP_GetPropertyTypeFromGroup(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_property_int_ui_range(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = tail call fastcc ptr @rna_ensure_property(ptr noundef %1) #29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #30
  %9 = getelementptr inbounds %struct.PropertyRNA, ptr %1, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !114
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %34, label %12

12:                                               ; preds = %5
  %13 = tail call fastcc ptr @rna_idproperty_ui(ptr noundef nonnull %1) #29
  %14 = icmp eq ptr %13, null
  br i1 %14, label %34, label %15

15:                                               ; preds = %12
  %16 = tail call ptr @IDP_GetPropertyTypeFromGroup(ptr noundef nonnull %13, ptr noundef nonnull @.str.6, i8 noundef zeroext 1) #28
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.IDProperty, ptr %16, i64 0, i32 7, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !126
  br label %21

21:                                               ; preds = %15, %18
  %22 = phi i32 [ %20, %18 ], [ -2147483648, %15 ]
  store i32 %22, ptr %2, align 4, !tbaa !96
  %23 = tail call ptr @IDP_GetPropertyTypeFromGroup(ptr noundef nonnull %13, ptr noundef nonnull @.str.7, i8 noundef zeroext 1) #28
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.IDProperty, ptr %23, i64 0, i32 7, i32 2
  %27 = load i32, ptr %26, align 8, !tbaa !126
  br label %28

28:                                               ; preds = %21, %25
  %29 = phi i32 [ %27, %25 ], [ 2147483647, %21 ]
  store i32 %29, ptr %3, align 4, !tbaa !96
  %30 = tail call ptr @IDP_GetPropertyTypeFromGroup(ptr noundef nonnull %13, ptr noundef nonnull @.str.8, i8 noundef zeroext 1) #28
  %31 = icmp eq ptr %30, null
  br i1 %31, label %67, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.IDProperty, ptr %30, i64 0, i32 7, i32 2
  br label %64

34:                                               ; preds = %12, %5
  %35 = getelementptr inbounds %struct.IntPropertyRNA, ptr %8, i64 0, i32 11
  %36 = load i32, ptr %35, align 8, !tbaa !137
  store i32 %36, ptr %2, align 4, !tbaa !96
  %37 = getelementptr inbounds %struct.IntPropertyRNA, ptr %8, i64 0, i32 12
  %38 = load i32, ptr %37, align 4, !tbaa !138
  store i32 %38, ptr %3, align 4, !tbaa !96
  %39 = getelementptr inbounds %struct.IntPropertyRNA, ptr %8, i64 0, i32 5
  %40 = load ptr, ptr %39, align 8, !tbaa !127
  %41 = icmp eq ptr %40, null
  br i1 %41, label %49, label %42

42:                                               ; preds = %34
  store i32 -2147483648, ptr %6, align 4, !tbaa !96
  store i32 2147483647, ptr %7, align 4, !tbaa !96
  call void %40(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %2, ptr noundef nonnull %3) #28
  %43 = load i32, ptr %2, align 4, !tbaa !96
  %44 = load i32, ptr %6, align 4, !tbaa !96
  %45 = call fastcc i32 @max_ii(i32 noundef %43, i32 noundef %44) #29
  store i32 %45, ptr %2, align 4, !tbaa !96
  %46 = load i32, ptr %3, align 4, !tbaa !96
  %47 = load i32, ptr %7, align 4, !tbaa !96
  %48 = call fastcc i32 @min_ii(i32 noundef %46, i32 noundef %47) #29
  br label %60

49:                                               ; preds = %34
  %50 = getelementptr inbounds %struct.IntPropertyRNA, ptr %8, i64 0, i32 10
  %51 = load ptr, ptr %50, align 8, !tbaa !129
  %52 = icmp eq ptr %51, null
  br i1 %52, label %62, label %53

53:                                               ; preds = %49
  store i32 -2147483648, ptr %6, align 4, !tbaa !96
  store i32 2147483647, ptr %7, align 4, !tbaa !96
  call void %51(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %2, ptr noundef nonnull %3) #28
  %54 = load i32, ptr %2, align 4, !tbaa !96
  %55 = load i32, ptr %6, align 4, !tbaa !96
  %56 = call fastcc i32 @max_ii(i32 noundef %54, i32 noundef %55) #29
  store i32 %56, ptr %2, align 4, !tbaa !96
  %57 = load i32, ptr %3, align 4, !tbaa !96
  %58 = load i32, ptr %7, align 4, !tbaa !96
  %59 = call fastcc i32 @min_ii(i32 noundef %57, i32 noundef %58) #29
  br label %60

60:                                               ; preds = %42, %53
  %61 = phi i32 [ %59, %53 ], [ %48, %42 ]
  store i32 %61, ptr %3, align 4, !tbaa !96
  br label %62

62:                                               ; preds = %60, %49
  %63 = getelementptr inbounds %struct.IntPropertyRNA, ptr %8, i64 0, i32 15
  br label %64

64:                                               ; preds = %62, %32
  %65 = phi ptr [ %33, %32 ], [ %63, %62 ]
  %66 = load i32, ptr %65, align 8, !tbaa !96
  br label %67

67:                                               ; preds = %64, %28
  %68 = phi i32 [ 1, %28 ], [ %66, %64 ]
  store i32 %68, ptr %4, align 4, !tbaa !96
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #30
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @max_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #11 !PGOFuncName !139 {
  %3 = tail call i32 @llvm.smax.i32(i32 %1, i32 %0)
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @min_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #11 !PGOFuncName !140 {
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_property_float_range(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = tail call fastcc ptr @rna_ensure_property(ptr noundef %1) #29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #30
  %8 = getelementptr inbounds %struct.PropertyRNA, ptr %1, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !114
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %31, label %11

11:                                               ; preds = %4
  %12 = tail call fastcc ptr @rna_idproperty_ui(ptr noundef nonnull %1) #29
  %13 = icmp eq ptr %12, null
  br i1 %13, label %31, label %14

14:                                               ; preds = %11
  %15 = tail call ptr @IDP_GetPropertyTypeFromGroup(ptr noundef nonnull %12, ptr noundef nonnull @.str.4, i8 noundef zeroext 8) #28
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.IDProperty, ptr %15, i64 0, i32 7, i32 2
  %19 = load double, ptr %18, align 8, !tbaa !141
  %20 = fptrunc double %19 to float
  br label %21

21:                                               ; preds = %14, %17
  %22 = phi float [ %20, %17 ], [ 0xC7EFFFFFE0000000, %14 ]
  store float %22, ptr %2, align 4, !tbaa !143
  %23 = tail call ptr @IDP_GetPropertyTypeFromGroup(ptr noundef nonnull %12, ptr noundef nonnull @.str.5, i8 noundef zeroext 8) #28
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.IDProperty, ptr %23, i64 0, i32 7, i32 2
  %27 = load double, ptr %26, align 8, !tbaa !141
  %28 = fptrunc double %27 to float
  br label %29

29:                                               ; preds = %21, %25
  %30 = phi float [ %28, %25 ], [ 0x47EFFFFFE0000000, %21 ]
  store float %30, ptr %3, align 4, !tbaa !143
  br label %46

31:                                               ; preds = %11, %4
  %32 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %7, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !145
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  store float 0xC7EFFFFFE0000000, ptr %2, align 4, !tbaa !143
  store float 0x47EFFFFFE0000000, ptr %3, align 4, !tbaa !143
  call void %33(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %6) #28
  br label %46

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %7, i64 0, i32 10
  %38 = load ptr, ptr %37, align 8, !tbaa !147
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  store float 0xC7EFFFFFE0000000, ptr %2, align 4, !tbaa !143
  store float 0x47EFFFFFE0000000, ptr %3, align 4, !tbaa !143
  call void %38(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %6) #28
  br label %46

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %7, i64 0, i32 13
  %43 = load float, ptr %42, align 8, !tbaa !148
  store float %43, ptr %2, align 4, !tbaa !143
  %44 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %7, i64 0, i32 14
  %45 = load float, ptr %44, align 4, !tbaa !149
  store float %45, ptr %3, align 4, !tbaa !143
  br label %46

46:                                               ; preds = %29, %35, %41, %40
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #30
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_property_float_ui_range(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = tail call fastcc ptr @rna_ensure_property(ptr noundef %1) #29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #30
  %10 = getelementptr inbounds %struct.PropertyRNA, ptr %1, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !114
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %47, label %13

13:                                               ; preds = %6
  %14 = tail call fastcc ptr @rna_idproperty_ui(ptr noundef nonnull %1) #29
  %15 = icmp eq ptr %14, null
  br i1 %15, label %47, label %16

16:                                               ; preds = %13
  %17 = tail call ptr @IDP_GetPropertyTypeFromGroup(ptr noundef nonnull %14, ptr noundef nonnull @.str.6, i8 noundef zeroext 8) #28
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.IDProperty, ptr %17, i64 0, i32 7, i32 2
  %21 = load double, ptr %20, align 8, !tbaa !141
  %22 = fptrunc double %21 to float
  br label %23

23:                                               ; preds = %16, %19
  %24 = phi float [ %22, %19 ], [ 0xC7EFFFFFE0000000, %16 ]
  store float %24, ptr %2, align 4, !tbaa !143
  %25 = tail call ptr @IDP_GetPropertyTypeFromGroup(ptr noundef nonnull %14, ptr noundef nonnull @.str.7, i8 noundef zeroext 8) #28
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.IDProperty, ptr %25, i64 0, i32 7, i32 2
  %29 = load double, ptr %28, align 8, !tbaa !141
  %30 = fptrunc double %29 to float
  br label %31

31:                                               ; preds = %23, %27
  %32 = phi float [ %30, %27 ], [ 0x47EFFFFFE0000000, %23 ]
  store float %32, ptr %3, align 4, !tbaa !143
  %33 = tail call ptr @IDP_GetPropertyTypeFromGroup(ptr noundef nonnull %14, ptr noundef nonnull @.str.8, i8 noundef zeroext 8) #28
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.IDProperty, ptr %33, i64 0, i32 7, i32 2
  %37 = load double, ptr %36, align 8, !tbaa !141
  %38 = fptrunc double %37 to float
  br label %39

39:                                               ; preds = %31, %35
  %40 = phi float [ %38, %35 ], [ 1.000000e+00, %31 ]
  store float %40, ptr %4, align 4, !tbaa !143
  %41 = tail call ptr @IDP_GetPropertyTypeFromGroup(ptr noundef nonnull %14, ptr noundef nonnull @.str.9, i8 noundef zeroext 8) #28
  %42 = icmp eq ptr %41, null
  br i1 %42, label %81, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.IDProperty, ptr %41, i64 0, i32 7, i32 2
  %45 = load double, ptr %44, align 8, !tbaa !141
  %46 = fptrunc double %45 to float
  br label %81

47:                                               ; preds = %13, %6
  %48 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %9, i64 0, i32 11
  %49 = load float, ptr %48, align 8, !tbaa !150
  store float %49, ptr %2, align 4, !tbaa !143
  %50 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %9, i64 0, i32 12
  %51 = load float, ptr %50, align 4, !tbaa !151
  store float %51, ptr %3, align 4, !tbaa !143
  %52 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %9, i64 0, i32 5
  %53 = load ptr, ptr %52, align 8, !tbaa !145
  %54 = icmp eq ptr %53, null
  br i1 %54, label %62, label %55

55:                                               ; preds = %47
  store float 0xC7EFFFFFE0000000, ptr %7, align 4, !tbaa !143
  store float 0x47EFFFFFE0000000, ptr %8, align 4, !tbaa !143
  call void %53(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %2, ptr noundef nonnull %3) #28
  %56 = load float, ptr %2, align 4, !tbaa !143
  %57 = load float, ptr %7, align 4, !tbaa !143
  %58 = call fastcc float @max_ff(float noundef %56, float noundef %57) #29
  store float %58, ptr %2, align 4, !tbaa !143
  %59 = load float, ptr %3, align 4, !tbaa !143
  %60 = load float, ptr %8, align 4, !tbaa !143
  %61 = call fastcc float @min_ff(float noundef %59, float noundef %60) #29
  br label %73

62:                                               ; preds = %47
  %63 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %9, i64 0, i32 10
  %64 = load ptr, ptr %63, align 8, !tbaa !147
  %65 = icmp eq ptr %64, null
  br i1 %65, label %75, label %66

66:                                               ; preds = %62
  store float 0xC7EFFFFFE0000000, ptr %7, align 4, !tbaa !143
  store float 0x47EFFFFFE0000000, ptr %8, align 4, !tbaa !143
  call void %64(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %2, ptr noundef nonnull %3) #28
  %67 = load float, ptr %2, align 4, !tbaa !143
  %68 = load float, ptr %7, align 4, !tbaa !143
  %69 = call fastcc float @max_ff(float noundef %67, float noundef %68) #29
  store float %69, ptr %2, align 4, !tbaa !143
  %70 = load float, ptr %3, align 4, !tbaa !143
  %71 = load float, ptr %8, align 4, !tbaa !143
  %72 = call fastcc float @min_ff(float noundef %70, float noundef %71) #29
  br label %73

73:                                               ; preds = %55, %66
  %74 = phi float [ %72, %66 ], [ %61, %55 ]
  store float %74, ptr %3, align 4, !tbaa !143
  br label %75

75:                                               ; preds = %73, %62
  %76 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %9, i64 0, i32 15
  %77 = load float, ptr %76, align 8, !tbaa !152
  store float %77, ptr %4, align 4, !tbaa !143
  %78 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %9, i64 0, i32 16
  %79 = load i32, ptr %78, align 4, !tbaa !153
  %80 = sitofp i32 %79 to float
  br label %81

81:                                               ; preds = %43, %39, %75
  %82 = phi float [ %80, %75 ], [ %46, %43 ], [ 3.000000e+00, %39 ]
  store float %82, ptr %5, align 4, !tbaa !143
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #30
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0, float noundef %1) unnamed_addr #11 !PGOFuncName !154 {
  %3 = fcmp ogt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0, float noundef %1) unnamed_addr #11 !PGOFuncName !155 {
  %3 = fcmp olt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @RNA_property_float_clamp(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #30
  call void @RNA_property_float_range(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5) #29
  %6 = load float, ptr %2, align 4, !tbaa !143
  %7 = load float, ptr %4, align 4, !tbaa !143
  %8 = fcmp olt float %6, %7
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = load float, ptr %5, align 4, !tbaa !143
  %11 = fcmp ogt float %6, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %9, %3
  %13 = phi float [ %7, %3 ], [ %10, %9 ]
  %14 = phi i32 [ -1, %3 ], [ 1, %9 ]
  store float %13, ptr %2, align 4, !tbaa !143
  br label %15

15:                                               ; preds = %12, %9
  %16 = phi i32 [ 0, %9 ], [ %14, %12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #30
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @RNA_property_int_clamp(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #30
  call void @RNA_property_int_range(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5) #29
  %6 = load i32, ptr %2, align 4, !tbaa !96
  %7 = load i32, ptr %4, align 4, !tbaa !96
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = load i32, ptr %5, align 4, !tbaa !96
  %11 = icmp sgt i32 %6, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %9, %3
  %13 = phi i32 [ %7, %3 ], [ %10, %9 ]
  %14 = phi i32 [ -1, %3 ], [ 1, %9 ]
  store i32 %13, ptr %2, align 4, !tbaa !96
  br label %15

15:                                               ; preds = %12, %9
  %16 = phi i32 [ 0, %9 ], [ %14, %12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #30
  ret i32 %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @RNA_property_string_maxlength(ptr noundef readonly %0) local_unnamed_addr #12 {
  %2 = tail call fastcc ptr @rna_ensure_property(ptr noundef %0) #29
  %3 = getelementptr inbounds %struct.StringPropertyRNA, ptr %2, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !156
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RNA_property_pointer_type(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @rna_ensure_property(ptr noundef %1) #29
  %4 = getelementptr inbounds %struct.PropertyRNA, ptr %3, i64 0, i32 9
  %5 = load i32, ptr %4, align 8, !tbaa !77
  switch i32 %5, label %20 [
    i32 5, label %6
    i32 6, label %16
  ]

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.PointerPropertyRNA, ptr %3, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !158
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call ptr %8(ptr noundef %0) #28
  br label %21

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.PointerPropertyRNA, ptr %3, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !160
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %21

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.CollectionPropertyRNA, ptr %3, i64 0, i32 9
  %18 = load ptr, ptr %17, align 8, !tbaa !161
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %12, %16, %2
  br label %21

21:                                               ; preds = %12, %10, %16, %20
  %22 = phi ptr [ @RNA_UnknownType, %20 ], [ %18, %16 ], [ %14, %12 ], [ %11, %10 ]
  ret ptr %22
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @RNA_property_pointer_poll(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc ptr @rna_ensure_property(ptr noundef %1) #29
  %5 = getelementptr inbounds %struct.PropertyRNA, ptr %4, i64 0, i32 9
  %6 = load i32, ptr %5, align 8, !tbaa !77
  %7 = icmp eq i32 %6, 5
  br i1 %7, label %8, label %14

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.PointerPropertyRNA, ptr %4, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !162
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %8
  %13 = tail call i32 %10(ptr noundef %0, ptr noundef byval(%struct.PointerRNA) align 8 %2) #28
  br label %18

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.PropertyRNA, ptr %4, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !45
  %17 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull @__func__.RNA_property_pointer_poll, ptr noundef %16) #29
  br label %18

18:                                               ; preds = %12, %8, %14
  %19 = phi i32 [ 0, %14 ], [ %13, %12 ], [ 1, %8 ]
  ret i32 %19
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_property_enum_items(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3, ptr noundef writeonly %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = tail call fastcc ptr @rna_ensure_property(ptr noundef %2) #29
  store i8 0, ptr %5, align 1, !tbaa !89
  %8 = getelementptr inbounds %struct.EnumPropertyRNA, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !163
  %10 = icmp eq ptr %9, null
  br i1 %10, label %33, label %11

11:                                               ; preds = %6
  %12 = icmp eq ptr %0, null
  %13 = getelementptr inbounds %struct.PropertyRNA, ptr %2, i64 0, i32 4
  %14 = load i32, ptr %13, align 8, !tbaa !43
  %15 = and i32 %14, 16777216
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %12, i1 %16, i1 false
  br i1 %17, label %33, label %18

18:                                               ; preds = %11
  %19 = and i32 %14, 16777216
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, ptr %0, ptr null
  %22 = tail call ptr %9(ptr noundef %21, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %5) #28
  %23 = icmp eq ptr %4, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %18, %24
  %25 = phi i64 [ %29, %24 ], [ 0, %18 ]
  %26 = getelementptr inbounds %struct.EnumPropertyItem, ptr %22, i64 %25, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !165
  %28 = icmp eq ptr %27, null
  %29 = add nuw i64 %25, 1
  br i1 %28, label %30, label %24, !llvm.loop !167

30:                                               ; preds = %24
  %31 = trunc i64 %25 to i32
  store i32 %31, ptr %4, align 4, !tbaa !96
  br label %32

32:                                               ; preds = %30, %18
  store ptr %22, ptr %3, align 8, !tbaa !34
  br label %40

33:                                               ; preds = %11, %6
  %34 = getelementptr inbounds %struct.EnumPropertyRNA, ptr %7, i64 0, i32 7
  %35 = load ptr, ptr %34, align 8, !tbaa !168
  store ptr %35, ptr %3, align 8, !tbaa !34
  %36 = icmp eq ptr %4, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.EnumPropertyRNA, ptr %7, i64 0, i32 8
  %39 = load i32, ptr %38, align 8, !tbaa !169
  store i32 %39, ptr %4, align 4, !tbaa !96
  br label %40

40:                                               ; preds = %33, %37, %32
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_property_enum_items_gettexted(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  tail call void @RNA_property_enum_items(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #29
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_property_enum_items_gettexted_all(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3, ptr noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = alloca i8, align 1
  %8 = tail call fastcc ptr @rna_ensure_property(ptr noundef %2) #29
  %9 = getelementptr inbounds %struct.EnumPropertyRNA, ptr %8, i64 0, i32 8
  %10 = load i32, ptr %9, align 8, !tbaa !169
  %11 = mul i32 %10, 40
  %12 = add i32 %11, 40
  store i8 1, ptr %5, align 1, !tbaa !89
  %13 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %14 = sext i32 %12 to i64
  %15 = tail call ptr %13(i64 noundef %14, ptr noundef nonnull @.str.14) #28
  store ptr %15, ptr %3, align 8, !tbaa !34
  %16 = getelementptr inbounds %struct.EnumPropertyRNA, ptr %8, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !168
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %15, ptr align 8 %17, i64 %14, i1 false)
  %18 = icmp eq ptr %4, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %6
  %20 = load i32, ptr %9, align 8, !tbaa !169
  store i32 %20, ptr %4, align 4, !tbaa !96
  br label %21

21:                                               ; preds = %19, %6
  %22 = getelementptr inbounds %struct.EnumPropertyRNA, ptr %8, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !163
  %24 = icmp eq ptr %23, null
  br i1 %24, label %73, label %25

25:                                               ; preds = %21
  %26 = icmp eq ptr %0, null
  %27 = getelementptr inbounds %struct.PropertyRNA, ptr %2, i64 0, i32 4
  %28 = load i32, ptr %27, align 8, !tbaa !43
  %29 = and i32 %28, 16777216
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %26, i1 %30, i1 false
  br i1 %31, label %73, label %32

32:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #30
  store i8 0, ptr %7, align 1, !tbaa !89
  %33 = and i32 %28, 16777216
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %34, ptr %0, ptr null
  %36 = call ptr %23(ptr noundef %35, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %7) #28
  %37 = load i32, ptr %9, align 8, !tbaa !169
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %67

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.EnumPropertyItem, ptr %36, i64 0, i32 1
  %41 = zext nneg i32 %37 to i64
  br label %42

42:                                               ; preds = %39, %64
  %43 = phi i64 [ 0, %39 ], [ %65, %64 ]
  %44 = load ptr, ptr %40, align 8, !tbaa !165
  %45 = icmp eq ptr %44, null
  %46 = load ptr, ptr %3, align 8, !tbaa !34
  br i1 %45, label %60, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.EnumPropertyItem, ptr %46, i64 %43, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !165
  br label %55

50:                                               ; preds = %55
  %51 = add nuw i64 %56, 1
  %52 = getelementptr inbounds %struct.EnumPropertyItem, ptr %36, i64 %51, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !165
  %54 = icmp eq ptr %53, null
  br i1 %54, label %60, label %55, !llvm.loop !170

55:                                               ; preds = %47, %50
  %56 = phi i64 [ 0, %47 ], [ %51, %50 ]
  %57 = phi ptr [ %44, %47 ], [ %53, %50 ]
  %58 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %57, ptr noundef nonnull dereferenceable(1) %49) #31
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %64, label %50

60:                                               ; preds = %50, %42
  %61 = getelementptr inbounds %struct.EnumPropertyItem, ptr %46, i64 %43, i32 3
  store ptr null, ptr %61, align 8, !tbaa !171
  %62 = load ptr, ptr %3, align 8, !tbaa !34
  %63 = getelementptr inbounds %struct.EnumPropertyItem, ptr %62, i64 %43, i32 1
  store ptr @.str.13, ptr %63, align 8, !tbaa !165
  br label %64

64:                                               ; preds = %55, %60
  %65 = add nuw nsw i64 %43, 1
  %66 = icmp eq i64 %65, %41
  br i1 %66, label %67, label %42, !llvm.loop !172

67:                                               ; preds = %64, %32
  %68 = load i8, ptr %7, align 1, !tbaa !89
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %67
  %71 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %71(ptr noundef %36) #28
  br label %72

72:                                               ; preds = %70, %67
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #30
  br label %73

73:                                               ; preds = %25, %72, %21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @RNA_property_enum_value(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #30
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #30
  call void @RNA_property_enum_items(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %6, ptr noundef null, ptr noundef nonnull %7) #29
  %8 = load ptr, ptr %6, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %23, label %10

10:                                               ; preds = %5
  %11 = call i32 @RNA_enum_from_identifier(ptr noundef nonnull %8, ptr noundef %3) #29
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %17, label %13

13:                                               ; preds = %10
  %14 = sext i32 %11 to i64
  %15 = getelementptr inbounds %struct.EnumPropertyItem, ptr %8, i64 %14
  %16 = load i32, ptr %15, align 8, !tbaa !173
  store i32 %16, ptr %4, align 4, !tbaa !96
  br label %17

17:                                               ; preds = %10, %13
  %18 = phi i8 [ 1, %13 ], [ 0, %10 ]
  %19 = load i8, ptr %7, align 1, !tbaa !89
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %22(ptr noundef nonnull %8) #28
  br label %23

23:                                               ; preds = %5, %17, %21
  %24 = phi i8 [ %18, %21 ], [ %18, %17 ], [ 0, %5 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #30
  ret i8 %24
}

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @RNA_enum_from_identifier(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.EnumPropertyItem, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !165
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %2, %15
  %7 = phi ptr [ %19, %15 ], [ %4, %2 ]
  %8 = phi i32 [ %17, %15 ], [ 0, %2 ]
  %9 = phi ptr [ %16, %15 ], [ %0, %2 ]
  %10 = load i8, ptr %7, align 1, !tbaa !89
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %6
  %13 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %1) #31
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %6, %12
  %16 = getelementptr inbounds %struct.EnumPropertyItem, ptr %9, i64 1
  %17 = add nuw nsw i32 %8, 1
  %18 = getelementptr inbounds %struct.EnumPropertyItem, ptr %9, i64 1, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !165
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %6, !llvm.loop !174

21:                                               ; preds = %12, %15, %2
  %22 = phi i32 [ -1, %2 ], [ -1, %15 ], [ %8, %12 ]
  ret i32 %22
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @RNA_enum_identifier(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #14 {
  %4 = tail call i32 @RNA_enum_from_value(ptr noundef %0, i32 noundef %1) #29
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = sext i32 %4 to i64
  %8 = getelementptr inbounds %struct.EnumPropertyItem, ptr %0, i64 %7, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !165
  store ptr %9, ptr %2, align 8, !tbaa !34
  br label %10

10:                                               ; preds = %3, %6
  %11 = phi i8 [ 1, %6 ], [ 0, %3 ]
  ret i8 %11
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @RNA_enum_from_value(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.EnumPropertyItem, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !165
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %2, %15
  %7 = phi ptr [ %19, %15 ], [ %4, %2 ]
  %8 = phi i32 [ %17, %15 ], [ 0, %2 ]
  %9 = phi ptr [ %16, %15 ], [ %0, %2 ]
  %10 = load i8, ptr %7, align 1, !tbaa !89
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %6
  %13 = load i32, ptr %9, align 8, !tbaa !173
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %21, label %15

15:                                               ; preds = %6, %12
  %16 = getelementptr inbounds %struct.EnumPropertyItem, ptr %9, i64 1
  %17 = add nuw nsw i32 %8, 1
  %18 = getelementptr inbounds %struct.EnumPropertyItem, ptr %9, i64 1, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !165
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %6, !llvm.loop !175

21:                                               ; preds = %12, %15, %2
  %22 = phi i32 [ -1, %2 ], [ -1, %15 ], [ %8, %12 ]
  ret i32 %22
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @RNA_enum_bitflag_identifiers(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #14 {
  %4 = getelementptr inbounds %struct.EnumPropertyItem, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !165
  %6 = icmp eq ptr %5, null
  br i1 %6, label %27, label %7

7:                                                ; preds = %3, %21
  %8 = phi ptr [ %25, %21 ], [ %5, %3 ]
  %9 = phi i32 [ %22, %21 ], [ 0, %3 ]
  %10 = phi ptr [ %23, %21 ], [ %0, %3 ]
  %11 = load i8, ptr %8, align 1, !tbaa !89
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %7
  %14 = load i32, ptr %10, align 8, !tbaa !173
  %15 = and i32 %14, %1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = add nsw i32 %9, 1
  %19 = sext i32 %9 to i64
  %20 = getelementptr inbounds ptr, ptr %2, i64 %19
  store ptr %8, ptr %20, align 8, !tbaa !34
  br label %21

21:                                               ; preds = %7, %13, %17
  %22 = phi i32 [ %18, %17 ], [ %9, %13 ], [ %9, %7 ]
  %23 = getelementptr inbounds %struct.EnumPropertyItem, ptr %10, i64 1
  %24 = getelementptr inbounds %struct.EnumPropertyItem, ptr %10, i64 1, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !165
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %7, !llvm.loop !176

27:                                               ; preds = %21, %3
  %28 = phi i32 [ 0, %3 ], [ %22, %21 ]
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds ptr, ptr %2, i64 %29
  store ptr null, ptr %30, align 8, !tbaa !34
  ret i32 %28
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @RNA_enum_name(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #14 {
  %4 = tail call i32 @RNA_enum_from_value(ptr noundef %0, i32 noundef %1) #29
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = sext i32 %4 to i64
  %8 = getelementptr inbounds %struct.EnumPropertyItem, ptr %0, i64 %7, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !171
  store ptr %9, ptr %2, align 8, !tbaa !34
  br label %10

10:                                               ; preds = %3, %6
  %11 = phi i8 [ 1, %6 ], [ 0, %3 ]
  ret i8 %11
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @RNA_enum_description(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #14 {
  %4 = tail call i32 @RNA_enum_from_value(ptr noundef %0, i32 noundef %1) #29
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = sext i32 %4 to i64
  %8 = getelementptr inbounds %struct.EnumPropertyItem, ptr %0, i64 %7, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !177
  store ptr %9, ptr %2, align 8, !tbaa !34
  br label %10

10:                                               ; preds = %3, %6
  %11 = phi i8 [ 1, %6 ], [ 0, %3 ]
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @RNA_property_enum_identifier(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #30
  store ptr null, ptr %6, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #30
  call void @RNA_property_enum_items(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %6, ptr noundef null, ptr noundef nonnull %7) #29
  %8 = load ptr, ptr %6, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %5
  %11 = call zeroext i8 @RNA_enum_identifier(ptr noundef nonnull %8, i32 noundef %3, ptr noundef %4) #29, !range !70
  %12 = load i8, ptr %7, align 1, !tbaa !89
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %15(ptr noundef nonnull %8) #28
  br label %16

16:                                               ; preds = %5, %10, %14
  %17 = phi i8 [ %11, %14 ], [ %11, %10 ], [ 0, %5 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #30
  ret i8 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @RNA_property_enum_name(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #30
  store ptr null, ptr %6, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #30
  call void @RNA_property_enum_items(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %6, ptr noundef null, ptr noundef nonnull %7) #29
  %8 = load ptr, ptr %6, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %5
  %11 = call zeroext i8 @RNA_enum_name(ptr noundef nonnull %8, i32 noundef %3, ptr noundef %4) #29, !range !70
  %12 = load i8, ptr %7, align 1, !tbaa !89
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %15(ptr noundef nonnull %8) #28
  br label %16

16:                                               ; preds = %5, %10, %14
  %17 = phi i8 [ %11, %14 ], [ %11, %10 ], [ 0, %5 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #30
  ret i8 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @RNA_property_enum_name_gettexted(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef %4) local_unnamed_addr #0 {
  %6 = tail call zeroext i8 @RNA_property_enum_name(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) #29, !range !70
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %21, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.PropertyRNA, ptr %2, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !43
  %11 = and i32 %10, 536870912
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %8
  %14 = tail call zeroext i8 @BLF_translate_iface() #28
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.PropertyRNA, ptr %2, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !178
  %19 = load ptr, ptr %4, align 8, !tbaa !34
  %20 = tail call ptr @BLF_pgettext(ptr noundef %18, ptr noundef %19) #28
  store ptr %20, ptr %4, align 8, !tbaa !34
  br label %21

21:                                               ; preds = %8, %16, %13, %5
  ret i8 %6
}

; Function Attrs: optsize
declare zeroext i8 @BLF_translate_iface() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLF_pgettext(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @RNA_property_enum_bitflag_identifiers(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #30
  store ptr null, ptr %6, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #30
  call void @RNA_property_enum_items(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %6, ptr noundef null, ptr noundef nonnull %7) #29
  %8 = load ptr, ptr %6, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %5
  %11 = call i32 @RNA_enum_bitflag_identifiers(ptr noundef nonnull %8, i32 noundef %3, ptr noundef %4) #29
  %12 = load i8, ptr %7, align 1, !tbaa !89
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %15(ptr noundef nonnull %8) #28
  br label %16

16:                                               ; preds = %5, %10, %14
  %17 = phi i32 [ %11, %14 ], [ %11, %10 ], [ 0, %5 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #30
  ret i32 %17
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @RNA_property_ui_name(ptr noundef readonly %0) local_unnamed_addr #7 {
  %2 = tail call fastcc ptr @rna_ensure_property_name(ptr noundef %0) #29
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @rna_ensure_property_name(ptr noundef readonly %0) unnamed_addr #7 !PGOFuncName !179 {
  %2 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !114
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !180
  br label %10

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 5
  br label %10

10:                                               ; preds = %8, %5
  %11 = phi ptr [ %7, %5 ], [ %9, %8 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @RNA_property_ui_name_raw(ptr noundef readonly %0) local_unnamed_addr #7 {
  %2 = tail call fastcc ptr @rna_ensure_property_name(ptr noundef %0) #29
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RNA_property_ui_description(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc ptr @rna_ensure_property_description(ptr noundef %0) #29
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RNA_property_ui_description_raw(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc ptr @rna_ensure_property_description(ptr noundef %0) #29
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @RNA_property_translation_context(ptr noundef readonly %0) local_unnamed_addr #12 {
  %2 = tail call fastcc ptr @rna_ensure_property(ptr noundef %0) #29
  %3 = getelementptr inbounds %struct.PropertyRNA, ptr %2, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !178
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @RNA_property_ui_icon(ptr noundef readonly %0) local_unnamed_addr #12 {
  %2 = tail call fastcc ptr @rna_ensure_property(ptr noundef %0) #29
  %3 = getelementptr inbounds %struct.PropertyRNA, ptr %2, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !181
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @RNA_property_editable(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !56
  %4 = tail call fastcc ptr @rna_ensure_property(ptr noundef %1) #29
  %5 = getelementptr inbounds %struct.PropertyRNA, ptr %4, i64 0, i32 17
  %6 = load ptr, ptr %5, align 8, !tbaa !182
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call i32 %6(ptr noundef nonnull %0) #28
  br label %13

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.PropertyRNA, ptr %4, i64 0, i32 4
  %12 = load i32, ptr %11, align 8, !tbaa !43
  br label %13

13:                                               ; preds = %10, %8
  %14 = phi i32 [ %9, %8 ], [ %12, %10 ]
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %13
  %18 = icmp eq ptr %3, null
  br i1 %18, label %29, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !183
  %22 = icmp eq ptr %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.PropertyRNA, ptr %4, i64 0, i32 4
  %25 = load i32, ptr %24, align 8, !tbaa !43
  %26 = lshr i32 %25, 16
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  br label %29

29:                                               ; preds = %17, %19, %23, %13
  %30 = phi i8 [ 0, %13 ], [ 1, %19 ], [ 1, %17 ], [ %28, %23 ]
  ret i8 %30
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @RNA_property_editable_flag(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @rna_ensure_property(ptr noundef %1) #29
  %4 = getelementptr inbounds %struct.PropertyRNA, ptr %3, i64 0, i32 17
  %5 = load ptr, ptr %4, align 8, !tbaa !182
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call i32 %5(ptr noundef %0) #28
  br label %12

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.PropertyRNA, ptr %3, i64 0, i32 4
  %11 = load i32, ptr %10, align 8, !tbaa !43
  br label %12

12:                                               ; preds = %9, %7
  %13 = phi i32 [ %8, %7 ], [ %11, %9 ]
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  ret i8 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @RNA_property_editable_index(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc ptr @rna_ensure_property(ptr noundef %1) #29
  %5 = getelementptr inbounds %struct.PropertyRNA, ptr %4, i64 0, i32 4
  %6 = load i32, ptr %5, align 8, !tbaa !43
  %7 = getelementptr inbounds %struct.PropertyRNA, ptr %4, i64 0, i32 17
  %8 = load ptr, ptr %7, align 8, !tbaa !182
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = tail call i32 %8(ptr noundef %0) #28
  %12 = and i32 %11, %6
  br label %13

13:                                               ; preds = %10, %3
  %14 = phi i32 [ %12, %10 ], [ %6, %3 ]
  %15 = getelementptr inbounds %struct.PropertyRNA, ptr %4, i64 0, i32 18
  %16 = load ptr, ptr %15, align 8, !tbaa !185
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = tail call i32 %16(ptr noundef %0, i32 noundef %2) #28
  %20 = and i32 %19, %14
  br label %21

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %20, %18 ], [ %14, %13 ]
  %23 = load ptr, ptr %0, align 8, !tbaa !56
  %24 = and i32 %22, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %37, label %26

26:                                               ; preds = %21
  %27 = icmp eq ptr %23, null
  br i1 %27, label %37, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.ID, ptr %23, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !183
  %31 = icmp eq ptr %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %28
  %33 = load i32, ptr %5, align 8, !tbaa !43
  %34 = lshr i32 %33, 16
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 1
  br label %37

37:                                               ; preds = %26, %28, %32, %21
  %38 = phi i8 [ 0, %21 ], [ 1, %28 ], [ 1, %26 ], [ %36, %32 ]
  ret i8 %38
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @RNA_property_animateable(ptr nocapture noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !56
  %4 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef %3) #28
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = tail call fastcc ptr @rna_ensure_property(ptr noundef %1) #29
  %8 = getelementptr inbounds %struct.PropertyRNA, ptr %7, i64 0, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !43
  %10 = and i32 %9, 2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %6
  %13 = trunc i32 %9 to i8
  %14 = and i8 %13, 1
  br label %15

15:                                               ; preds = %6, %2, %12
  %16 = phi i8 [ %14, %12 ], [ 0, %2 ], [ 0, %6 ]
  ret i8 %16
}

; Function Attrs: optsize
declare zeroext i8 @id_type_can_have_animdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @RNA_property_animated(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #30
  %4 = icmp eq ptr %1, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %2
  %6 = tail call zeroext i8 @RNA_property_array_check(ptr noundef nonnull %1) #29, !range !70
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %5
  %9 = tail call i32 @RNA_property_array_length(ptr noundef %0, ptr noundef nonnull %1) #29
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %5, %8
  %12 = phi i32 [ %9, %8 ], [ 1, %5 ]
  br label %16

13:                                               ; preds = %16
  %14 = add nuw nsw i32 %17, 1
  %15 = icmp eq i32 %14, %12
  br i1 %15, label %20, label %16, !llvm.loop !186

16:                                               ; preds = %11, %13
  %17 = phi i32 [ %14, %13 ], [ 0, %11 ]
  %18 = call ptr @rna_get_fcurve(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %17, ptr noundef null, ptr noundef nonnull %3) #28
  %19 = icmp eq ptr %18, null
  br i1 %19, label %13, label %20

20:                                               ; preds = %16, %13, %8, %2
  %21 = phi i8 [ 0, %2 ], [ 0, %8 ], [ 1, %16 ], [ 0, %13 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #30
  ret i8 %21
}

; Function Attrs: optsize
declare ptr @rna_get_fcurve(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @RNA_property_path_from_ID_check(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca ptr, align 8
  %6 = tail call ptr @RNA_path_from_ID_to_property(ptr noundef %0, ptr noundef %1) #29
  %7 = icmp eq ptr %6, null
  br i1 %7, label %17, label %8

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #30
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #30
  %9 = load ptr, ptr %0, align 8, !tbaa !56
  call void @RNA_id_pointer_create(ptr noundef %9, ptr noundef nonnull %3) #29
  %10 = call zeroext i8 @RNA_path_resolve(ptr noundef nonnull %3, ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %5) #29, !range !70
  %11 = icmp ne i8 %10, 0
  %12 = load ptr, ptr %5, align 8
  %13 = icmp eq ptr %12, %1
  %14 = select i1 %11, i1 %13, i1 false
  %15 = zext i1 %14 to i8
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %16(ptr noundef nonnull %6) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #30
  br label %17

17:                                               ; preds = %8, %2
  %18 = phi i8 [ %15, %8 ], [ 0, %2 ]
  ret i8 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RNA_path_from_ID_to_property(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [128 x i8], align 16
  %4 = alloca [128 x i8], align 16
  %5 = getelementptr inbounds %struct.PropertyRNA, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !114
  %7 = icmp eq i32 %6, -1
  %8 = load ptr, ptr %0, align 8, !tbaa !56
  %9 = icmp eq ptr %8, null
  br i1 %9, label %38, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !58
  %13 = icmp eq ptr %12, null
  br i1 %13, label %38, label %14

14:                                               ; preds = %10
  %15 = tail call ptr @RNA_path_from_ID_to_struct(ptr noundef nonnull %0) #29
  %16 = tail call ptr @RNA_property_identifier(ptr noundef nonnull %1) #29
  %17 = icmp eq ptr %15, null
  br i1 %17, label %27, label %18

18:                                               ; preds = %14
  br i1 %7, label %19, label %21

19:                                               ; preds = %18
  %20 = tail call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.32, ptr noundef nonnull %15, ptr noundef %16) #28
  br label %24

21:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #30
  %22 = call i64 @BLI_strescape(ptr noundef nonnull %3, ptr noundef %16, i64 noundef 128) #28
  %23 = call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.33, ptr noundef nonnull %15, ptr noundef nonnull %3) #28
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #30
  br label %24

24:                                               ; preds = %21, %19
  %25 = phi ptr [ %20, %19 ], [ %23, %21 ]
  %26 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %26(ptr noundef nonnull %15) #28
  br label %38

27:                                               ; preds = %14
  %28 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !57
  %30 = tail call zeroext i8 @RNA_struct_is_ID(ptr noundef %29) #29, !range !70
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %27
  br i1 %7, label %33, label %35

33:                                               ; preds = %32
  %34 = tail call ptr @BLI_strdup(ptr noundef %16) #28
  br label %38

35:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #30
  %36 = call i64 @BLI_strescape(ptr noundef nonnull %4, ptr noundef %16, i64 noundef 128) #28
  %37 = call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.34, ptr noundef nonnull %4) #28
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #30
  br label %38

38:                                               ; preds = %24, %33, %35, %27, %2, %10
  %39 = phi ptr [ null, %10 ], [ null, %2 ], [ %25, %24 ], [ %34, %33 ], [ %37, %35 ], [ null, %27 ]
  ret ptr %39
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @RNA_property_update_check(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !114
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %5, label %14

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 15
  %7 = load ptr, ptr %6, align 8, !tbaa !187
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 16
  %11 = load i32, ptr %10, align 8, !tbaa !188
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i8
  br label %14

14:                                               ; preds = %9, %5, %1
  %15 = phi i8 [ 1, %5 ], [ 1, %1 ], [ %13, %9 ]
  ret i8 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_property_update(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #28
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #28
  tail call fastcc void @rna_property_update(ptr noundef %0, ptr noundef %4, ptr noundef %5, ptr noundef %1, ptr noundef %2) #29
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_property_update(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 !PGOFuncName !189 {
  %6 = getelementptr inbounds %struct.PropertyRNA, ptr %4, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !114
  %8 = icmp eq i32 %7, -1
  %9 = tail call fastcc ptr @rna_ensure_property(ptr noundef %4) #29
  br i1 %8, label %10, label %38

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.PropertyRNA, ptr %9, i64 0, i32 15
  %12 = load ptr, ptr %11, align 8, !tbaa !187
  %13 = icmp eq ptr %12, null
  br i1 %13, label %27, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.PropertyRNA, ptr %9, i64 0, i32 4
  %16 = load i32, ptr %15, align 8, !tbaa !43
  %17 = and i32 %16, 4194304
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %14
  %20 = icmp eq ptr %0, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %19
  %22 = and i32 %16, 138412032
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  tail call void %12(ptr noundef nonnull %0, ptr noundef %3, ptr noundef nonnull %9) #28
  br label %27

25:                                               ; preds = %21
  tail call void %12(ptr noundef nonnull %0, ptr noundef %3) #28
  br label %27

26:                                               ; preds = %14
  tail call void %12(ptr noundef %1, ptr noundef %2, ptr noundef %3) #28
  br label %27

27:                                               ; preds = %26, %24, %25, %19, %10
  %28 = getelementptr inbounds %struct.PropertyRNA, ptr %9, i64 0, i32 16
  %29 = load i32, ptr %28, align 8, !tbaa !188
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %3, align 8, !tbaa !56
  tail call void @WM_main_add_notifier(i32 noundef %29, ptr noundef %32) #28
  br label %33

33:                                               ; preds = %31, %27
  %34 = getelementptr inbounds %struct.PropertyRNA, ptr %9, i64 0, i32 4
  %35 = load i32, ptr %34, align 8, !tbaa !43
  %36 = and i32 %35, 1024
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %5, %33
  %39 = load ptr, ptr %3, align 8, !tbaa !56
  tail call void @DAG_id_tag_update(ptr noundef %39, i16 noundef signext 7) #28
  tail call void @WM_main_add_notifier(i32 noundef 33554432, ptr noundef null) #28
  br label %40

40:                                               ; preds = %38, %33
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_property_update_main(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  tail call fastcc void @rna_property_update(ptr noundef null, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #29
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_property_update_cache_add(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %49, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.PropertyRNA, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !114
  %7 = icmp eq i32 %6, -1
  %8 = tail call fastcc ptr @rna_ensure_property(ptr noundef %1) #29
  br i1 %7, label %9, label %49

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.PropertyRNA, ptr %8, i64 0, i32 15
  %11 = load ptr, ptr %10, align 8, !tbaa !187
  %12 = icmp eq ptr %11, null
  br i1 %12, label %49, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.PropertyRNA, ptr %8, i64 0, i32 4
  %15 = load i32, ptr %14, align 8, !tbaa !43
  %16 = and i32 %15, 4194304
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %49

18:                                               ; preds = %13, %22
  %19 = phi ptr [ %20, %22 ], [ @rna_updates_cache, %13 ]
  %20 = load ptr, ptr %19, align 8, !tbaa !34
  %21 = icmp eq ptr %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.tRnaUpdateCacheElem, ptr %20, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !190
  %25 = load ptr, ptr %0, align 8, !tbaa !56
  %26 = icmp eq ptr %24, %25
  br i1 %26, label %36, label %18, !llvm.loop !191

27:                                               ; preds = %18
  %28 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %29 = tail call ptr %28(i64 noundef 56, ptr noundef nonnull @.str.15) #28
  tail call void @BLI_addtail(ptr noundef nonnull @rna_updates_cache, ptr noundef %29) #28
  %30 = load ptr, ptr %0, align 8, !tbaa !56
  %31 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !57
  %33 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !58
  %35 = getelementptr inbounds %struct.tRnaUpdateCacheElem, ptr %29, i64 0, i32 2
  tail call void @RNA_pointer_create(ptr noundef %30, ptr noundef %32, ptr noundef %34, ptr noundef nonnull %35) #29
  br label %36

36:                                               ; preds = %22, %27
  %37 = phi ptr [ %29, %27 ], [ %20, %22 ]
  %38 = getelementptr inbounds %struct.tRnaUpdateCacheElem, ptr %37, i64 0, i32 3
  br label %39

39:                                               ; preds = %43, %36
  %40 = phi ptr [ %38, %36 ], [ %41, %43 ]
  %41 = load ptr, ptr %40, align 8, !tbaa !34
  %42 = icmp eq ptr %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.LinkData, ptr %41, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !192
  %46 = icmp eq ptr %11, %45
  br i1 %46, label %49, label %39, !llvm.loop !194

47:                                               ; preds = %39
  %48 = tail call ptr @BLI_genericNodeN(ptr noundef nonnull %11) #28
  tail call void @BLI_addtail(ptr noundef nonnull %38, ptr noundef %48) #28
  br label %49

49:                                               ; preds = %43, %4, %9, %13, %2, %47
  ret void
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_genericNodeN(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_property_update_cache_flush(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @rna_updates_cache, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %21, label %8

5:                                                ; preds = %15, %8
  %6 = load ptr, ptr %9, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %21, label %8, !llvm.loop !195

8:                                                ; preds = %2, %5
  %9 = phi ptr [ %6, %5 ], [ %3, %2 ]
  %10 = getelementptr inbounds %struct.tRnaUpdateCacheElem, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %5, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.tRnaUpdateCacheElem, ptr %9, i64 0, i32 2
  br label %15

15:                                               ; preds = %13, %15
  %16 = phi ptr [ %11, %13 ], [ %19, %15 ]
  %17 = getelementptr inbounds %struct.LinkData, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !192
  tail call void %18(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %14) #28
  %19 = load ptr, ptr %16, align 8, !tbaa !34
  %20 = icmp eq ptr %19, null
  br i1 %20, label %5, label %15, !llvm.loop !196

21:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @RNA_property_boolean_get(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8, !tbaa !34
  %4 = call ptr @rna_idproperty_check(ptr noundef nonnull %3, ptr noundef %0) #29
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.IDProperty, ptr %4, i64 0, i32 7, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !126
  br label %25

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.BoolPropertyRNA, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !197
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = tail call i32 %11(ptr noundef %0) #28
  br label %25

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.BoolPropertyRNA, ptr %1, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !199
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %3, align 8, !tbaa !34
  %21 = tail call i32 %17(ptr noundef %0, ptr noundef %20) #28
  br label %25

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.BoolPropertyRNA, ptr %1, i64 0, i32 9
  %24 = load i32, ptr %23, align 8, !tbaa !200
  br label %25

25:                                               ; preds = %22, %19, %13, %6
  %26 = phi i32 [ %8, %6 ], [ %14, %13 ], [ %21, %19 ], [ %24, %22 ]
  ret i32 %26
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_property_boolean_set(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca %union.IDPropertyTemplate, align 8
  store ptr %1, ptr %4, align 8, !tbaa !34
  %6 = icmp ne i32 %2, 0
  %7 = zext i1 %6 to i32
  %8 = call ptr @rna_idproperty_check(ptr noundef nonnull %4, ptr noundef %0) #29
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.IDProperty, ptr %8, i64 0, i32 7, i32 2
  store i32 %7, ptr %11, align 8, !tbaa !126
  tail call fastcc void @rna_idproperty_touch(ptr noundef nonnull %8) #29
  br label %37

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.BoolPropertyRNA, ptr %1, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !201
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void %14(ptr noundef %0, i32 noundef %7) #28
  br label %37

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.BoolPropertyRNA, ptr %1, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !202
  %20 = icmp eq ptr %19, null
  %21 = load ptr, ptr %4, align 8, !tbaa !34
  br i1 %20, label %23, label %22

22:                                               ; preds = %17
  tail call void %19(ptr noundef %0, ptr noundef %21, i32 noundef %7) #28
  br label %37

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.PropertyRNA, ptr %21, i64 0, i32 4
  %25 = load i32, ptr %24, align 8, !tbaa !43
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  store i32 %7, ptr %5, align 8, !tbaa !89
  %29 = tail call ptr @RNA_struct_idprops(ptr noundef %0, i8 noundef zeroext 1) #29
  %30 = icmp eq ptr %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.PropertyRNA, ptr %21, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !45
  %34 = call ptr @IDP_New(i32 noundef 1, ptr noundef nonnull %5, ptr noundef %33) #28
  %35 = call zeroext i8 @IDP_AddToGroup(ptr noundef nonnull %29, ptr noundef %34) #28
  br label %36

36:                                               ; preds = %31, %28
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #30
  br label %37

37:                                               ; preds = %16, %23, %36, %22, %10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @rna_idproperty_touch(ptr nocapture noundef %0) unnamed_addr #15 !PGOFuncName !203 {
  %2 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 4
  %3 = load i16, ptr %2, align 2, !tbaa !204
  %4 = and i16 %3, -129
  store i16 %4, ptr %2, align 2, !tbaa !204
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @IDP_AddToGroup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @IDP_New(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_property_boolean_get_array(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8, !tbaa !34
  %5 = call ptr @rna_idproperty_check(ptr noundef nonnull %4, ptr noundef %0) #29
  %6 = icmp eq ptr %5, null
  %7 = load ptr, ptr %4, align 8, !tbaa !34
  %8 = getelementptr inbounds %struct.PropertyRNA, ptr %7, i64 0, i32 12
  %9 = load i32, ptr %8, align 8, !tbaa !124
  %10 = icmp eq i32 %9, 0
  br i1 %6, label %21, label %11

11:                                               ; preds = %3
  br i1 %10, label %12, label %14

12:                                               ; preds = %11
  %13 = tail call i32 @RNA_property_boolean_get(ptr noundef %0, ptr noundef nonnull %7) #29
  store i32 %13, ptr %2, align 4, !tbaa !96
  br label %44

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.IDProperty, ptr %5, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !100
  %17 = getelementptr inbounds %struct.IDProperty, ptr %5, i64 0, i32 8
  %18 = load i32, ptr %17, align 8, !tbaa !78
  %19 = sext i32 %18 to i64
  %20 = shl nsw i64 %19, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2, ptr align 1 %16, i64 %20, i1 false)
  br label %44

21:                                               ; preds = %3
  br i1 %10, label %22, label %24

22:                                               ; preds = %21
  %23 = tail call i32 @RNA_property_boolean_get(ptr noundef %0, ptr noundef nonnull %7) #29
  store i32 %23, ptr %2, align 4, !tbaa !96
  br label %44

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.BoolPropertyRNA, ptr %1, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !205
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  tail call void %26(ptr noundef %0, ptr noundef %2) #28
  br label %44

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.BoolPropertyRNA, ptr %1, i64 0, i32 7
  %31 = load ptr, ptr %30, align 8, !tbaa !206
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  tail call void %31(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %2) #28
  br label %44

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.BoolPropertyRNA, ptr %1, i64 0, i32 10
  %36 = load ptr, ptr %35, align 8, !tbaa !207
  %37 = icmp eq ptr %36, null
  %38 = getelementptr inbounds %struct.PropertyRNA, ptr %7, i64 0, i32 14
  %39 = load i32, ptr %38, align 8, !tbaa !122
  %40 = zext i32 %39 to i64
  %41 = shl nuw nsw i64 %40, 2
  br i1 %37, label %43, label %42

42:                                               ; preds = %34
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2, ptr nonnull align 4 %36, i64 %41, i1 false)
  br label %44

43:                                               ; preds = %34
  tail call void @llvm.memset.p0.i64(ptr align 4 %2, i8 0, i64 %41, i1 false)
  br label %44

44:                                               ; preds = %22, %33, %43, %42, %28, %12, %14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @RNA_property_boolean_get_index(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [32 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #30
  %5 = tail call fastcc i32 @rna_ensure_property_array_length(ptr noundef %0, ptr noundef %1) #29
  %6 = icmp slt i32 %5, 33
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  call void @RNA_property_boolean_get_array(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4) #29
  %8 = sext i32 %2 to i64
  %9 = getelementptr inbounds [32 x i32], ptr %4, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !96
  br label %20

11:                                               ; preds = %3
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %13 = zext nneg i32 %5 to i64
  %14 = shl nuw nsw i64 %13, 2
  %15 = tail call ptr %12(i64 noundef %14, ptr noundef nonnull @.str.16) #28
  tail call void @RNA_property_boolean_get_array(ptr noundef %0, ptr noundef %1, ptr noundef %15) #29
  %16 = sext i32 %2 to i64
  %17 = getelementptr inbounds i32, ptr %15, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !96
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %19(ptr noundef %15) #28
  br label %20

20:                                               ; preds = %11, %7
  %21 = phi i32 [ %10, %7 ], [ %18, %11 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #30
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_property_boolean_set_array(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca %union.IDPropertyTemplate, align 8
  store ptr %1, ptr %4, align 8, !tbaa !34
  %6 = call ptr @rna_idproperty_check(ptr noundef nonnull %4, ptr noundef %0) #29
  %7 = icmp eq ptr %6, null
  %8 = load ptr, ptr %4, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.PropertyRNA, ptr %8, i64 0, i32 12
  %10 = load i32, ptr %9, align 8, !tbaa !124
  %11 = icmp eq i32 %10, 0
  br i1 %7, label %24, label %12

12:                                               ; preds = %3
  br i1 %11, label %13, label %16

13:                                               ; preds = %12
  %14 = load i32, ptr %2, align 4, !tbaa !96
  %15 = getelementptr inbounds %struct.IDProperty, ptr %6, i64 0, i32 7, i32 2
  store i32 %14, ptr %15, align 8, !tbaa !126
  br label %23

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.IDProperty, ptr %6, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !100
  %19 = getelementptr inbounds %struct.IDProperty, ptr %6, i64 0, i32 8
  %20 = load i32, ptr %19, align 8, !tbaa !78
  %21 = sext i32 %20 to i64
  %22 = shl nsw i64 %21, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %18, ptr align 4 %2, i64 %22, i1 false)
  br label %23

23:                                               ; preds = %16, %13
  tail call fastcc void @rna_idproperty_touch(ptr noundef nonnull %6) #29
  br label %61

24:                                               ; preds = %3
  br i1 %11, label %25, label %27

25:                                               ; preds = %24
  %26 = load i32, ptr %2, align 4, !tbaa !96
  tail call void @RNA_property_boolean_set(ptr noundef %0, ptr noundef nonnull %8, i32 noundef %26) #29
  br label %61

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.BoolPropertyRNA, ptr %1, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !208
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  tail call void %29(ptr noundef %0, ptr noundef %2) #28
  br label %61

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.BoolPropertyRNA, ptr %1, i64 0, i32 8
  %34 = load ptr, ptr %33, align 8, !tbaa !209
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  tail call void %34(ptr noundef %0, ptr noundef nonnull %8, ptr noundef %2) #28
  br label %61

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.PropertyRNA, ptr %8, i64 0, i32 4
  %39 = load i32, ptr %38, align 8, !tbaa !43
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %61, label %42

42:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %43 = getelementptr inbounds %struct.PropertyRNA, ptr %8, i64 0, i32 14
  %44 = load i32, ptr %43, align 8, !tbaa !122
  %45 = trunc i32 %44 to i16
  %46 = getelementptr inbounds %struct.anon.1, ptr %5, i64 0, i32 1
  store i16 %45, ptr %46, align 2, !tbaa !89
  store i16 1, ptr %5, align 8, !tbaa !89
  %47 = tail call ptr @RNA_struct_idprops(ptr noundef %0, i8 noundef zeroext 1) #29
  %48 = icmp eq ptr %47, null
  br i1 %48, label %60, label %49

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.PropertyRNA, ptr %8, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !45
  %52 = call ptr @IDP_New(i32 noundef 5, ptr noundef nonnull %5, ptr noundef %51) #28
  %53 = call zeroext i8 @IDP_AddToGroup(ptr noundef nonnull %47, ptr noundef %52) #28
  %54 = getelementptr inbounds %struct.IDProperty, ptr %52, i64 0, i32 7
  %55 = load ptr, ptr %54, align 8, !tbaa !100
  %56 = getelementptr inbounds %struct.IDProperty, ptr %52, i64 0, i32 8
  %57 = load i32, ptr %56, align 8, !tbaa !78
  %58 = sext i32 %57 to i64
  %59 = shl nsw i64 %58, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %55, ptr align 4 %2, i64 %59, i1 false)
  br label %60

60:                                               ; preds = %49, %42
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #30
  br label %61

61:                                               ; preds = %25, %36, %60, %37, %31, %23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_property_boolean_set_index(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [32 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #30
  %6 = tail call fastcc i32 @rna_ensure_property_array_length(ptr noundef %0, ptr noundef %1) #29
  %7 = icmp slt i32 %6, 33
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  call void @RNA_property_boolean_get_array(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5) #29
  %9 = sext i32 %2 to i64
  %10 = getelementptr inbounds [32 x i32], ptr %5, i64 0, i64 %9
  store i32 %3, ptr %10, align 4, !tbaa !96
  call void @RNA_property_boolean_set_array(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5) #29
  br label %19

11:                                               ; preds = %4
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %13 = zext nneg i32 %6 to i64
  %14 = shl nuw nsw i64 %13, 2
  %15 = tail call ptr %12(i64 noundef %14, ptr noundef nonnull @.str.16) #28
  tail call void @RNA_property_boolean_get_array(ptr noundef %0, ptr noundef %1, ptr noundef %15) #29
  %16 = sext i32 %2 to i64
  %17 = getelementptr inbounds i32, ptr %15, i64 %16
  store i32 %3, ptr %17, align 4, !tbaa !96
  tail call void @RNA_property_boolean_set_array(ptr noundef %0, ptr noundef %1, ptr noundef %15) #29
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %18(ptr noundef %15) #28
  br label %19

19:                                               ; preds = %11, %8
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #30
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @RNA_property_boolean_get_default(ptr nocapture readnone %0, ptr noundef readonly %1) local_unnamed_addr #12 {
  %3 = tail call fastcc ptr @rna_ensure_property(ptr noundef %1) #29
  %4 = getelementptr inbounds %struct.BoolPropertyRNA, ptr %3, i64 0, i32 9
  %5 = load i32, ptr %4, align 8, !tbaa !200
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RNA_property_boolean_get_default_array(ptr nocapture readnone %0, ptr noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #16 {
  %4 = tail call fastcc ptr @rna_ensure_property(ptr noundef %1) #29
  %5 = getelementptr inbounds %struct.PropertyRNA, ptr %1, i64 0, i32 12
  %6 = load i32, ptr %5, align 8, !tbaa !124
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.BoolPropertyRNA, ptr %4, i64 0, i32 9
  %10 = load i32, ptr %9, align 8, !tbaa !200
  store i32 %10, ptr %2, align 4, !tbaa !96
  br label %21

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.BoolPropertyRNA, ptr %4, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !207
  %14 = icmp eq ptr %13, null
  %15 = getelementptr inbounds %struct.PropertyRNA, ptr %1, i64 0, i32 14
  %16 = load i32, ptr %15, align 8, !tbaa !122
  %17 = zext i32 %16 to i64
  %18 = shl nuw nsw i64 %17, 2
  br i1 %14, label %20, label %19

19:                                               ; preds = %11
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2, ptr nonnull align 4 %13, i64 %18, i1 false)
  br label %21

20:                                               ; preds = %11
  tail call void @llvm.memset.p0.i64(ptr align 4 %2, i8 0, i64 %18, i1 false)
  br label %21

21:                                               ; preds = %19, %20, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @RNA_property_boolean_get_default_index(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [32 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #30
  %5 = tail call fastcc i32 @rna_ensure_property_array_length(ptr noundef %0, ptr noundef %1) #29
  %6 = icmp slt i32 %5, 33
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  call void @RNA_property_boolean_get_default_array(ptr poison, ptr noundef %1, ptr noundef nonnull %4) #29
  %8 = sext i32 %2 to i64
  %9 = getelementptr inbounds [32 x i32], ptr %4, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !96
  br label %20

11:                                               ; preds = %3
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %13 = zext nneg i32 %5 to i64
  %14 = shl nuw nsw i64 %13, 2
  %15 = tail call ptr %12(i64 noundef %14, ptr noundef nonnull @.str.17) #28
  tail call void @RNA_property_boolean_get_default_array(ptr poison, ptr noundef %1, ptr noundef %15) #29
  %16 = sext i32 %2 to i64
  %17 = getelementptr inbounds i32, ptr %15, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !96
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %19(ptr noundef %15) #28
  br label %20

20:                                               ; preds = %11, %7
  %21 = phi i32 [ %10, %7 ], [ %18, %11 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #30
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @RNA_property_int_get(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8, !tbaa !34
  %4 = call ptr @rna_idproperty_check(ptr noundef nonnull %3, ptr noundef %0) #29
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.IDProperty, ptr %4, i64 0, i32 7, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !126
  br label %25

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.IntPropertyRNA, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !210
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = tail call i32 %11(ptr noundef %0) #28
  br label %25

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.IntPropertyRNA, ptr %1, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !211
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %3, align 8, !tbaa !34
  %21 = tail call i32 %17(ptr noundef %0, ptr noundef %20) #28
  br label %25

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.IntPropertyRNA, ptr %1, i64 0, i32 16
  %24 = load i32, ptr %23, align 4, !tbaa !212
  br label %25

25:                                               ; preds = %22, %19, %13, %6
  %26 = phi i32 [ %8, %6 ], [ %14, %13 ], [ %21, %19 ], [ %24, %22 ]
  ret i32 %26
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_property_int_set(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.IDPropertyTemplate, align 8
  store ptr %1, ptr %4, align 8, !tbaa !34
  store i32 %2, ptr %5, align 4, !tbaa !96
  %7 = call ptr @rna_idproperty_check(ptr noundef nonnull %4, ptr noundef %0) #29
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.IDProperty, ptr %7, i64 0, i32 7, i32 2
  store i32 %2, ptr %10, align 8, !tbaa !126
  tail call fastcc void @rna_idproperty_touch(ptr noundef nonnull %7) #29
  br label %38

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.IntPropertyRNA, ptr %1, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !213
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void %13(ptr noundef %0, i32 noundef %2) #28
  br label %38

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.IntPropertyRNA, ptr %1, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !214
  %19 = icmp eq ptr %18, null
  %20 = load ptr, ptr %4, align 8, !tbaa !34
  br i1 %19, label %22, label %21

21:                                               ; preds = %16
  tail call void %18(ptr noundef %0, ptr noundef %20, i32 noundef %2) #28
  br label %38

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.PropertyRNA, ptr %20, i64 0, i32 4
  %24 = load i32, ptr %23, align 8, !tbaa !43
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %38, label %27

27:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %28 = call i32 @RNA_property_int_clamp(ptr noundef %0, ptr noundef nonnull %20, ptr noundef nonnull %5) #29, !range !215
  %29 = load i32, ptr %5, align 4, !tbaa !96
  store i32 %29, ptr %6, align 8, !tbaa !89
  %30 = tail call ptr @RNA_struct_idprops(ptr noundef %0, i8 noundef zeroext 1) #29
  %31 = icmp eq ptr %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.PropertyRNA, ptr %20, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !45
  %35 = call ptr @IDP_New(i32 noundef 1, ptr noundef nonnull %6, ptr noundef %34) #28
  %36 = call zeroext i8 @IDP_AddToGroup(ptr noundef nonnull %30, ptr noundef %35) #28
  br label %37

37:                                               ; preds = %32, %27
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #30
  br label %38

38:                                               ; preds = %15, %22, %37, %21, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_property_int_get_array(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8, !tbaa !34
  %5 = call ptr @rna_idproperty_check(ptr noundef nonnull %4, ptr noundef %0) #29
  %6 = icmp eq ptr %5, null
  %7 = load ptr, ptr %4, align 8, !tbaa !34
  %8 = getelementptr inbounds %struct.PropertyRNA, ptr %7, i64 0, i32 12
  %9 = load i32, ptr %8, align 8, !tbaa !124
  %10 = icmp eq i32 %9, 0
  br i1 %6, label %21, label %11

11:                                               ; preds = %3
  br i1 %10, label %12, label %14

12:                                               ; preds = %11
  %13 = tail call i32 @RNA_property_int_get(ptr noundef %0, ptr noundef nonnull %7) #29
  store i32 %13, ptr %2, align 4, !tbaa !96
  br label %44

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.IDProperty, ptr %5, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !100
  %17 = getelementptr inbounds %struct.IDProperty, ptr %5, i64 0, i32 8
  %18 = load i32, ptr %17, align 8, !tbaa !78
  %19 = sext i32 %18 to i64
  %20 = shl nsw i64 %19, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2, ptr align 1 %16, i64 %20, i1 false)
  br label %44

21:                                               ; preds = %3
  br i1 %10, label %22, label %24

22:                                               ; preds = %21
  %23 = tail call i32 @RNA_property_int_get(ptr noundef %0, ptr noundef nonnull %7) #29
  store i32 %23, ptr %2, align 4, !tbaa !96
  br label %44

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.IntPropertyRNA, ptr %1, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !216
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  tail call void %26(ptr noundef %0, ptr noundef %2) #28
  br label %44

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.IntPropertyRNA, ptr %1, i64 0, i32 8
  %31 = load ptr, ptr %30, align 8, !tbaa !217
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  tail call void %31(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %2) #28
  br label %44

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.IntPropertyRNA, ptr %1, i64 0, i32 17
  %36 = load ptr, ptr %35, align 8, !tbaa !218
  %37 = icmp eq ptr %36, null
  %38 = getelementptr inbounds %struct.PropertyRNA, ptr %7, i64 0, i32 14
  %39 = load i32, ptr %38, align 8, !tbaa !122
  %40 = zext i32 %39 to i64
  %41 = shl nuw nsw i64 %40, 2
  br i1 %37, label %43, label %42

42:                                               ; preds = %34
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2, ptr nonnull align 4 %36, i64 %41, i1 false)
  br label %44

43:                                               ; preds = %34
  tail call void @llvm.memset.p0.i64(ptr align 4 %2, i8 0, i64 %41, i1 false)
  br label %44

44:                                               ; preds = %22, %33, %43, %42, %28, %12, %14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_property_int_get_array_range(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [32 x i32], align 16
  %5 = tail call i32 @RNA_property_array_length(ptr noundef %0, ptr noundef %1) #29
  %6 = icmp slt i32 %5, 1
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  store i32 0, ptr %2, align 4, !tbaa !96
  %8 = getelementptr inbounds i32, ptr %2, i64 1
  store i32 0, ptr %8, align 4, !tbaa !96
  br label %42

9:                                                ; preds = %3
  %10 = icmp eq i32 %5, 1
  br i1 %10, label %11, label %14

11:                                               ; preds = %9
  tail call void @RNA_property_int_get_array(ptr noundef %0, ptr noundef %1, ptr noundef %2) #29
  %12 = load i32, ptr %2, align 4, !tbaa !96
  %13 = getelementptr inbounds i32, ptr %2, i64 1
  store i32 %12, ptr %13, align 4, !tbaa !96
  br label %42

14:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #30
  %15 = icmp ugt i32 %5, 32
  br i1 %15, label %16, label %21

16:                                               ; preds = %14
  %17 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %18 = zext nneg i32 %5 to i64
  %19 = shl nuw nsw i64 %18, 2
  %20 = tail call ptr %17(i64 noundef %19, ptr noundef nonnull @.str.18) #28
  br label %21

21:                                               ; preds = %16, %14
  %22 = phi ptr [ %20, %16 ], [ %4, %14 ]
  call void @RNA_property_int_get_array(ptr noundef %0, ptr noundef %1, ptr noundef %22) #29
  %23 = load i32, ptr %22, align 4, !tbaa !96
  %24 = getelementptr inbounds i32, ptr %2, i64 1
  store i32 %23, ptr %24, align 4, !tbaa !96
  store i32 %23, ptr %2, align 4, !tbaa !96
  %25 = zext nneg i32 %5 to i64
  br label %26

26:                                               ; preds = %21, %26
  %27 = phi i64 [ 1, %21 ], [ %35, %26 ]
  %28 = phi i32 [ %23, %21 ], [ %34, %26 ]
  %29 = phi i32 [ %23, %21 ], [ %32, %26 ]
  %30 = getelementptr inbounds i32, ptr %22, i64 %27
  %31 = load i32, ptr %30, align 4, !tbaa !96
  %32 = call i32 @llvm.smin.i32(i32 %29, i32 %31)
  store i32 %32, ptr %2, align 4, !tbaa !96
  %33 = load i32, ptr %30, align 4, !tbaa !96
  %34 = call i32 @llvm.smax.i32(i32 %28, i32 %33)
  store i32 %34, ptr %24, align 4, !tbaa !96
  %35 = add nuw nsw i64 %27, 1
  %36 = icmp eq i64 %35, %25
  br i1 %36, label %37, label %26, !llvm.loop !219

37:                                               ; preds = %26
  %38 = icmp eq ptr %22, %4
  br i1 %38, label %41, label %39

39:                                               ; preds = %37
  %40 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %40(ptr noundef nonnull %22) #28
  br label %41

41:                                               ; preds = %39, %37
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #30
  br label %42

42:                                               ; preds = %11, %41, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @RNA_property_int_get_index(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [32 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #30
  %5 = tail call fastcc i32 @rna_ensure_property_array_length(ptr noundef %0, ptr noundef %1) #29
  %6 = icmp slt i32 %5, 33
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  call void @RNA_property_int_get_array(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4) #29
  %8 = sext i32 %2 to i64
  %9 = getelementptr inbounds [32 x i32], ptr %4, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !96
  br label %20

11:                                               ; preds = %3
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %13 = zext nneg i32 %5 to i64
  %14 = shl nuw nsw i64 %13, 2
  %15 = tail call ptr %12(i64 noundef %14, ptr noundef nonnull @.str.19) #28
  tail call void @RNA_property_int_get_array(ptr noundef %0, ptr noundef %1, ptr noundef %15) #29
  %16 = sext i32 %2 to i64
  %17 = getelementptr inbounds i32, ptr %15, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !96
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %19(ptr noundef %15) #28
  br label %20

20:                                               ; preds = %11, %7
  %21 = phi i32 [ %10, %7 ], [ %18, %11 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #30
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_property_int_set_array(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca %union.IDPropertyTemplate, align 8
  store ptr %1, ptr %4, align 8, !tbaa !34
  %6 = call ptr @rna_idproperty_check(ptr noundef nonnull %4, ptr noundef %0) #29
  %7 = icmp eq ptr %6, null
  %8 = load ptr, ptr %4, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.PropertyRNA, ptr %8, i64 0, i32 12
  %10 = load i32, ptr %9, align 8, !tbaa !124
  %11 = icmp eq i32 %10, 0
  br i1 %7, label %24, label %12

12:                                               ; preds = %3
  br i1 %11, label %13, label %16

13:                                               ; preds = %12
  %14 = load i32, ptr %2, align 4, !tbaa !96
  %15 = getelementptr inbounds %struct.IDProperty, ptr %6, i64 0, i32 7, i32 2
  store i32 %14, ptr %15, align 8, !tbaa !126
  br label %23

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.IDProperty, ptr %6, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !100
  %19 = getelementptr inbounds %struct.IDProperty, ptr %6, i64 0, i32 8
  %20 = load i32, ptr %19, align 8, !tbaa !78
  %21 = sext i32 %20 to i64
  %22 = shl nsw i64 %21, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %18, ptr align 4 %2, i64 %22, i1 false)
  br label %23

23:                                               ; preds = %16, %13
  tail call fastcc void @rna_idproperty_touch(ptr noundef nonnull %6) #29
  br label %61

24:                                               ; preds = %3
  br i1 %11, label %25, label %27

25:                                               ; preds = %24
  %26 = load i32, ptr %2, align 4, !tbaa !96
  tail call void @RNA_property_int_set(ptr noundef %0, ptr noundef nonnull %8, i32 noundef %26) #29
  br label %61

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.IntPropertyRNA, ptr %1, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !220
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  tail call void %29(ptr noundef %0, ptr noundef %2) #28
  br label %61

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.IntPropertyRNA, ptr %1, i64 0, i32 9
  %34 = load ptr, ptr %33, align 8, !tbaa !221
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  tail call void %34(ptr noundef %0, ptr noundef nonnull %8, ptr noundef %2) #28
  br label %61

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.PropertyRNA, ptr %8, i64 0, i32 4
  %39 = load i32, ptr %38, align 8, !tbaa !43
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %61, label %42

42:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %43 = getelementptr inbounds %struct.PropertyRNA, ptr %8, i64 0, i32 14
  %44 = load i32, ptr %43, align 8, !tbaa !122
  %45 = trunc i32 %44 to i16
  %46 = getelementptr inbounds %struct.anon.1, ptr %5, i64 0, i32 1
  store i16 %45, ptr %46, align 2, !tbaa !89
  store i16 1, ptr %5, align 8, !tbaa !89
  %47 = tail call ptr @RNA_struct_idprops(ptr noundef %0, i8 noundef zeroext 1) #29
  %48 = icmp eq ptr %47, null
  br i1 %48, label %60, label %49

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.PropertyRNA, ptr %8, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !45
  %52 = call ptr @IDP_New(i32 noundef 5, ptr noundef nonnull %5, ptr noundef %51) #28
  %53 = call zeroext i8 @IDP_AddToGroup(ptr noundef nonnull %47, ptr noundef %52) #28
  %54 = getelementptr inbounds %struct.IDProperty, ptr %52, i64 0, i32 7
  %55 = load ptr, ptr %54, align 8, !tbaa !100
  %56 = getelementptr inbounds %struct.IDProperty, ptr %52, i64 0, i32 8
  %57 = load i32, ptr %56, align 8, !tbaa !78
  %58 = sext i32 %57 to i64
  %59 = shl nsw i64 %58, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %55, ptr align 4 %2, i64 %59, i1 false)
  br label %60

60:                                               ; preds = %49, %42
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #30
  br label %61

61:                                               ; preds = %25, %36, %60, %37, %31, %23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_property_int_set_index(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [32 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #30
  %6 = tail call fastcc i32 @rna_ensure_property_array_length(ptr noundef %0, ptr noundef %1) #29
  %7 = icmp slt i32 %6, 33
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  call void @RNA_property_int_get_array(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5) #29
  %9 = sext i32 %2 to i64
  %10 = getelementptr inbounds [32 x i32], ptr %5, i64 0, i64 %9
  store i32 %3, ptr %10, align 4, !tbaa !96
  call void @RNA_property_int_set_array(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5) #29
  br label %19

11:                                               ; preds = %4
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %13 = zext nneg i32 %6 to i64
  %14 = shl nuw nsw i64 %13, 2
  %15 = tail call ptr %12(i64 noundef %14, ptr noundef nonnull @.str.19) #28
  tail call void @RNA_property_int_get_array(ptr noundef %0, ptr noundef %1, ptr noundef %15) #29
  %16 = sext i32 %2 to i64
  %17 = getelementptr inbounds i32, ptr %15, i64 %16
  store i32 %3, ptr %17, align 4, !tbaa !96
  tail call void @RNA_property_int_set_array(ptr noundef %0, ptr noundef %1, ptr noundef %15) #29
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %18(ptr noundef %15) #28
  br label %19

19:                                               ; preds = %11, %8
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #30
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @RNA_property_int_get_default(ptr nocapture readnone %0, ptr noundef readonly %1) local_unnamed_addr #12 {
  %3 = tail call fastcc ptr @rna_ensure_property(ptr noundef %1) #29
  %4 = getelementptr inbounds %struct.IntPropertyRNA, ptr %3, i64 0, i32 16
  %5 = load i32, ptr %4, align 4, !tbaa !212
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RNA_property_int_get_default_array(ptr nocapture readnone %0, ptr noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #16 {
  %4 = tail call fastcc ptr @rna_ensure_property(ptr noundef %1) #29
  %5 = getelementptr inbounds %struct.PropertyRNA, ptr %1, i64 0, i32 12
  %6 = load i32, ptr %5, align 8, !tbaa !124
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.IntPropertyRNA, ptr %4, i64 0, i32 16
  %10 = load i32, ptr %9, align 4, !tbaa !212
  store i32 %10, ptr %2, align 4, !tbaa !96
  br label %21

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.IntPropertyRNA, ptr %4, i64 0, i32 17
  %13 = load ptr, ptr %12, align 8, !tbaa !218
  %14 = icmp eq ptr %13, null
  %15 = getelementptr inbounds %struct.PropertyRNA, ptr %1, i64 0, i32 14
  %16 = load i32, ptr %15, align 8, !tbaa !122
  %17 = zext i32 %16 to i64
  %18 = shl nuw nsw i64 %17, 2
  br i1 %14, label %20, label %19

19:                                               ; preds = %11
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2, ptr nonnull align 4 %13, i64 %18, i1 false)
  br label %21

20:                                               ; preds = %11
  tail call void @llvm.memset.p0.i64(ptr align 4 %2, i8 0, i64 %18, i1 false)
  br label %21

21:                                               ; preds = %19, %20, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @RNA_property_int_get_default_index(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [32 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #30
  %5 = tail call fastcc i32 @rna_ensure_property_array_length(ptr noundef %0, ptr noundef %1) #29
  %6 = icmp slt i32 %5, 33
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  call void @RNA_property_int_get_default_array(ptr poison, ptr noundef %1, ptr noundef nonnull %4) #29
  %8 = sext i32 %2 to i64
  %9 = getelementptr inbounds [32 x i32], ptr %4, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !96
  br label %20

11:                                               ; preds = %3
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %13 = zext nneg i32 %5 to i64
  %14 = shl nuw nsw i64 %13, 2
  %15 = tail call ptr %12(i64 noundef %14, ptr noundef nonnull @.str.20) #28
  tail call void @RNA_property_int_get_default_array(ptr poison, ptr noundef %1, ptr noundef %15) #29
  %16 = sext i32 %2 to i64
  %17 = getelementptr inbounds i32, ptr %15, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !96
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %19(ptr noundef %15) #28
  br label %20

20:                                               ; preds = %11, %7
  %21 = phi i32 [ %10, %7 ], [ %18, %11 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #30
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @RNA_property_float_get(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8, !tbaa !34
  %4 = call ptr @rna_idproperty_check(ptr noundef nonnull %3, ptr noundef %0) #29
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.IDProperty, ptr %4, i64 0, i32 2
  %8 = load i8, ptr %7, align 8, !tbaa !73
  %9 = icmp eq i8 %8, 2
  %10 = getelementptr inbounds %struct.IDProperty, ptr %4, i64 0, i32 7, i32 2
  br i1 %9, label %11, label %13

11:                                               ; preds = %6
  %12 = load float, ptr %10, align 8, !tbaa !143
  br label %32

13:                                               ; preds = %6
  %14 = load double, ptr %10, align 8, !tbaa !141
  %15 = fptrunc double %14 to float
  br label %32

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %1, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !222
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = tail call float %18(ptr noundef %0) #28
  br label %32

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %1, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !223
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr %3, align 8, !tbaa !34
  %28 = tail call float %24(ptr noundef %0, ptr noundef %27) #28
  br label %32

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %1, i64 0, i32 17
  %31 = load float, ptr %30, align 8, !tbaa !224
  br label %32

32:                                               ; preds = %29, %26, %20, %13, %11
  %33 = phi float [ %12, %11 ], [ %15, %13 ], [ %21, %20 ], [ %28, %26 ], [ %31, %29 ]
  ret float %33
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_property_float_set(ptr noundef %0, ptr noundef %1, float noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca float, align 4
  %6 = alloca %union.IDPropertyTemplate, align 8
  store ptr %1, ptr %4, align 8, !tbaa !34
  store float %2, ptr %5, align 4, !tbaa !143
  %7 = call ptr @rna_idproperty_check(ptr noundef nonnull %4, ptr noundef %0) #29
  %8 = icmp eq ptr %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.IDProperty, ptr %7, i64 0, i32 2
  %11 = load i8, ptr %10, align 8, !tbaa !73
  %12 = icmp eq i8 %11, 2
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.IDProperty, ptr %7, i64 0, i32 7, i32 2
  store float %2, ptr %14, align 8, !tbaa !143
  br label %18

15:                                               ; preds = %9
  %16 = fpext float %2 to double
  %17 = getelementptr inbounds %struct.IDProperty, ptr %7, i64 0, i32 7, i32 2
  store double %16, ptr %17, align 8, !tbaa !141
  br label %18

18:                                               ; preds = %15, %13
  tail call fastcc void @rna_idproperty_touch(ptr noundef nonnull %7) #29
  br label %46

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %1, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !225
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  tail call void %21(ptr noundef %0, float noundef %2) #28
  br label %46

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %1, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !226
  %27 = icmp eq ptr %26, null
  %28 = load ptr, ptr %4, align 8, !tbaa !34
  br i1 %27, label %30, label %29

29:                                               ; preds = %24
  tail call void %26(ptr noundef %0, ptr noundef %28, float noundef %2) #28
  br label %46

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.PropertyRNA, ptr %28, i64 0, i32 4
  %32 = load i32, ptr %31, align 8, !tbaa !43
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %46, label %35

35:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %36 = call i32 @RNA_property_float_clamp(ptr noundef %0, ptr noundef nonnull %28, ptr noundef nonnull %5) #29, !range !215
  %37 = load float, ptr %5, align 4, !tbaa !143
  store float %37, ptr %6, align 8, !tbaa !89
  %38 = tail call ptr @RNA_struct_idprops(ptr noundef %0, i8 noundef zeroext 1) #29
  %39 = icmp eq ptr %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.PropertyRNA, ptr %28, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !45
  %43 = call ptr @IDP_New(i32 noundef 2, ptr noundef nonnull %6, ptr noundef %42) #28
  %44 = call zeroext i8 @IDP_AddToGroup(ptr noundef nonnull %38, ptr noundef %43) #28
  br label %45

45:                                               ; preds = %40, %35
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #30
  br label %46

46:                                               ; preds = %23, %30, %45, %29, %18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_property_float_get_array(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8, !tbaa !34
  %5 = call ptr @rna_idproperty_check(ptr noundef nonnull %4, ptr noundef %0) #29
  %6 = icmp eq ptr %5, null
  %7 = load ptr, ptr %4, align 8, !tbaa !34
  %8 = getelementptr inbounds %struct.PropertyRNA, ptr %7, i64 0, i32 12
  %9 = load i32, ptr %8, align 8, !tbaa !124
  %10 = icmp eq i32 %9, 0
  br i1 %6, label %41, label %11

11:                                               ; preds = %3
  br i1 %10, label %12, label %14

12:                                               ; preds = %11
  %13 = tail call float @RNA_property_float_get(ptr noundef %0, ptr noundef nonnull %7) #29
  store float %13, ptr %2, align 4, !tbaa !143
  br label %64

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.IDProperty, ptr %5, i64 0, i32 3
  %16 = load i8, ptr %15, align 1, !tbaa !79
  %17 = icmp eq i8 %16, 2
  br i1 %17, label %26, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.IDProperty, ptr %5, i64 0, i32 8
  %20 = load i32, ptr %19, align 8, !tbaa !78
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %64

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.IDProperty, ptr %5, i64 0, i32 7
  %24 = load ptr, ptr %23, align 8, !tbaa !100
  %25 = zext nneg i32 %20 to i64
  br label %33

26:                                               ; preds = %14
  %27 = getelementptr inbounds %struct.IDProperty, ptr %5, i64 0, i32 7
  %28 = load ptr, ptr %27, align 8, !tbaa !100
  %29 = getelementptr inbounds %struct.IDProperty, ptr %5, i64 0, i32 8
  %30 = load i32, ptr %29, align 8, !tbaa !78
  %31 = sext i32 %30 to i64
  %32 = shl nsw i64 %31, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2, ptr align 1 %28, i64 %32, i1 false)
  br label %64

33:                                               ; preds = %22, %33
  %34 = phi i64 [ 0, %22 ], [ %39, %33 ]
  %35 = getelementptr inbounds double, ptr %24, i64 %34
  %36 = load double, ptr %35, align 8, !tbaa !141
  %37 = fptrunc double %36 to float
  %38 = getelementptr inbounds float, ptr %2, i64 %34
  store float %37, ptr %38, align 4, !tbaa !143
  %39 = add nuw nsw i64 %34, 1
  %40 = icmp eq i64 %39, %25
  br i1 %40, label %64, label %33, !llvm.loop !227

41:                                               ; preds = %3
  br i1 %10, label %42, label %44

42:                                               ; preds = %41
  %43 = tail call float @RNA_property_float_get(ptr noundef %0, ptr noundef nonnull %7) #29
  store float %43, ptr %2, align 4, !tbaa !143
  br label %64

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %1, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !228
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  tail call void %46(ptr noundef %0, ptr noundef %2) #28
  br label %64

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %1, i64 0, i32 8
  %51 = load ptr, ptr %50, align 8, !tbaa !229
  %52 = icmp eq ptr %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  tail call void %51(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %2) #28
  br label %64

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %1, i64 0, i32 18
  %56 = load ptr, ptr %55, align 8, !tbaa !230
  %57 = icmp eq ptr %56, null
  %58 = getelementptr inbounds %struct.PropertyRNA, ptr %7, i64 0, i32 14
  %59 = load i32, ptr %58, align 8, !tbaa !122
  %60 = zext i32 %59 to i64
  %61 = shl nuw nsw i64 %60, 2
  br i1 %57, label %63, label %62

62:                                               ; preds = %54
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2, ptr nonnull align 4 %56, i64 %61, i1 false)
  br label %64

63:                                               ; preds = %54
  tail call void @llvm.memset.p0.i64(ptr align 4 %2, i8 0, i64 %61, i1 false)
  br label %64

64:                                               ; preds = %33, %18, %42, %53, %63, %62, %48, %12, %26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_property_float_get_array_range(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [32 x float], align 16
  %5 = tail call i32 @RNA_property_array_length(ptr noundef %0, ptr noundef %1) #29
  %6 = icmp slt i32 %5, 1
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  store <2 x float> zeroinitializer, ptr %2, align 4, !tbaa !143
  br label %43

8:                                                ; preds = %3
  %9 = icmp eq i32 %5, 1
  br i1 %9, label %10, label %13

10:                                               ; preds = %8
  tail call void @RNA_property_float_get_array(ptr noundef %0, ptr noundef %1, ptr noundef %2) #29
  %11 = load float, ptr %2, align 4, !tbaa !143
  %12 = getelementptr inbounds float, ptr %2, i64 1
  store float %11, ptr %12, align 4, !tbaa !143
  br label %43

13:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #30
  %14 = icmp ugt i32 %5, 32
  br i1 %14, label %15, label %20

15:                                               ; preds = %13
  %16 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %17 = zext nneg i32 %5 to i64
  %18 = shl nuw nsw i64 %17, 2
  %19 = tail call ptr %16(i64 noundef %18, ptr noundef nonnull @.str.21) #28
  br label %20

20:                                               ; preds = %15, %13
  %21 = phi ptr [ %19, %15 ], [ %4, %13 ]
  call void @RNA_property_float_get_array(ptr noundef %0, ptr noundef %1, ptr noundef %21) #29
  %22 = load float, ptr %21, align 4, !tbaa !143
  %23 = getelementptr inbounds float, ptr %2, i64 1
  store float %22, ptr %23, align 4, !tbaa !143
  store float %22, ptr %2, align 4, !tbaa !143
  %24 = zext nneg i32 %5 to i64
  br label %25

25:                                               ; preds = %20, %25
  %26 = phi i64 [ 1, %20 ], [ %36, %25 ]
  %27 = phi float [ %22, %20 ], [ %35, %25 ]
  %28 = phi float [ %22, %20 ], [ %32, %25 ]
  %29 = getelementptr inbounds float, ptr %21, i64 %26
  %30 = load float, ptr %29, align 4, !tbaa !143
  %31 = fcmp olt float %28, %30
  %32 = select i1 %31, float %28, float %30
  store float %32, ptr %2, align 4, !tbaa !143
  %33 = load float, ptr %29, align 4, !tbaa !143
  %34 = fcmp ogt float %27, %33
  %35 = select i1 %34, float %27, float %33
  store float %35, ptr %23, align 4, !tbaa !143
  %36 = add nuw nsw i64 %26, 1
  %37 = icmp eq i64 %36, %24
  br i1 %37, label %38, label %25, !llvm.loop !231

38:                                               ; preds = %25
  %39 = icmp eq ptr %21, %4
  br i1 %39, label %42, label %40

40:                                               ; preds = %38
  %41 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %41(ptr noundef nonnull %21) #28
  br label %42

42:                                               ; preds = %40, %38
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #30
  br label %43

43:                                               ; preds = %10, %42, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @RNA_property_float_get_index(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [32 x float], align 16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #30
  %5 = tail call fastcc i32 @rna_ensure_property_array_length(ptr noundef %0, ptr noundef %1) #29
  %6 = icmp slt i32 %5, 33
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  call void @RNA_property_float_get_array(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4) #29
  %8 = sext i32 %2 to i64
  %9 = getelementptr inbounds [32 x float], ptr %4, i64 0, i64 %8
  %10 = load float, ptr %9, align 4, !tbaa !143
  br label %20

11:                                               ; preds = %3
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %13 = zext nneg i32 %5 to i64
  %14 = shl nuw nsw i64 %13, 2
  %15 = tail call ptr %12(i64 noundef %14, ptr noundef nonnull @.str.22) #28
  tail call void @RNA_property_float_get_array(ptr noundef %0, ptr noundef %1, ptr noundef %15) #29
  %16 = sext i32 %2 to i64
  %17 = getelementptr inbounds float, ptr %15, i64 %16
  %18 = load float, ptr %17, align 4, !tbaa !143
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %19(ptr noundef %15) #28
  br label %20

20:                                               ; preds = %11, %7
  %21 = phi float [ %10, %7 ], [ %18, %11 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #30
  ret float %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_property_float_set_array(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca %union.IDPropertyTemplate, align 8
  store ptr %1, ptr %4, align 8, !tbaa !34
  %6 = call ptr @rna_idproperty_check(ptr noundef nonnull %4, ptr noundef %0) #29
  %7 = icmp eq ptr %6, null
  %8 = load ptr, ptr %4, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.PropertyRNA, ptr %8, i64 0, i32 12
  %10 = load i32, ptr %9, align 8, !tbaa !124
  %11 = icmp eq i32 %10, 0
  br i1 %7, label %51, label %12

12:                                               ; preds = %3
  br i1 %11, label %13, label %23

13:                                               ; preds = %12
  %14 = getelementptr inbounds %struct.IDProperty, ptr %6, i64 0, i32 2
  %15 = load i8, ptr %14, align 8, !tbaa !73
  %16 = icmp eq i8 %15, 2
  %17 = load float, ptr %2, align 4, !tbaa !143
  br i1 %16, label %18, label %20

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.IDProperty, ptr %6, i64 0, i32 7, i32 2
  store float %17, ptr %19, align 8, !tbaa !143
  br label %50

20:                                               ; preds = %13
  %21 = fpext float %17 to double
  %22 = getelementptr inbounds %struct.IDProperty, ptr %6, i64 0, i32 7, i32 2
  store double %21, ptr %22, align 8, !tbaa !141
  br label %50

23:                                               ; preds = %12
  %24 = getelementptr inbounds %struct.IDProperty, ptr %6, i64 0, i32 3
  %25 = load i8, ptr %24, align 1, !tbaa !79
  %26 = icmp eq i8 %25, 2
  br i1 %26, label %35, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.IDProperty, ptr %6, i64 0, i32 8
  %29 = load i32, ptr %28, align 8, !tbaa !78
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %50

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.IDProperty, ptr %6, i64 0, i32 7
  %33 = load ptr, ptr %32, align 8, !tbaa !100
  %34 = zext nneg i32 %29 to i64
  br label %42

35:                                               ; preds = %23
  %36 = getelementptr inbounds %struct.IDProperty, ptr %6, i64 0, i32 7
  %37 = load ptr, ptr %36, align 8, !tbaa !100
  %38 = getelementptr inbounds %struct.IDProperty, ptr %6, i64 0, i32 8
  %39 = load i32, ptr %38, align 8, !tbaa !78
  %40 = sext i32 %39 to i64
  %41 = shl nsw i64 %40, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %37, ptr align 4 %2, i64 %41, i1 false)
  br label %50

42:                                               ; preds = %31, %42
  %43 = phi i64 [ 0, %31 ], [ %48, %42 ]
  %44 = getelementptr inbounds float, ptr %2, i64 %43
  %45 = load float, ptr %44, align 4, !tbaa !143
  %46 = fpext float %45 to double
  %47 = getelementptr inbounds double, ptr %33, i64 %43
  store double %46, ptr %47, align 8, !tbaa !141
  %48 = add nuw nsw i64 %43, 1
  %49 = icmp eq i64 %48, %34
  br i1 %49, label %50, label %42, !llvm.loop !232

50:                                               ; preds = %42, %27, %35, %18, %20
  tail call fastcc void @rna_idproperty_touch(ptr noundef nonnull %6) #29
  br label %88

51:                                               ; preds = %3
  br i1 %11, label %52, label %54

52:                                               ; preds = %51
  %53 = load float, ptr %2, align 4, !tbaa !143
  tail call void @RNA_property_float_set(ptr noundef %0, ptr noundef nonnull %8, float noundef %53) #29
  br label %88

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %1, i64 0, i32 4
  %56 = load ptr, ptr %55, align 8, !tbaa !233
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %54
  tail call void %56(ptr noundef %0, ptr noundef %2) #28
  br label %88

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %1, i64 0, i32 9
  %61 = load ptr, ptr %60, align 8, !tbaa !234
  %62 = icmp eq ptr %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %59
  tail call void %61(ptr noundef %0, ptr noundef nonnull %8, ptr noundef %2) #28
  br label %88

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.PropertyRNA, ptr %8, i64 0, i32 4
  %66 = load i32, ptr %65, align 8, !tbaa !43
  %67 = and i32 %66, 1
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %88, label %69

69:                                               ; preds = %64
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %70 = getelementptr inbounds %struct.PropertyRNA, ptr %8, i64 0, i32 14
  %71 = load i32, ptr %70, align 8, !tbaa !122
  %72 = trunc i32 %71 to i16
  %73 = getelementptr inbounds %struct.anon.1, ptr %5, i64 0, i32 1
  store i16 %72, ptr %73, align 2, !tbaa !89
  store i16 2, ptr %5, align 8, !tbaa !89
  %74 = tail call ptr @RNA_struct_idprops(ptr noundef %0, i8 noundef zeroext 1) #29
  %75 = icmp eq ptr %74, null
  br i1 %75, label %87, label %76

76:                                               ; preds = %69
  %77 = getelementptr inbounds %struct.PropertyRNA, ptr %8, i64 0, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !45
  %79 = call ptr @IDP_New(i32 noundef 5, ptr noundef nonnull %5, ptr noundef %78) #28
  %80 = call zeroext i8 @IDP_AddToGroup(ptr noundef nonnull %74, ptr noundef %79) #28
  %81 = getelementptr inbounds %struct.IDProperty, ptr %79, i64 0, i32 7
  %82 = load ptr, ptr %81, align 8, !tbaa !100
  %83 = getelementptr inbounds %struct.IDProperty, ptr %79, i64 0, i32 8
  %84 = load i32, ptr %83, align 8, !tbaa !78
  %85 = sext i32 %84 to i64
  %86 = shl nsw i64 %85, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %82, ptr align 4 %2, i64 %86, i1 false)
  br label %87

87:                                               ; preds = %76, %69
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #30
  br label %88

88:                                               ; preds = %52, %63, %87, %64, %58, %50
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_property_float_set_index(ptr noundef %0, ptr noundef %1, i32 noundef %2, float noundef %3) local_unnamed_addr #0 {
  %5 = alloca [32 x float], align 16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #30
  %6 = tail call fastcc i32 @rna_ensure_property_array_length(ptr noundef %0, ptr noundef %1) #29
  %7 = icmp slt i32 %6, 33
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  call void @RNA_property_float_get_array(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5) #29
  %9 = sext i32 %2 to i64
  %10 = getelementptr inbounds [32 x float], ptr %5, i64 0, i64 %9
  store float %3, ptr %10, align 4, !tbaa !143
  call void @RNA_property_float_set_array(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5) #29
  br label %19

11:                                               ; preds = %4
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %13 = zext nneg i32 %6 to i64
  %14 = shl nuw nsw i64 %13, 2
  %15 = tail call ptr %12(i64 noundef %14, ptr noundef nonnull @.str.22) #28
  tail call void @RNA_property_float_get_array(ptr noundef %0, ptr noundef %1, ptr noundef %15) #29
  %16 = sext i32 %2 to i64
  %17 = getelementptr inbounds float, ptr %15, i64 %16
  store float %3, ptr %17, align 4, !tbaa !143
  tail call void @RNA_property_float_set_array(ptr noundef %0, ptr noundef %1, ptr noundef %15) #29
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %18(ptr noundef %15) #28
  br label %19

19:                                               ; preds = %11, %8
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #30
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @RNA_property_float_get_default(ptr nocapture readnone %0, ptr noundef readonly %1) local_unnamed_addr #12 {
  %3 = tail call fastcc ptr @rna_ensure_property(ptr noundef %1) #29
  %4 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %3, i64 0, i32 17
  %5 = load float, ptr %4, align 8, !tbaa !224
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RNA_property_float_get_default_array(ptr nocapture readnone %0, ptr noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #16 {
  %4 = tail call fastcc ptr @rna_ensure_property(ptr noundef %1) #29
  %5 = getelementptr inbounds %struct.PropertyRNA, ptr %1, i64 0, i32 12
  %6 = load i32, ptr %5, align 8, !tbaa !124
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %4, i64 0, i32 17
  %10 = load float, ptr %9, align 8, !tbaa !224
  store float %10, ptr %2, align 4, !tbaa !143
  br label %21

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %4, i64 0, i32 18
  %13 = load ptr, ptr %12, align 8, !tbaa !230
  %14 = icmp eq ptr %13, null
  %15 = getelementptr inbounds %struct.PropertyRNA, ptr %1, i64 0, i32 14
  %16 = load i32, ptr %15, align 8, !tbaa !122
  %17 = zext i32 %16 to i64
  %18 = shl nuw nsw i64 %17, 2
  br i1 %14, label %20, label %19

19:                                               ; preds = %11
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2, ptr nonnull align 4 %13, i64 %18, i1 false)
  br label %21

20:                                               ; preds = %11
  tail call void @llvm.memset.p0.i64(ptr align 4 %2, i8 0, i64 %18, i1 false)
  br label %21

21:                                               ; preds = %19, %20, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @RNA_property_float_get_default_index(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [32 x float], align 16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #30
  %5 = tail call fastcc i32 @rna_ensure_property_array_length(ptr noundef %0, ptr noundef %1) #29
  %6 = icmp slt i32 %5, 33
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  call void @RNA_property_float_get_default_array(ptr poison, ptr noundef %1, ptr noundef nonnull %4) #29
  %8 = sext i32 %2 to i64
  %9 = getelementptr inbounds [32 x float], ptr %4, i64 0, i64 %8
  %10 = load float, ptr %9, align 4, !tbaa !143
  br label %20

11:                                               ; preds = %3
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %13 = zext nneg i32 %5 to i64
  %14 = shl nuw nsw i64 %13, 2
  %15 = tail call ptr %12(i64 noundef %14, ptr noundef nonnull @.str.23) #28
  tail call void @RNA_property_float_get_default_array(ptr poison, ptr noundef %1, ptr noundef %15) #29
  %16 = sext i32 %2 to i64
  %17 = getelementptr inbounds float, ptr %15, i64 %16
  %18 = load float, ptr %17, align 4, !tbaa !143
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %19(ptr noundef %15) #28
  br label %20

20:                                               ; preds = %11, %7
  %21 = phi float [ %10, %7 ], [ %18, %11 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #30
  ret float %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_property_string_get(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8, !tbaa !34
  %5 = call ptr @rna_idproperty_check(ptr noundef nonnull %4, ptr noundef %0) #29
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.IDProperty, ptr %5, i64 0, i32 3
  %9 = load i8, ptr %8, align 1, !tbaa !79
  %10 = icmp eq i8 %9, 1
  %11 = getelementptr inbounds %struct.IDProperty, ptr %5, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !100
  %13 = getelementptr inbounds %struct.IDProperty, ptr %5, i64 0, i32 8
  %14 = load i32, ptr %13, align 8, !tbaa !78
  %15 = sext i32 %14 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 1 %12, i64 %15, i1 false)
  br i1 %10, label %16, label %35

16:                                               ; preds = %7
  %17 = load i32, ptr %13, align 8, !tbaa !78
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, ptr %2, i64 %18
  store i8 0, ptr %19, align 1, !tbaa !89
  br label %35

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.StringPropertyRNA, ptr %1, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !235
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void %22(ptr noundef %0, ptr noundef %2) #28
  br label %35

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.StringPropertyRNA, ptr %1, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !236
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %4, align 8, !tbaa !34
  tail call void %27(ptr noundef %0, ptr noundef %30, ptr noundef %2) #28
  br label %35

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.StringPropertyRNA, ptr %1, i64 0, i32 8
  %33 = load ptr, ptr %32, align 8, !tbaa !237
  %34 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %33) #28
  br label %35

35:                                               ; preds = %7, %24, %31, %29, %16
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #17

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @RNA_property_string_length(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8, !tbaa !34
  %4 = call ptr @rna_idproperty_check(ptr noundef nonnull %3, ptr noundef %0) #29
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.IDProperty, ptr %4, i64 0, i32 3
  %8 = load i8, ptr %7, align 1, !tbaa !79
  %9 = icmp ne i8 %8, 1
  %10 = getelementptr inbounds %struct.IDProperty, ptr %4, i64 0, i32 8
  %11 = load i32, ptr %10, align 8, !tbaa !78
  %12 = sext i1 %9 to i32
  %13 = add nsw i32 %11, %12
  br label %32

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.StringPropertyRNA, ptr %1, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !238
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = tail call i32 %16(ptr noundef %0) #28
  br label %32

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.StringPropertyRNA, ptr %1, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !239
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr %3, align 8, !tbaa !34
  %26 = tail call i32 %22(ptr noundef %0, ptr noundef %25) #28
  br label %32

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.StringPropertyRNA, ptr %1, i64 0, i32 8
  %29 = load ptr, ptr %28, align 8, !tbaa !237
  %30 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %29) #31
  %31 = trunc i64 %30 to i32
  br label %32

32:                                               ; preds = %6, %27, %24, %18
  %33 = phi i32 [ %19, %18 ], [ %26, %24 ], [ %31, %27 ], [ %13, %6 ]
  ret i32 %33
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_property_string_set(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8, !tbaa !34
  %5 = call ptr @rna_idproperty_check(ptr noundef nonnull %4, ptr noundef %0) #29
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %4, align 8, !tbaa !34
  %9 = tail call i32 @RNA_property_string_maxlength(ptr noundef %8) #29
  %10 = add nsw i32 %9, -1
  tail call void @IDP_AssignString(ptr noundef nonnull %5, ptr noundef %2, i32 noundef %10) #28
  tail call fastcc void @rna_idproperty_touch(ptr noundef nonnull %5) #29
  br label %36

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.StringPropertyRNA, ptr %1, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !240
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void %13(ptr noundef %0, ptr noundef %2) #28
  br label %36

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.StringPropertyRNA, ptr %1, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !241
  %19 = icmp eq ptr %18, null
  %20 = load ptr, ptr %4, align 8, !tbaa !34
  br i1 %19, label %22, label %21

21:                                               ; preds = %16
  tail call void %18(ptr noundef %0, ptr noundef %20, ptr noundef %2) #28
  br label %36

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.PropertyRNA, ptr %20, i64 0, i32 4
  %24 = load i32, ptr %23, align 8, !tbaa !43
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %22
  %28 = tail call ptr @RNA_struct_idprops(ptr noundef %0, i8 noundef zeroext 1) #29
  %29 = icmp eq ptr %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.PropertyRNA, ptr %20, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !45
  %33 = tail call i32 @RNA_property_string_maxlength(ptr noundef nonnull %20) #29
  %34 = tail call ptr @IDP_NewString(ptr noundef %2, ptr noundef %32, i32 noundef %33) #28
  %35 = tail call zeroext i8 @IDP_AddToGroup(ptr noundef nonnull %28, ptr noundef %34) #28
  br label %36

36:                                               ; preds = %27, %30, %15, %22, %21, %7
  ret void
}

; Function Attrs: optsize
declare void @IDP_AssignString(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @IDP_NewString(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @RNA_property_string_get_default(ptr nocapture readnone %0, ptr noundef readonly %1, ptr noundef %2) local_unnamed_addr #18 {
  %4 = tail call fastcc ptr @rna_ensure_property(ptr noundef %1) #29
  %5 = getelementptr inbounds %struct.StringPropertyRNA, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !237
  %7 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %6) #28
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @RNA_property_string_get_default_alloc(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @RNA_property_string_default_length(ptr poison, ptr noundef %1) #29
  %6 = add nsw i32 %5, 1
  %7 = icmp slt i32 %6, %3
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %10 = sext i32 %6 to i64
  %11 = tail call ptr %9(i64 noundef %10, ptr noundef nonnull @.str.24) #28
  br label %12

12:                                               ; preds = %4, %8
  %13 = phi ptr [ %11, %8 ], [ %2, %4 ]
  tail call void @RNA_property_string_get_default(ptr poison, ptr noundef %1, ptr noundef %13) #29
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @RNA_property_string_default_length(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) local_unnamed_addr #19 {
  %3 = getelementptr inbounds %struct.StringPropertyRNA, ptr %1, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !237
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #31
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @RNA_property_enum_get(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8, !tbaa !34
  %4 = call ptr @rna_idproperty_check(ptr noundef nonnull %3, ptr noundef %0) #29
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.IDProperty, ptr %4, i64 0, i32 7, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !126
  br label %25

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.EnumPropertyRNA, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !242
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = tail call i32 %11(ptr noundef %0) #28
  br label %25

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.EnumPropertyRNA, ptr %1, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !243
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %3, align 8, !tbaa !34
  %21 = tail call i32 %17(ptr noundef %0, ptr noundef %20) #28
  br label %25

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.EnumPropertyRNA, ptr %1, i64 0, i32 9
  %24 = load i32, ptr %23, align 4, !tbaa !244
  br label %25

25:                                               ; preds = %22, %19, %13, %6
  %26 = phi i32 [ %8, %6 ], [ %14, %13 ], [ %21, %19 ], [ %24, %22 ]
  ret i32 %26
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_property_enum_set(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca %union.IDPropertyTemplate, align 8
  store ptr %1, ptr %4, align 8, !tbaa !34
  %6 = call ptr @rna_idproperty_check(ptr noundef nonnull %4, ptr noundef %0) #29
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.IDProperty, ptr %6, i64 0, i32 7, i32 2
  store i32 %2, ptr %9, align 8, !tbaa !126
  tail call fastcc void @rna_idproperty_touch(ptr noundef nonnull %6) #29
  br label %35

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.EnumPropertyRNA, ptr %1, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !245
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void %12(ptr noundef %0, i32 noundef %2) #28
  br label %35

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.EnumPropertyRNA, ptr %1, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !246
  %18 = icmp eq ptr %17, null
  %19 = load ptr, ptr %4, align 8, !tbaa !34
  br i1 %18, label %21, label %20

20:                                               ; preds = %15
  tail call void %17(ptr noundef %0, ptr noundef %19, i32 noundef %2) #28
  br label %35

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.PropertyRNA, ptr %19, i64 0, i32 4
  %23 = load i32, ptr %22, align 8, !tbaa !43
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  store i32 %2, ptr %5, align 8, !tbaa !89
  %27 = tail call ptr @RNA_struct_idprops(ptr noundef %0, i8 noundef zeroext 1) #29
  %28 = icmp eq ptr %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.PropertyRNA, ptr %19, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !45
  %32 = call ptr @IDP_New(i32 noundef 1, ptr noundef nonnull %5, ptr noundef %31) #28
  %33 = call zeroext i8 @IDP_AddToGroup(ptr noundef nonnull %27, ptr noundef %32) #28
  br label %34

34:                                               ; preds = %29, %26
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #30
  br label %35

35:                                               ; preds = %14, %21, %34, %20, %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @RNA_property_enum_get_default(ptr nocapture readnone %0, ptr noundef readonly %1) local_unnamed_addr #12 {
  %3 = tail call fastcc ptr @rna_ensure_property(ptr noundef %1) #29
  %4 = getelementptr inbounds %struct.EnumPropertyRNA, ptr %3, i64 0, i32 9
  %5 = load i32, ptr %4, align 4, !tbaa !244
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @RNA_property_enum_py_data_get(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.EnumPropertyRNA, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !247
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_property_pointer_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !34
  %5 = call ptr @rna_idproperty_check(ptr noundef nonnull %4, ptr noundef %1) #29
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %30, %3
  %8 = phi ptr [ %5, %3 ], [ %31, %30 ]
  %9 = load ptr, ptr %4, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.PointerPropertyRNA, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !158
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %7
  %14 = tail call ptr %11(ptr noundef %1) #28
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef %14, ptr noundef nonnull %8) #29
  br label %34

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.PointerPropertyRNA, ptr %9, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !160
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef %17, ptr noundef nonnull %8) #29
  br label %34

18:                                               ; preds = %3, %30
  %19 = phi ptr [ %25, %30 ], [ %2, %3 ]
  %20 = getelementptr inbounds %struct.PointerPropertyRNA, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !248
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  tail call void %21(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #28
  br label %34

24:                                               ; preds = %18
  %25 = load ptr, ptr %4, align 8, !tbaa !34
  %26 = getelementptr inbounds %struct.PropertyRNA, ptr %25, i64 0, i32 4
  %27 = load i32, ptr %26, align 8, !tbaa !43
  %28 = and i32 %27, 1024
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  tail call void @RNA_property_pointer_add(ptr noundef %1, ptr noundef nonnull %25) #29
  store ptr %25, ptr %4, align 8, !tbaa !34
  %31 = call ptr @rna_idproperty_check(ptr noundef nonnull %4, ptr noundef %1) #29
  %32 = icmp eq ptr %31, null
  br i1 %32, label %18, label %7

33:                                               ; preds = %24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %34

34:                                               ; preds = %33, %23, %15, %13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_property_pointer_add(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca %union.IDPropertyTemplate, align 8
  store ptr %1, ptr %3, align 8, !tbaa !34
  %5 = call ptr @rna_idproperty_check(ptr noundef nonnull %3, ptr noundef %0) #29
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %30

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.PropertyRNA, ptr %8, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !43
  %11 = and i32 %10, 1024
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %14 = tail call ptr @RNA_struct_idprops(ptr noundef %0, i8 noundef zeroext 1) #29
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.PropertyRNA, ptr %8, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !45
  %19 = call ptr @IDP_New(i32 noundef 6, ptr noundef nonnull %4, ptr noundef %18) #28
  %20 = call zeroext i8 @IDP_AddToGroup(ptr noundef nonnull %14, ptr noundef %19) #28
  br label %21

21:                                               ; preds = %16, %13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #30
  br label %30

22:                                               ; preds = %7
  %23 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !57
  %25 = getelementptr inbounds %struct.StructRNA, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !80
  %27 = getelementptr inbounds %struct.PropertyRNA, ptr %8, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !45
  %29 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, ptr noundef nonnull @__func__.RNA_property_pointer_add, ptr noundef %26, ptr noundef %28) #29
  br label %30

30:                                               ; preds = %21, %22, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_property_pointer_set(ptr noundef %0, ptr noundef %1, ptr noundef byval(%struct.PointerRNA) align 8 %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8, !tbaa !34
  %5 = call ptr @rna_idproperty_check(ptr noundef nonnull %4, ptr noundef %0) #29
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %29

7:                                                ; preds = %3
  %8 = load ptr, ptr %4, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.PointerPropertyRNA, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !249
  %11 = icmp eq ptr %10, null
  br i1 %11, label %29, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.PropertyRNA, ptr %8, i64 0, i32 4
  %14 = load i32, ptr %13, align 8, !tbaa !43
  %15 = and i32 %14, 262144
  %16 = icmp ne i32 %15, 0
  %17 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  %20 = select i1 %16, i1 %19, i1 false
  br i1 %20, label %29, label %21

21:                                               ; preds = %12
  %22 = and i32 %14, 1048576
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %0, align 8, !tbaa !56
  %26 = load ptr, ptr %2, align 8, !tbaa !56
  %27 = icmp eq ptr %25, %26
  br i1 %27, label %29, label %28

28:                                               ; preds = %24, %21
  tail call void %10(ptr noundef %0, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %2) #28
  br label %29

29:                                               ; preds = %7, %24, %28, %12, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @RNA_property_pointer_get_default(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.PointerRNA) align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) local_unnamed_addr #3 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_property_pointer_remove(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8, !tbaa !34
  %4 = call ptr @rna_idproperty_check(ptr noundef nonnull %3, ptr noundef %0) #29
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @RNA_struct_idprops(ptr noundef %0, i8 noundef zeroext 0) #29
  %8 = icmp eq ptr %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %6
  tail call void @IDP_FreeFromGroup(ptr noundef nonnull %7, ptr noundef nonnull %4) #28
  br label %19

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !57
  %13 = getelementptr inbounds %struct.StructRNA, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !80
  %15 = load ptr, ptr %3, align 8, !tbaa !34
  %16 = getelementptr inbounds %struct.PropertyRNA, ptr %15, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !45
  %18 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, ptr noundef nonnull @__func__.RNA_property_pointer_remove, ptr noundef %14, ptr noundef %17) #29
  br label %19

19:                                               ; preds = %6, %9, %10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @rna_iterator_array_begin(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = icmp eq ptr %1, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %6
  %9 = icmp eq i32 %3, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  br label %11

11:                                               ; preds = %6, %8, %10
  %12 = phi i32 [ 0, %10 ], [ %3, %8 ], [ 0, %6 ]
  %13 = phi i32 [ 0, %10 ], [ %2, %8 ], [ %2, %6 ]
  %14 = phi ptr [ null, %10 ], [ %1, %8 ], [ null, %6 ]
  %15 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 3
  store ptr %14, ptr %15, align 8, !tbaa !250
  %16 = icmp eq i8 %4, 0
  %17 = select i1 %16, ptr null, ptr %14
  %18 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 3, i32 0, i32 2
  store ptr %17, ptr %18, align 8, !tbaa !252
  %19 = mul nsw i32 %13, %12
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, ptr %14, i64 %20
  %22 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 3, i32 0, i32 1
  store ptr %21, ptr %22, align 8, !tbaa !253
  %23 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 3, i32 0, i32 3
  store i32 %13, ptr %23, align 8, !tbaa !254
  %24 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 3, i32 0, i32 5
  store ptr %5, ptr %24, align 8, !tbaa !255
  %25 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 3, i32 0, i32 4
  store i32 %12, ptr %25, align 4, !tbaa !256
  %26 = icmp ne i32 %19, 0
  %27 = zext i1 %26 to i32
  %28 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  store i32 %27, ptr %28, align 8, !tbaa !92
  %29 = icmp ne ptr %5, null
  %30 = select i1 %29, i1 %26, i1 false
  br i1 %30, label %31, label %35

31:                                               ; preds = %11
  %32 = tail call i32 %5(ptr noundef nonnull %0, ptr noundef %14) #28
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  tail call void @rna_iterator_array_next(ptr noundef nonnull %0) #29
  br label %35

35:                                               ; preds = %11, %34, %31
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_property_collection_get_idp(ptr nocapture noundef %0) unnamed_addr #16 !PGOFuncName !257 {
  %2 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !99
  %4 = tail call ptr @rna_iterator_array_get(ptr noundef %0) #29
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6, i32 2
  store ptr %4, ptr %6, align 8, !tbaa !94
  %7 = getelementptr inbounds %struct.CollectionPropertyRNA, ptr %3, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !161
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6, i32 1
  store ptr %8, ptr %9, align 8, !tbaa !95
  tail call fastcc void @rna_pointer_inherit_id(ptr noundef %8, ptr noundef %0, ptr noundef nonnull %5) #29
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @rna_iterator_array_next(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 3
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 3, i32 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !255
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 3, i32 0, i32 3
  br i1 %5, label %22, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 3, i32 0, i32 1
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  br label %10

10:                                               ; preds = %7, %18
  %11 = load i32, ptr %6, align 8, !tbaa !254
  %12 = load ptr, ptr %2, align 8, !tbaa !250
  %13 = sext i32 %11 to i64
  %14 = getelementptr inbounds i8, ptr %12, i64 %13
  store ptr %14, ptr %2, align 8, !tbaa !250
  %15 = load ptr, ptr %8, align 8, !tbaa !253
  %16 = icmp ne ptr %14, %15
  %17 = zext i1 %16 to i32
  store i32 %17, ptr %9, align 8, !tbaa !92
  br i1 %16, label %18, label %32

18:                                               ; preds = %10
  %19 = load ptr, ptr %3, align 8, !tbaa !255
  %20 = tail call i32 %19(ptr noundef nonnull %0, ptr noundef %14) #28
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %32, label %10, !llvm.loop !258

22:                                               ; preds = %1
  %23 = load i32, ptr %6, align 8, !tbaa !254
  %24 = load ptr, ptr %2, align 8, !tbaa !250
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds i8, ptr %24, i64 %25
  store ptr %26, ptr %2, align 8, !tbaa !250
  %27 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 3, i32 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !253
  %29 = icmp ne ptr %26, %28
  %30 = zext i1 %29 to i32
  %31 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  store i32 %30, ptr %31, align 8, !tbaa !92
  br label %32

32:                                               ; preds = %10, %18, %22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_property_collection_skip(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !99
  %5 = tail call fastcc ptr @rna_ensure_property(ptr noundef %4) #29
  %6 = icmp sgt i32 %1, 1
  br i1 %6, label %7, label %35

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !101
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.PropertyRNA, ptr %5, i64 0, i32 4
  %13 = load i32, ptr %12, align 8, !tbaa !259
  %14 = and i32 %13, 16384
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %37, label %16

16:                                               ; preds = %11, %7
  %17 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 3, i32 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !255
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %37

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 3
  %22 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 3, i32 0, i32 3
  %23 = load i32, ptr %22, align 8, !tbaa !254
  %24 = add nsw i32 %1, -1
  %25 = mul nsw i32 %23, %24
  %26 = load ptr, ptr %21, align 8, !tbaa !250
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds i8, ptr %26, i64 %27
  store ptr %28, ptr %21, align 8, !tbaa !250
  %29 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 3, i32 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !253
  %31 = icmp ult ptr %28, %30
  %32 = zext i1 %31 to i32
  %33 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  store i32 %32, ptr %33, align 8, !tbaa !92
  br i1 %31, label %34, label %46

34:                                               ; preds = %20
  tail call void @RNA_property_collection_next(ptr noundef nonnull %0) #29
  br label %46

35:                                               ; preds = %2
  %36 = icmp eq i32 %1, 1
  br i1 %36, label %37, label %46

37:                                               ; preds = %11, %16, %35
  %38 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  br label %39

39:                                               ; preds = %37, %43
  %40 = phi i32 [ %44, %43 ], [ 0, %37 ]
  %41 = load i32, ptr %38, align 8, !tbaa !92
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  tail call void @RNA_property_collection_next(ptr noundef nonnull %0) #29
  %44 = add nuw nsw i32 %40, 1
  %45 = icmp eq i32 %44, %1
  br i1 %45, label %46, label %39, !llvm.loop !260

46:                                               ; preds = %43, %39, %35, %34, %20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @rna_iterator_array_end(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 3, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !252
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %6(ptr noundef nonnull %3) #28
  store ptr null, ptr %2, align 8, !tbaa !252
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @RNA_property_collection_length(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  store ptr %1, ptr %3, align 8, !tbaa !34
  %5 = call ptr @rna_idproperty_check(ptr noundef nonnull %3, ptr noundef %0) #29
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.IDProperty, ptr %5, i64 0, i32 8
  %9 = load i32, ptr %8, align 8, !tbaa !78
  br label %28

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.CollectionPropertyRNA, ptr %1, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !261
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = tail call i32 %12(ptr noundef %0) #28
  br label %28

16:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #30
  %17 = load ptr, ptr %3, align 8, !tbaa !34
  call void @RNA_property_collection_begin(ptr noundef %0, ptr noundef %17, ptr noundef nonnull %4) #29
  %18 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 7
  %19 = load i32, ptr %18, align 8, !tbaa !92
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %16, %21
  %22 = phi i32 [ %23, %21 ], [ 0, %16 ]
  %23 = add nuw nsw i32 %22, 1
  call void @RNA_property_collection_next(ptr noundef nonnull %4) #29
  %24 = load i32, ptr %18, align 8, !tbaa !92
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %21, !llvm.loop !262

26:                                               ; preds = %21, %16
  %27 = phi i32 [ 0, %16 ], [ %23, %21 ]
  call void @RNA_property_collection_end(ptr noundef nonnull %4) #29
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #30
  br label %28

28:                                               ; preds = %26, %14, %7
  %29 = phi i32 [ %9, %7 ], [ %15, %14 ], [ %27, %26 ]
  ret i32 %29
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_property_collection_add(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca %union.IDPropertyTemplate, align 8
  %6 = alloca %union.IDPropertyTemplate, align 8
  store ptr %1, ptr %4, align 8, !tbaa !34
  %7 = call ptr @rna_idproperty_check(ptr noundef nonnull %4, ptr noundef %0) #29
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %10 = call ptr @IDP_New(i32 noundef 6, ptr noundef nonnull %5, ptr noundef nonnull @.str.13) #28
  call void @IDP_AppendArray(ptr noundef nonnull %7, ptr noundef %10) #28
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %11(ptr noundef %10) #28
  call fastcc void @rna_idproperty_touch(ptr noundef nonnull %7) #29
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #30
  br label %30

12:                                               ; preds = %3
  %13 = load ptr, ptr %4, align 8, !tbaa !34
  %14 = getelementptr inbounds %struct.PropertyRNA, ptr %13, i64 0, i32 4
  %15 = load i32, ptr %14, align 8, !tbaa !43
  %16 = and i32 %15, 1024
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %33, label %18

18:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %19 = tail call ptr @RNA_struct_idprops(ptr noundef %0, i8 noundef zeroext 1) #29
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.PropertyRNA, ptr %13, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !45
  %24 = tail call ptr @IDP_NewIDPArray(ptr noundef %23) #28
  %25 = tail call zeroext i8 @IDP_AddToGroup(ptr noundef nonnull %19, ptr noundef %24) #28
  %26 = call ptr @IDP_New(i32 noundef 6, ptr noundef nonnull %6, ptr noundef nonnull @.str.13) #28
  call void @IDP_AppendArray(ptr noundef %24, ptr noundef %26) #28
  %27 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %27(ptr noundef %26) #28
  br label %28

28:                                               ; preds = %21, %18
  %29 = phi ptr [ %24, %21 ], [ null, %18 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #30
  br label %30

30:                                               ; preds = %28, %9
  %31 = phi ptr [ %7, %9 ], [ %29, %28 ]
  %32 = icmp eq ptr %2, null
  br i1 %32, label %48, label %35

33:                                               ; preds = %12
  %34 = icmp eq ptr %2, null
  br i1 %34, label %48, label %47

35:                                               ; preds = %30
  %36 = icmp eq ptr %31, null
  br i1 %36, label %47, label %37

37:                                               ; preds = %35
  %38 = load ptr, ptr %4, align 8, !tbaa !34
  %39 = getelementptr inbounds %struct.IDProperty, ptr %31, i64 0, i32 8
  %40 = load i32, ptr %39, align 8, !tbaa !78
  %41 = add nsw i32 %40, -1
  %42 = call ptr @IDP_GetIndexArray(ptr noundef nonnull %31, i32 noundef %41) #28
  %43 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  store ptr %42, ptr %43, align 8, !tbaa !58
  %44 = getelementptr inbounds %struct.CollectionPropertyRNA, ptr %38, i64 0, i32 9
  %45 = load ptr, ptr %44, align 8, !tbaa !161
  %46 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 1
  store ptr %45, ptr %46, align 8, !tbaa !57
  call fastcc void @rna_pointer_inherit_id(ptr noundef null, ptr noundef %0, ptr noundef nonnull %2) #29
  br label %48

47:                                               ; preds = %33, %35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %48

48:                                               ; preds = %33, %37, %47, %30
  ret void
}

; Function Attrs: optsize
declare void @IDP_AppendArray(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @IDP_NewIDPArray(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @IDP_GetIndexArray(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @RNA_property_collection_remove(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct.IDProperty, align 8
  store ptr %1, ptr %4, align 8, !tbaa !34
  %6 = call ptr @rna_idproperty_check(ptr noundef nonnull %4, ptr noundef %0) #29
  %7 = icmp eq ptr %6, null
  br i1 %7, label %32, label %8

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5)
  %9 = getelementptr inbounds %struct.IDProperty, ptr %6, i64 0, i32 8
  %10 = load i32, ptr %9, align 8, !tbaa !78
  %11 = getelementptr inbounds %struct.IDProperty, ptr %6, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !100
  %13 = icmp sgt i32 %2, -1
  %14 = icmp sgt i32 %10, %2
  %15 = select i1 %13, i1 %14, i1 false
  br i1 %15, label %16, label %31

16:                                               ; preds = %8
  %17 = add nuw nsw i32 %2, 1
  %18 = icmp slt i32 %17, %10
  br i1 %18, label %19, label %29

19:                                               ; preds = %16
  %20 = zext nneg i32 %2 to i64
  %21 = getelementptr inbounds %struct.IDProperty, ptr %12, i64 %20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %5, ptr noundef nonnull align 8 dereferenceable(128) %21, i64 128, i1 false)
  %22 = getelementptr inbounds %struct.IDProperty, ptr %21, i64 1
  %23 = sub nsw i32 %10, %17
  %24 = sext i32 %23 to i64
  %25 = shl nsw i64 %24, 7
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %21, ptr nonnull align 8 %22, i64 %25, i1 false)
  %26 = zext nneg i32 %10 to i64
  %27 = getelementptr %struct.IDProperty, ptr %12, i64 %26
  %28 = getelementptr %struct.IDProperty, ptr %27, i64 -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %28, ptr noundef nonnull align 8 dereferenceable(128) %5, i64 128, i1 false)
  br label %29

29:                                               ; preds = %19, %16
  %30 = add nsw i32 %10, -1
  tail call void @IDP_ResizeIDPArray(ptr noundef nonnull %6, i32 noundef %30) #28
  br label %31

31:                                               ; preds = %29, %8
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5)
  br label %39

32:                                               ; preds = %3
  %33 = load ptr, ptr %4, align 8, !tbaa !34
  %34 = getelementptr inbounds %struct.PropertyRNA, ptr %33, i64 0, i32 4
  %35 = load i32, ptr %34, align 8, !tbaa !43
  %36 = lshr i32 %35, 10
  %37 = trunc i32 %36 to i8
  %38 = and i8 %37, 1
  br label %39

39:                                               ; preds = %32, %31
  %40 = phi i8 [ 1, %31 ], [ %38, %32 ]
  ret i8 %40
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #6

; Function Attrs: optsize
declare void @IDP_ResizeIDPArray(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @RNA_property_collection_move(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct.IDProperty, align 8
  store ptr %1, ptr %5, align 8, !tbaa !34
  %7 = call ptr @rna_idproperty_check(ptr noundef nonnull %5, ptr noundef %0) #29
  %8 = icmp eq ptr %7, null
  br i1 %8, label %44, label %9

9:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %6)
  %10 = getelementptr inbounds %struct.IDProperty, ptr %7, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !100
  %12 = icmp sgt i32 %2, -1
  br i1 %12, label %13, label %43

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.IDProperty, ptr %7, i64 0, i32 8
  %15 = load i32, ptr %14, align 8, !tbaa !78
  %16 = icmp sgt i32 %15, %2
  %17 = icmp sgt i32 %3, -1
  %18 = and i1 %17, %16
  %19 = icmp sgt i32 %15, %3
  %20 = and i1 %19, %18
  %21 = icmp ne i32 %2, %3
  %22 = and i1 %21, %20
  br i1 %22, label %23, label %43

23:                                               ; preds = %13
  %24 = zext nneg i32 %2 to i64
  %25 = getelementptr inbounds %struct.IDProperty, ptr %11, i64 %24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %6, ptr noundef nonnull align 8 dereferenceable(128) %25, i64 128, i1 false)
  %26 = icmp ult i32 %3, %2
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = zext nneg i32 %3 to i64
  %29 = getelementptr inbounds %struct.IDProperty, ptr %11, i64 %28
  %30 = getelementptr inbounds %struct.IDProperty, ptr %29, i64 1
  %31 = sub nsw i32 %2, %3
  %32 = sext i32 %31 to i64
  %33 = shl nsw i64 %32, 7
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %30, ptr align 8 %29, i64 %33, i1 false)
  br label %40

34:                                               ; preds = %23
  %35 = getelementptr inbounds %struct.IDProperty, ptr %25, i64 1
  %36 = sub nsw i32 %3, %2
  %37 = sext i32 %36 to i64
  %38 = shl nsw i64 %37, 7
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %25, ptr nonnull align 8 %35, i64 %38, i1 false)
  %39 = zext nneg i32 %3 to i64
  br label %40

40:                                               ; preds = %34, %27
  %41 = phi i64 [ %39, %34 ], [ %28, %27 ]
  %42 = getelementptr inbounds %struct.IDProperty, ptr %11, i64 %41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %42, ptr noundef nonnull align 8 dereferenceable(128) %6, i64 128, i1 false)
  br label %43

43:                                               ; preds = %40, %13, %9
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %6)
  br label %51

44:                                               ; preds = %4
  %45 = load ptr, ptr %5, align 8, !tbaa !34
  %46 = getelementptr inbounds %struct.PropertyRNA, ptr %45, i64 0, i32 4
  %47 = load i32, ptr %46, align 8, !tbaa !43
  %48 = lshr i32 %47, 10
  %49 = trunc i32 %48 to i8
  %50 = and i8 %49, 1
  br label %51

51:                                               ; preds = %44, %43
  %52 = phi i8 [ 1, %43 ], [ %50, %44 ]
  ret i8 %52
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_property_collection_clear(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8, !tbaa !34
  %4 = call ptr @rna_idproperty_check(ptr noundef nonnull %3, ptr noundef %0) #29
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @IDP_ResizeIDPArray(ptr noundef nonnull %4, i32 noundef 0) #28
  tail call fastcc void @rna_idproperty_touch(ptr noundef nonnull %4) #29
  br label %7

7:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @RNA_property_collection_lookup_index(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #30
  call void @RNA_property_collection_begin(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4) #29
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 6, i32 2
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !92
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  br label %11

11:                                               ; preds = %9, %16
  %12 = phi i32 [ 0, %9 ], [ %17, %16 ]
  %13 = load ptr, ptr %5, align 8, !tbaa !94
  %14 = load ptr, ptr %10, align 8, !tbaa !58
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  call void @RNA_property_collection_next(ptr noundef nonnull %4) #29
  %17 = add nuw nsw i32 %12, 1
  %18 = load i32, ptr %6, align 8, !tbaa !92
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %11, !llvm.loop !263

20:                                               ; preds = %16, %11, %3
  %21 = phi i32 [ 0, %3 ], [ %12, %11 ], [ %17, %16 ]
  call void @RNA_property_collection_end(ptr noundef nonnull %4) #29
  %22 = load i32, ptr %6, align 8, !tbaa !92
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %23, i32 -1, i32 %21
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #30
  ret i32 %24
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @RNA_property_collection_lookup_int(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.CollectionPropertyIterator, align 8
  %6 = tail call fastcc ptr @rna_ensure_property(ptr noundef %1) #29
  %7 = getelementptr inbounds %struct.CollectionPropertyRNA, ptr %6, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !264
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %4
  %11 = tail call i32 %8(ptr noundef %0, i32 noundef %2, ptr noundef %3) #28
  br label %30

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %5) #30
  call void @RNA_property_collection_begin(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5) #29
  %13 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 7
  %14 = load i32, ptr %13, align 8, !tbaa !92
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %12, %21
  %17 = phi i32 [ %22, %21 ], [ 0, %12 ]
  %18 = icmp eq i32 %17, %2
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %20, i64 24, i1 false), !tbaa.struct !64
  br label %25

21:                                               ; preds = %16
  call void @RNA_property_collection_next(ptr noundef nonnull %5) #29
  %22 = add nuw nsw i32 %17, 1
  %23 = load i32, ptr %13, align 8, !tbaa !92
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %16, !llvm.loop !265

25:                                               ; preds = %21, %12, %19
  call void @RNA_property_collection_end(ptr noundef nonnull %5) #29
  %26 = load i32, ptr %13, align 8, !tbaa !92
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  br label %29

29:                                               ; preds = %28, %25
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %5) #30
  br label %30

30:                                               ; preds = %29, %10
  %31 = phi i32 [ %11, %10 ], [ %26, %29 ]
  ret i32 %31
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @RNA_property_collection_assign_int(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call fastcc ptr @rna_ensure_property(ptr noundef %1) #29
  %6 = getelementptr inbounds %struct.CollectionPropertyRNA, ptr %5, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !266
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = tail call i32 %7(ptr noundef %0, i32 noundef %2, ptr noundef %3) #28
  br label %11

11:                                               ; preds = %4, %9
  %12 = phi i32 [ %10, %9 ], [ 0, %4 ]
  ret i32 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @RNA_property_collection_type_get(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #5 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !64
  %4 = tail call fastcc ptr @rna_ensure_property(ptr noundef %1) #29
  %5 = getelementptr inbounds %struct.PropertyRNA, ptr %4, i64 0, i32 21
  %6 = load ptr, ptr %5, align 8, !tbaa !267
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !57
  %8 = icmp ne ptr %6, null
  %9 = zext i1 %8 to i8
  ret i8 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @RNA_property_collection_raw_array(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca %struct.CollectionPropertyIterator, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %5) #30
  %6 = getelementptr inbounds %struct.PropertyRNA, ptr %1, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !43
  %8 = and i32 %7, 16384
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %52, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.PropertyRNA, ptr %2, i64 0, i32 4
  %12 = load i32, ptr %11, align 8, !tbaa !43
  %13 = and i32 %12, 8192
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %52, label %15

15:                                               ; preds = %10
  call void @RNA_property_collection_begin(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %5) #29
  %16 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 7
  %17 = load i32, ptr %16, align 8, !tbaa !92
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %49, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 6, i32 2
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3, i32 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !255
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %50

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 6
  %27 = call zeroext i8 @RNA_property_editable(ptr noundef nonnull %26, ptr noundef nonnull %2) #29, !range !70
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %50, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.PropertyRNA, ptr %2, i64 0, i32 19
  %31 = load i32, ptr %30, align 8, !tbaa !268
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, ptr %21, i64 %32
  store ptr %33, ptr %3, align 8, !tbaa !269
  %34 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3, i32 0, i32 3
  %35 = load i32, ptr %34, align 8, !tbaa !254
  %36 = getelementptr inbounds %struct.RawArray, ptr %3, i64 0, i32 3
  store i32 %35, ptr %36, align 8, !tbaa !271
  %37 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3, i32 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !253
  %39 = ptrtoint ptr %38 to i64
  %40 = ptrtoint ptr %21 to i64
  %41 = sub i64 %39, %40
  %42 = sext i32 %35 to i64
  %43 = sdiv i64 %41, %42
  %44 = trunc i64 %43 to i32
  %45 = getelementptr inbounds %struct.RawArray, ptr %3, i64 0, i32 2
  store i32 %44, ptr %45, align 4, !tbaa !272
  %46 = getelementptr inbounds %struct.PropertyRNA, ptr %2, i64 0, i32 20
  %47 = load i32, ptr %46, align 4, !tbaa !273
  %48 = getelementptr inbounds %struct.RawArray, ptr %3, i64 0, i32 1
  store i32 %47, ptr %48, align 8, !tbaa !274
  br label %50

49:                                               ; preds = %15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  br label %50

50:                                               ; preds = %29, %49, %19, %25
  %51 = phi i32 [ 0, %25 ], [ 0, %19 ], [ 1, %49 ], [ 1, %29 ]
  call void @RNA_property_collection_end(ptr noundef nonnull %5) #29
  br label %52

52:                                               ; preds = %50, %4, %10
  %53 = phi i32 [ 0, %10 ], [ 0, %4 ], [ %51, %50 ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %5) #30
  ret i32 %53
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @RNA_raw_type_sizeof(i32 noundef %0) local_unnamed_addr #11 {
  %2 = icmp ult i32 %0, 5
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = zext nneg i32 %0 to i64
  %5 = getelementptr inbounds [5 x i32], ptr @switch.table.RNA_raw_type_sizeof, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4
  br label %7

7:                                                ; preds = %1, %3
  %8 = phi i32 [ %6, %3 ], [ 0, %1 ]
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @RNA_property_raw_type(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 20
  %3 = load i32, ptr %2, align 4, !tbaa !273
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %5, label %18

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 9
  %7 = load i32, ptr %6, align 8, !tbaa !77
  %8 = icmp ult i32 %7, 5
  br i1 %8, label %9, label %18

9:                                                ; preds = %5
  %10 = trunc i32 %7 to i8
  %11 = lshr i8 23, %10
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %9
  %15 = zext nneg i32 %7 to i64
  %16 = getelementptr inbounds [5 x i32], ptr @switch.table.RNA_property_raw_type, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4
  br label %18

18:                                               ; preds = %1, %5, %9, %14
  %19 = phi i32 [ %17, %14 ], [ %3, %9 ], [ %3, %5 ], [ %3, %1 ]
  ret i32 %19
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @RNA_property_collection_raw_get(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = tail call fastcc i32 @rna_raw_access(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef 0) #29
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @rna_raw_access(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #0 !PGOFuncName !275 {
  %9 = alloca %struct.PointerRNA, align 8
  %10 = alloca %struct.RawArray, align 8
  %11 = alloca %struct.CollectionPropertyIterator, align 8
  %12 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #30
  %13 = tail call ptr @RNA_property_pointer_type(ptr noundef %1, ptr noundef %2) #29
  call void @RNA_pointer_create(ptr noundef null, ptr noundef %13, ptr noundef null, ptr noundef nonnull %9) #29
  %14 = call ptr @RNA_struct_find_property(ptr noundef nonnull %9, ptr noundef %3) #29
  %15 = icmp eq ptr %14, null
  br i1 %15, label %65, label %16

16:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #30
  %17 = call i32 @RNA_property_type(ptr noundef nonnull %14) #29
  %18 = icmp ult i32 %17, 3
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  call void @BKE_report(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.78) #28
  br label %63

20:                                               ; preds = %16
  %21 = call i32 @RNA_property_array_length(ptr noundef nonnull %9, ptr noundef nonnull %14) #29
  %22 = getelementptr inbounds %struct.PropertyRNA, ptr %14, i64 0, i32 11
  %23 = load ptr, ptr %22, align 8, !tbaa !121
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %61

25:                                               ; preds = %20
  %26 = call i32 @RNA_property_collection_raw_array(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %14, ptr noundef nonnull %10) #29, !range !276
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %61, label %28

28:                                               ; preds = %25
  %29 = call i32 @llvm.umax.i32(i32 %21, i32 1)
  %30 = getelementptr inbounds %struct.RawArray, ptr %10, i64 0, i32 2
  %31 = load i32, ptr %30, align 4, !tbaa !272
  %32 = mul nsw i32 %31, %29
  %33 = icmp eq i32 %32, %6
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.79, i32 noundef %32, i32 noundef %6) #28
  br label %63

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.RawArray, ptr %10, i64 0, i32 1
  %37 = load i32, ptr %36, align 8, !tbaa !274
  %38 = icmp eq i32 %37, %5
  br i1 %38, label %39, label %61

39:                                               ; preds = %35
  %40 = icmp sgt i32 %31, 0
  br i1 %40, label %41, label %63

41:                                               ; preds = %39
  %42 = call i32 @RNA_raw_type_sizeof(i32 noundef %5) #29, !range !277
  %43 = mul nsw i32 %42, %29
  %44 = load ptr, ptr %10, align 8, !tbaa !269
  %45 = icmp eq i32 %7, 0
  %46 = sext i32 %43 to i64
  %47 = getelementptr inbounds %struct.RawArray, ptr %10, i64 0, i32 3
  %48 = load i32, ptr %47, align 8, !tbaa !271
  %49 = sext i32 %48 to i64
  br label %50

50:                                               ; preds = %41, %56
  %51 = phi i32 [ 0, %41 ], [ %59, %56 ]
  %52 = phi ptr [ %44, %41 ], [ %58, %56 ]
  %53 = phi ptr [ %4, %41 ], [ %57, %56 ]
  br i1 %45, label %55, label %54

54:                                               ; preds = %50
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %52, ptr align 1 %53, i64 %46, i1 false)
  br label %56

55:                                               ; preds = %50
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %53, ptr align 1 %52, i64 %46, i1 false)
  br label %56

56:                                               ; preds = %55, %54
  %57 = getelementptr inbounds i8, ptr %53, i64 %46
  %58 = getelementptr inbounds i8, ptr %52, i64 %49
  %59 = add nuw nsw i32 %51, 1
  %60 = icmp eq i32 %59, %31
  br i1 %60, label %63, label %50, !llvm.loop !278

61:                                               ; preds = %20, %25, %35
  %62 = phi ptr [ %14, %35 ], [ null, %20 ], [ %14, %25 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #30
  br label %65

63:                                               ; preds = %56, %39, %34, %19
  %64 = phi i32 [ 0, %19 ], [ 0, %34 ], [ 1, %39 ], [ 1, %56 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #30
  br label %546

65:                                               ; preds = %61, %8
  %66 = phi i32 [ 0, %8 ], [ %21, %61 ]
  %67 = phi i32 [ 0, %8 ], [ %17, %61 ]
  %68 = phi ptr [ null, %8 ], [ %62, %61 ]
  %69 = icmp ult i32 %67, 2
  %70 = icmp eq i32 %5, 0
  %71 = and i1 %70, %69
  br i1 %71, label %76, label %72

72:                                               ; preds = %65
  %73 = icmp eq i32 %67, 2
  %74 = icmp eq i32 %5, 4
  %75 = and i1 %74, %73
  br i1 %75, label %76, label %77

76:                                               ; preds = %72, %65
  br label %77

77:                                               ; preds = %76, %72
  %78 = phi i1 [ false, %76 ], [ true, %72 ]
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %11) #30
  call void @RNA_property_collection_begin(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %11) #29
  %79 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %11, i64 0, i32 7
  %80 = load i32, ptr %79, align 8, !tbaa !92
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  call void @RNA_property_collection_end(ptr noundef nonnull %11) #29
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %11) #30
  br label %546

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %11, i64 0, i32 6
  %85 = getelementptr inbounds %struct.PointerRNA, ptr %12, i64 0, i32 2
  %86 = icmp eq ptr %68, null
  %87 = icmp eq i32 %7, 0
  br label %88

88:                                               ; preds = %83, %532
  %89 = phi i32 [ 0, %83 ], [ %537, %532 ]
  %90 = phi i32 [ 0, %83 ], [ %536, %532 ]
  %91 = phi ptr [ null, %83 ], [ %535, %532 ]
  %92 = phi i32 [ %67, %83 ], [ %534, %532 ]
  %93 = phi i32 [ %66, %83 ], [ %533, %532 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %84, i64 24, i1 false), !tbaa.struct !64
  %94 = load ptr, ptr %85, align 8, !tbaa !58
  %95 = icmp eq ptr %94, null
  br i1 %95, label %532, label %96

96:                                               ; preds = %88
  br i1 %86, label %97, label %106

97:                                               ; preds = %96
  %98 = call ptr @RNA_struct_find_property(ptr noundef nonnull %12, ptr noundef %3) #29
  %99 = icmp eq ptr %98, null
  br i1 %99, label %104, label %100

100:                                              ; preds = %97
  %101 = call fastcc i32 @rna_property_array_length_all_dimensions(ptr noundef nonnull %12, ptr noundef nonnull %98) #29
  %102 = call i32 @RNA_property_type(ptr noundef nonnull %98) #29
  %103 = icmp ult i32 %102, 3
  br i1 %103, label %106, label %105

104:                                              ; preds = %97
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.80, ptr noundef %3) #28
  br label %525

105:                                              ; preds = %100
  call void @BKE_report(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.78) #28
  br label %525

106:                                              ; preds = %96, %100
  %107 = phi i32 [ %101, %100 ], [ %93, %96 ]
  %108 = phi i32 [ %102, %100 ], [ %92, %96 ]
  %109 = phi ptr [ %98, %100 ], [ %68, %96 ]
  br i1 %87, label %113, label %110

110:                                              ; preds = %106
  %111 = call zeroext i8 @RNA_property_editable(ptr noundef nonnull %12, ptr noundef nonnull %109) #29, !range !70
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %532, label %113

113:                                              ; preds = %110, %106
  %114 = add nsw i32 %107, %89
  %115 = icmp sgt i32 %114, %6
  br i1 %115, label %116, label %117

116:                                              ; preds = %113
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.81, i32 noundef %6) #28
  br label %525

117:                                              ; preds = %113
  %118 = icmp eq i32 %107, 0
  br i1 %118, label %119, label %268

119:                                              ; preds = %117
  br i1 %87, label %202, label %120

120:                                              ; preds = %119
  switch i32 %108, label %266 [
    i32 0, label %121
    i32 1, label %148
    i32 2, label %175
  ]

121:                                              ; preds = %120
  switch i32 %5, label %146 [
    i32 2, label %122
    i32 1, label %127
    i32 0, label %132
    i32 4, label %136
    i32 3, label %141
  ]

122:                                              ; preds = %121
  %123 = sext i32 %89 to i64
  %124 = getelementptr inbounds i8, ptr %4, i64 %123
  %125 = load i8, ptr %124, align 1, !tbaa !89
  %126 = zext i8 %125 to i32
  br label %146

127:                                              ; preds = %121
  %128 = sext i32 %89 to i64
  %129 = getelementptr inbounds i16, ptr %4, i64 %128
  %130 = load i16, ptr %129, align 2, !tbaa !279
  %131 = sext i16 %130 to i32
  br label %146

132:                                              ; preds = %121
  %133 = sext i32 %89 to i64
  %134 = getelementptr inbounds i32, ptr %4, i64 %133
  %135 = load i32, ptr %134, align 4, !tbaa !96
  br label %146

136:                                              ; preds = %121
  %137 = sext i32 %89 to i64
  %138 = getelementptr inbounds float, ptr %4, i64 %137
  %139 = load float, ptr %138, align 4, !tbaa !143
  %140 = fptosi float %139 to i32
  br label %146

141:                                              ; preds = %121
  %142 = sext i32 %89 to i64
  %143 = getelementptr inbounds double, ptr %4, i64 %142
  %144 = load double, ptr %143, align 8, !tbaa !141
  %145 = fptosi double %144 to i32
  br label %146

146:                                              ; preds = %121, %141, %136, %132, %127, %122
  %147 = phi i32 [ %145, %141 ], [ %140, %136 ], [ %135, %132 ], [ %131, %127 ], [ %126, %122 ], [ 0, %121 ]
  call void @RNA_property_boolean_set(ptr noundef nonnull %12, ptr noundef nonnull %109, i32 noundef %147) #29
  br label %266

148:                                              ; preds = %120
  switch i32 %5, label %173 [
    i32 2, label %149
    i32 1, label %154
    i32 0, label %159
    i32 4, label %163
    i32 3, label %168
  ]

149:                                              ; preds = %148
  %150 = sext i32 %89 to i64
  %151 = getelementptr inbounds i8, ptr %4, i64 %150
  %152 = load i8, ptr %151, align 1, !tbaa !89
  %153 = zext i8 %152 to i32
  br label %173

154:                                              ; preds = %148
  %155 = sext i32 %89 to i64
  %156 = getelementptr inbounds i16, ptr %4, i64 %155
  %157 = load i16, ptr %156, align 2, !tbaa !279
  %158 = sext i16 %157 to i32
  br label %173

159:                                              ; preds = %148
  %160 = sext i32 %89 to i64
  %161 = getelementptr inbounds i32, ptr %4, i64 %160
  %162 = load i32, ptr %161, align 4, !tbaa !96
  br label %173

163:                                              ; preds = %148
  %164 = sext i32 %89 to i64
  %165 = getelementptr inbounds float, ptr %4, i64 %164
  %166 = load float, ptr %165, align 4, !tbaa !143
  %167 = fptosi float %166 to i32
  br label %173

168:                                              ; preds = %148
  %169 = sext i32 %89 to i64
  %170 = getelementptr inbounds double, ptr %4, i64 %169
  %171 = load double, ptr %170, align 8, !tbaa !141
  %172 = fptosi double %171 to i32
  br label %173

173:                                              ; preds = %148, %168, %163, %159, %154, %149
  %174 = phi i32 [ %172, %168 ], [ %167, %163 ], [ %162, %159 ], [ %158, %154 ], [ %153, %149 ], [ 0, %148 ]
  call void @RNA_property_int_set(ptr noundef nonnull %12, ptr noundef nonnull %109, i32 noundef %174) #29
  br label %266

175:                                              ; preds = %120
  switch i32 %5, label %200 [
    i32 2, label %176
    i32 1, label %181
    i32 0, label %186
    i32 4, label %191
    i32 3, label %195
  ]

176:                                              ; preds = %175
  %177 = sext i32 %89 to i64
  %178 = getelementptr inbounds i8, ptr %4, i64 %177
  %179 = load i8, ptr %178, align 1, !tbaa !89
  %180 = uitofp i8 %179 to float
  br label %200

181:                                              ; preds = %175
  %182 = sext i32 %89 to i64
  %183 = getelementptr inbounds i16, ptr %4, i64 %182
  %184 = load i16, ptr %183, align 2, !tbaa !279
  %185 = sitofp i16 %184 to float
  br label %200

186:                                              ; preds = %175
  %187 = sext i32 %89 to i64
  %188 = getelementptr inbounds i32, ptr %4, i64 %187
  %189 = load i32, ptr %188, align 4, !tbaa !96
  %190 = sitofp i32 %189 to float
  br label %200

191:                                              ; preds = %175
  %192 = sext i32 %89 to i64
  %193 = getelementptr inbounds float, ptr %4, i64 %192
  %194 = load float, ptr %193, align 4, !tbaa !143
  br label %200

195:                                              ; preds = %175
  %196 = sext i32 %89 to i64
  %197 = getelementptr inbounds double, ptr %4, i64 %196
  %198 = load double, ptr %197, align 8, !tbaa !141
  %199 = fptrunc double %198 to float
  br label %200

200:                                              ; preds = %175, %195, %191, %186, %181, %176
  %201 = phi float [ %199, %195 ], [ %194, %191 ], [ %190, %186 ], [ %185, %181 ], [ %180, %176 ], [ 0.000000e+00, %175 ]
  call void @RNA_property_float_set(ptr noundef nonnull %12, ptr noundef nonnull %109, float noundef %201) #29
  br label %266

202:                                              ; preds = %119
  switch i32 %108, label %266 [
    i32 0, label %203
    i32 1, label %224
    i32 2, label %245
  ]

203:                                              ; preds = %202
  %204 = call i32 @RNA_property_boolean_get(ptr noundef nonnull %12, ptr noundef nonnull %109) #29
  switch i32 %5, label %266 [
    i32 2, label %205
    i32 1, label %209
    i32 0, label %213
    i32 4, label %216
    i32 3, label %220
  ]

205:                                              ; preds = %203
  %206 = trunc i32 %204 to i8
  %207 = sext i32 %89 to i64
  %208 = getelementptr inbounds i8, ptr %4, i64 %207
  store i8 %206, ptr %208, align 1, !tbaa !89
  br label %266

209:                                              ; preds = %203
  %210 = trunc i32 %204 to i16
  %211 = sext i32 %89 to i64
  %212 = getelementptr inbounds i16, ptr %4, i64 %211
  store i16 %210, ptr %212, align 2, !tbaa !279
  br label %266

213:                                              ; preds = %203
  %214 = sext i32 %89 to i64
  %215 = getelementptr inbounds i32, ptr %4, i64 %214
  store i32 %204, ptr %215, align 4, !tbaa !96
  br label %266

216:                                              ; preds = %203
  %217 = sitofp i32 %204 to float
  %218 = sext i32 %89 to i64
  %219 = getelementptr inbounds float, ptr %4, i64 %218
  store float %217, ptr %219, align 4, !tbaa !143
  br label %266

220:                                              ; preds = %203
  %221 = sitofp i32 %204 to double
  %222 = sext i32 %89 to i64
  %223 = getelementptr inbounds double, ptr %4, i64 %222
  store double %221, ptr %223, align 8, !tbaa !141
  br label %266

224:                                              ; preds = %202
  %225 = call i32 @RNA_property_int_get(ptr noundef nonnull %12, ptr noundef nonnull %109) #29
  switch i32 %5, label %266 [
    i32 2, label %226
    i32 1, label %230
    i32 0, label %234
    i32 4, label %237
    i32 3, label %241
  ]

226:                                              ; preds = %224
  %227 = trunc i32 %225 to i8
  %228 = sext i32 %89 to i64
  %229 = getelementptr inbounds i8, ptr %4, i64 %228
  store i8 %227, ptr %229, align 1, !tbaa !89
  br label %266

230:                                              ; preds = %224
  %231 = trunc i32 %225 to i16
  %232 = sext i32 %89 to i64
  %233 = getelementptr inbounds i16, ptr %4, i64 %232
  store i16 %231, ptr %233, align 2, !tbaa !279
  br label %266

234:                                              ; preds = %224
  %235 = sext i32 %89 to i64
  %236 = getelementptr inbounds i32, ptr %4, i64 %235
  store i32 %225, ptr %236, align 4, !tbaa !96
  br label %266

237:                                              ; preds = %224
  %238 = sitofp i32 %225 to float
  %239 = sext i32 %89 to i64
  %240 = getelementptr inbounds float, ptr %4, i64 %239
  store float %238, ptr %240, align 4, !tbaa !143
  br label %266

241:                                              ; preds = %224
  %242 = sitofp i32 %225 to double
  %243 = sext i32 %89 to i64
  %244 = getelementptr inbounds double, ptr %4, i64 %243
  store double %242, ptr %244, align 8, !tbaa !141
  br label %266

245:                                              ; preds = %202
  %246 = call float @RNA_property_float_get(ptr noundef nonnull %12, ptr noundef nonnull %109) #29
  switch i32 %5, label %266 [
    i32 2, label %247
    i32 1, label %251
    i32 0, label %255
    i32 4, label %259
    i32 3, label %262
  ]

247:                                              ; preds = %245
  %248 = fptoui float %246 to i8
  %249 = sext i32 %89 to i64
  %250 = getelementptr inbounds i8, ptr %4, i64 %249
  store i8 %248, ptr %250, align 1, !tbaa !89
  br label %266

251:                                              ; preds = %245
  %252 = fptosi float %246 to i16
  %253 = sext i32 %89 to i64
  %254 = getelementptr inbounds i16, ptr %4, i64 %253
  store i16 %252, ptr %254, align 2, !tbaa !279
  br label %266

255:                                              ; preds = %245
  %256 = fptosi float %246 to i32
  %257 = sext i32 %89 to i64
  %258 = getelementptr inbounds i32, ptr %4, i64 %257
  store i32 %256, ptr %258, align 4, !tbaa !96
  br label %266

259:                                              ; preds = %245
  %260 = sext i32 %89 to i64
  %261 = getelementptr inbounds float, ptr %4, i64 %260
  store float %246, ptr %261, align 4, !tbaa !143
  br label %266

262:                                              ; preds = %245
  %263 = fpext float %246 to double
  %264 = sext i32 %89 to i64
  %265 = getelementptr inbounds double, ptr %4, i64 %264
  store double %263, ptr %265, align 8, !tbaa !141
  br label %266

266:                                              ; preds = %247, %251, %255, %259, %262, %245, %226, %230, %234, %237, %241, %224, %205, %209, %213, %216, %220, %203, %202, %146, %173, %200, %120
  %267 = add nsw i32 %89, 1
  br label %532

268:                                              ; preds = %117
  br i1 %78, label %269, label %504

269:                                              ; preds = %268
  %270 = icmp eq ptr %91, null
  br i1 %270, label %275, label %271

271:                                              ; preds = %269
  %272 = icmp eq i32 %90, %107
  br i1 %272, label %280, label %273

273:                                              ; preds = %271
  %274 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %274(ptr noundef nonnull %91) #28
  br label %275

275:                                              ; preds = %273, %269
  %276 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %277 = sext i32 %107 to i64
  %278 = shl nsw i64 %277, 2
  %279 = call ptr %276(i64 noundef %278, ptr noundef nonnull @.str.82) #28
  br label %280

280:                                              ; preds = %271, %275
  %281 = phi ptr [ %279, %275 ], [ %91, %271 ]
  %282 = phi i32 [ %107, %275 ], [ %90, %271 ]
  br i1 %87, label %395, label %283

283:                                              ; preds = %280
  switch i32 %108, label %532 [
    i32 0, label %294
    i32 1, label %289
    i32 2, label %284
  ]

284:                                              ; preds = %283
  %285 = icmp sgt i32 %107, 0
  br i1 %285, label %286, label %393

286:                                              ; preds = %284
  %287 = sext i32 %89 to i64
  %288 = zext nneg i32 %107 to i64
  br label %363

289:                                              ; preds = %283
  %290 = icmp sgt i32 %107, 0
  br i1 %290, label %291, label %361

291:                                              ; preds = %289
  %292 = sext i32 %89 to i64
  %293 = zext nneg i32 %107 to i64
  br label %331

294:                                              ; preds = %283
  %295 = icmp sgt i32 %107, 0
  br i1 %295, label %296, label %329

296:                                              ; preds = %294
  %297 = sext i32 %89 to i64
  %298 = zext nneg i32 %107 to i64
  br label %299

299:                                              ; preds = %296, %321
  %300 = phi i64 [ 0, %296 ], [ %324, %321 ]
  %301 = phi i64 [ %297, %296 ], [ %325, %321 ]
  switch i32 %5, label %321 [
    i32 2, label %302
    i32 1, label %306
    i32 0, label %310
    i32 4, label %313
    i32 3, label %317
  ]

302:                                              ; preds = %299
  %303 = getelementptr inbounds i8, ptr %4, i64 %301
  %304 = load i8, ptr %303, align 1, !tbaa !89
  %305 = zext i8 %304 to i32
  br label %321

306:                                              ; preds = %299
  %307 = getelementptr inbounds i16, ptr %4, i64 %301
  %308 = load i16, ptr %307, align 2, !tbaa !279
  %309 = sext i16 %308 to i32
  br label %321

310:                                              ; preds = %299
  %311 = getelementptr inbounds i32, ptr %4, i64 %301
  %312 = load i32, ptr %311, align 4, !tbaa !96
  br label %321

313:                                              ; preds = %299
  %314 = getelementptr inbounds float, ptr %4, i64 %301
  %315 = load float, ptr %314, align 4, !tbaa !143
  %316 = fptosi float %315 to i32
  br label %321

317:                                              ; preds = %299
  %318 = getelementptr inbounds double, ptr %4, i64 %301
  %319 = load double, ptr %318, align 8, !tbaa !141
  %320 = fptosi double %319 to i32
  br label %321

321:                                              ; preds = %299, %302, %306, %310, %313, %317
  %322 = phi i32 [ %305, %302 ], [ %309, %306 ], [ %312, %310 ], [ %316, %313 ], [ %320, %317 ], [ 0, %299 ]
  %323 = getelementptr inbounds i32, ptr %281, i64 %300
  store i32 %322, ptr %323, align 4, !tbaa !96
  %324 = add nuw nsw i64 %300, 1
  %325 = add nsw i64 %301, 1
  %326 = icmp eq i64 %324, %298
  br i1 %326, label %327, label %299, !llvm.loop !280

327:                                              ; preds = %321
  %328 = trunc i64 %325 to i32
  br label %329

329:                                              ; preds = %327, %294
  %330 = phi i32 [ %89, %294 ], [ %328, %327 ]
  call void @RNA_property_boolean_set_array(ptr noundef nonnull %12, ptr noundef nonnull %109, ptr noundef %281) #29
  br label %532

331:                                              ; preds = %291, %353
  %332 = phi i64 [ 0, %291 ], [ %356, %353 ]
  %333 = phi i64 [ %292, %291 ], [ %357, %353 ]
  switch i32 %5, label %353 [
    i32 2, label %334
    i32 1, label %338
    i32 0, label %342
    i32 4, label %345
    i32 3, label %349
  ]

334:                                              ; preds = %331
  %335 = getelementptr inbounds i8, ptr %4, i64 %333
  %336 = load i8, ptr %335, align 1, !tbaa !89
  %337 = zext i8 %336 to i32
  br label %353

338:                                              ; preds = %331
  %339 = getelementptr inbounds i16, ptr %4, i64 %333
  %340 = load i16, ptr %339, align 2, !tbaa !279
  %341 = sext i16 %340 to i32
  br label %353

342:                                              ; preds = %331
  %343 = getelementptr inbounds i32, ptr %4, i64 %333
  %344 = load i32, ptr %343, align 4, !tbaa !96
  br label %353

345:                                              ; preds = %331
  %346 = getelementptr inbounds float, ptr %4, i64 %333
  %347 = load float, ptr %346, align 4, !tbaa !143
  %348 = fptosi float %347 to i32
  br label %353

349:                                              ; preds = %331
  %350 = getelementptr inbounds double, ptr %4, i64 %333
  %351 = load double, ptr %350, align 8, !tbaa !141
  %352 = fptosi double %351 to i32
  br label %353

353:                                              ; preds = %331, %334, %338, %342, %345, %349
  %354 = phi i32 [ %337, %334 ], [ %341, %338 ], [ %344, %342 ], [ %348, %345 ], [ %352, %349 ], [ 0, %331 ]
  %355 = getelementptr inbounds i32, ptr %281, i64 %332
  store i32 %354, ptr %355, align 4, !tbaa !96
  %356 = add nuw nsw i64 %332, 1
  %357 = add nsw i64 %333, 1
  %358 = icmp eq i64 %356, %293
  br i1 %358, label %359, label %331, !llvm.loop !281

359:                                              ; preds = %353
  %360 = trunc i64 %357 to i32
  br label %361

361:                                              ; preds = %359, %289
  %362 = phi i32 [ %89, %289 ], [ %360, %359 ]
  call void @RNA_property_int_set_array(ptr noundef nonnull %12, ptr noundef nonnull %109, ptr noundef %281) #29
  br label %532

363:                                              ; preds = %286, %385
  %364 = phi i64 [ 0, %286 ], [ %388, %385 ]
  %365 = phi i64 [ %287, %286 ], [ %389, %385 ]
  switch i32 %5, label %385 [
    i32 2, label %366
    i32 1, label %370
    i32 0, label %374
    i32 4, label %378
    i32 3, label %381
  ]

366:                                              ; preds = %363
  %367 = getelementptr inbounds i8, ptr %4, i64 %365
  %368 = load i8, ptr %367, align 1, !tbaa !89
  %369 = uitofp i8 %368 to float
  br label %385

370:                                              ; preds = %363
  %371 = getelementptr inbounds i16, ptr %4, i64 %365
  %372 = load i16, ptr %371, align 2, !tbaa !279
  %373 = sitofp i16 %372 to float
  br label %385

374:                                              ; preds = %363
  %375 = getelementptr inbounds i32, ptr %4, i64 %365
  %376 = load i32, ptr %375, align 4, !tbaa !96
  %377 = sitofp i32 %376 to float
  br label %385

378:                                              ; preds = %363
  %379 = getelementptr inbounds float, ptr %4, i64 %365
  %380 = load float, ptr %379, align 4, !tbaa !143
  br label %385

381:                                              ; preds = %363
  %382 = getelementptr inbounds double, ptr %4, i64 %365
  %383 = load double, ptr %382, align 8, !tbaa !141
  %384 = fptrunc double %383 to float
  br label %385

385:                                              ; preds = %363, %366, %370, %374, %378, %381
  %386 = phi float [ %369, %366 ], [ %373, %370 ], [ %377, %374 ], [ %380, %378 ], [ %384, %381 ], [ 0.000000e+00, %363 ]
  %387 = getelementptr inbounds float, ptr %281, i64 %364
  store float %386, ptr %387, align 4, !tbaa !143
  %388 = add nuw nsw i64 %364, 1
  %389 = add nsw i64 %365, 1
  %390 = icmp eq i64 %388, %288
  br i1 %390, label %391, label %363, !llvm.loop !282

391:                                              ; preds = %385
  %392 = trunc i64 %389 to i32
  br label %393

393:                                              ; preds = %391, %284
  %394 = phi i32 [ %89, %284 ], [ %392, %391 ]
  call void @RNA_property_float_set_array(ptr noundef nonnull %12, ptr noundef nonnull %109, ptr noundef %281) #29
  br label %532

395:                                              ; preds = %280
  switch i32 %108, label %532 [
    i32 0, label %396
    i32 1, label %432
    i32 2, label %468
  ]

396:                                              ; preds = %395
  call void @RNA_property_boolean_get_array(ptr noundef nonnull %12, ptr noundef nonnull %109, ptr noundef %281) #29
  %397 = icmp sgt i32 %107, 0
  br i1 %397, label %398, label %532

398:                                              ; preds = %396
  %399 = sext i32 %89 to i64
  %400 = zext nneg i32 %107 to i64
  br label %401

401:                                              ; preds = %398, %428
  %402 = phi i64 [ 0, %398 ], [ %429, %428 ]
  %403 = phi i64 [ %399, %398 ], [ %430, %428 ]
  switch i32 %5, label %428 [
    i32 2, label %404
    i32 1, label %409
    i32 0, label %414
    i32 4, label %418
    i32 3, label %423
  ]

404:                                              ; preds = %401
  %405 = getelementptr inbounds i32, ptr %281, i64 %402
  %406 = load i32, ptr %405, align 4, !tbaa !96
  %407 = trunc i32 %406 to i8
  %408 = getelementptr inbounds i8, ptr %4, i64 %403
  store i8 %407, ptr %408, align 1, !tbaa !89
  br label %428

409:                                              ; preds = %401
  %410 = getelementptr inbounds i32, ptr %281, i64 %402
  %411 = load i32, ptr %410, align 4, !tbaa !96
  %412 = trunc i32 %411 to i16
  %413 = getelementptr inbounds i16, ptr %4, i64 %403
  store i16 %412, ptr %413, align 2, !tbaa !279
  br label %428

414:                                              ; preds = %401
  %415 = getelementptr inbounds i32, ptr %281, i64 %402
  %416 = load i32, ptr %415, align 4, !tbaa !96
  %417 = getelementptr inbounds i32, ptr %4, i64 %403
  store i32 %416, ptr %417, align 4, !tbaa !96
  br label %428

418:                                              ; preds = %401
  %419 = getelementptr inbounds i32, ptr %281, i64 %402
  %420 = load i32, ptr %419, align 4, !tbaa !96
  %421 = sitofp i32 %420 to float
  %422 = getelementptr inbounds float, ptr %4, i64 %403
  store float %421, ptr %422, align 4, !tbaa !143
  br label %428

423:                                              ; preds = %401
  %424 = getelementptr inbounds i32, ptr %281, i64 %402
  %425 = load i32, ptr %424, align 4, !tbaa !96
  %426 = sitofp i32 %425 to double
  %427 = getelementptr inbounds double, ptr %4, i64 %403
  store double %426, ptr %427, align 8, !tbaa !141
  br label %428

428:                                              ; preds = %404, %409, %414, %418, %423, %401
  %429 = add nuw nsw i64 %402, 1
  %430 = add nsw i64 %403, 1
  %431 = icmp eq i64 %429, %400
  br i1 %431, label %526, label %401, !llvm.loop !283

432:                                              ; preds = %395
  call void @RNA_property_int_get_array(ptr noundef nonnull %12, ptr noundef nonnull %109, ptr noundef %281) #29
  %433 = icmp sgt i32 %107, 0
  br i1 %433, label %434, label %532

434:                                              ; preds = %432
  %435 = sext i32 %89 to i64
  %436 = zext nneg i32 %107 to i64
  br label %437

437:                                              ; preds = %434, %464
  %438 = phi i64 [ 0, %434 ], [ %465, %464 ]
  %439 = phi i64 [ %435, %434 ], [ %466, %464 ]
  switch i32 %5, label %464 [
    i32 2, label %440
    i32 1, label %445
    i32 0, label %450
    i32 4, label %454
    i32 3, label %459
  ]

440:                                              ; preds = %437
  %441 = getelementptr inbounds i32, ptr %281, i64 %438
  %442 = load i32, ptr %441, align 4, !tbaa !96
  %443 = trunc i32 %442 to i8
  %444 = getelementptr inbounds i8, ptr %4, i64 %439
  store i8 %443, ptr %444, align 1, !tbaa !89
  br label %464

445:                                              ; preds = %437
  %446 = getelementptr inbounds i32, ptr %281, i64 %438
  %447 = load i32, ptr %446, align 4, !tbaa !96
  %448 = trunc i32 %447 to i16
  %449 = getelementptr inbounds i16, ptr %4, i64 %439
  store i16 %448, ptr %449, align 2, !tbaa !279
  br label %464

450:                                              ; preds = %437
  %451 = getelementptr inbounds i32, ptr %281, i64 %438
  %452 = load i32, ptr %451, align 4, !tbaa !96
  %453 = getelementptr inbounds i32, ptr %4, i64 %439
  store i32 %452, ptr %453, align 4, !tbaa !96
  br label %464

454:                                              ; preds = %437
  %455 = getelementptr inbounds i32, ptr %281, i64 %438
  %456 = load i32, ptr %455, align 4, !tbaa !96
  %457 = sitofp i32 %456 to float
  %458 = getelementptr inbounds float, ptr %4, i64 %439
  store float %457, ptr %458, align 4, !tbaa !143
  br label %464

459:                                              ; preds = %437
  %460 = getelementptr inbounds i32, ptr %281, i64 %438
  %461 = load i32, ptr %460, align 4, !tbaa !96
  %462 = sitofp i32 %461 to double
  %463 = getelementptr inbounds double, ptr %4, i64 %439
  store double %462, ptr %463, align 8, !tbaa !141
  br label %464

464:                                              ; preds = %440, %445, %450, %454, %459, %437
  %465 = add nuw nsw i64 %438, 1
  %466 = add nsw i64 %439, 1
  %467 = icmp eq i64 %465, %436
  br i1 %467, label %528, label %437, !llvm.loop !284

468:                                              ; preds = %395
  call void @RNA_property_float_get_array(ptr noundef nonnull %12, ptr noundef nonnull %109, ptr noundef %281) #29
  %469 = icmp sgt i32 %107, 0
  br i1 %469, label %470, label %532

470:                                              ; preds = %468
  %471 = sext i32 %89 to i64
  %472 = zext nneg i32 %107 to i64
  br label %473

473:                                              ; preds = %470, %500
  %474 = phi i64 [ 0, %470 ], [ %501, %500 ]
  %475 = phi i64 [ %471, %470 ], [ %502, %500 ]
  switch i32 %5, label %500 [
    i32 2, label %476
    i32 1, label %481
    i32 0, label %486
    i32 4, label %491
    i32 3, label %495
  ]

476:                                              ; preds = %473
  %477 = getelementptr inbounds float, ptr %281, i64 %474
  %478 = load float, ptr %477, align 4, !tbaa !143
  %479 = fptoui float %478 to i8
  %480 = getelementptr inbounds i8, ptr %4, i64 %475
  store i8 %479, ptr %480, align 1, !tbaa !89
  br label %500

481:                                              ; preds = %473
  %482 = getelementptr inbounds float, ptr %281, i64 %474
  %483 = load float, ptr %482, align 4, !tbaa !143
  %484 = fptosi float %483 to i16
  %485 = getelementptr inbounds i16, ptr %4, i64 %475
  store i16 %484, ptr %485, align 2, !tbaa !279
  br label %500

486:                                              ; preds = %473
  %487 = getelementptr inbounds float, ptr %281, i64 %474
  %488 = load float, ptr %487, align 4, !tbaa !143
  %489 = fptosi float %488 to i32
  %490 = getelementptr inbounds i32, ptr %4, i64 %475
  store i32 %489, ptr %490, align 4, !tbaa !96
  br label %500

491:                                              ; preds = %473
  %492 = getelementptr inbounds float, ptr %281, i64 %474
  %493 = load float, ptr %492, align 4, !tbaa !143
  %494 = getelementptr inbounds float, ptr %4, i64 %475
  store float %493, ptr %494, align 4, !tbaa !143
  br label %500

495:                                              ; preds = %473
  %496 = getelementptr inbounds float, ptr %281, i64 %474
  %497 = load float, ptr %496, align 4, !tbaa !143
  %498 = fpext float %497 to double
  %499 = getelementptr inbounds double, ptr %4, i64 %475
  store double %498, ptr %499, align 8, !tbaa !141
  br label %500

500:                                              ; preds = %476, %481, %486, %491, %495, %473
  %501 = add nuw nsw i64 %474, 1
  %502 = add nsw i64 %475, 1
  %503 = icmp eq i64 %501, %472
  br i1 %503, label %530, label %473, !llvm.loop !285

504:                                              ; preds = %268
  br i1 %87, label %515, label %505

505:                                              ; preds = %504
  switch i32 %108, label %532 [
    i32 0, label %506
    i32 1, label %509
    i32 2, label %512
  ]

506:                                              ; preds = %505
  %507 = sext i32 %89 to i64
  %508 = getelementptr inbounds i32, ptr %4, i64 %507
  call void @RNA_property_boolean_set_array(ptr noundef nonnull %12, ptr noundef nonnull %109, ptr noundef %508) #29
  br label %532

509:                                              ; preds = %505
  %510 = sext i32 %89 to i64
  %511 = getelementptr inbounds i32, ptr %4, i64 %510
  call void @RNA_property_int_set_array(ptr noundef nonnull %12, ptr noundef nonnull %109, ptr noundef %511) #29
  br label %532

512:                                              ; preds = %505
  %513 = sext i32 %89 to i64
  %514 = getelementptr inbounds float, ptr %4, i64 %513
  call void @RNA_property_float_set_array(ptr noundef nonnull %12, ptr noundef nonnull %109, ptr noundef %514) #29
  br label %532

515:                                              ; preds = %504
  switch i32 %108, label %532 [
    i32 0, label %516
    i32 1, label %519
    i32 2, label %522
  ]

516:                                              ; preds = %515
  %517 = sext i32 %89 to i64
  %518 = getelementptr inbounds i32, ptr %4, i64 %517
  call void @RNA_property_boolean_get_array(ptr noundef nonnull %12, ptr noundef nonnull %109, ptr noundef %518) #29
  br label %532

519:                                              ; preds = %515
  %520 = sext i32 %89 to i64
  %521 = getelementptr inbounds i32, ptr %4, i64 %520
  call void @RNA_property_int_get_array(ptr noundef nonnull %12, ptr noundef nonnull %109, ptr noundef %521) #29
  br label %532

522:                                              ; preds = %515
  %523 = sext i32 %89 to i64
  %524 = getelementptr inbounds float, ptr %4, i64 %523
  call void @RNA_property_float_get_array(ptr noundef nonnull %12, ptr noundef nonnull %109, ptr noundef %524) #29
  br label %532

525:                                              ; preds = %116, %105, %104
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #30
  br label %540

526:                                              ; preds = %428
  %527 = trunc i64 %430 to i32
  br label %532

528:                                              ; preds = %464
  %529 = trunc i64 %466 to i32
  br label %532

530:                                              ; preds = %500
  %531 = trunc i64 %502 to i32
  br label %532

532:                                              ; preds = %530, %528, %526, %468, %432, %396, %110, %395, %329, %361, %393, %283, %516, %519, %522, %515, %506, %509, %512, %505, %266, %88
  %533 = phi i32 [ %93, %88 ], [ %107, %110 ], [ %107, %516 ], [ %107, %519 ], [ %107, %522 ], [ %107, %515 ], [ %107, %506 ], [ %107, %509 ], [ %107, %512 ], [ %107, %505 ], [ %107, %395 ], [ %107, %329 ], [ %107, %361 ], [ %107, %393 ], [ %107, %283 ], [ 0, %266 ], [ %107, %396 ], [ %107, %432 ], [ %107, %468 ], [ %107, %526 ], [ %107, %528 ], [ %107, %530 ]
  %534 = phi i32 [ %92, %88 ], [ %108, %110 ], [ 0, %516 ], [ 1, %519 ], [ 2, %522 ], [ %108, %515 ], [ 0, %506 ], [ 1, %509 ], [ 2, %512 ], [ %108, %505 ], [ %108, %395 ], [ 0, %329 ], [ 1, %361 ], [ 2, %393 ], [ %108, %283 ], [ %108, %266 ], [ 0, %396 ], [ 1, %432 ], [ 2, %468 ], [ 0, %526 ], [ 1, %528 ], [ 2, %530 ]
  %535 = phi ptr [ %91, %88 ], [ %91, %110 ], [ %91, %516 ], [ %91, %519 ], [ %91, %522 ], [ %91, %515 ], [ %91, %506 ], [ %91, %509 ], [ %91, %512 ], [ %91, %505 ], [ %281, %395 ], [ %281, %329 ], [ %281, %361 ], [ %281, %393 ], [ %281, %283 ], [ %91, %266 ], [ %281, %396 ], [ %281, %432 ], [ %281, %468 ], [ %281, %526 ], [ %281, %528 ], [ %281, %530 ]
  %536 = phi i32 [ %90, %88 ], [ %90, %110 ], [ %90, %516 ], [ %90, %519 ], [ %90, %522 ], [ %90, %515 ], [ %90, %506 ], [ %90, %509 ], [ %90, %512 ], [ %90, %505 ], [ %282, %395 ], [ %282, %329 ], [ %282, %361 ], [ %282, %393 ], [ %282, %283 ], [ %90, %266 ], [ %282, %396 ], [ %282, %432 ], [ %282, %468 ], [ %282, %526 ], [ %282, %528 ], [ %282, %530 ]
  %537 = phi i32 [ %89, %88 ], [ %89, %110 ], [ %114, %516 ], [ %114, %519 ], [ %114, %522 ], [ %89, %515 ], [ %114, %506 ], [ %114, %509 ], [ %114, %512 ], [ %89, %505 ], [ %89, %395 ], [ %330, %329 ], [ %362, %361 ], [ %394, %393 ], [ %89, %283 ], [ %267, %266 ], [ %89, %396 ], [ %89, %432 ], [ %89, %468 ], [ %527, %526 ], [ %529, %528 ], [ %531, %530 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #30
  call void @RNA_property_collection_next(ptr noundef nonnull %11) #29
  %538 = load i32, ptr %79, align 8, !tbaa !92
  %539 = icmp eq i32 %538, 0
  br i1 %539, label %540, label %88, !llvm.loop !286

540:                                              ; preds = %532, %525
  %541 = phi ptr [ %91, %525 ], [ %535, %532 ]
  %542 = phi i32 [ 0, %525 ], [ 1, %532 ]
  call void @RNA_property_collection_end(ptr noundef nonnull %11) #29
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %11) #30
  %543 = icmp eq ptr %541, null
  br i1 %543, label %546, label %544

544:                                              ; preds = %540
  %545 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %545(ptr noundef nonnull %541) #28
  br label %546

546:                                              ; preds = %540, %544, %82, %63
  %547 = phi i32 [ %64, %63 ], [ 1, %82 ], [ %542, %544 ], [ %542, %540 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #30
  ret i32 %547
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @RNA_property_collection_raw_set(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = tail call fastcc i32 @rna_raw_access(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef 1) #29
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 3
  %5 = icmp eq ptr %1, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr %1, align 8, !tbaa !50
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  store ptr %9, ptr %4, align 8, !tbaa !287
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 3, i32 0, i32 2
  store ptr %2, ptr %10, align 8, !tbaa !289
  %11 = icmp ne ptr %9, null
  %12 = zext i1 %11 to i32
  %13 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  store i32 %12, ptr %13, align 8, !tbaa !92
  %14 = icmp ne ptr %2, null
  %15 = select i1 %14, i1 %11, i1 false
  br i1 %15, label %16, label %20

16:                                               ; preds = %8
  %17 = tail call i32 %2(ptr noundef nonnull %0, ptr noundef nonnull %9) #28
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  tail call void @rna_iterator_listbase_next(ptr noundef nonnull %0) #29
  br label %20

20:                                               ; preds = %8, %19, %16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @rna_iterator_listbase_next(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 3
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 3, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !289
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  br label %8

8:                                                ; preds = %6, %13
  %9 = load ptr, ptr %2, align 8, !tbaa !287
  %10 = load ptr, ptr %9, align 8, !tbaa !290
  store ptr %10, ptr %2, align 8, !tbaa !287
  %11 = icmp ne ptr %10, null
  %12 = zext i1 %11 to i32
  store i32 %12, ptr %7, align 8, !tbaa !92
  br i1 %11, label %13, label %23

13:                                               ; preds = %8
  %14 = load ptr, ptr %3, align 8, !tbaa !289
  %15 = tail call i32 %14(ptr noundef nonnull %0, ptr noundef nonnull %10) #28
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %8, !llvm.loop !292

17:                                               ; preds = %1
  %18 = load ptr, ptr %2, align 8, !tbaa !287
  %19 = load ptr, ptr %18, align 8, !tbaa !290
  store ptr %19, ptr %2, align 8, !tbaa !287
  %20 = icmp ne ptr %19, null
  %21 = zext i1 %20 to i32
  %22 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  store i32 %21, ptr %22, align 8, !tbaa !92
  br label %23

23:                                               ; preds = %8, %13, %17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @rna_iterator_listbase_get(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !287
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @rna_iterator_listbase_end(ptr nocapture noundef readnone %0) local_unnamed_addr #11 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @rna_listbase_lookup_int(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = tail call ptr @BLI_findlink(ptr noundef %3, i32 noundef %4) #28
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef %6) #29
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @rna_iterator_array_get(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !250
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @rna_iterator_array_dereference_get(ptr nocapture noundef readonly %0) local_unnamed_addr #12 {
  %2 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !250
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @rna_array_lookup_int(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = icmp sgt i32 %6, -1
  %9 = icmp slt i32 %6, %5
  %10 = and i1 %8, %9
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %16

12:                                               ; preds = %7
  %13 = mul nsw i32 %6, %4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, ptr %3, i64 %14
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef %15) #29
  br label %16

16:                                               ; preds = %12, %11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @rna_path_parse(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef writeonly %2, ptr noundef writeonly %3, ptr noundef writeonly %4, ptr noundef %5, i8 noundef zeroext %6) unnamed_addr #0 !PGOFuncName !293 {
  %8 = alloca ptr, align 8
  %9 = alloca %struct.PointerRNA, align 8
  %10 = alloca i32, align 4
  %11 = alloca [256 x i8], align 16
  %12 = alloca %struct.PointerRNA, align 8
  %13 = alloca %struct.PointerRNA, align 8
  store ptr %1, ptr %8, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #30
  store i32 -1, ptr %10, align 4, !tbaa !96
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %11) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !64
  %14 = icmp eq ptr %1, null
  br i1 %14, label %130, label %15

15:                                               ; preds = %7
  %16 = load i8, ptr %1, align 1, !tbaa !89
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %130, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.PointerRNA, ptr %9, i64 0, i32 2
  %20 = icmp eq ptr %5, null
  %21 = icmp eq i8 %6, 0
  %22 = icmp ne ptr %4, null
  br label %23

23:                                               ; preds = %18, %88
  %24 = phi i8 [ %16, %18 ], [ %92, %88 ]
  %25 = phi ptr [ null, %18 ], [ %89, %88 ]
  %26 = icmp eq i8 %24, 91
  %27 = load ptr, ptr %19, align 8, !tbaa !58
  %28 = icmp eq ptr %27, null
  br i1 %28, label %130, label %29

29:                                               ; preds = %23
  %30 = zext i1 %26 to i32
  %31 = call fastcc ptr @rna_path_token(ptr noundef nonnull %8, ptr noundef nonnull %11, i32 noundef %30) #29
  %32 = icmp eq ptr %31, null
  br i1 %32, label %130, label %33

33:                                               ; preds = %29
  br i1 %26, label %34, label %43

34:                                               ; preds = %33
  %35 = call ptr @RNA_struct_idprops(ptr noundef nonnull %9, i8 noundef zeroext 0) #29
  %36 = icmp eq ptr %35, null
  br i1 %36, label %45, label %37

37:                                               ; preds = %34
  %38 = call fastcc i32 @rna_token_strip_quotes(ptr noundef nonnull %31) #29, !range !276
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds i8, ptr %31, i64 1
  %42 = call ptr @IDP_GetPropertyFromGroup(ptr noundef nonnull %35, ptr noundef nonnull %41) #28
  br label %45

43:                                               ; preds = %33
  %44 = call ptr @RNA_struct_find_property(ptr noundef nonnull %9, ptr noundef nonnull %31) #29
  br label %45

45:                                               ; preds = %34, %37, %40, %43
  %46 = phi ptr [ %44, %43 ], [ %42, %40 ], [ null, %37 ], [ null, %34 ]
  %47 = icmp eq ptr %31, %11
  br i1 %47, label %50, label %48

48:                                               ; preds = %45
  %49 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %49(ptr noundef nonnull %31) #28
  br label %50

50:                                               ; preds = %48, %45
  %51 = icmp eq ptr %46, null
  br i1 %51, label %130, label %52

52:                                               ; preds = %50
  br i1 %20, label %59, label %53

53:                                               ; preds = %52
  %54 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %55 = call ptr %54(i64 noundef 56, ptr noundef nonnull @__func__.rna_path_parse) #28
  %56 = getelementptr inbounds %struct.PropertyElemRNA, ptr %55, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %56, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !64
  %57 = getelementptr inbounds %struct.PropertyElemRNA, ptr %55, i64 0, i32 3
  store ptr %46, ptr %57, align 8, !tbaa !294
  %58 = getelementptr inbounds %struct.PropertyElemRNA, ptr %55, i64 0, i32 4
  store i32 -1, ptr %58, align 8, !tbaa !296
  call void @BLI_addtail(ptr noundef nonnull %5, ptr noundef %55) #28
  br label %59

59:                                               ; preds = %53, %52
  %60 = phi ptr [ %55, %53 ], [ %25, %52 ]
  %61 = call i32 @RNA_property_type(ptr noundef nonnull %46) #29
  switch i32 %61, label %77 [
    i32 5, label %62
    i32 6, label %68
  ]

62:                                               ; preds = %59
  br i1 %21, label %63, label %67

63:                                               ; preds = %62
  %64 = load ptr, ptr %8, align 8, !tbaa !34
  %65 = load i8, ptr %64, align 1, !tbaa !89
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %88, label %67

67:                                               ; preds = %63, %62
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #30
  call void @RNA_property_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %12, ptr noundef nonnull %9, ptr noundef nonnull %46) #29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %12, i64 24, i1 false), !tbaa.struct !64
  store i32 -1, ptr %10, align 4, !tbaa !96
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #30
  br label %88

68:                                               ; preds = %59
  %69 = load ptr, ptr %8, align 8, !tbaa !34
  %70 = load i8, ptr %69, align 1, !tbaa !89
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %88, label %72

72:                                               ; preds = %68
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #30
  %73 = call fastcc zeroext i8 @rna_path_parse_collection_key(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %46, ptr noundef nonnull %13) #29, !range !70
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #30
  br label %130

76:                                               ; preds = %72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %13, i64 24, i1 false), !tbaa.struct !64
  store i32 -1, ptr %10, align 4, !tbaa !96
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #30
  br label %88

77:                                               ; preds = %59
  %78 = icmp ne ptr %60, null
  %79 = select i1 %22, i1 true, i1 %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %77
  %81 = call fastcc zeroext i8 @rna_path_parse_array_index(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %46, ptr noundef nonnull %10) #29
  %82 = icmp ne i8 %81, 0
  %83 = select i1 %82, i1 %78, i1 false
  br i1 %83, label %84, label %87

84:                                               ; preds = %80
  %85 = load i32, ptr %10, align 4, !tbaa !96
  %86 = getelementptr inbounds %struct.PropertyElemRNA, ptr %60, i64 0, i32 4
  store i32 %85, ptr %86, align 8, !tbaa !296
  br label %88

87:                                               ; preds = %80
  br i1 %82, label %88, label %130

88:                                               ; preds = %63, %68, %77, %87, %67, %76, %84
  %89 = phi ptr [ %60, %87 ], [ %60, %84 ], [ %60, %67 ], [ %60, %76 ], [ %60, %63 ], [ %60, %68 ], [ null, %77 ]
  %90 = phi ptr [ %46, %87 ], [ %46, %84 ], [ null, %67 ], [ null, %76 ], [ %46, %63 ], [ %46, %68 ], [ %46, %77 ]
  %91 = load ptr, ptr %8, align 8, !tbaa !34
  %92 = load i8, ptr %91, align 1, !tbaa !89
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %94, label %23, !llvm.loop !297

94:                                               ; preds = %88
  %95 = icmp eq ptr %2, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %94
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !64
  br label %97

97:                                               ; preds = %96, %94
  %98 = icmp eq ptr %3, null
  br i1 %98, label %100, label %99

99:                                               ; preds = %97
  store ptr %90, ptr %3, align 8, !tbaa !34
  br label %100

100:                                              ; preds = %99, %97
  %101 = icmp eq ptr %4, null
  br i1 %101, label %104, label %102

102:                                              ; preds = %100
  %103 = load i32, ptr %10, align 4, !tbaa !96
  store i32 %103, ptr %4, align 4, !tbaa !96
  br label %104

104:                                              ; preds = %102, %100
  %105 = icmp eq ptr %89, null
  br i1 %105, label %130, label %106

106:                                              ; preds = %104
  %107 = getelementptr inbounds %struct.PropertyElemRNA, ptr %89, i64 0, i32 2, i32 2
  %108 = load ptr, ptr %107, align 8, !tbaa !298
  %109 = getelementptr inbounds %struct.PointerRNA, ptr %9, i64 0, i32 2
  %110 = load ptr, ptr %109, align 8, !tbaa !58
  %111 = icmp eq ptr %108, %110
  br i1 %111, label %114, label %112

112:                                              ; preds = %106
  %113 = load i32, ptr %10, align 4, !tbaa !96
  br label %123

114:                                              ; preds = %106
  %115 = getelementptr inbounds %struct.PropertyElemRNA, ptr %89, i64 0, i32 3
  %116 = load ptr, ptr %115, align 8, !tbaa !294
  %117 = icmp eq ptr %116, %90
  %118 = load i32, ptr %10, align 4, !tbaa !96
  br i1 %117, label %119, label %123

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.PropertyElemRNA, ptr %89, i64 0, i32 4
  %121 = load i32, ptr %120, align 8, !tbaa !296
  %122 = icmp eq i32 %121, %118
  br i1 %122, label %130, label %123

123:                                              ; preds = %112, %119, %114
  %124 = phi i32 [ %113, %112 ], [ %118, %119 ], [ %118, %114 ]
  %125 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %126 = call ptr %125(i64 noundef 56, ptr noundef nonnull @__func__.rna_path_parse) #28
  %127 = getelementptr inbounds %struct.PropertyElemRNA, ptr %126, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %127, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !64
  %128 = getelementptr inbounds %struct.PropertyElemRNA, ptr %126, i64 0, i32 3
  store ptr %90, ptr %128, align 8, !tbaa !294
  %129 = getelementptr inbounds %struct.PropertyElemRNA, ptr %126, i64 0, i32 4
  store i32 %124, ptr %129, align 8, !tbaa !296
  call void @BLI_addtail(ptr noundef %5, ptr noundef %126) #28
  br label %130

130:                                              ; preds = %50, %29, %23, %87, %75, %104, %119, %123, %7, %15
  %131 = phi i8 [ 0, %15 ], [ 0, %7 ], [ 1, %123 ], [ 1, %119 ], [ 1, %104 ], [ 0, %75 ], [ 0, %87 ], [ 0, %23 ], [ 0, %29 ], [ 0, %50 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %11) #30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #30
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #30
  ret i8 %131
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @RNA_path_resolve_full(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call fastcc zeroext i8 @rna_path_parse(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef null, i8 noundef zeroext 1) #29
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !58
  %11 = icmp ne ptr %10, null
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %5, %8
  %14 = phi i8 [ %12, %8 ], [ 0, %5 ]
  ret i8 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @RNA_path_resolve_property(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call fastcc zeroext i8 @rna_path_parse(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef null, ptr noundef null, i8 noundef zeroext 0) #29
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !58
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr %3, align 8, !tbaa !34
  %13 = icmp ne ptr %12, null
  %14 = zext i1 %13 to i8
  br label %15

15:                                               ; preds = %7, %11, %4
  %16 = phi i8 [ 0, %4 ], [ 0, %7 ], [ %14, %11 ]
  ret i8 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @RNA_path_resolve_property_full(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call fastcc zeroext i8 @rna_path_parse(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef null, i8 noundef zeroext 0) #29
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !58
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr %3, align 8, !tbaa !34
  %14 = icmp ne ptr %13, null
  %15 = zext i1 %14 to i8
  br label %16

16:                                               ; preds = %8, %12, %5
  %17 = phi i8 [ 0, %5 ], [ 0, %8 ], [ %15, %12 ]
  ret i8 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @RNA_path_resolve_elements(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @rna_path_parse(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %2, i8 noundef zeroext 0) #29
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RNA_path_append(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3, ptr noundef readonly %4) local_unnamed_addr #0 {
  %6 = alloca [128 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %6) #30
  %7 = tail call ptr @BLI_dynstr_new() #28
  %8 = icmp eq ptr %0, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  tail call void @BLI_dynstr_append(ptr noundef %7, ptr noundef nonnull %0) #28
  %10 = load i8, ptr %0, align 1, !tbaa !89
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  tail call void @BLI_dynstr_append(ptr noundef %7, ptr noundef nonnull @.str.27) #28
  br label %13

13:                                               ; preds = %9, %12, %5
  %14 = tail call ptr @RNA_property_identifier(ptr noundef %2) #29
  tail call void @BLI_dynstr_append(ptr noundef %7, ptr noundef %14) #28
  %15 = tail call i32 @RNA_property_type(ptr noundef %2) #29
  %16 = icmp eq i32 %15, 6
  br i1 %16, label %17, label %33

17:                                               ; preds = %13
  tail call void @BLI_dynstr_append(ptr noundef %7, ptr noundef nonnull @.str.28) #28
  %18 = icmp eq ptr %4, null
  br i1 %18, label %29, label %19

19:                                               ; preds = %17
  tail call void @BLI_dynstr_append(ptr noundef %7, ptr noundef nonnull @.str.29) #28
  %20 = getelementptr inbounds [128 x i8], ptr %6, i64 0, i64 1
  %21 = getelementptr inbounds [128 x i8], ptr %6, i64 0, i64 2
  br label %22

22:                                               ; preds = %27, %19
  %23 = phi ptr [ %4, %19 ], [ %28, %27 ]
  %24 = load i8, ptr %23, align 1, !tbaa !89
  switch i8 %24, label %26 [
    i8 0, label %31
    i8 91, label %25
  ]

25:                                               ; preds = %22
  store i8 92, ptr %6, align 16, !tbaa !89
  store i8 91, ptr %20, align 1, !tbaa !89
  store i8 0, ptr %21, align 2, !tbaa !89
  br label %27

26:                                               ; preds = %22
  store i8 %24, ptr %6, align 16, !tbaa !89
  store i8 0, ptr %20, align 1, !tbaa !89
  br label %27

27:                                               ; preds = %26, %25
  call void @BLI_dynstr_append(ptr noundef %7, ptr noundef nonnull %6) #28
  %28 = getelementptr inbounds i8, ptr %23, i64 1
  br label %22, !llvm.loop !299

29:                                               ; preds = %17
  %30 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %6, i64 noundef 128, ptr noundef nonnull @.str.30, i32 noundef %3) #28
  br label %31

31:                                               ; preds = %22, %29
  %32 = phi ptr [ %6, %29 ], [ @.str.29, %22 ]
  call void @BLI_dynstr_append(ptr noundef %7, ptr noundef nonnull %32) #28
  call void @BLI_dynstr_append(ptr noundef %7, ptr noundef nonnull @.str.31) #28
  br label %33

33:                                               ; preds = %31, %13
  %34 = call ptr @BLI_dynstr_get_cstring(ptr noundef %7) #28
  call void @BLI_dynstr_free(ptr noundef %7) #28
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %6) #30
  ret ptr %34
}

; Function Attrs: optsize
declare ptr @BLI_dynstr_new() local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_dynstr_append(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_dynstr_get_cstring(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_dynstr_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RNA_path_back(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [256 x i8], align 16
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %2) #30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #30
  %4 = icmp eq ptr %0, null
  br i1 %4, label %49, label %5

5:                                                ; preds = %1
  store ptr %0, ptr %3, align 8, !tbaa !34
  %6 = load i8, ptr %0, align 1, !tbaa !89
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %49, label %8

8:                                                ; preds = %5, %23
  %9 = phi ptr [ %24, %23 ], [ null, %5 ]
  %10 = call fastcc ptr @rna_path_token(ptr noundef nonnull %3, ptr noundef nonnull %2, i32 noundef 0) #29
  %11 = icmp eq ptr %10, null
  br i1 %11, label %49, label %12

12:                                               ; preds = %8
  %13 = icmp eq ptr %10, %2
  br i1 %13, label %16, label %14

14:                                               ; preds = %12
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %15(ptr noundef nonnull %10) #28
  br label %16

16:                                               ; preds = %14, %12
  %17 = call fastcc ptr @rna_path_token(ptr noundef nonnull %3, ptr noundef nonnull %2, i32 noundef 1) #29
  %18 = icmp ne ptr %17, null
  %19 = icmp ne ptr %17, %2
  %20 = and i1 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %22(ptr noundef nonnull %17) #28
  br label %23

23:                                               ; preds = %21, %16
  %24 = load ptr, ptr %3, align 8, !tbaa !34
  %25 = load i8, ptr %24, align 1, !tbaa !89
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %8

27:                                               ; preds = %23
  %28 = icmp eq ptr %9, null
  br i1 %28, label %49, label %29

29:                                               ; preds = %27
  %30 = ptrtoint ptr %9 to i64
  %31 = ptrtoint ptr %0 to i64
  %32 = sub i64 %30, %31
  %33 = trunc i64 %32 to i32
  %34 = call ptr @BLI_strdup(ptr noundef nonnull %0) #28
  %35 = icmp sgt i32 %33, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %29
  %37 = add i64 %32, 4294967295
  %38 = and i64 %37, 4294967295
  %39 = getelementptr inbounds i8, ptr %34, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !89
  %41 = icmp eq i8 %40, 46
  %42 = sext i1 %41 to i64
  %43 = add i64 %32, %42
  br label %44

44:                                               ; preds = %36, %29
  %45 = phi i64 [ %32, %29 ], [ %43, %36 ]
  %46 = shl i64 %45, 32
  %47 = ashr exact i64 %46, 32
  %48 = getelementptr inbounds i8, ptr %34, i64 %47
  store i8 0, ptr %48, align 1, !tbaa !89
  br label %49

49:                                               ; preds = %8, %5, %27, %1, %44
  %50 = phi ptr [ %34, %44 ], [ null, %1 ], [ null, %27 ], [ null, %5 ], [ null, %8 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %2) #30
  ret ptr %50
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @rna_path_token(ptr nocapture noundef %0, ptr noundef writeonly %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !300 {
  %4 = icmp eq i32 %2, 0
  %5 = load ptr, ptr %0, align 8, !tbaa !34
  br i1 %4, label %49, label %6

6:                                                ; preds = %3
  %7 = load i8, ptr %5, align 1, !tbaa !89
  %8 = icmp eq i8 %7, 91
  br i1 %8, label %9, label %108

9:                                                ; preds = %6
  %10 = getelementptr inbounds i8, ptr %5, i64 1
  store ptr %10, ptr %0, align 8, !tbaa !34
  %11 = load i8, ptr %10, align 1, !tbaa !89
  %12 = icmp eq i8 %11, 34
  %13 = select i1 %12, i8 34, i8 0
  br i1 %12, label %22, label %14

14:                                               ; preds = %9, %18
  %15 = phi i8 [ %21, %18 ], [ %11, %9 ]
  %16 = phi ptr [ %20, %18 ], [ %10, %9 ]
  %17 = phi i32 [ %19, %18 ], [ 0, %9 ]
  switch i8 %15, label %18 [
    i8 0, label %44
    i8 93, label %44
  ]

18:                                               ; preds = %14
  %19 = add nuw nsw i32 %17, 1
  %20 = getelementptr inbounds i8, ptr %16, i64 1
  %21 = load i8, ptr %20, align 1, !tbaa !89
  br label %14, !llvm.loop !301

22:                                               ; preds = %9
  %23 = getelementptr inbounds i8, ptr %5, i64 2
  %24 = load i8, ptr %23, align 1, !tbaa !89
  switch i8 %24, label %25 [
    i8 34, label %39
    i8 0, label %39
  ]

25:                                               ; preds = %22, %25
  %26 = phi i8 [ %32, %25 ], [ %24, %22 ]
  %27 = phi i32 [ %30, %25 ], [ 1, %22 ]
  %28 = phi ptr [ %31, %25 ], [ %23, %22 ]
  %29 = icmp eq i8 %26, 92
  %30 = add nuw nsw i32 %27, 1
  %31 = getelementptr inbounds i8, ptr %28, i64 1
  %32 = load i8, ptr %31, align 1, !tbaa !89
  %33 = icmp ne i8 %32, 0
  %34 = icmp ne i8 %32, %13
  %35 = or i1 %29, %34
  %36 = and i1 %33, %35
  br i1 %36, label %25, label %37, !llvm.loop !302

37:                                               ; preds = %25
  %38 = add nuw nsw i32 %27, 2
  br label %39

39:                                               ; preds = %22, %22, %37
  %40 = phi ptr [ %23, %22 ], [ %31, %37 ], [ %23, %22 ]
  %41 = phi i32 [ 2, %22 ], [ %38, %37 ], [ 2, %22 ]
  %42 = getelementptr inbounds i8, ptr %40, i64 1
  %43 = load i8, ptr %42, align 1, !tbaa !89
  br label %44

44:                                               ; preds = %14, %14, %39
  %45 = phi i8 [ %43, %39 ], [ %15, %14 ], [ %15, %14 ]
  %46 = phi ptr [ %42, %39 ], [ %16, %14 ], [ %16, %14 ]
  %47 = phi i32 [ %41, %39 ], [ %17, %14 ], [ %17, %14 ]
  %48 = icmp eq i8 %45, 93
  br i1 %48, label %56, label %108

49:                                               ; preds = %3, %53
  %50 = phi ptr [ %55, %53 ], [ %5, %3 ]
  %51 = phi i32 [ %54, %53 ], [ 0, %3 ]
  %52 = load i8, ptr %50, align 1, !tbaa !89
  switch i8 %52, label %53 [
    i8 0, label %56
    i8 46, label %56
    i8 91, label %56
  ]

53:                                               ; preds = %49
  %54 = add nuw nsw i32 %51, 1
  %55 = getelementptr inbounds i8, ptr %50, i64 1
  br label %49, !llvm.loop !303

56:                                               ; preds = %49, %49, %49, %44
  %57 = phi ptr [ %46, %44 ], [ %50, %49 ], [ %50, %49 ], [ %50, %49 ]
  %58 = phi i8 [ %13, %44 ], [ 0, %49 ], [ 0, %49 ], [ 0, %49 ]
  %59 = phi i32 [ %47, %44 ], [ %51, %49 ], [ %51, %49 ], [ %51, %49 ]
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %108, label %61

61:                                               ; preds = %56
  %62 = icmp slt i32 %59, 255
  br i1 %62, label %68, label %63

63:                                               ; preds = %61
  %64 = add nuw nsw i32 %59, 1
  %65 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %66 = zext nneg i32 %64 to i64
  %67 = tail call ptr %65(i64 noundef %66, ptr noundef nonnull @.str.83) #28
  br label %68

68:                                               ; preds = %61, %63
  %69 = phi ptr [ %67, %63 ], [ %1, %61 ]
  %70 = load ptr, ptr %0, align 8, !tbaa !34
  br i1 %4, label %94, label %71

71:                                               ; preds = %68
  %72 = icmp sgt i32 %59, 0
  br i1 %72, label %73, label %96

73:                                               ; preds = %71, %87
  %74 = phi i32 [ %88, %87 ], [ 0, %71 ]
  %75 = phi i32 [ %89, %87 ], [ 0, %71 ]
  %76 = phi ptr [ %90, %87 ], [ %70, %71 ]
  %77 = load i8, ptr %76, align 1, !tbaa !89
  %78 = icmp eq i8 %77, 92
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  %80 = getelementptr inbounds i8, ptr %76, i64 1
  %81 = load i8, ptr %80, align 1, !tbaa !89
  %82 = icmp eq i8 %81, %58
  br i1 %82, label %87, label %83

83:                                               ; preds = %79, %73
  %84 = add nsw i32 %74, 1
  %85 = sext i32 %74 to i64
  %86 = getelementptr inbounds i8, ptr %69, i64 %85
  store i8 %77, ptr %86, align 1, !tbaa !89
  br label %87

87:                                               ; preds = %83, %79
  %88 = phi i32 [ %74, %79 ], [ %84, %83 ]
  %89 = add nuw nsw i32 %75, 1
  %90 = getelementptr inbounds i8, ptr %76, i64 1
  %91 = icmp eq i32 %89, %59
  br i1 %91, label %92, label %73, !llvm.loop !304

92:                                               ; preds = %87
  %93 = sext i32 %88 to i64
  br label %96

94:                                               ; preds = %68
  %95 = sext i32 %59 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %69, ptr align 1 %70, i64 %95, i1 false)
  br label %96

96:                                               ; preds = %71, %92, %94
  %97 = phi i64 [ %95, %94 ], [ 0, %71 ], [ %93, %92 ]
  %98 = phi ptr [ %57, %94 ], [ %70, %71 ], [ %90, %92 ]
  %99 = getelementptr inbounds i8, ptr %69, i64 %97
  store i8 0, ptr %99, align 1, !tbaa !89
  %100 = load i8, ptr %98, align 1, !tbaa !89
  %101 = icmp eq i8 %100, 93
  %102 = zext i1 %101 to i64
  %103 = getelementptr inbounds i8, ptr %98, i64 %102
  %104 = load i8, ptr %103, align 1, !tbaa !89
  %105 = icmp eq i8 %104, 46
  %106 = zext i1 %105 to i64
  %107 = getelementptr inbounds i8, ptr %103, i64 %106
  store ptr %107, ptr %0, align 8, !tbaa !34
  br label %108

108:                                              ; preds = %56, %44, %6, %96
  %109 = phi ptr [ %69, %96 ], [ null, %6 ], [ null, %44 ], [ null, %56 ]
  ret ptr %109
}

; Function Attrs: optsize
declare ptr @BLI_strdup(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RNA_path_from_ID_to_struct(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.PointerRNA, align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !56
  %4 = icmp eq ptr %3, null
  br i1 %4, label %41, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !58
  %8 = icmp eq ptr %7, null
  br i1 %8, label %41, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !57
  %12 = tail call zeroext i8 @RNA_struct_is_ID(ptr noundef %11) #29, !range !70
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %41

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.StructRNA, ptr %11, i64 0, i32 14
  %16 = load ptr, ptr %15, align 8, !tbaa !305
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = tail call ptr %16(ptr noundef nonnull %0) #28
  br label %41

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.StructRNA, ptr %11, i64 0, i32 12
  %22 = load ptr, ptr %21, align 8, !tbaa !306
  %23 = icmp eq ptr %22, null
  br i1 %23, label %36, label %24

24:                                               ; preds = %20
  %25 = tail call zeroext i8 @RNA_struct_is_ID(ptr noundef nonnull %22) #29, !range !70
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #30
  call void @RNA_id_pointer_create(ptr noundef nonnull %3, ptr noundef nonnull %2) #29
  %28 = load ptr, ptr %10, align 8, !tbaa !57
  %29 = call fastcc ptr @RNA_struct_find_nested(ptr noundef nonnull %2, ptr noundef %28) #29
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = call ptr @RNA_property_identifier(ptr noundef nonnull %29) #29
  %33 = call ptr @BLI_strdup(ptr noundef %32) #28
  br label %34

34:                                               ; preds = %27, %31
  %35 = phi ptr [ %33, %31 ], [ null, %27 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #30
  br label %41

36:                                               ; preds = %24, %20
  %37 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef nonnull %11, ptr noundef nonnull @RNA_PropertyGroup) #29, !range !70
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  %40 = tail call fastcc ptr @rna_path_from_ID_to_idpgroup(ptr noundef nonnull %0) #29
  br label %41

41:                                               ; preds = %34, %9, %18, %36, %1, %5, %39
  %42 = phi ptr [ %40, %39 ], [ null, %5 ], [ null, %1 ], [ null, %36 ], [ null, %9 ], [ %19, %18 ], [ %35, %34 ]
  ret ptr %42
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @RNA_struct_find_nested(ptr noundef %0, ptr noundef readnone %1) unnamed_addr #0 !PGOFuncName !307 {
  %3 = alloca %struct.CollectionPropertyIterator, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %3) #30
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !57
  %6 = tail call ptr @RNA_struct_iterator_property(ptr noundef %5) #29
  call void @RNA_property_collection_begin(ptr noundef %0, ptr noundef %6, ptr noundef nonnull %3) #29
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %3, i64 0, i32 6, i32 2
  %8 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %3, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !92
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %2, %15
  %12 = load ptr, ptr %7, align 8, !tbaa !94
  %13 = call ptr @RNA_property_pointer_type(ptr noundef %0, ptr noundef %12) #29
  %14 = icmp eq ptr %13, %1
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  call void @RNA_property_collection_next(ptr noundef nonnull %3) #29
  %16 = load i32, ptr %8, align 8, !tbaa !92
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %11, !llvm.loop !308

18:                                               ; preds = %15, %11, %2
  %19 = phi ptr [ null, %2 ], [ %12, %11 ], [ null, %15 ]
  call void @RNA_property_collection_end(ptr noundef nonnull %3) #29
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %3) #30
  ret ptr %19
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @rna_path_from_ID_to_idpgroup(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !309 {
  %2 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #30
  %3 = load ptr, ptr %0, align 8, !tbaa !56
  call void @RNA_id_pointer_create(ptr noundef %3, ptr noundef nonnull %2) #29
  %4 = call ptr @RNA_struct_idprops(ptr noundef nonnull %2, i8 noundef zeroext 0) #29
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !58
  %9 = call fastcc ptr @rna_idp_path(ptr noundef nonnull %2, ptr noundef nonnull %4, ptr noundef %8, ptr noundef null) #29
  br label %10

10:                                               ; preds = %1, %6
  %11 = phi ptr [ %9, %6 ], [ null, %1 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #30
  ret ptr %11
}

; Function Attrs: optsize
declare ptr @BLI_sprintfN(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @BLI_strescape(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RNA_path_resolve_from_type_to_property(ptr noundef %0, ptr noundef %1, ptr noundef readnone %2) local_unnamed_addr #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %6 = tail call ptr @RNA_path_from_ID_to_property(ptr noundef %0, ptr noundef %1) #29
  %7 = icmp eq ptr %6, null
  br i1 %7, label %41, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %0, align 8, !tbaa !56
  call void @RNA_id_pointer_create(ptr noundef %9, ptr noundef nonnull %4) #29
  %10 = call zeroext i8 @RNA_path_resolve_elements(ptr noundef nonnull %4, ptr noundef nonnull %6, ptr noundef nonnull %5) #29
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %38, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ListBase, ptr %5, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !310
  %15 = icmp eq ptr %14, null
  br i1 %15, label %36, label %16

16:                                               ; preds = %12, %32
  %17 = phi ptr [ %34, %32 ], [ %14, %12 ]
  %18 = getelementptr inbounds %struct.PropertyElemRNA, ptr %17, i64 0, i32 2, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !311
  %20 = call zeroext i8 @RNA_struct_is_a(ptr noundef %19, ptr noundef %2) #29, !range !70
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.PropertyElemRNA, ptr %17, i64 0, i32 2
  %24 = call ptr @RNA_path_from_ID_to_struct(ptr noundef nonnull %23) #29
  %25 = icmp eq ptr %24, null
  br i1 %25, label %36, label %26

26:                                               ; preds = %22
  %27 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %24) #31
  %28 = getelementptr inbounds i8, ptr %6, i64 %27
  %29 = getelementptr inbounds i8, ptr %28, i64 1
  %30 = call ptr @BLI_strdup(ptr noundef nonnull %29) #28
  %31 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %31(ptr noundef nonnull %24) #28
  br label %36

32:                                               ; preds = %16
  %33 = getelementptr inbounds %struct.PropertyElemRNA, ptr %17, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !312
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %16, !llvm.loop !313

36:                                               ; preds = %32, %12, %22, %26
  %37 = phi ptr [ %30, %26 ], [ null, %22 ], [ null, %12 ], [ null, %32 ]
  call void @BLI_freelistN(ptr noundef nonnull %5) #28
  br label %38

38:                                               ; preds = %36, %8
  %39 = phi ptr [ %37, %36 ], [ null, %8 ]
  %40 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %40(ptr noundef nonnull %6) #28
  br label %41

41:                                               ; preds = %3, %38
  %42 = phi ptr [ %39, %38 ], [ null, %3 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #30
  ret ptr %42
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RNA_path_full_ID_py(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [128 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #30
  %3 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %4 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4, i64 2
  %5 = call i64 @BLI_strescape(ptr noundef nonnull %2, ptr noundef nonnull %4, i64 noundef 128) #28
  %6 = load i16, ptr %3, align 8, !tbaa !279
  %7 = sext i16 %6 to i32
  %8 = call ptr @BKE_idcode_to_name_plural(i32 noundef %7) #28
  %9 = call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.35, ptr noundef %8, ptr noundef nonnull %2) #28
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #30
  ret ptr %9
}

; Function Attrs: optsize
declare ptr @BKE_idcode_to_name_plural(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RNA_path_full_struct_py(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !56
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @RNA_path_full_ID_py(ptr noundef nonnull %2) #29
  %6 = tail call ptr @RNA_path_from_ID_to_struct(ptr noundef nonnull %0) #29
  %7 = tail call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.32, ptr noundef %5, ptr noundef %6) #28
  %8 = icmp eq ptr %6, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %10(ptr noundef nonnull %6) #28
  br label %11

11:                                               ; preds = %9, %4
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %12(ptr noundef %5) #28
  br label %13

13:                                               ; preds = %1, %11
  %14 = phi ptr [ %7, %11 ], [ null, %1 ]
  ret ptr %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RNA_path_full_property_py(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !56
  %5 = icmp eq ptr %4, null
  br i1 %5, label %23, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @RNA_path_full_ID_py(ptr noundef nonnull %4) #29
  %8 = tail call ptr @RNA_path_from_ID_to_property(ptr noundef nonnull %0, ptr noundef %1) #29
  %9 = icmp eq i32 %2, -1
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = tail call zeroext i8 @RNA_property_array_check(ptr noundef %1) #29, !range !70
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10, %6
  %14 = tail call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.32, ptr noundef %7, ptr noundef %8) #28
  br label %17

15:                                               ; preds = %10
  %16 = tail call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.36, ptr noundef %7, ptr noundef %8, i32 noundef %2) #28
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi ptr [ %14, %13 ], [ %16, %15 ]
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %19(ptr noundef %7) #28
  %20 = icmp eq ptr %8, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %22(ptr noundef nonnull %8) #28
  br label %23

23:                                               ; preds = %17, %21, %3
  %24 = phi ptr [ null, %3 ], [ %18, %21 ], [ %18, %17 ]
  ret ptr %24
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RNA_path_struct_property_py(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !56
  %5 = icmp eq ptr %4, null
  br i1 %5, label %36, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @RNA_path_from_ID_to_property(ptr noundef nonnull %0, ptr noundef %1) #29
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %21

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !57
  %12 = tail call zeroext i8 @RNA_struct_is_ID(ptr noundef %11) #29, !range !70
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %9
  %15 = tail call ptr @RNA_property_identifier(ptr noundef %1) #29
  %16 = tail call ptr @RNA_struct_find_property(ptr noundef nonnull %0, ptr noundef %15) #29
  %17 = icmp eq ptr %16, %1
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = tail call ptr @RNA_property_identifier(ptr noundef %1) #29
  %20 = tail call ptr @BLI_strdup(ptr noundef %19) #28
  br label %21

21:                                               ; preds = %9, %18, %14, %6
  %22 = phi ptr [ null, %9 ], [ %20, %18 ], [ null, %14 ], [ %7, %6 ]
  %23 = icmp eq i32 %2, -1
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = tail call zeroext i8 @RNA_property_array_check(ptr noundef %1) #29, !range !70
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24, %21
  %28 = tail call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.37, ptr noundef %22) #28
  br label %31

29:                                               ; preds = %24
  %30 = tail call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.38, ptr noundef %22, i32 noundef %2) #28
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi ptr [ %28, %27 ], [ %30, %29 ]
  %33 = icmp eq ptr %22, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %35(ptr noundef nonnull %22) #28
  br label %36

36:                                               ; preds = %31, %34, %3
  %37 = phi ptr [ null, %3 ], [ %32, %34 ], [ %32, %31 ]
  ret ptr %37
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RNA_path_property_py(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i32 %2, -1
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = tail call zeroext i8 @RNA_property_array_check(ptr noundef %1) #29, !range !70
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %5, %3
  %9 = tail call ptr @RNA_property_identifier(ptr noundef %1) #29
  %10 = tail call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.37, ptr noundef %9) #28
  br label %14

11:                                               ; preds = %5
  %12 = tail call ptr @RNA_property_identifier(ptr noundef %1) #29
  %13 = tail call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.38, ptr noundef %12, i32 noundef %2) #28
  br label %14

14:                                               ; preds = %11, %8
  %15 = phi ptr [ %10, %8 ], [ %13, %11 ]
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @RNA_boolean_get(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @RNA_struct_find_property(ptr noundef %0, ptr noundef %1) #29
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @RNA_property_boolean_get(ptr noundef %0, ptr noundef nonnull %3) #29
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %2 ]
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_boolean_set(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @RNA_struct_find_property(ptr noundef %0, ptr noundef %1) #29
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @RNA_property_boolean_set(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %2) #29
  br label %7

7:                                                ; preds = %6, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_boolean_get_array(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @RNA_struct_find_property(ptr noundef %0, ptr noundef %1) #29
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @RNA_property_boolean_get_array(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %2) #29
  br label %7

7:                                                ; preds = %6, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_boolean_set_array(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @RNA_struct_find_property(ptr noundef %0, ptr noundef %1) #29
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @RNA_property_boolean_set_array(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %2) #29
  br label %7

7:                                                ; preds = %6, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @RNA_int_get(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @RNA_struct_find_property(ptr noundef %0, ptr noundef %1) #29
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @RNA_property_int_get(ptr noundef %0, ptr noundef nonnull %3) #29
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %2 ]
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_int_set(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @RNA_struct_find_property(ptr noundef %0, ptr noundef %1) #29
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @RNA_property_int_set(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %2) #29
  br label %7

7:                                                ; preds = %6, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_int_get_array(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @RNA_struct_find_property(ptr noundef %0, ptr noundef %1) #29
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @RNA_property_int_get_array(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %2) #29
  br label %7

7:                                                ; preds = %6, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_int_set_array(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @RNA_struct_find_property(ptr noundef %0, ptr noundef %1) #29
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @RNA_property_int_set_array(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %2) #29
  br label %7

7:                                                ; preds = %6, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @RNA_float_get(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @RNA_struct_find_property(ptr noundef %0, ptr noundef %1) #29
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call float @RNA_property_float_get(ptr noundef %0, ptr noundef nonnull %3) #29
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi float [ %6, %5 ], [ 0.000000e+00, %2 ]
  ret float %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_float_set(ptr noundef %0, ptr noundef %1, float noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @RNA_struct_find_property(ptr noundef %0, ptr noundef %1) #29
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @RNA_property_float_set(ptr noundef %0, ptr noundef nonnull %4, float noundef %2) #29
  br label %7

7:                                                ; preds = %6, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_float_get_array(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @RNA_struct_find_property(ptr noundef %0, ptr noundef %1) #29
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @RNA_property_float_get_array(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %2) #29
  br label %7

7:                                                ; preds = %6, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_float_set_array(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @RNA_struct_find_property(ptr noundef %0, ptr noundef %1) #29
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @RNA_property_float_set_array(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %2) #29
  br label %7

7:                                                ; preds = %6, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @RNA_enum_get(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @RNA_struct_find_property(ptr noundef %0, ptr noundef %1) #29
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @RNA_property_enum_get(ptr noundef %0, ptr noundef nonnull %3) #29
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %2 ]
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_enum_set(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @RNA_struct_find_property(ptr noundef %0, ptr noundef %1) #29
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @RNA_property_enum_set(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %2) #29
  br label %7

7:                                                ; preds = %6, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_enum_set_identifier(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = tail call ptr @RNA_struct_find_property(ptr noundef %0, ptr noundef %1) #29
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #30
  %8 = call zeroext i8 @RNA_property_enum_value(ptr noundef null, ptr noundef %0, ptr noundef nonnull %5, ptr noundef %2, ptr noundef nonnull %4) #29, !range !70
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = load i32, ptr %4, align 4, !tbaa !96
  tail call void @RNA_property_enum_set(ptr noundef %0, ptr noundef nonnull %5, i32 noundef %11) #29
  br label %18

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !57
  %15 = getelementptr inbounds %struct.StructRNA, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !80
  %17 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.39, ptr noundef nonnull @__func__.RNA_enum_set_identifier, ptr noundef %16, ptr noundef %1, ptr noundef %2) #29
  br label %18

18:                                               ; preds = %12, %10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #30
  br label %19

19:                                               ; preds = %18, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @RNA_enum_is_equal(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca i8, align 1
  %7 = tail call ptr @RNA_struct_find_property(ptr noundef %1, ptr noundef %2) #29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #30
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #30
  %8 = icmp eq ptr %7, null
  br i1 %8, label %33, label %9

9:                                                ; preds = %4
  call void @RNA_property_enum_items(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull %5, ptr noundef null, ptr noundef nonnull %6) #29
  %10 = load ptr, ptr %5, align 8, !tbaa !34
  %11 = call i32 @RNA_enum_from_identifier(ptr noundef %10, ptr noundef %3) #29
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %20, label %13

13:                                               ; preds = %9
  %14 = sext i32 %11 to i64
  %15 = getelementptr inbounds %struct.EnumPropertyItem, ptr %10, i64 %14
  %16 = load i32, ptr %15, align 8, !tbaa !173
  %17 = call i32 @RNA_property_enum_get(ptr noundef %1, ptr noundef nonnull %7) #29
  %18 = icmp eq i32 %16, %17
  %19 = zext i1 %18 to i8
  br label %20

20:                                               ; preds = %13, %9
  %21 = phi i8 [ %19, %13 ], [ undef, %9 ]
  %22 = load i8, ptr %6, align 1, !tbaa !89
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %25(ptr noundef %10) #28
  br label %26

26:                                               ; preds = %24, %20
  br i1 %12, label %27, label %33

27:                                               ; preds = %26
  %28 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !57
  %30 = getelementptr inbounds %struct.StructRNA, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !80
  %32 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.40, ptr noundef nonnull @__func__.RNA_enum_is_equal, ptr noundef %31, ptr noundef %2, ptr noundef %3) #29
  br label %33

33:                                               ; preds = %4, %27, %26
  %34 = phi i8 [ 0, %27 ], [ %21, %26 ], [ 0, %4 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #30
  ret i8 %34
}

; Function Attrs: nofree noinline nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @RNA_enum_value_from_id(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #20 {
  %4 = tail call i32 @RNA_enum_from_identifier(ptr noundef %0, ptr noundef %1) #29
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = sext i32 %4 to i64
  %8 = getelementptr inbounds %struct.EnumPropertyItem, ptr %0, i64 %7
  %9 = load i32, ptr %8, align 8, !tbaa !173
  store i32 %9, ptr %2, align 4, !tbaa !96
  br label %10

10:                                               ; preds = %3, %6
  %11 = phi i8 [ 1, %6 ], [ 0, %3 ]
  ret i8 %11
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @RNA_enum_id_from_value(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #14 {
  %4 = tail call i32 @RNA_enum_from_value(ptr noundef %0, i32 noundef %1) #29
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = sext i32 %4 to i64
  %8 = getelementptr inbounds %struct.EnumPropertyItem, ptr %0, i64 %7, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !165
  store ptr %9, ptr %2, align 8, !tbaa !34
  br label %10

10:                                               ; preds = %3, %6
  %11 = phi i8 [ 1, %6 ], [ 0, %3 ]
  ret i8 %11
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @RNA_enum_icon_from_value(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #14 {
  %4 = tail call i32 @RNA_enum_from_value(ptr noundef %0, i32 noundef %1) #29
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = sext i32 %4 to i64
  %8 = getelementptr inbounds %struct.EnumPropertyItem, ptr %0, i64 %7, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !314
  store i32 %9, ptr %2, align 4, !tbaa !96
  br label %10

10:                                               ; preds = %3, %6
  %11 = phi i8 [ 1, %6 ], [ 0, %3 ]
  ret i8 %11
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @RNA_enum_name_from_value(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #14 {
  %4 = tail call i32 @RNA_enum_from_value(ptr noundef %0, i32 noundef %1) #29
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = sext i32 %4 to i64
  %8 = getelementptr inbounds %struct.EnumPropertyItem, ptr %0, i64 %7, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !171
  store ptr %9, ptr %2, align 8, !tbaa !34
  br label %10

10:                                               ; preds = %3, %6
  %11 = phi i8 [ 1, %6 ], [ 0, %3 ]
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_string_get(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @RNA_struct_find_property(ptr noundef %0, ptr noundef %1) #29
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @RNA_property_string_get(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %2) #29
  br label %8

7:                                                ; preds = %3
  store i8 0, ptr %2, align 1, !tbaa !89
  br label %8

8:                                                ; preds = %7, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @RNA_string_get_alloc(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @RNA_struct_find_property(ptr noundef %0, ptr noundef %1) #29
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @RNA_property_string_get_alloc(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %2, i32 noundef %3, ptr noundef null) #29
  br label %9

9:                                                ; preds = %4, %7
  %10 = phi ptr [ %8, %7 ], [ null, %4 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @RNA_string_length(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @RNA_struct_find_property(ptr noundef %0, ptr noundef %1) #29
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @RNA_property_string_length(ptr noundef %0, ptr noundef nonnull %3) #29
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %2 ]
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_string_set(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @RNA_struct_find_property(ptr noundef %0, ptr noundef %1) #29
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @RNA_property_string_set(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %2) #29
  br label %7

7:                                                ; preds = %6, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_pointer_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @RNA_struct_find_property(ptr noundef %1, ptr noundef %2) #29
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @RNA_property_pointer_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull %4) #29
  br label %8

7:                                                ; preds = %3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %8

8:                                                ; preds = %7, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_pointer_set(ptr noundef %0, ptr noundef %1, ptr noundef byval(%struct.PointerRNA) align 8 %2) local_unnamed_addr #0 {
  %4 = tail call ptr @RNA_struct_find_property(ptr noundef %0, ptr noundef %1) #29
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @RNA_property_pointer_set(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %2) #29
  br label %7

7:                                                ; preds = %6, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_pointer_add(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @RNA_struct_find_property(ptr noundef %0, ptr noundef %1) #29
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @RNA_property_pointer_add(ptr noundef %0, ptr noundef nonnull %3) #29
  br label %6

6:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_collection_begin(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @RNA_struct_find_property(ptr noundef %0, ptr noundef %1) #29
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @RNA_property_collection_begin(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %2) #29
  br label %7

7:                                                ; preds = %6, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_collection_add(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @RNA_struct_find_property(ptr noundef %0, ptr noundef %1) #29
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @RNA_property_collection_add(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %2) #29
  br label %7

7:                                                ; preds = %6, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_collection_clear(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @RNA_struct_find_property(ptr noundef %0, ptr noundef %1) #29
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @RNA_property_collection_clear(ptr noundef %0, ptr noundef nonnull %3) #29
  br label %6

6:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @RNA_collection_length(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @RNA_struct_find_property(ptr noundef %0, ptr noundef %1) #29
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @RNA_property_collection_length(ptr noundef %0, ptr noundef nonnull %3) #29
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %2 ]
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @RNA_property_is_set_ex(ptr noundef %0, ptr noundef readonly %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = tail call fastcc ptr @rna_ensure_property(ptr noundef %1) #29
  %5 = getelementptr inbounds %struct.PropertyRNA, ptr %4, i64 0, i32 4
  %6 = load i32, ptr %5, align 8, !tbaa !43
  %7 = and i32 %6, 1024
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %22, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.PropertyRNA, ptr %4, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !45
  %12 = tail call fastcc ptr @rna_idproperty_find(ptr noundef %0, ptr noundef %11) #29
  %13 = icmp eq ptr %12, null
  br i1 %13, label %22, label %14

14:                                               ; preds = %9
  %15 = icmp eq i8 %2, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.IDProperty, ptr %12, i64 0, i32 4
  %18 = load i16, ptr %17, align 2, !tbaa !204
  %19 = and i16 %18, 128
  %20 = icmp eq i16 %19, 0
  %21 = zext i1 %20 to i8
  br label %22

22:                                               ; preds = %3, %9, %16, %14
  %23 = phi i8 [ 0, %9 ], [ 1, %14 ], [ %21, %16 ], [ 1, %3 ]
  ret i8 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @RNA_property_is_set(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @rna_ensure_property(ptr noundef %1) #29
  %4 = getelementptr inbounds %struct.PropertyRNA, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !43
  %6 = and i32 %5, 1024
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.PropertyRNA, ptr %3, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !45
  %11 = tail call fastcc ptr @rna_idproperty_find(ptr noundef %0, ptr noundef %10) #29
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.IDProperty, ptr %11, i64 0, i32 4
  %15 = load i16, ptr %14, align 2, !tbaa !204
  %16 = and i16 %15, 128
  %17 = icmp eq i16 %16, 0
  %18 = zext i1 %17 to i8
  br label %19

19:                                               ; preds = %2, %8, %13
  %20 = phi i8 [ 0, %8 ], [ %18, %13 ], [ 1, %2 ]
  ret i8 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_property_unset(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @rna_ensure_property(ptr noundef %1) #29
  %4 = getelementptr inbounds %struct.PropertyRNA, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !43
  %6 = and i32 %5, 1024
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.PropertyRNA, ptr %3, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !45
  tail call fastcc void @rna_idproperty_free(ptr noundef %0, ptr noundef %10) #29
  br label %11

11:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_idproperty_free(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !315 {
  %3 = tail call ptr @RNA_struct_idprops(ptr noundef %0, i8 noundef zeroext 0) #29
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @IDP_GetPropertyFromGroup(ptr noundef nonnull %3, ptr noundef %1) #28
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  tail call void @IDP_FreeFromGroup(ptr noundef nonnull %3, ptr noundef nonnull %6) #28
  br label %9

9:                                                ; preds = %5, %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @RNA_struct_property_is_set_ex(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = tail call ptr @RNA_struct_find_property(ptr noundef %0, ptr noundef %1) #29
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call zeroext i8 @RNA_property_is_set_ex(ptr noundef %0, ptr noundef nonnull %4, i8 noundef zeroext %2) #29, !range !70
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi i8 [ %7, %6 ], [ 0, %3 ]
  ret i8 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @RNA_struct_property_is_set(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @RNA_struct_find_property(ptr noundef %0, ptr noundef %1) #29
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %0, ptr noundef nonnull %3) #29, !range !70
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi i8 [ %6, %5 ], [ 0, %2 ]
  ret i8 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_struct_property_unset(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @RNA_struct_find_property(ptr noundef %0, ptr noundef %1) #29
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @RNA_property_unset(ptr noundef %0, ptr noundef nonnull %3) #29
  br label %6

6:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @RNA_property_is_idprop(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.PropertyRNA, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !114
  %4 = icmp ne i32 %3, -1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @RNA_property_is_unlink(ptr noundef %0) local_unnamed_addr #12 {
  %2 = tail call i32 @RNA_property_flag(ptr noundef %0) #29
  %3 = tail call i32 @RNA_property_type(ptr noundef %0) #29
  %4 = icmp eq i32 %3, 3
  %5 = select i1 %4, i32 33554432, i32 33816576
  %6 = and i32 %5, %2
  %7 = icmp eq i32 %6, 0
  %8 = zext i1 %7 to i8
  ret i8 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RNA_pointer_as_string_id(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.CollectionPropertyIterator, align 8
  %4 = tail call ptr @BLI_dynstr_new() #28
  tail call void @BLI_dynstr_append(ptr noundef %4, ptr noundef nonnull @.str.41) #28
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %3) #30
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = tail call ptr @RNA_struct_iterator_property(ptr noundef %6) #29
  call void @RNA_property_collection_begin(ptr noundef %1, ptr noundef %7, ptr noundef nonnull %3) #29
  %8 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %3, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !92
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %29, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %3, i64 0, i32 6, i32 2
  br label %13

13:                                               ; preds = %11, %25
  %14 = phi i32 [ 1, %11 ], [ %26, %25 ]
  %15 = load ptr, ptr %12, align 8, !tbaa !94
  %16 = call ptr @RNA_property_identifier(ptr noundef %15) #29
  %17 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(9) @.str.42) #31
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = icmp eq i32 %14, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %19
  call void @BLI_dynstr_append(ptr noundef %4, ptr noundef nonnull @.str.43) #28
  br label %22

22:                                               ; preds = %21, %19
  %23 = call ptr @RNA_property_as_string(ptr noundef %0, ptr noundef %1, ptr noundef %15, i32 noundef -1, i32 noundef 2147483647) #29
  call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %4, ptr noundef nonnull @.str.44, ptr noundef %16, ptr noundef %23) #28
  %24 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %24(ptr noundef %23) #28
  br label %25

25:                                               ; preds = %13, %22
  %26 = phi i32 [ 0, %22 ], [ %14, %13 ]
  call void @RNA_property_collection_next(ptr noundef nonnull %3) #29
  %27 = load i32, ptr %8, align 8, !tbaa !92
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %13, !llvm.loop !316

29:                                               ; preds = %25, %2
  call void @RNA_property_collection_end(ptr noundef nonnull %3) #29
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %3) #30
  call void @BLI_dynstr_append(ptr noundef %4, ptr noundef nonnull @.str.45) #28
  %30 = call ptr @BLI_dynstr_get_cstring(ptr noundef %4) #28
  call void @BLI_dynstr_free(ptr noundef %4) #28
  ret ptr %30
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RNA_property_as_string(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i8, align 1
  %9 = alloca %struct.PointerRNA, align 8
  %10 = alloca %struct.CollectionPropertyIterator, align 8
  %11 = alloca %struct.PointerRNA, align 8
  %12 = tail call i32 @RNA_property_type(ptr noundef %2) #29
  %13 = tail call i32 @RNA_property_array_length(ptr noundef %1, ptr noundef %2) #29
  %14 = tail call ptr @BLI_dynstr_new() #28
  switch i32 %12, label %169 [
    i32 0, label %15
    i32 1, label %39
    i32 2, label %60
    i32 3, label %84
    i32 4, label %98
    i32 5, label %145
    i32 6, label %148
  ]

15:                                               ; preds = %5
  %16 = icmp eq i32 %13, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %15
  %18 = tail call i32 @RNA_property_boolean_get(ptr noundef %1, ptr noundef %2) #29
  %19 = tail call fastcc ptr @bool_as_py_string(i32 noundef %18) #29
  tail call void @BLI_dynstr_append(ptr noundef %14, ptr noundef nonnull %19) #28
  br label %170

20:                                               ; preds = %15
  %21 = icmp eq i32 %3, -1
  br i1 %21, label %25, label %22

22:                                               ; preds = %20
  %23 = tail call i32 @RNA_property_boolean_get_index(ptr noundef %1, ptr noundef %2, i32 noundef %3) #29
  %24 = tail call fastcc ptr @bool_as_py_string(i32 noundef %23) #29
  tail call void @BLI_dynstr_append(ptr noundef %14, ptr noundef nonnull %24) #28
  br label %170

25:                                               ; preds = %20
  tail call void @BLI_dynstr_append(ptr noundef %14, ptr noundef nonnull @.str.51) #28
  %26 = icmp sgt i32 %13, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %25, %27
  %28 = phi i32 [ %33, %27 ], [ 0, %25 ]
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, ptr @.str.37, ptr @.str.46
  %31 = tail call i32 @RNA_property_boolean_get_index(ptr noundef %1, ptr noundef %2, i32 noundef %28) #29
  %32 = tail call fastcc ptr @bool_as_py_string(i32 noundef %31) #29
  tail call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %14, ptr noundef nonnull %30, ptr noundef nonnull %32) #28
  %33 = add nuw nsw i32 %28, 1
  %34 = icmp eq i32 %33, %13
  br i1 %34, label %35, label %27, !llvm.loop !317

35:                                               ; preds = %27
  %36 = icmp eq i32 %13, 1
  br i1 %36, label %37, label %38

37:                                               ; preds = %35
  tail call void @BLI_dynstr_append(ptr noundef %14, ptr noundef nonnull @.str.52) #28
  br label %38

38:                                               ; preds = %25, %37, %35
  tail call void @BLI_dynstr_append(ptr noundef %14, ptr noundef nonnull @.str.53) #28
  br label %170

39:                                               ; preds = %5
  %40 = icmp eq i32 %13, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %39
  %42 = tail call i32 @RNA_property_int_get(ptr noundef %1, ptr noundef %2) #29
  tail call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %14, ptr noundef nonnull @.str.30, i32 noundef %42) #28
  br label %170

43:                                               ; preds = %39
  %44 = icmp eq i32 %3, -1
  br i1 %44, label %47, label %45

45:                                               ; preds = %43
  %46 = tail call i32 @RNA_property_int_get_index(ptr noundef %1, ptr noundef %2, i32 noundef %3) #29
  tail call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %14, ptr noundef nonnull @.str.30, i32 noundef %46) #28
  br label %170

47:                                               ; preds = %43
  tail call void @BLI_dynstr_append(ptr noundef %14, ptr noundef nonnull @.str.51) #28
  %48 = icmp sgt i32 %13, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %47, %49
  %50 = phi i32 [ %54, %49 ], [ 0, %47 ]
  %51 = icmp eq i32 %50, 0
  %52 = select i1 %51, ptr @.str.30, ptr @.str.54
  %53 = tail call i32 @RNA_property_int_get_index(ptr noundef %1, ptr noundef %2, i32 noundef %50) #29
  tail call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %14, ptr noundef nonnull %52, i32 noundef %53) #28
  %54 = add nuw nsw i32 %50, 1
  %55 = icmp eq i32 %54, %13
  br i1 %55, label %56, label %49, !llvm.loop !318

56:                                               ; preds = %49
  %57 = icmp eq i32 %13, 1
  br i1 %57, label %58, label %59

58:                                               ; preds = %56
  tail call void @BLI_dynstr_append(ptr noundef %14, ptr noundef nonnull @.str.52) #28
  br label %59

59:                                               ; preds = %47, %58, %56
  tail call void @BLI_dynstr_append(ptr noundef %14, ptr noundef nonnull @.str.53) #28
  br label %170

60:                                               ; preds = %5
  %61 = icmp eq i32 %13, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %60
  %63 = tail call float @RNA_property_float_get(ptr noundef %1, ptr noundef %2) #29
  %64 = fpext float %63 to double
  tail call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %14, ptr noundef nonnull @.str.55, double noundef %64) #28
  br label %170

65:                                               ; preds = %60
  %66 = icmp eq i32 %3, -1
  br i1 %66, label %70, label %67

67:                                               ; preds = %65
  %68 = tail call float @RNA_property_float_get_index(ptr noundef %1, ptr noundef %2, i32 noundef %3) #29
  %69 = fpext float %68 to double
  tail call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %14, ptr noundef nonnull @.str.55, double noundef %69) #28
  br label %170

70:                                               ; preds = %65
  tail call void @BLI_dynstr_append(ptr noundef %14, ptr noundef nonnull @.str.51) #28
  %71 = icmp sgt i32 %13, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %70, %72
  %73 = phi i32 [ %78, %72 ], [ 0, %70 ]
  %74 = icmp eq i32 %73, 0
  %75 = select i1 %74, ptr @.str.55, ptr @.str.56
  %76 = tail call float @RNA_property_float_get_index(ptr noundef %1, ptr noundef %2, i32 noundef %73) #29
  %77 = fpext float %76 to double
  tail call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %14, ptr noundef nonnull %75, double noundef %77) #28
  %78 = add nuw nsw i32 %73, 1
  %79 = icmp eq i32 %78, %13
  br i1 %79, label %80, label %72, !llvm.loop !319

80:                                               ; preds = %72
  %81 = icmp eq i32 %13, 1
  br i1 %81, label %82, label %83

82:                                               ; preds = %80
  tail call void @BLI_dynstr_append(ptr noundef %14, ptr noundef nonnull @.str.52) #28
  br label %83

83:                                               ; preds = %70, %82, %80
  tail call void @BLI_dynstr_append(ptr noundef %14, ptr noundef nonnull @.str.53) #28
  br label %170

84:                                               ; preds = %5
  %85 = tail call i32 @RNA_property_string_length(ptr noundef %1, ptr noundef %2) #29
  %86 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %87 = add nsw i32 %85, 1
  %88 = sext i32 %87 to i64
  %89 = tail call ptr %86(i64 noundef %88, ptr noundef nonnull @.str.57) #28
  %90 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %91 = shl nsw i32 %85, 1
  %92 = or disjoint i32 %91, 1
  %93 = sext i32 %92 to i64
  %94 = tail call ptr %90(i64 noundef %93, ptr noundef nonnull @.str.58) #28
  tail call void @RNA_property_string_get(ptr noundef %1, ptr noundef %2, ptr noundef %89) #29
  %95 = tail call i64 @BLI_strescape(ptr noundef %94, ptr noundef %89, i64 noundef %93) #28
  %96 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %96(ptr noundef %89) #28
  tail call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %14, ptr noundef nonnull @.str.59, ptr noundef %94) #28
  %97 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %97(ptr noundef %94) #28
  br label %170

98:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #30
  %99 = tail call i32 @RNA_property_enum_get(ptr noundef %1, ptr noundef %2) #29
  %100 = tail call i32 @RNA_property_flag(ptr noundef %2) #29
  %101 = and i32 %100, 2097152
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %138, label %103

103:                                              ; preds = %98
  %104 = icmp eq i32 %99, 0
  br i1 %104, label %137, label %105

105:                                              ; preds = %103
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #30
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #30
  tail call void @BLI_dynstr_append(ptr noundef %14, ptr noundef nonnull @.str.41) #28
  call void @RNA_property_enum_items(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %7, ptr noundef null, ptr noundef nonnull %8) #29
  %106 = load ptr, ptr %7, align 8, !tbaa !34
  %107 = icmp eq ptr %106, null
  br i1 %107, label %136, label %108

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.EnumPropertyItem, ptr %106, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !165
  %111 = icmp eq ptr %110, null
  br i1 %111, label %131, label %112

112:                                              ; preds = %108, %125
  %113 = phi ptr [ %129, %125 ], [ %110, %108 ]
  %114 = phi i8 [ %126, %125 ], [ 1, %108 ]
  %115 = phi ptr [ %127, %125 ], [ %106, %108 ]
  %116 = load i8, ptr %113, align 1, !tbaa !89
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %125, label %118

118:                                              ; preds = %112
  %119 = load i32, ptr %115, align 8, !tbaa !173
  %120 = and i32 %119, %99
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %118
  %123 = icmp eq i8 %114, 0
  %124 = select i1 %123, ptr @.str.61, ptr @.str.60
  call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %14, ptr noundef nonnull %124, ptr noundef nonnull %113) #28
  br label %125

125:                                              ; preds = %112, %118, %122
  %126 = phi i8 [ 0, %122 ], [ %114, %118 ], [ %114, %112 ]
  %127 = getelementptr inbounds %struct.EnumPropertyItem, ptr %115, i64 1
  %128 = getelementptr inbounds %struct.EnumPropertyItem, ptr %115, i64 1, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !165
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %112, !llvm.loop !320

131:                                              ; preds = %125, %108
  %132 = load i8, ptr %8, align 1, !tbaa !89
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %136, label %134

134:                                              ; preds = %131
  %135 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %135(ptr noundef nonnull %106) #28
  br label %136

136:                                              ; preds = %131, %134, %105
  call void @BLI_dynstr_append(ptr noundef %14, ptr noundef nonnull @.str.45) #28
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #30
  br label %144

137:                                              ; preds = %103
  tail call void @BLI_dynstr_append(ptr noundef %14, ptr noundef nonnull @.str.62) #28
  br label %144

138:                                              ; preds = %98
  %139 = call zeroext i8 @RNA_property_enum_identifier(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %99, ptr noundef nonnull %6) #29, !range !70
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %143, label %141

141:                                              ; preds = %138
  %142 = load ptr, ptr %6, align 8, !tbaa !34
  tail call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %14, ptr noundef nonnull @.str.60, ptr noundef %142) #28
  br label %144

143:                                              ; preds = %138
  tail call void @BLI_dynstr_append(ptr noundef %14, ptr noundef nonnull @.str.63) #28
  br label %144

144:                                              ; preds = %141, %143, %136, %137
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #30
  br label %170

145:                                              ; preds = %5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #30
  call void @RNA_property_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %9, ptr noundef %1, ptr noundef %2) #29
  %146 = call ptr @RNA_pointer_as_string(ptr noundef %0, ptr poison, ptr noundef %2, ptr noundef nonnull %9) #29
  call void @BLI_dynstr_append(ptr noundef %14, ptr noundef %146) #28
  %147 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %147(ptr noundef %146) #28
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #30
  br label %170

148:                                              ; preds = %5
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %10) #30
  tail call void @BLI_dynstr_append(ptr noundef %14, ptr noundef nonnull @.str.28) #28
  call void @RNA_property_collection_begin(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %10) #29
  %149 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %10, i64 0, i32 7
  %150 = icmp sgt i32 %4, 0
  %151 = load i32, ptr %149, align 8
  %152 = icmp ne i32 %151, 0
  %153 = select i1 %150, i1 %152, i1 false
  br i1 %153, label %154, label %168

154:                                              ; preds = %148
  %155 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %10, i64 0, i32 6
  br label %156

156:                                              ; preds = %154, %160
  %157 = phi i32 [ 0, %154 ], [ %163, %160 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %155, i64 24, i1 false), !tbaa.struct !64
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %160, label %159

159:                                              ; preds = %156
  call void @BLI_dynstr_append(ptr noundef %14, ptr noundef nonnull @.str.43) #28
  br label %160

160:                                              ; preds = %159, %156
  %161 = call ptr @RNA_pointer_as_string(ptr noundef %0, ptr poison, ptr noundef %2, ptr noundef nonnull %11) #29
  call void @BLI_dynstr_append(ptr noundef %14, ptr noundef %161) #28
  %162 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %162(ptr noundef %161) #28
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #30
  call void @RNA_property_collection_next(ptr noundef nonnull %10) #29
  %163 = add nuw nsw i32 %157, 1
  %164 = icmp slt i32 %163, %4
  %165 = load i32, ptr %149, align 8
  %166 = icmp ne i32 %165, 0
  %167 = select i1 %164, i1 %166, i1 false
  br i1 %167, label %156, label %168, !llvm.loop !321

168:                                              ; preds = %160, %148
  call void @RNA_property_collection_end(ptr noundef nonnull %10) #29
  call void @BLI_dynstr_append(ptr noundef %14, ptr noundef nonnull @.str.31) #28
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %10) #30
  br label %170

169:                                              ; preds = %5
  tail call void @BLI_dynstr_append(ptr noundef %14, ptr noundef nonnull @.str.64) #28
  br label %170

170:                                              ; preds = %62, %83, %67, %41, %59, %45, %17, %38, %22, %169, %168, %145, %144, %84
  %171 = call ptr @BLI_dynstr_get_cstring(ptr noundef %14) #28
  call void @BLI_dynstr_free(ptr noundef %14) #28
  ret ptr %171
}

; Function Attrs: optsize
declare void @BLI_dynstr_appendf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RNA_pointer_as_string(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @RNA_property_flag(ptr noundef %2) #29
  %6 = and i32 %5, 1024
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = tail call ptr @RNA_pointer_as_string_id(ptr noundef %0, ptr noundef %3) #29
  br label %12

10:                                               ; preds = %4
  %11 = tail call fastcc ptr @rna_pointer_as_string__bldata(ptr noundef %3) #29
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi ptr [ %9, %8 ], [ %11, %10 ]
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @rna_pointer_as_string__bldata(ptr noundef %0) unnamed_addr #0 !PGOFuncName !322 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !57
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @BLI_strdup(ptr noundef nonnull @.str.47) #28
  br label %15

7:                                                ; preds = %1
  %8 = tail call zeroext i8 @RNA_struct_is_ID(ptr noundef nonnull %3) #29, !range !70
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr %0, align 8, !tbaa !56
  %12 = tail call ptr @RNA_path_full_ID_py(ptr noundef %11) #29
  br label %15

13:                                               ; preds = %7
  %14 = tail call ptr @RNA_path_full_struct_py(ptr noundef nonnull %0) #29
  br label %15

15:                                               ; preds = %13, %10, %5
  %16 = phi ptr [ %6, %5 ], [ %12, %10 ], [ %14, %13 ]
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RNA_pointer_as_string_keywords_ex(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = alloca %struct.CollectionPropertyIterator, align 8
  %9 = tail call ptr @BLI_dynstr_new() #28
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %8) #30
  call void @RNA_property_collection_begin(ptr noundef %1, ptr noundef %6, ptr noundef nonnull %8) #29
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %8, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !92
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %71, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %8, i64 0, i32 6, i32 2
  %15 = icmp eq i8 %2, 0
  %16 = icmp eq i8 %4, 0
  %17 = icmp eq i8 %3, 1
  %18 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  br label %19

19:                                               ; preds = %13, %67
  %20 = phi i8 [ 1, %13 ], [ %68, %67 ]
  %21 = load ptr, ptr %14, align 8, !tbaa.struct !67
  %22 = call i32 @RNA_property_flag(ptr noundef %21) #29
  %23 = and i32 %22, 8
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %15, i1 true, i1 %24
  br i1 %25, label %26, label %67

26:                                               ; preds = %19
  %27 = call ptr @RNA_property_identifier(ptr noundef %21) #29
  %28 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %27, ptr noundef nonnull dereferenceable(9) @.str.42) #31
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %67, label %30

30:                                               ; preds = %26
  br i1 %16, label %31, label %34

31:                                               ; preds = %30
  %32 = call i32 @RNA_property_type(ptr noundef %21) #29
  %33 = icmp eq i32 %32, 5
  br i1 %33, label %67, label %34

34:                                               ; preds = %31, %30
  %35 = and i32 %22, 4
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %15, i1 true, i1 %36
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = icmp eq i8 %20, 0
  %40 = select i1 %39, ptr @.str.46, ptr @.str.37
  call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %9, ptr noundef nonnull %40, ptr noundef %27) #28
  br label %67

41:                                               ; preds = %34
  br i1 %17, label %49, label %42

42:                                               ; preds = %41
  %43 = load ptr, ptr %18, align 8, !tbaa !57
  %44 = call zeroext i8 @RNA_struct_idprops_check(ptr noundef %43) #29, !range !70
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = call zeroext i8 @RNA_property_is_set(ptr noundef nonnull %1, ptr noundef %21) #29, !range !70
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %67, label %49

49:                                               ; preds = %42, %41, %46
  br i1 %15, label %60, label %50

50:                                               ; preds = %49
  %51 = call i32 @RNA_property_type(ptr noundef %21) #29
  %52 = icmp eq i32 %51, 5
  br i1 %52, label %53, label %60

53:                                               ; preds = %50
  %54 = and i32 %22, 262144
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %53
  %57 = call ptr @BLI_strdup(ptr noundef %27) #28
  br label %62

58:                                               ; preds = %53
  %59 = call ptr @BLI_strdup(ptr noundef nonnull @.str.47) #28
  br label %62

60:                                               ; preds = %50, %49
  %61 = call ptr @RNA_property_as_string(ptr noundef %0, ptr noundef %1, ptr noundef %21, i32 noundef -1, i32 noundef %5) #29
  br label %62

62:                                               ; preds = %56, %58, %60
  %63 = phi ptr [ %57, %56 ], [ %59, %58 ], [ %61, %60 ]
  %64 = icmp eq i8 %20, 0
  %65 = select i1 %64, ptr @.str.49, ptr @.str.48
  call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %9, ptr noundef nonnull %65, ptr noundef %27, ptr noundef %63) #28
  %66 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %66(ptr noundef %63) #28
  br label %67

67:                                               ; preds = %38, %62, %46, %31, %26, %19
  %68 = phi i8 [ %20, %19 ], [ %20, %26 ], [ %20, %31 ], [ 0, %38 ], [ 0, %62 ], [ %20, %46 ]
  call void @RNA_property_collection_next(ptr noundef nonnull %8) #29
  %69 = load i32, ptr %10, align 8, !tbaa !92
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %19, !llvm.loop !323

71:                                               ; preds = %67, %7
  call void @RNA_property_collection_end(ptr noundef nonnull %8) #29
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %8) #30
  %72 = call ptr @BLI_dynstr_get_cstring(ptr noundef %9) #28
  call void @BLI_dynstr_free(ptr noundef %9) #28
  ret ptr %72
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RNA_pointer_as_string_keywords(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !57
  %9 = tail call ptr @RNA_struct_iterator_property(ptr noundef %8) #29
  %10 = tail call ptr @RNA_pointer_as_string_keywords_ex(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i32 noundef %5, ptr noundef %9) #29
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RNA_function_as_string_keywords(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #30
  call void @RNA_pointer_create(ptr noundef null, ptr noundef nonnull @RNA_Function, ptr noundef %1, ptr noundef nonnull %6) #29
  %7 = call ptr @RNA_struct_find_property(ptr noundef nonnull %6, ptr noundef nonnull @.str.50) #29
  %8 = call ptr @RNA_pointer_as_string_keywords_ex(ptr noundef %0, ptr noundef nonnull %6, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext 1, i32 noundef %4, ptr noundef %7) #29
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #30
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef nonnull ptr @bool_as_py_string(i32 noundef %0) unnamed_addr #11 !PGOFuncName !324 {
  %2 = icmp eq i32 %0, 0
  %3 = select i1 %2, ptr @.str.87, ptr @.str.86
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @RNA_function_identifier(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.FunctionRNA, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !325
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @RNA_function_ui_description(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.FunctionRNA, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !327
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @RNA_function_ui_description_raw(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.FunctionRNA, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !327
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @RNA_function_flag(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.FunctionRNA, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !328
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @RNA_function_defined(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.FunctionRNA, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !329
  %4 = icmp ne ptr %3, null
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RNA_function_get_parameter(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ContainerRNA, ptr %1, i64 0, i32 3
  %5 = tail call ptr @BLI_findlink(ptr noundef nonnull %4, i32 noundef %2) #28
  ret ptr %5
}

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @RNA_function_find_parameter(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #8 {
  %4 = getelementptr inbounds %struct.ContainerRNA, ptr %1, i64 0, i32 3
  br label %5

5:                                                ; preds = %9, %3
  %6 = phi ptr [ %4, %3 ], [ %7, %9 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @RNA_property_identifier(ptr noundef nonnull %7) #29
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) %2) #31
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %5, !llvm.loop !330

13:                                               ; preds = %9, %5
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local nonnull ptr @RNA_function_defined_parameters(ptr noundef readnone %0) local_unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.ContainerRNA, ptr %0, i64 0, i32 3
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @RNA_parameter_list_create(ptr noundef returned %0, ptr nocapture readnone %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds %struct.ParameterList, ptr %0, i64 0, i32 3
  store i32 0, ptr %5, align 4, !tbaa !331
  %6 = getelementptr inbounds %struct.ParameterList, ptr %0, i64 0, i32 4
  store i32 0, ptr %6, align 8, !tbaa !333
  %7 = getelementptr inbounds %struct.ContainerRNA, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %28, label %10

10:                                               ; preds = %3, %25
  %11 = phi ptr [ %26, %25 ], [ %8, %3 ]
  %12 = phi i32 [ %14, %25 ], [ 0, %3 ]
  %13 = tail call i32 @rna_parameter_size(ptr noundef nonnull %11) #28
  %14 = add nsw i32 %13, %12
  %15 = getelementptr inbounds %struct.PropertyRNA, ptr %11, i64 0, i32 4
  %16 = load i32, ptr %15, align 8, !tbaa !43
  %17 = and i32 %16, 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %10
  %20 = load i32, ptr %6, align 8, !tbaa !333
  %21 = add nsw i32 %20, 1
  store i32 %21, ptr %6, align 8, !tbaa !333
  br label %25

22:                                               ; preds = %10
  %23 = load i32, ptr %5, align 4, !tbaa !331
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr %5, align 4, !tbaa !331
  br label %25

25:                                               ; preds = %19, %22
  %26 = load ptr, ptr %11, align 8, !tbaa !34
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %10, !llvm.loop !334

28:                                               ; preds = %25, %3
  %29 = phi i32 [ 0, %3 ], [ %14, %25 ]
  %30 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %31 = sext i32 %29 to i64
  %32 = tail call ptr %30(i64 noundef %31, ptr noundef nonnull @.str.65) #28
  store ptr %32, ptr %0, align 8, !tbaa !335
  %33 = getelementptr inbounds %struct.ParameterList, ptr %0, i64 0, i32 1
  store ptr %2, ptr %33, align 8, !tbaa !336
  %34 = getelementptr inbounds %struct.ParameterList, ptr %0, i64 0, i32 2
  store i32 %29, ptr %34, align 8, !tbaa !337
  %35 = load ptr, ptr %7, align 8, !tbaa !34
  %36 = icmp eq ptr %35, null
  br i1 %36, label %104, label %37

37:                                               ; preds = %28, %98
  %38 = phi ptr [ %102, %98 ], [ %35, %28 ]
  %39 = phi ptr [ %101, %98 ], [ %32, %28 ]
  %40 = tail call i32 @rna_parameter_size(ptr noundef nonnull %38) #28
  %41 = getelementptr inbounds %struct.PropertyRNA, ptr %38, i64 0, i32 4
  %42 = load i32, ptr %41, align 8, !tbaa !43
  %43 = and i32 %42, 131072
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %37
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %39, i8 0, i64 16, i1 false)
  br label %98

46:                                               ; preds = %37
  %47 = and i32 %42, 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %98

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.PropertyRNA, ptr %38, i64 0, i32 9
  %51 = load i32, ptr %50, align 8, !tbaa !77
  switch i32 %51, label %98 [
    i32 0, label %52
    i32 1, label %63
    i32 2, label %74
    i32 4, label %85
    i32 3, label %88
  ]

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.PropertyRNA, ptr %38, i64 0, i32 12
  %54 = load i32, ptr %53, align 8, !tbaa !124
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.BoolPropertyRNA, ptr %38, i64 0, i32 10
  %58 = load ptr, ptr %57, align 8, !tbaa !207
  %59 = sext i32 %40 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %39, ptr align 4 %58, i64 %59, i1 false)
  br label %98

60:                                               ; preds = %52
  %61 = getelementptr inbounds %struct.BoolPropertyRNA, ptr %38, i64 0, i32 9
  %62 = sext i32 %40 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %39, ptr nonnull align 8 %61, i64 %62, i1 false)
  br label %98

63:                                               ; preds = %49
  %64 = getelementptr inbounds %struct.PropertyRNA, ptr %38, i64 0, i32 12
  %65 = load i32, ptr %64, align 8, !tbaa !124
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.IntPropertyRNA, ptr %38, i64 0, i32 17
  %69 = load ptr, ptr %68, align 8, !tbaa !218
  %70 = sext i32 %40 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %39, ptr align 4 %69, i64 %70, i1 false)
  br label %98

71:                                               ; preds = %63
  %72 = getelementptr inbounds %struct.IntPropertyRNA, ptr %38, i64 0, i32 16
  %73 = sext i32 %40 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %39, ptr nonnull align 4 %72, i64 %73, i1 false)
  br label %98

74:                                               ; preds = %49
  %75 = getelementptr inbounds %struct.PropertyRNA, ptr %38, i64 0, i32 12
  %76 = load i32, ptr %75, align 8, !tbaa !124
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %38, i64 0, i32 18
  %80 = load ptr, ptr %79, align 8, !tbaa !230
  %81 = sext i32 %40 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %39, ptr align 4 %80, i64 %81, i1 false)
  br label %98

82:                                               ; preds = %74
  %83 = getelementptr inbounds %struct.FloatPropertyRNA, ptr %38, i64 0, i32 17
  %84 = sext i32 %40 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %39, ptr nonnull align 8 %83, i64 %84, i1 false)
  br label %98

85:                                               ; preds = %49
  %86 = getelementptr inbounds %struct.EnumPropertyRNA, ptr %38, i64 0, i32 9
  %87 = sext i32 %40 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %39, ptr nonnull align 4 %86, i64 %87, i1 false)
  br label %98

88:                                               ; preds = %49
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4)
  %89 = getelementptr inbounds %struct.StringPropertyRNA, ptr %38, i64 0, i32 8
  %90 = load ptr, ptr %89, align 8, !tbaa !237
  store ptr %90, ptr %4, align 8, !tbaa !34
  %91 = icmp eq ptr %90, null
  br i1 %91, label %97, label %92

92:                                               ; preds = %88
  %93 = load i8, ptr %90, align 1, !tbaa !89
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %92
  %96 = sext i32 %40 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %39, ptr nonnull align 8 %4, i64 %96, i1 false)
  br label %97

97:                                               ; preds = %95, %92, %88
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4)
  br label %98

98:                                               ; preds = %45, %85, %97, %49, %60, %56, %71, %67, %82, %78, %46
  %99 = tail call i32 @rna_parameter_size(ptr noundef nonnull %38) #28
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, ptr %39, i64 %100
  %102 = load ptr, ptr %38, align 8, !tbaa !34
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %37, !llvm.loop !338

104:                                              ; preds = %98, %28
  ret ptr %0
}

; Function Attrs: optsize
declare i32 @rna_parameter_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_parameter_list_free(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ParameterList, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !336
  %4 = getelementptr inbounds %struct.ContainerRNA, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %36, label %7

7:                                                ; preds = %1, %31
  %8 = phi ptr [ %34, %31 ], [ %5, %1 ]
  %9 = phi i32 [ %33, %31 ], [ 0, %1 ]
  %10 = getelementptr inbounds %struct.PropertyRNA, ptr %8, i64 0, i32 9
  %11 = load i32, ptr %10, align 8, !tbaa !77
  %12 = icmp eq i32 %11, 6
  br i1 %12, label %13, label %17

13:                                               ; preds = %7
  %14 = load ptr, ptr %0, align 8, !tbaa !335
  %15 = sext i32 %9 to i64
  %16 = getelementptr inbounds i8, ptr %14, i64 %15
  tail call void @BLI_freelistN(ptr noundef %16) #28
  br label %31

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.PropertyRNA, ptr %8, i64 0, i32 4
  %19 = load i32, ptr %18, align 8, !tbaa !43
  %20 = and i32 %19, 131072
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %17
  %23 = load ptr, ptr %0, align 8, !tbaa !335
  %24 = sext i32 %9 to i64
  %25 = getelementptr inbounds i8, ptr %23, i64 %24
  %26 = getelementptr inbounds %struct.ParameterDynAlloc, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !339
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %22
  %30 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %30(ptr noundef nonnull %27) #28
  br label %31

31:                                               ; preds = %22, %29, %17, %13
  %32 = tail call i32 @rna_parameter_size(ptr noundef nonnull %8) #28
  %33 = add nsw i32 %32, %9
  %34 = load ptr, ptr %8, align 8, !tbaa !34
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %7, !llvm.loop !342

36:                                               ; preds = %31, %1
  %37 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %38 = load ptr, ptr %0, align 8, !tbaa !335
  tail call void %37(ptr noundef %38) #28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @RNA_parameter_list_size(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.ParameterList, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !337
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @RNA_parameter_list_arg_count(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.ParameterList, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !331
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @RNA_parameter_list_ret_count(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.ParameterList, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !333
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_parameter_list_begin(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  store ptr %0, ptr %1, align 8, !tbaa !343
  %3 = getelementptr inbounds %struct.ParameterList, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !336
  %5 = getelementptr inbounds %struct.ContainerRNA, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !345
  %7 = getelementptr inbounds %struct.ParameterIterator, ptr %1, i64 0, i32 4
  store ptr %6, ptr %7, align 8, !tbaa !346
  %8 = icmp ne ptr %6, null
  %9 = zext i1 %8 to i32
  %10 = getelementptr inbounds %struct.ParameterIterator, ptr %1, i64 0, i32 5
  store i32 %9, ptr %10, align 8, !tbaa !347
  %11 = getelementptr inbounds %struct.ParameterIterator, ptr %1, i64 0, i32 3
  store i32 0, ptr %11, align 4, !tbaa !348
  br i1 %8, label %12, label %18

12:                                               ; preds = %2
  %13 = tail call i32 @rna_parameter_size(ptr noundef nonnull %6) #28
  %14 = getelementptr inbounds %struct.ParameterIterator, ptr %1, i64 0, i32 2
  store i32 %13, ptr %14, align 8, !tbaa !349
  %15 = load ptr, ptr %1, align 8, !tbaa !343
  %16 = load ptr, ptr %15, align 8, !tbaa !335
  %17 = getelementptr inbounds %struct.ParameterIterator, ptr %1, i64 0, i32 1
  store ptr %16, ptr %17, align 8, !tbaa !350
  br label %18

18:                                               ; preds = %12, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_parameter_list_next(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ParameterIterator, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !349
  %4 = getelementptr inbounds %struct.ParameterIterator, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !348
  %6 = add nsw i32 %5, %3
  store i32 %6, ptr %4, align 4, !tbaa !348
  %7 = getelementptr inbounds %struct.ParameterIterator, ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !346
  %9 = load ptr, ptr %8, align 8, !tbaa !351
  store ptr %9, ptr %7, align 8, !tbaa !346
  %10 = icmp ne ptr %9, null
  %11 = zext i1 %10 to i32
  %12 = getelementptr inbounds %struct.ParameterIterator, ptr %0, i64 0, i32 5
  store i32 %11, ptr %12, align 8, !tbaa !347
  br i1 %10, label %13, label %21

13:                                               ; preds = %1
  %14 = tail call i32 @rna_parameter_size(ptr noundef nonnull %9) #28
  store i32 %14, ptr %2, align 8, !tbaa !349
  %15 = load ptr, ptr %0, align 8, !tbaa !343
  %16 = load ptr, ptr %15, align 8, !tbaa !335
  %17 = load i32, ptr %4, align 4, !tbaa !348
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, ptr %16, i64 %18
  %20 = getelementptr inbounds %struct.ParameterIterator, ptr %0, i64 0, i32 1
  store ptr %19, ptr %20, align 8, !tbaa !350
  br label %21

21:                                               ; preds = %13, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @RNA_parameter_list_end(ptr nocapture noundef readnone %0) local_unnamed_addr #11 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_parameter_get(ptr noundef %0, ptr noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct.ParameterIterator, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #30
  call void @RNA_parameter_list_begin(ptr noundef %0, ptr noundef nonnull %4) #29
  %5 = getelementptr inbounds %struct.ParameterIterator, ptr %4, i64 0, i32 5
  %6 = getelementptr inbounds %struct.ParameterIterator, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %5, align 8, !tbaa !347
  %8 = icmp eq i32 %7, 0
  %9 = load ptr, ptr %6, align 8
  %10 = icmp eq ptr %9, %1
  %11 = select i1 %8, i1 true, i1 %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %3, %12
  call void @RNA_parameter_list_next(ptr noundef nonnull %4) #29
  %13 = load i32, ptr %5, align 8, !tbaa !347
  %14 = icmp eq i32 %13, 0
  %15 = load ptr, ptr %6, align 8
  %16 = icmp eq ptr %15, %1
  %17 = select i1 %14, i1 true, i1 %16
  br i1 %17, label %18, label %12, !llvm.loop !352

18:                                               ; preds = %12, %3
  %19 = phi i1 [ %8, %3 ], [ %14, %12 ]
  br i1 %19, label %30, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.PropertyRNA, ptr %1, i64 0, i32 4
  %22 = load i32, ptr %21, align 8, !tbaa !43
  %23 = and i32 %22, 131072
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds %struct.ParameterIterator, ptr %4, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !350
  br i1 %24, label %30, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.ParameterDynAlloc, ptr %26, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !339
  br label %30

30:                                               ; preds = %18, %20, %27
  %31 = phi ptr [ %29, %27 ], [ %26, %20 ], [ null, %18 ]
  store ptr %31, ptr %2, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #30
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_parameter_get_lookup(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ParameterList, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !336
  %6 = getelementptr inbounds %struct.ContainerRNA, ptr %5, i64 0, i32 3
  br label %7

7:                                                ; preds = %11, %3
  %8 = phi ptr [ %6, %3 ], [ %9, %11 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = tail call ptr @RNA_property_identifier(ptr noundef nonnull %9) #29
  %13 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) %1) #31
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %7, !llvm.loop !353

15:                                               ; preds = %11
  tail call void @RNA_parameter_get(ptr noundef %0, ptr noundef nonnull %9, ptr noundef %2) #29
  br label %16

16:                                               ; preds = %7, %15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_parameter_set(ptr noundef %0, ptr noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct.ParameterIterator, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #30
  call void @RNA_parameter_list_begin(ptr noundef %0, ptr noundef nonnull %4) #29
  %5 = getelementptr inbounds %struct.ParameterIterator, ptr %4, i64 0, i32 5
  %6 = getelementptr inbounds %struct.ParameterIterator, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %5, align 8, !tbaa !347
  %8 = icmp eq i32 %7, 0
  %9 = load ptr, ptr %6, align 8
  %10 = icmp eq ptr %9, %1
  %11 = select i1 %8, i1 true, i1 %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %3, %12
  call void @RNA_parameter_list_next(ptr noundef nonnull %4) #29
  %13 = load i32, ptr %5, align 8, !tbaa !347
  %14 = icmp eq i32 %13, 0
  %15 = load ptr, ptr %6, align 8
  %16 = icmp eq ptr %15, %1
  %17 = select i1 %14, i1 true, i1 %16
  br i1 %17, label %18, label %12, !llvm.loop !354

18:                                               ; preds = %12, %3
  %19 = phi i1 [ %8, %3 ], [ %14, %12 ]
  br i1 %19, label %51, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.PropertyRNA, ptr %1, i64 0, i32 4
  %22 = load i32, ptr %21, align 8, !tbaa !43
  %23 = and i32 %22, 131072
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds %struct.ParameterIterator, ptr %4, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !350
  br i1 %24, label %47, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.PropertyRNA, ptr %1, i64 0, i32 9
  %29 = load i32, ptr %28, align 8, !tbaa !77
  %30 = icmp ult i32 %29, 4
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = zext nneg i32 %29 to i64
  %33 = getelementptr inbounds [4 x i64], ptr @switch.table.RNA_parameter_set, i64 0, i64 %32
  %34 = load i64, ptr %33, align 8
  br label %35

35:                                               ; preds = %31, %27
  %36 = phi i64 [ 0, %27 ], [ %34, %31 ]
  %37 = load i64, ptr %26, align 8, !tbaa !355
  %38 = mul i64 %37, %36
  %39 = getelementptr inbounds %struct.ParameterDynAlloc, ptr %26, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !339
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %35
  %43 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %43(ptr noundef nonnull %40) #28
  br label %44

44:                                               ; preds = %42, %35
  %45 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %46 = tail call ptr %45(i64 noundef %38, ptr noundef nonnull @__func__.RNA_parameter_set) #28
  store ptr %46, ptr %39, align 8, !tbaa !339
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %46, ptr align 1 %2, i64 %38, i1 false)
  br label %51

47:                                               ; preds = %20
  %48 = getelementptr inbounds %struct.ParameterIterator, ptr %4, i64 0, i32 2
  %49 = load i32, ptr %48, align 8, !tbaa !349
  %50 = sext i32 %49 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %26, ptr align 1 %2, i64 %50, i1 false)
  br label %51

51:                                               ; preds = %44, %47, %18
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #30
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_parameter_set_lookup(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ParameterList, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !336
  %6 = getelementptr inbounds %struct.ContainerRNA, ptr %5, i64 0, i32 3
  br label %7

7:                                                ; preds = %11, %3
  %8 = phi ptr [ %6, %3 ], [ %9, %11 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = tail call ptr @RNA_property_identifier(ptr noundef nonnull %9) #29
  %13 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) %1) #31
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %7, !llvm.loop !356

15:                                               ; preds = %11
  tail call void @RNA_parameter_set(ptr noundef %0, ptr noundef nonnull %9, ptr noundef %2) #29
  br label %16

16:                                               ; preds = %7, %15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @RNA_parameter_dynamic_length_get(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ParameterIterator, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #30
  call void @RNA_parameter_list_begin(ptr noundef %0, ptr noundef nonnull %3) #29
  %4 = getelementptr inbounds %struct.ParameterIterator, ptr %3, i64 0, i32 5
  %5 = getelementptr inbounds %struct.ParameterIterator, ptr %3, i64 0, i32 4
  %6 = load i32, ptr %4, align 8, !tbaa !347
  %7 = icmp eq i32 %6, 0
  %8 = load ptr, ptr %5, align 8
  %9 = icmp eq ptr %8, %1
  %10 = select i1 %7, i1 true, i1 %9
  br i1 %10, label %17, label %11

11:                                               ; preds = %2, %11
  call void @RNA_parameter_list_next(ptr noundef nonnull %3) #29
  %12 = load i32, ptr %4, align 8, !tbaa !347
  %13 = icmp eq i32 %12, 0
  %14 = load ptr, ptr %5, align 8
  %15 = icmp eq ptr %14, %1
  %16 = select i1 %13, i1 true, i1 %15
  br i1 %16, label %17, label %11, !llvm.loop !357

17:                                               ; preds = %11, %2
  %18 = phi i1 [ %7, %2 ], [ %13, %11 ]
  br i1 %18, label %23, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.ParameterIterator, ptr %3, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !350
  %22 = tail call i32 @RNA_parameter_dynamic_length_get_data(ptr poison, ptr noundef %1, ptr noundef %21) #29
  br label %23

23:                                               ; preds = %19, %17
  %24 = phi i32 [ %22, %19 ], [ 0, %17 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #30
  ret i32 %24
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @RNA_parameter_dynamic_length_get_data(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #7 {
  %4 = getelementptr inbounds %struct.PropertyRNA, ptr %1, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !43
  %6 = and i32 %5, 131072
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = load i64, ptr %2, align 8, !tbaa !355
  %10 = trunc i64 %9 to i32
  br label %11

11:                                               ; preds = %3, %8
  %12 = phi i32 [ %10, %8 ], [ 0, %3 ]
  ret i32 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RNA_parameter_dynamic_length_set(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.ParameterIterator, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #30
  call void @RNA_parameter_list_begin(ptr noundef %0, ptr noundef nonnull %4) #29
  %5 = getelementptr inbounds %struct.ParameterIterator, ptr %4, i64 0, i32 5
  %6 = getelementptr inbounds %struct.ParameterIterator, ptr %4, i64 0, i32 4
  %7 = load i32, ptr %5, align 8, !tbaa !347
  %8 = icmp eq i32 %7, 0
  %9 = load ptr, ptr %6, align 8
  %10 = icmp eq ptr %9, %1
  %11 = select i1 %8, i1 true, i1 %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %3, %12
  call void @RNA_parameter_list_next(ptr noundef nonnull %4) #29
  %13 = load i32, ptr %5, align 8, !tbaa !347
  %14 = icmp eq i32 %13, 0
  %15 = load ptr, ptr %6, align 8
  %16 = icmp eq ptr %15, %1
  %17 = select i1 %14, i1 true, i1 %16
  br i1 %17, label %18, label %12, !llvm.loop !358

18:                                               ; preds = %12, %3
  %19 = phi i1 [ %8, %3 ], [ %14, %12 ]
  br i1 %19, label %23, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.ParameterIterator, ptr %4, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !350
  tail call void @RNA_parameter_dynamic_length_set_data(ptr poison, ptr noundef %1, ptr noundef %22, i32 noundef %2) #29
  br label %23

23:                                               ; preds = %20, %18
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #30
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @RNA_parameter_dynamic_length_set_data(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, i32 noundef %3) local_unnamed_addr #15 {
  %5 = getelementptr inbounds %struct.PropertyRNA, ptr %1, i64 0, i32 4
  %6 = load i32, ptr %5, align 8, !tbaa !43
  %7 = and i32 %6, 131072
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = sext i32 %3 to i64
  store i64 %10, ptr %2, align 8, !tbaa !355
  br label %11

11:                                               ; preds = %9, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @RNA_function_call(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.FunctionRNA, ptr %3, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !329
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void %7(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %4) #28
  br label %10

10:                                               ; preds = %5, %9
  %11 = phi i32 [ 0, %9 ], [ -1, %5 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @RNA_function_call_lookup(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  %8 = tail call ptr @RNA_struct_find_function(ptr noundef %7, ptr noundef %3) #29
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = tail call i32 @RNA_function_call(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %8, ptr noundef %4) #29, !range !359
  br label %12

12:                                               ; preds = %5, %10
  %13 = phi i32 [ %11, %10 ], [ -1, %5 ]
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @RNA_function_call_direct(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, ...) local_unnamed_addr #0 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #30
  call void @llvm.va_start(ptr nonnull %6)
  %7 = call i32 @RNA_function_call_direct_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %6) #29, !range !359
  call void @llvm.va_end(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #30
  ret i32 %7
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #21

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @RNA_function_call_direct_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct.PointerRNA, align 8
  %8 = alloca %struct.ParameterList, align 8
  %9 = alloca %struct.ParameterIterator, align 8
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #30
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #30
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %9) #30
  call void @RNA_pointer_create(ptr noundef null, ptr noundef nonnull @RNA_Function, ptr noundef %3, ptr noundef nonnull %7) #29
  %15 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !57
  %17 = call ptr @RNA_struct_identifier(ptr noundef %16) #29
  %18 = call ptr @RNA_function_identifier(ptr noundef %3) #29
  %19 = getelementptr inbounds %struct.FunctionRNA, ptr %3, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !360
  %21 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #31
  %22 = trunc i64 %21 to i32
  %23 = call ptr @RNA_parameter_list_create(ptr noundef nonnull %8, ptr poison, ptr noundef %3) #29
  call void @RNA_parameter_list_begin(ptr noundef nonnull %8, ptr noundef nonnull %9) #29
  %24 = getelementptr inbounds %struct.ParameterIterator, ptr %9, i64 0, i32 5
  %25 = load i32, ptr %24, align 8, !tbaa !347
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %189, label %27

27:                                               ; preds = %6
  %28 = getelementptr inbounds %struct.ParameterIterator, ptr %9, i64 0, i32 4
  %29 = getelementptr inbounds %struct.__va_list_tag, ptr %5, i64 0, i32 2
  %30 = getelementptr inbounds %struct.__va_list_tag, ptr %5, i64 0, i32 3
  %31 = getelementptr inbounds %struct.ParameterIterator, ptr %9, i64 0, i32 1
  %32 = getelementptr inbounds %struct.__va_list_tag, ptr %5, i64 0, i32 1
  br label %33

33:                                               ; preds = %27, %183
  %34 = phi i32 [ 0, %27 ], [ %186, %183 ]
  %35 = phi ptr [ null, %27 ], [ %185, %183 ]
  %36 = phi ptr [ null, %27 ], [ %184, %183 ]
  %37 = load ptr, ptr %28, align 8, !tbaa !346
  %38 = call i32 @RNA_property_flag(ptr noundef %37) #29
  %39 = icmp eq ptr %37, %20
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load ptr, ptr %31, align 8, !tbaa !350
  br label %183

42:                                               ; preds = %33
  %43 = and i32 %38, 8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %183

45:                                               ; preds = %42
  %46 = call ptr @RNA_property_identifier(ptr noundef %37) #29
  %47 = icmp slt i32 %34, %22
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = sext i32 %34 to i64
  %50 = getelementptr inbounds i8, ptr %4, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !89
  %52 = icmp eq i8 %51, 78
  br i1 %52, label %53, label %61

53:                                               ; preds = %48, %45
  %54 = and i32 %38, 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = load ptr, ptr @stderr, align 8, !tbaa !34
  %58 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %57, ptr noundef nonnull @.str.66, ptr noundef %17, ptr noundef %18, ptr noundef %46) #32
  br label %333

59:                                               ; preds = %53
  %60 = add nsw i32 %34, 1
  br label %183

61:                                               ; preds = %48
  %62 = call i32 @RNA_property_type(ptr noundef %37) #29
  %63 = add nsw i32 %34, 1
  %64 = call i32 @RNA_property_array_length(ptr noundef nonnull %7, ptr noundef %37) #29
  %65 = call fastcc i32 @rna_function_format_array_length(ptr noundef nonnull %4, i32 noundef %63, i32 noundef %22) #29
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %70, label %67

67:                                               ; preds = %61
  %68 = load ptr, ptr @stderr, align 8, !tbaa !34
  %69 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %68, ptr noundef nonnull @.str.67, ptr noundef %17, ptr noundef %18, ptr noundef %46, i32 noundef %64, i32 noundef %65) #32
  br label %333

70:                                               ; preds = %61
  switch i32 %62, label %177 [
    i32 0, label %71
    i32 1, label %71
    i32 4, label %71
    i32 2, label %87
    i32 3, label %103
    i32 5, label %119
    i32 6, label %148
  ]

71:                                               ; preds = %70, %70, %70
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #30
  %72 = load i32, ptr %5, align 8
  %73 = icmp ult i32 %72, 41
  br i1 %73, label %74, label %79

74:                                               ; preds = %71
  %75 = load ptr, ptr %30, align 8
  %76 = zext nneg i32 %72 to i64
  %77 = getelementptr i8, ptr %75, i64 %76
  %78 = add nuw nsw i32 %72, 8
  store i32 %78, ptr %5, align 8
  br label %82

79:                                               ; preds = %71
  %80 = load ptr, ptr %29, align 8
  %81 = getelementptr i8, ptr %80, i64 8
  store ptr %81, ptr %29, align 8
  br label %82

82:                                               ; preds = %79, %74
  %83 = phi ptr [ %77, %74 ], [ %80, %79 ]
  %84 = load i32, ptr %83, align 4
  store i32 %84, ptr %10, align 4, !tbaa !96
  %85 = load ptr, ptr %31, align 8, !tbaa !350
  %86 = call fastcc i32 @rna_function_parameter_parse(ptr noundef nonnull %7, ptr noundef %37, i32 noundef %62, i8 noundef zeroext %51, i32 noundef %64, ptr noundef %85, ptr noundef nonnull %10, ptr noundef null, ptr noundef %17, ptr noundef %18, ptr noundef %46) #29, !range !359
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #30
  br label %180

87:                                               ; preds = %70
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #30
  %88 = load i32, ptr %32, align 4
  %89 = icmp ult i32 %88, 161
  br i1 %89, label %90, label %95

90:                                               ; preds = %87
  %91 = load ptr, ptr %30, align 8
  %92 = zext nneg i32 %88 to i64
  %93 = getelementptr i8, ptr %91, i64 %92
  %94 = add nuw nsw i32 %88, 16
  store i32 %94, ptr %32, align 4
  br label %98

95:                                               ; preds = %87
  %96 = load ptr, ptr %29, align 8
  %97 = getelementptr i8, ptr %96, i64 8
  store ptr %97, ptr %29, align 8
  br label %98

98:                                               ; preds = %95, %90
  %99 = phi ptr [ %93, %90 ], [ %96, %95 ]
  %100 = load double, ptr %99, align 8
  store double %100, ptr %11, align 8, !tbaa !141
  %101 = load ptr, ptr %31, align 8, !tbaa !350
  %102 = call fastcc i32 @rna_function_parameter_parse(ptr noundef nonnull %7, ptr noundef %37, i32 noundef 2, i8 noundef zeroext %51, i32 noundef %64, ptr noundef %101, ptr noundef nonnull %11, ptr noundef null, ptr noundef %17, ptr noundef %18, ptr noundef %46) #29, !range !359
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #30
  br label %180

103:                                              ; preds = %70
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #30
  %104 = load i32, ptr %5, align 8
  %105 = icmp ult i32 %104, 41
  br i1 %105, label %106, label %111

106:                                              ; preds = %103
  %107 = load ptr, ptr %30, align 8
  %108 = zext nneg i32 %104 to i64
  %109 = getelementptr i8, ptr %107, i64 %108
  %110 = add nuw nsw i32 %104, 8
  store i32 %110, ptr %5, align 8
  br label %114

111:                                              ; preds = %103
  %112 = load ptr, ptr %29, align 8
  %113 = getelementptr i8, ptr %112, i64 8
  store ptr %113, ptr %29, align 8
  br label %114

114:                                              ; preds = %111, %106
  %115 = phi ptr [ %109, %106 ], [ %112, %111 ]
  %116 = load ptr, ptr %115, align 8
  store ptr %116, ptr %12, align 8, !tbaa !34
  %117 = load ptr, ptr %31, align 8, !tbaa !350
  %118 = call fastcc i32 @rna_function_parameter_parse(ptr noundef nonnull %7, ptr noundef %37, i32 noundef 3, i8 noundef zeroext %51, i32 noundef %64, ptr noundef %117, ptr noundef nonnull %12, ptr noundef null, ptr noundef %17, ptr noundef %18, ptr noundef %46) #29, !range !359
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #30
  br label %180

119:                                              ; preds = %70
  %120 = load i32, ptr %5, align 8
  %121 = icmp ult i32 %120, 41
  br i1 %121, label %126, label %122

122:                                              ; preds = %119
  %123 = load ptr, ptr %29, align 8
  %124 = getelementptr i8, ptr %123, i64 8
  store ptr %124, ptr %29, align 8
  %125 = load ptr, ptr %123, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #30
  br label %138

126:                                              ; preds = %119
  %127 = load ptr, ptr %30, align 8
  %128 = zext nneg i32 %120 to i64
  %129 = getelementptr i8, ptr %127, i64 %128
  %130 = add nuw nsw i32 %120, 8
  store i32 %130, ptr %5, align 8
  %131 = load ptr, ptr %129, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #30
  %132 = icmp ult i32 %120, 33
  br i1 %132, label %133, label %138

133:                                              ; preds = %126
  %134 = load ptr, ptr %30, align 8
  %135 = zext nneg i32 %130 to i64
  %136 = getelementptr i8, ptr %134, i64 %135
  %137 = add nuw nsw i32 %120, 16
  store i32 %137, ptr %5, align 8
  br label %142

138:                                              ; preds = %122, %126
  %139 = phi ptr [ %125, %122 ], [ %131, %126 ]
  %140 = load ptr, ptr %29, align 8
  %141 = getelementptr i8, ptr %140, i64 8
  store ptr %141, ptr %29, align 8
  br label %142

142:                                              ; preds = %138, %133
  %143 = phi ptr [ %131, %133 ], [ %139, %138 ]
  %144 = phi ptr [ %136, %133 ], [ %140, %138 ]
  %145 = load ptr, ptr %144, align 8
  store ptr %145, ptr %13, align 8, !tbaa !34
  %146 = load ptr, ptr %31, align 8, !tbaa !350
  %147 = call fastcc i32 @rna_function_parameter_parse(ptr noundef nonnull %7, ptr noundef %37, i32 noundef 5, i8 noundef zeroext %51, i32 noundef %64, ptr noundef %146, ptr noundef nonnull %13, ptr noundef %143, ptr noundef %17, ptr noundef %18, ptr noundef %46) #29, !range !359
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #30
  br label %180

148:                                              ; preds = %70
  %149 = load i32, ptr %5, align 8
  %150 = icmp ult i32 %149, 41
  br i1 %150, label %155, label %151

151:                                              ; preds = %148
  %152 = load ptr, ptr %29, align 8
  %153 = getelementptr i8, ptr %152, i64 8
  store ptr %153, ptr %29, align 8
  %154 = load ptr, ptr %152, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #30
  br label %167

155:                                              ; preds = %148
  %156 = load ptr, ptr %30, align 8
  %157 = zext nneg i32 %149 to i64
  %158 = getelementptr i8, ptr %156, i64 %157
  %159 = add nuw nsw i32 %149, 8
  store i32 %159, ptr %5, align 8
  %160 = load ptr, ptr %158, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #30
  %161 = icmp ult i32 %149, 33
  br i1 %161, label %162, label %167

162:                                              ; preds = %155
  %163 = load ptr, ptr %30, align 8
  %164 = zext nneg i32 %159 to i64
  %165 = getelementptr i8, ptr %163, i64 %164
  %166 = add nuw nsw i32 %149, 16
  store i32 %166, ptr %5, align 8
  br label %171

167:                                              ; preds = %151, %155
  %168 = phi ptr [ %154, %151 ], [ %160, %155 ]
  %169 = load ptr, ptr %29, align 8
  %170 = getelementptr i8, ptr %169, i64 8
  store ptr %170, ptr %29, align 8
  br label %171

171:                                              ; preds = %167, %162
  %172 = phi ptr [ %160, %162 ], [ %168, %167 ]
  %173 = phi ptr [ %165, %162 ], [ %169, %167 ]
  %174 = load ptr, ptr %173, align 8
  store ptr %174, ptr %14, align 8, !tbaa !34
  %175 = load ptr, ptr %31, align 8, !tbaa !350
  %176 = call fastcc i32 @rna_function_parameter_parse(ptr noundef nonnull %7, ptr noundef %37, i32 noundef 6, i8 noundef zeroext %51, i32 noundef %64, ptr noundef %175, ptr noundef nonnull %14, ptr noundef %172, ptr noundef %17, ptr noundef %18, ptr noundef %46) #29, !range !359
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #30
  br label %180

177:                                              ; preds = %70
  %178 = load ptr, ptr %31, align 8, !tbaa !350
  %179 = call fastcc i32 @rna_function_parameter_parse(ptr noundef nonnull %7, ptr noundef %37, i32 noundef %62, i8 noundef zeroext %51, i32 noundef %64, ptr noundef %178, ptr noundef null, ptr noundef null, ptr noundef %17, ptr noundef %18, ptr noundef %46) #29, !range !359
  br label %180

180:                                              ; preds = %177, %171, %142, %114, %98, %82
  %181 = phi i32 [ %179, %177 ], [ %176, %171 ], [ %147, %142 ], [ %118, %114 ], [ %102, %98 ], [ %86, %82 ]
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %333

183:                                              ; preds = %180, %42, %59, %40
  %184 = phi ptr [ %41, %40 ], [ %36, %42 ], [ %36, %59 ], [ %36, %180 ]
  %185 = phi ptr [ %35, %40 ], [ %35, %42 ], [ %46, %59 ], [ %46, %180 ]
  %186 = phi i32 [ %34, %40 ], [ %34, %42 ], [ %60, %59 ], [ %63, %180 ]
  call void @RNA_parameter_list_next(ptr noundef nonnull %9) #29
  %187 = load i32, ptr %24, align 8, !tbaa !347
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %33, !llvm.loop !361

189:                                              ; preds = %183, %6
  %190 = phi ptr [ null, %6 ], [ %184, %183 ]
  %191 = phi ptr [ null, %6 ], [ %185, %183 ]
  %192 = phi i32 [ 0, %6 ], [ %186, %183 ]
  %193 = call i32 @RNA_function_call(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %8) #29, !range !359
  %194 = icmp eq i32 %193, 0
  %195 = icmp ne ptr %20, null
  %196 = select i1 %194, i1 %195, i1 false
  br i1 %196, label %197, label %333

197:                                              ; preds = %189
  %198 = icmp slt i32 %192, %22
  br i1 %198, label %199, label %333

199:                                              ; preds = %197
  %200 = sext i32 %192 to i64
  %201 = getelementptr inbounds i8, ptr %4, i64 %200
  %202 = load i8, ptr %201, align 1, !tbaa !89
  %203 = icmp eq i8 %202, 82
  br i1 %203, label %204, label %333

204:                                              ; preds = %199
  %205 = call i32 @RNA_property_type(ptr noundef nonnull %20) #29
  %206 = add nsw i32 %192, 2
  %207 = getelementptr i8, ptr %201, i64 1
  %208 = load i8, ptr %207, align 1, !tbaa !89
  %209 = call i32 @RNA_property_array_length(ptr noundef nonnull %7, ptr noundef nonnull %20) #29
  %210 = call fastcc i32 @rna_function_format_array_length(ptr noundef nonnull %4, i32 noundef %206, i32 noundef %22) #29
  %211 = icmp eq i32 %209, %210
  br i1 %211, label %215, label %212

212:                                              ; preds = %204
  %213 = load ptr, ptr @stderr, align 8, !tbaa !34
  %214 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %213, ptr noundef nonnull @.str.68, ptr noundef %17, ptr noundef %18, ptr noundef %191, i32 noundef %209, i32 noundef %210) #32
  br label %333

215:                                              ; preds = %204
  switch i32 %205, label %331 [
    i32 0, label %216
    i32 1, label %216
    i32 4, label %216
    i32 2, label %233
    i32 3, label %250
    i32 5, label %267
    i32 6, label %299
  ]

216:                                              ; preds = %215, %215, %215
  %217 = load i32, ptr %5, align 8
  %218 = icmp ult i32 %217, 41
  br i1 %218, label %219, label %225

219:                                              ; preds = %216
  %220 = getelementptr inbounds %struct.__va_list_tag, ptr %5, i64 0, i32 3
  %221 = load ptr, ptr %220, align 8
  %222 = zext nneg i32 %217 to i64
  %223 = getelementptr i8, ptr %221, i64 %222
  %224 = add nuw nsw i32 %217, 8
  store i32 %224, ptr %5, align 8
  br label %229

225:                                              ; preds = %216
  %226 = getelementptr inbounds %struct.__va_list_tag, ptr %5, i64 0, i32 2
  %227 = load ptr, ptr %226, align 8
  %228 = getelementptr i8, ptr %227, i64 8
  store ptr %228, ptr %226, align 8
  br label %229

229:                                              ; preds = %225, %219
  %230 = phi ptr [ %223, %219 ], [ %227, %225 ]
  %231 = load ptr, ptr %230, align 8
  %232 = call fastcc i32 @rna_function_parameter_parse(ptr noundef nonnull %7, ptr noundef nonnull %20, i32 noundef %205, i8 noundef zeroext %208, i32 noundef %209, ptr noundef %231, ptr noundef %190, ptr noundef null, ptr noundef %17, ptr noundef %18, ptr noundef %191) #29, !range !359
  br label %333

233:                                              ; preds = %215
  %234 = load i32, ptr %5, align 8
  %235 = icmp ult i32 %234, 41
  br i1 %235, label %236, label %242

236:                                              ; preds = %233
  %237 = getelementptr inbounds %struct.__va_list_tag, ptr %5, i64 0, i32 3
  %238 = load ptr, ptr %237, align 8
  %239 = zext nneg i32 %234 to i64
  %240 = getelementptr i8, ptr %238, i64 %239
  %241 = add nuw nsw i32 %234, 8
  store i32 %241, ptr %5, align 8
  br label %246

242:                                              ; preds = %233
  %243 = getelementptr inbounds %struct.__va_list_tag, ptr %5, i64 0, i32 2
  %244 = load ptr, ptr %243, align 8
  %245 = getelementptr i8, ptr %244, i64 8
  store ptr %245, ptr %243, align 8
  br label %246

246:                                              ; preds = %242, %236
  %247 = phi ptr [ %240, %236 ], [ %244, %242 ]
  %248 = load ptr, ptr %247, align 8
  %249 = call fastcc i32 @rna_function_parameter_parse(ptr noundef nonnull %7, ptr noundef nonnull %20, i32 noundef 2, i8 noundef zeroext %208, i32 noundef %209, ptr noundef %248, ptr noundef %190, ptr noundef null, ptr noundef %17, ptr noundef %18, ptr noundef %191) #29, !range !359
  br label %333

250:                                              ; preds = %215
  %251 = load i32, ptr %5, align 8
  %252 = icmp ult i32 %251, 41
  br i1 %252, label %253, label %259

253:                                              ; preds = %250
  %254 = getelementptr inbounds %struct.__va_list_tag, ptr %5, i64 0, i32 3
  %255 = load ptr, ptr %254, align 8
  %256 = zext nneg i32 %251 to i64
  %257 = getelementptr i8, ptr %255, i64 %256
  %258 = add nuw nsw i32 %251, 8
  store i32 %258, ptr %5, align 8
  br label %263

259:                                              ; preds = %250
  %260 = getelementptr inbounds %struct.__va_list_tag, ptr %5, i64 0, i32 2
  %261 = load ptr, ptr %260, align 8
  %262 = getelementptr i8, ptr %261, i64 8
  store ptr %262, ptr %260, align 8
  br label %263

263:                                              ; preds = %259, %253
  %264 = phi ptr [ %257, %253 ], [ %261, %259 ]
  %265 = load ptr, ptr %264, align 8
  %266 = call fastcc i32 @rna_function_parameter_parse(ptr noundef nonnull %7, ptr noundef nonnull %20, i32 noundef 3, i8 noundef zeroext %208, i32 noundef %209, ptr noundef %265, ptr noundef %190, ptr noundef null, ptr noundef %17, ptr noundef %18, ptr noundef %191) #29, !range !359
  br label %333

267:                                              ; preds = %215
  %268 = load i32, ptr %5, align 8
  %269 = icmp ult i32 %268, 41
  br i1 %269, label %275, label %270

270:                                              ; preds = %267
  %271 = getelementptr inbounds %struct.__va_list_tag, ptr %5, i64 0, i32 2
  %272 = load ptr, ptr %271, align 8
  %273 = getelementptr i8, ptr %272, i64 8
  store ptr %273, ptr %271, align 8
  %274 = load ptr, ptr %272, align 8
  br label %289

275:                                              ; preds = %267
  %276 = getelementptr inbounds %struct.__va_list_tag, ptr %5, i64 0, i32 3
  %277 = load ptr, ptr %276, align 8
  %278 = zext nneg i32 %268 to i64
  %279 = getelementptr i8, ptr %277, i64 %278
  %280 = add nuw nsw i32 %268, 8
  store i32 %280, ptr %5, align 8
  %281 = load ptr, ptr %279, align 8
  %282 = icmp ult i32 %268, 33
  br i1 %282, label %283, label %289

283:                                              ; preds = %275
  %284 = getelementptr inbounds %struct.__va_list_tag, ptr %5, i64 0, i32 3
  %285 = load ptr, ptr %284, align 8
  %286 = zext nneg i32 %280 to i64
  %287 = getelementptr i8, ptr %285, i64 %286
  %288 = add nuw nsw i32 %268, 16
  store i32 %288, ptr %5, align 8
  br label %294

289:                                              ; preds = %270, %275
  %290 = phi ptr [ %274, %270 ], [ %281, %275 ]
  %291 = getelementptr inbounds %struct.__va_list_tag, ptr %5, i64 0, i32 2
  %292 = load ptr, ptr %291, align 8
  %293 = getelementptr i8, ptr %292, i64 8
  store ptr %293, ptr %291, align 8
  br label %294

294:                                              ; preds = %289, %283
  %295 = phi ptr [ %281, %283 ], [ %290, %289 ]
  %296 = phi ptr [ %287, %283 ], [ %292, %289 ]
  %297 = load ptr, ptr %296, align 8
  %298 = call fastcc i32 @rna_function_parameter_parse(ptr noundef nonnull %7, ptr noundef nonnull %20, i32 noundef 5, i8 noundef zeroext %208, i32 noundef %209, ptr noundef %297, ptr noundef %190, ptr noundef %295, ptr noundef %17, ptr noundef %18, ptr noundef %191) #29, !range !359
  br label %333

299:                                              ; preds = %215
  %300 = load i32, ptr %5, align 8
  %301 = icmp ult i32 %300, 41
  br i1 %301, label %307, label %302

302:                                              ; preds = %299
  %303 = getelementptr inbounds %struct.__va_list_tag, ptr %5, i64 0, i32 2
  %304 = load ptr, ptr %303, align 8
  %305 = getelementptr i8, ptr %304, i64 8
  store ptr %305, ptr %303, align 8
  %306 = load ptr, ptr %304, align 8
  br label %321

307:                                              ; preds = %299
  %308 = getelementptr inbounds %struct.__va_list_tag, ptr %5, i64 0, i32 3
  %309 = load ptr, ptr %308, align 8
  %310 = zext nneg i32 %300 to i64
  %311 = getelementptr i8, ptr %309, i64 %310
  %312 = add nuw nsw i32 %300, 8
  store i32 %312, ptr %5, align 8
  %313 = load ptr, ptr %311, align 8
  %314 = icmp ult i32 %300, 33
  br i1 %314, label %315, label %321

315:                                              ; preds = %307
  %316 = getelementptr inbounds %struct.__va_list_tag, ptr %5, i64 0, i32 3
  %317 = load ptr, ptr %316, align 8
  %318 = zext nneg i32 %312 to i64
  %319 = getelementptr i8, ptr %317, i64 %318
  %320 = add nuw nsw i32 %300, 16
  store i32 %320, ptr %5, align 8
  br label %326

321:                                              ; preds = %302, %307
  %322 = phi ptr [ %306, %302 ], [ %313, %307 ]
  %323 = getelementptr inbounds %struct.__va_list_tag, ptr %5, i64 0, i32 2
  %324 = load ptr, ptr %323, align 8
  %325 = getelementptr i8, ptr %324, i64 8
  store ptr %325, ptr %323, align 8
  br label %326

326:                                              ; preds = %321, %315
  %327 = phi ptr [ %313, %315 ], [ %322, %321 ]
  %328 = phi ptr [ %319, %315 ], [ %324, %321 ]
  %329 = load ptr, ptr %328, align 8
  %330 = call fastcc i32 @rna_function_parameter_parse(ptr noundef nonnull %7, ptr noundef nonnull %20, i32 noundef 6, i8 noundef zeroext %208, i32 noundef %209, ptr noundef %329, ptr noundef %190, ptr noundef %327, ptr noundef %17, ptr noundef %18, ptr noundef %191) #29, !range !359
  br label %333

331:                                              ; preds = %215
  %332 = call fastcc i32 @rna_function_parameter_parse(ptr noundef nonnull %7, ptr noundef nonnull %20, i32 noundef %205, i8 noundef zeroext %208, i32 noundef %209, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %17, ptr noundef %18, ptr noundef %191) #29, !range !359
  br label %333

333:                                              ; preds = %180, %67, %56, %212, %331, %326, %294, %263, %246, %229, %199, %197, %189
  %334 = phi i32 [ -1, %212 ], [ %332, %331 ], [ %330, %326 ], [ %298, %294 ], [ %266, %263 ], [ %249, %246 ], [ %232, %229 ], [ 0, %199 ], [ 0, %197 ], [ %193, %189 ], [ -1, %56 ], [ -1, %67 ], [ -1, %180 ]
  call void @RNA_parameter_list_free(ptr noundef nonnull %8) #29
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %9) #30
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #30
  ret i32 %334
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #21

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @RNA_function_call_direct_lookup(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, ...) local_unnamed_addr #0 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !57
  %9 = tail call ptr @RNA_struct_find_function(ptr noundef %8, ptr noundef %3) #29
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #30
  call void @llvm.va_start(ptr nonnull %6)
  %12 = call i32 @RNA_function_call_direct_va(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %9, ptr noundef %4, ptr noundef nonnull %6) #29, !range !359
  call void @llvm.va_end(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #30
  br label %13

13:                                               ; preds = %5, %11
  %14 = phi i32 [ %12, %11 ], [ -1, %5 ]
  ret i32 %14
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: nofree noinline nounwind optsize memory(read) uwtable
define internal fastcc i32 @rna_function_format_array_length(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #22 !PGOFuncName !362 {
  %4 = alloca [16 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #30
  %5 = add i32 %1, 1
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds i8, ptr %0, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !89
  %9 = icmp eq i8 %8, 91
  %10 = icmp slt i32 %5, %2
  %11 = and i1 %9, %10
  br i1 %11, label %12, label %37

12:                                               ; preds = %3
  %13 = sext i32 %5 to i64
  %14 = xor i32 %1, -1
  %15 = add i32 %14, %2
  %16 = zext i32 %15 to i64
  br label %17

17:                                               ; preds = %12, %25
  %18 = phi i64 [ %13, %12 ], [ %28, %25 ]
  %19 = phi i64 [ 0, %12 ], [ %27, %25 ]
  %20 = getelementptr inbounds i8, ptr %0, i64 %18
  %21 = load i8, ptr %20, align 1, !tbaa !89
  %22 = icmp ne i8 %21, 93
  %23 = icmp ult i64 %19, 15
  %24 = and i1 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %17
  %26 = getelementptr inbounds [16 x i8], ptr %4, i64 0, i64 %19
  store i8 %21, ptr %26, align 1, !tbaa !89
  %27 = add nuw nsw i64 %19, 1
  %28 = add nsw i64 %18, 1
  %29 = icmp eq i64 %27, %16
  br i1 %29, label %33, label %17, !llvm.loop !363

30:                                               ; preds = %17
  %31 = trunc i64 %19 to i32
  %32 = trunc i64 %18 to i32
  br label %33

33:                                               ; preds = %25, %30
  %34 = phi i32 [ %32, %30 ], [ %2, %25 ]
  %35 = phi i32 [ %31, %30 ], [ %15, %25 ]
  %36 = zext nneg i32 %35 to i64
  br label %37

37:                                               ; preds = %33, %3
  %38 = phi i32 [ %5, %3 ], [ %34, %33 ]
  %39 = phi i64 [ 0, %3 ], [ %36, %33 ]
  %40 = icmp slt i32 %38, %2
  br i1 %40, label %41, label %50

41:                                               ; preds = %37
  %42 = sext i32 %38 to i64
  %43 = getelementptr i8, ptr %0, i64 %42
  %44 = getelementptr i8, ptr %43, i64 1
  %45 = load i8, ptr %44, align 1, !tbaa !89
  %46 = icmp eq i8 %45, 93
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = getelementptr inbounds [16 x i8], ptr %4, i64 0, i64 %39
  store i8 0, ptr %48, align 1, !tbaa !89
  %49 = call i32 @atoi(ptr nocapture noundef nonnull %4) #31
  br label %50

50:                                               ; preds = %37, %41, %47
  %51 = phi i32 [ %49, %47 ], [ 0, %41 ], [ 0, %37 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #30
  ret i32 %51
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @rna_function_parameter_parse(ptr noundef %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3, i32 noundef %4, ptr noundef %5, ptr nocapture noundef readonly %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) unnamed_addr #0 !PGOFuncName !364 {
  switch i32 %2, label %112 [
    i32 0, label %12
    i32 1, label %24
    i32 2, label %36
    i32 3, label %48
    i32 4, label %55
    i32 5, label %62
    i32 6, label %86
  ]

12:                                               ; preds = %11
  %13 = icmp eq i8 %3, 98
  br i1 %13, label %17, label %14

14:                                               ; preds = %12
  %15 = load ptr, ptr @stderr, align 8, !tbaa !34
  %16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.88, ptr noundef %8, ptr noundef %9, ptr noundef %10) #32
  br label %119

17:                                               ; preds = %12
  %18 = icmp eq i32 %4, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %17
  %20 = load i32, ptr %6, align 4, !tbaa !96
  store i32 %20, ptr %5, align 4, !tbaa !96
  br label %119

21:                                               ; preds = %17
  %22 = sext i32 %4 to i64
  %23 = shl nsw i64 %22, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %5, ptr align 1 %6, i64 %23, i1 false)
  br label %119

24:                                               ; preds = %11
  %25 = icmp eq i8 %3, 105
  br i1 %25, label %29, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr @stderr, align 8, !tbaa !34
  %28 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %27, ptr noundef nonnull @.str.89, ptr noundef %8, ptr noundef %9, ptr noundef %10) #32
  br label %119

29:                                               ; preds = %24
  %30 = icmp eq i32 %4, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %29
  %32 = load i32, ptr %6, align 4, !tbaa !96
  store i32 %32, ptr %5, align 4, !tbaa !96
  br label %119

33:                                               ; preds = %29
  %34 = sext i32 %4 to i64
  %35 = shl nsw i64 %34, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %5, ptr align 1 %6, i64 %35, i1 false)
  br label %119

36:                                               ; preds = %11
  %37 = icmp eq i8 %3, 102
  br i1 %37, label %41, label %38

38:                                               ; preds = %36
  %39 = load ptr, ptr @stderr, align 8, !tbaa !34
  %40 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %39, ptr noundef nonnull @.str.90, ptr noundef %8, ptr noundef %9, ptr noundef %10) #32
  br label %119

41:                                               ; preds = %36
  %42 = icmp eq i32 %4, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %41
  %44 = load float, ptr %6, align 4, !tbaa !143
  store float %44, ptr %5, align 4, !tbaa !143
  br label %119

45:                                               ; preds = %41
  %46 = sext i32 %4 to i64
  %47 = shl nsw i64 %46, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %5, ptr align 1 %6, i64 %47, i1 false)
  br label %119

48:                                               ; preds = %11
  %49 = icmp eq i8 %3, 115
  br i1 %49, label %53, label %50

50:                                               ; preds = %48
  %51 = load ptr, ptr @stderr, align 8, !tbaa !34
  %52 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %51, ptr noundef nonnull @.str.91, ptr noundef %8, ptr noundef %9, ptr noundef %10) #32
  br label %119

53:                                               ; preds = %48
  %54 = load ptr, ptr %6, align 8, !tbaa !34
  store ptr %54, ptr %5, align 8, !tbaa !34
  br label %119

55:                                               ; preds = %11
  %56 = icmp eq i8 %3, 101
  br i1 %56, label %60, label %57

57:                                               ; preds = %55
  %58 = load ptr, ptr @stderr, align 8, !tbaa !34
  %59 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %58, ptr noundef nonnull @.str.92, ptr noundef %8, ptr noundef %9, ptr noundef %10) #32
  br label %119

60:                                               ; preds = %55
  %61 = load i32, ptr %6, align 4, !tbaa !96
  store i32 %61, ptr %5, align 4, !tbaa !96
  br label %119

62:                                               ; preds = %11
  %63 = icmp eq i8 %3, 79
  br i1 %63, label %67, label %64

64:                                               ; preds = %62
  %65 = load ptr, ptr @stderr, align 8, !tbaa !34
  %66 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %65, ptr noundef nonnull @.str.93, ptr noundef %8, ptr noundef %9, ptr noundef %10) #32
  br label %119

67:                                               ; preds = %62
  %68 = tail call ptr @RNA_property_pointer_type(ptr noundef %0, ptr noundef %1) #29
  %69 = getelementptr inbounds %struct.PropertyRNA, ptr %1, i64 0, i32 4
  %70 = load i32, ptr %69, align 8, !tbaa !43
  %71 = and i32 %70, 2048
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %67
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !64
  br label %119

74:                                               ; preds = %67
  %75 = icmp eq ptr %68, %7
  br i1 %75, label %84, label %76

76:                                               ; preds = %74
  %77 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %7, ptr noundef %68) #29, !range !70
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = load ptr, ptr @stderr, align 8, !tbaa !34
  %81 = tail call ptr @RNA_struct_identifier(ptr noundef %68) #29
  %82 = tail call ptr @RNA_struct_identifier(ptr noundef %7) #29
  %83 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %80, ptr noundef nonnull @.str.94, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %81, ptr noundef %82) #32
  br label %119

84:                                               ; preds = %76, %74
  %85 = load ptr, ptr %6, align 8, !tbaa !34
  store ptr %85, ptr %5, align 8, !tbaa !34
  br label %119

86:                                               ; preds = %11
  %87 = icmp eq i8 %3, 67
  br i1 %87, label %91, label %88

88:                                               ; preds = %86
  %89 = load ptr, ptr @stderr, align 8, !tbaa !34
  %90 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %89, ptr noundef nonnull @.str.95, ptr noundef %8, ptr noundef %9, ptr noundef %10) #32
  br label %119

91:                                               ; preds = %86
  %92 = tail call ptr @RNA_property_pointer_type(ptr noundef %0, ptr noundef %1) #29
  %93 = icmp eq ptr %92, %7
  br i1 %93, label %102, label %94

94:                                               ; preds = %91
  %95 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %7, ptr noundef %92) #29, !range !70
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %94
  %98 = load ptr, ptr @stderr, align 8, !tbaa !34
  %99 = tail call ptr @RNA_struct_identifier(ptr noundef %92) #29
  %100 = tail call ptr @RNA_struct_identifier(ptr noundef %7) #29
  %101 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %98, ptr noundef nonnull @.str.96, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %99, ptr noundef %100) #32
  br label %119

102:                                              ; preds = %94, %91
  %103 = load ptr, ptr %6, align 8, !tbaa !34
  %104 = icmp eq ptr %103, null
  br i1 %104, label %119, label %105

105:                                              ; preds = %102, %105
  %106 = phi ptr [ %110, %105 ], [ %103, %102 ]
  %107 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %108 = tail call ptr %107(i64 noundef 40, ptr noundef nonnull @.str.97) #28
  %109 = getelementptr inbounds %struct.CollectionPointerLink, ptr %108, i64 0, i32 2
  tail call void @RNA_pointer_create(ptr noundef null, ptr noundef %7, ptr noundef nonnull %106, ptr noundef nonnull %109) #29
  tail call void @BLI_addtail(ptr noundef %5, ptr noundef %108) #28
  %110 = load ptr, ptr %106, align 8, !tbaa !34
  %111 = icmp eq ptr %110, null
  br i1 %111, label %119, label %105, !llvm.loop !365

112:                                              ; preds = %11
  %113 = icmp eq i32 %4, 0
  %114 = load ptr, ptr @stderr, align 8, !tbaa !34
  br i1 %113, label %115, label %117

115:                                              ; preds = %112
  %116 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %114, ptr noundef nonnull @.str.98, ptr noundef %8, ptr noundef %9, ptr noundef %10) #32
  br label %119

117:                                              ; preds = %112
  %118 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %114, ptr noundef nonnull @.str.99, ptr noundef %8, ptr noundef %9, ptr noundef %10) #32
  br label %119

119:                                              ; preds = %105, %102, %73, %84, %97, %88, %79, %64, %53, %60, %21, %19, %33, %31, %45, %43, %115, %117, %57, %50, %38, %26, %14
  %120 = phi i32 [ -1, %57 ], [ -1, %50 ], [ -1, %38 ], [ -1, %26 ], [ -1, %14 ], [ -1, %117 ], [ -1, %115 ], [ 0, %43 ], [ 0, %45 ], [ 0, %31 ], [ 0, %33 ], [ 0, %19 ], [ 0, %21 ], [ 0, %60 ], [ 0, %53 ], [ -1, %64 ], [ -1, %79 ], [ -1, %88 ], [ -1, %97 ], [ 0, %84 ], [ 0, %73 ], [ 0, %102 ], [ 0, %105 ]
  ret i32 %120
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @RNA_function_call_direct_va_lookup(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !57
  %9 = tail call ptr @RNA_struct_find_function(ptr noundef %8, ptr noundef %3) #29
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  %12 = tail call i32 @RNA_function_call_direct_va(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %9, ptr noundef %4, ptr noundef %5) #29, !range !359
  br label %13

13:                                               ; preds = %6, %11
  %14 = phi i32 [ %12, %11 ], [ 0, %6 ]
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @RNA_property_reset(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = tail call i32 @RNA_property_array_length(ptr noundef %0, ptr noundef %1) #29
  %6 = tail call i32 @RNA_property_type(ptr noundef %1) #29
  switch i32 %6, label %55 [
    i32 0, label %7
    i32 1, label %21
    i32 2, label %35
    i32 4, label %49
    i32 3, label %51
    i32 5, label %54
  ]

7:                                                ; preds = %3
  %8 = icmp eq i32 %5, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %7
  %10 = icmp eq i32 %2, -1
  br i1 %10, label %11, label %17

11:                                               ; preds = %9
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %13 = sext i32 %5 to i64
  %14 = shl nsw i64 %13, 2
  %15 = tail call ptr %12(i64 noundef %14, ptr noundef nonnull @.str.69) #28
  tail call void @RNA_property_boolean_get_default_array(ptr poison, ptr noundef %1, ptr noundef %15) #29
  tail call void @RNA_property_boolean_set_array(ptr noundef %0, ptr noundef %1, ptr noundef %15) #29
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %16(ptr noundef %15) #28
  br label %55

17:                                               ; preds = %9
  %18 = tail call i32 @RNA_property_boolean_get_default_index(ptr noundef %0, ptr noundef %1, i32 noundef %2) #29
  tail call void @RNA_property_boolean_set_index(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %18) #29
  br label %55

19:                                               ; preds = %7
  %20 = tail call i32 @RNA_property_boolean_get_default(ptr poison, ptr noundef %1) #29
  tail call void @RNA_property_boolean_set(ptr noundef %0, ptr noundef %1, i32 noundef %20) #29
  br label %55

21:                                               ; preds = %3
  %22 = icmp eq i32 %5, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %21
  %24 = icmp eq i32 %2, -1
  br i1 %24, label %25, label %31

25:                                               ; preds = %23
  %26 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %27 = sext i32 %5 to i64
  %28 = shl nsw i64 %27, 2
  %29 = tail call ptr %26(i64 noundef %28, ptr noundef nonnull @.str.70) #28
  tail call void @RNA_property_int_get_default_array(ptr poison, ptr noundef %1, ptr noundef %29) #29
  tail call void @RNA_property_int_set_array(ptr noundef %0, ptr noundef %1, ptr noundef %29) #29
  %30 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %30(ptr noundef %29) #28
  br label %55

31:                                               ; preds = %23
  %32 = tail call i32 @RNA_property_int_get_default_index(ptr noundef %0, ptr noundef %1, i32 noundef %2) #29
  tail call void @RNA_property_int_set_index(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %32) #29
  br label %55

33:                                               ; preds = %21
  %34 = tail call i32 @RNA_property_int_get_default(ptr poison, ptr noundef %1) #29
  tail call void @RNA_property_int_set(ptr noundef %0, ptr noundef %1, i32 noundef %34) #29
  br label %55

35:                                               ; preds = %3
  %36 = icmp eq i32 %5, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %35
  %38 = icmp eq i32 %2, -1
  br i1 %38, label %39, label %45

39:                                               ; preds = %37
  %40 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %41 = sext i32 %5 to i64
  %42 = shl nsw i64 %41, 2
  %43 = tail call ptr %40(i64 noundef %42, ptr noundef nonnull @.str.71) #28
  tail call void @RNA_property_float_get_default_array(ptr poison, ptr noundef %1, ptr noundef %43) #29
  tail call void @RNA_property_float_set_array(ptr noundef %0, ptr noundef %1, ptr noundef %43) #29
  %44 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %44(ptr noundef %43) #28
  br label %55

45:                                               ; preds = %37
  %46 = tail call float @RNA_property_float_get_default_index(ptr noundef %0, ptr noundef %1, i32 noundef %2) #29
  tail call void @RNA_property_float_set_index(ptr noundef %0, ptr noundef %1, i32 noundef %2, float noundef %46) #29
  br label %55

47:                                               ; preds = %35
  %48 = tail call float @RNA_property_float_get_default(ptr poison, ptr noundef %1) #29
  tail call void @RNA_property_float_set(ptr noundef %0, ptr noundef %1, float noundef %48) #29
  br label %55

49:                                               ; preds = %3
  %50 = tail call i32 @RNA_property_enum_get_default(ptr poison, ptr noundef %1) #29
  tail call void @RNA_property_enum_set(ptr noundef %0, ptr noundef %1, i32 noundef %50) #29
  br label %55

51:                                               ; preds = %3
  %52 = tail call ptr @RNA_property_string_get_default_alloc(ptr noundef %0, ptr noundef %1, ptr noundef null, i32 noundef 0) #29
  tail call void @RNA_property_string_set(ptr noundef %0, ptr noundef %1, ptr noundef %52) #29
  %53 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %53(ptr noundef %52) #28
  br label %55

54:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #30
  call void @RNA_property_pointer_get_default(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr poison, ptr poison) #29
  tail call void @RNA_property_pointer_set(ptr noundef %0, ptr noundef %1, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %4) #29
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #30
  br label %55

55:                                               ; preds = %3, %47, %45, %39, %33, %31, %25, %19, %17, %11, %54, %51, %49
  %56 = phi i8 [ 1, %54 ], [ 1, %51 ], [ 1, %49 ], [ 1, %11 ], [ 1, %17 ], [ 1, %19 ], [ 1, %25 ], [ 1, %31 ], [ 1, %33 ], [ 1, %39 ], [ 1, %45 ], [ 1, %47 ], [ 0, %3 ]
  ret i8 %56
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @RNA_property_copy(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.PointerRNA, align 8
  %6 = getelementptr inbounds %struct.PropertyRNA, ptr %2, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !114
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %15, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.IDProperty, ptr %2, i64 0, i32 5
  %11 = tail call fastcc ptr @rna_idproperty_find(ptr noundef %0, ptr noundef nonnull %10) #29
  %12 = icmp eq ptr %11, %2
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = tail call fastcc ptr @rna_idproperty_find(ptr noundef %1, ptr noundef nonnull %10) #29
  br label %15

15:                                               ; preds = %9, %13, %4
  %16 = phi ptr [ %14, %13 ], [ %2, %9 ], [ %2, %4 ]
  %17 = phi ptr [ %2, %13 ], [ %11, %9 ], [ %2, %4 ]
  %18 = tail call i32 @RNA_property_array_length(ptr noundef %0, ptr noundef %17) #29
  %19 = tail call i32 @RNA_property_array_length(ptr noundef %1, ptr noundef %16) #29
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %71

21:                                               ; preds = %15
  %22 = tail call i32 @RNA_property_type(ptr noundef %17) #29
  switch i32 %22, label %71 [
    i32 0, label %23
    i32 1, label %37
    i32 2, label %51
    i32 4, label %65
    i32 5, label %67
    i32 3, label %68
  ]

23:                                               ; preds = %21
  %24 = icmp eq i32 %18, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %23
  %26 = icmp eq i32 %3, -1
  br i1 %26, label %27, label %33

27:                                               ; preds = %25
  %28 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %29 = sext i32 %18 to i64
  %30 = shl nsw i64 %29, 2
  %31 = tail call ptr %28(i64 noundef %30, ptr noundef nonnull @.str.72) #28
  tail call void @RNA_property_boolean_get_array(ptr noundef %1, ptr noundef %16, ptr noundef %31) #29
  tail call void @RNA_property_boolean_set_array(ptr noundef %0, ptr noundef %17, ptr noundef %31) #29
  %32 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %32(ptr noundef %31) #28
  br label %71

33:                                               ; preds = %25
  %34 = tail call i32 @RNA_property_boolean_get_index(ptr noundef %1, ptr noundef %16, i32 noundef %3) #29
  tail call void @RNA_property_boolean_set_index(ptr noundef %0, ptr noundef %17, i32 noundef %3, i32 noundef %34) #29
  br label %71

35:                                               ; preds = %23
  %36 = tail call i32 @RNA_property_boolean_get(ptr noundef %1, ptr noundef %16) #29
  tail call void @RNA_property_boolean_set(ptr noundef %0, ptr noundef %17, i32 noundef %36) #29
  br label %71

37:                                               ; preds = %21
  %38 = icmp eq i32 %18, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %37
  %40 = icmp eq i32 %3, -1
  br i1 %40, label %41, label %47

41:                                               ; preds = %39
  %42 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %43 = sext i32 %18 to i64
  %44 = shl nsw i64 %43, 2
  %45 = tail call ptr %42(i64 noundef %44, ptr noundef nonnull @.str.73) #28
  tail call void @RNA_property_int_get_array(ptr noundef %1, ptr noundef %16, ptr noundef %45) #29
  tail call void @RNA_property_int_set_array(ptr noundef %0, ptr noundef %17, ptr noundef %45) #29
  %46 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %46(ptr noundef %45) #28
  br label %71

47:                                               ; preds = %39
  %48 = tail call i32 @RNA_property_int_get_index(ptr noundef %1, ptr noundef %16, i32 noundef %3) #29
  tail call void @RNA_property_int_set_index(ptr noundef %0, ptr noundef %17, i32 noundef %3, i32 noundef %48) #29
  br label %71

49:                                               ; preds = %37
  %50 = tail call i32 @RNA_property_int_get(ptr noundef %1, ptr noundef %16) #29
  tail call void @RNA_property_int_set(ptr noundef %0, ptr noundef %17, i32 noundef %50) #29
  br label %71

51:                                               ; preds = %21
  %52 = icmp eq i32 %18, 0
  br i1 %52, label %63, label %53

53:                                               ; preds = %51
  %54 = icmp eq i32 %3, -1
  br i1 %54, label %55, label %61

55:                                               ; preds = %53
  %56 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %57 = sext i32 %18 to i64
  %58 = shl nsw i64 %57, 2
  %59 = tail call ptr %56(i64 noundef %58, ptr noundef nonnull @.str.74) #28
  tail call void @RNA_property_float_get_array(ptr noundef %1, ptr noundef %16, ptr noundef %59) #29
  tail call void @RNA_property_float_set_array(ptr noundef %0, ptr noundef %17, ptr noundef %59) #29
  %60 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %60(ptr noundef %59) #28
  br label %71

61:                                               ; preds = %53
  %62 = tail call float @RNA_property_float_get_index(ptr noundef %1, ptr noundef %16, i32 noundef %3) #29
  tail call void @RNA_property_float_set_index(ptr noundef %0, ptr noundef %17, i32 noundef %3, float noundef %62) #29
  br label %71

63:                                               ; preds = %51
  %64 = tail call float @RNA_property_float_get(ptr noundef %1, ptr noundef %16) #29
  tail call void @RNA_property_float_set(ptr noundef %0, ptr noundef %17, float noundef %64) #29
  br label %71

65:                                               ; preds = %21
  %66 = tail call i32 @RNA_property_enum_get(ptr noundef %1, ptr noundef %16) #29
  tail call void @RNA_property_enum_set(ptr noundef %0, ptr noundef %17, i32 noundef %66) #29
  br label %71

67:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #30
  call void @RNA_property_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef %1, ptr noundef %16) #29
  call void @RNA_property_pointer_set(ptr noundef %0, ptr noundef %17, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %5) #29
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #30
  br label %71

68:                                               ; preds = %21
  %69 = tail call ptr @RNA_property_string_get_alloc(ptr noundef %1, ptr noundef %16, ptr noundef null, i32 noundef 0, ptr noundef null) #29
  tail call void @RNA_property_string_set(ptr noundef %0, ptr noundef %17, ptr noundef %69) #29
  %70 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %70(ptr noundef %69) #28
  br label %71

71:                                               ; preds = %21, %63, %61, %55, %49, %47, %41, %35, %33, %27, %15, %68, %67, %65
  %72 = phi i8 [ 1, %68 ], [ 1, %67 ], [ 1, %65 ], [ 0, %15 ], [ 1, %27 ], [ 1, %33 ], [ 1, %35 ], [ 1, %41 ], [ 1, %47 ], [ 1, %49 ], [ 1, %55 ], [ 1, %61 ], [ 1, %63 ], [ 0, %21 ]
  ret i8 %72
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @_RNA_warning(ptr nocapture noundef readonly %0, ...) local_unnamed_addr #23 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #30
  call void @llvm.va_start(ptr nonnull %2)
  %3 = call i32 @vprintf(ptr noundef %0, ptr noundef nonnull %2) #29
  call void @llvm.va_end(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #30
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @vprintf(ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #13

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @RNA_property_equals(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [16 x i32], align 16
  %6 = alloca [16 x i32], align 16
  %7 = alloca [16 x i32], align 16
  %8 = alloca [16 x i32], align 16
  %9 = alloca [16 x float], align 16
  %10 = alloca [16 x float], align 16
  %11 = alloca [128 x i8], align 16
  %12 = alloca [128 x i8], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.PointerRNA, align 8
  %16 = alloca %struct.PointerRNA, align 8
  switch i32 %3, label %27 [
    i32 1, label %17
    i32 2, label %23
  ]

17:                                               ; preds = %4
  %18 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %0, ptr noundef %2) #29, !range !70
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %154, label %20

20:                                               ; preds = %17
  %21 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %1, ptr noundef %2) #29, !range !70
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %154, label %27

23:                                               ; preds = %4
  %24 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %0, ptr noundef %2) #29, !range !70
  %25 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %1, ptr noundef %2) #29, !range !70
  %26 = icmp eq i8 %24, %25
  br i1 %26, label %27, label %154

27:                                               ; preds = %4, %23, %20
  %28 = tail call i32 @RNA_property_array_length(ptr noundef %0, ptr noundef %2) #29
  %29 = tail call i32 @RNA_property_array_length(ptr noundef %1, ptr noundef %2) #29
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %154

31:                                               ; preds = %27
  %32 = tail call i32 @RNA_property_type(ptr noundef %2) #29
  switch i32 %32, label %154 [
    i32 0, label %33
    i32 1, label %65
    i32 2, label %97
    i32 4, label %129
    i32 3, label %134
    i32 5, label %148
  ]

33:                                               ; preds = %31
  %34 = icmp eq i32 %28, 0
  br i1 %34, label %60, label %35

35:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #30
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #30
  %36 = icmp sgt i32 %28, 16
  br i1 %36, label %37, label %44

37:                                               ; preds = %35
  %38 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %39 = zext nneg i32 %28 to i64
  %40 = shl nuw nsw i64 %39, 2
  %41 = tail call ptr %38(i64 noundef %40, ptr noundef nonnull @.str.75) #28
  %42 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %43 = tail call ptr %42(i64 noundef %40, ptr noundef nonnull @.str.75) #28
  br label %44

44:                                               ; preds = %35, %37
  %45 = phi ptr [ %41, %37 ], [ %5, %35 ]
  %46 = phi ptr [ %43, %37 ], [ %6, %35 ]
  call void @RNA_property_boolean_get_array(ptr noundef %0, ptr noundef %2, ptr noundef %45) #29
  call void @RNA_property_boolean_get_array(ptr noundef %1, ptr noundef %2, ptr noundef %46) #29
  %47 = sext i32 %28 to i64
  %48 = shl nsw i64 %47, 2
  %49 = call i32 @bcmp(ptr %45, ptr %46, i64 %48)
  %50 = icmp eq i32 %49, 0
  %51 = zext i1 %50 to i8
  %52 = icmp eq ptr %45, %5
  br i1 %52, label %55, label %53

53:                                               ; preds = %44
  %54 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %54(ptr noundef %45) #28
  br label %55

55:                                               ; preds = %53, %44
  %56 = icmp eq ptr %46, %6
  br i1 %56, label %59, label %57

57:                                               ; preds = %55
  %58 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %58(ptr noundef %46) #28
  br label %59

59:                                               ; preds = %57, %55
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #30
  br label %154

60:                                               ; preds = %33
  %61 = tail call i32 @RNA_property_boolean_get(ptr noundef %0, ptr noundef %2) #29
  %62 = tail call i32 @RNA_property_boolean_get(ptr noundef %1, ptr noundef %2) #29
  %63 = icmp eq i32 %61, %62
  %64 = zext i1 %63 to i8
  br label %154

65:                                               ; preds = %31
  %66 = icmp eq i32 %28, 0
  br i1 %66, label %92, label %67

67:                                               ; preds = %65
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #30
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #30
  %68 = icmp sgt i32 %28, 16
  br i1 %68, label %69, label %76

69:                                               ; preds = %67
  %70 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %71 = zext nneg i32 %28 to i64
  %72 = shl nuw nsw i64 %71, 2
  %73 = tail call ptr %70(i64 noundef %72, ptr noundef nonnull @.str.75) #28
  %74 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %75 = tail call ptr %74(i64 noundef %72, ptr noundef nonnull @.str.75) #28
  br label %76

76:                                               ; preds = %67, %69
  %77 = phi ptr [ %73, %69 ], [ %7, %67 ]
  %78 = phi ptr [ %75, %69 ], [ %8, %67 ]
  call void @RNA_property_int_get_array(ptr noundef %0, ptr noundef %2, ptr noundef %77) #29
  call void @RNA_property_int_get_array(ptr noundef %1, ptr noundef %2, ptr noundef %78) #29
  %79 = sext i32 %28 to i64
  %80 = shl nsw i64 %79, 2
  %81 = call i32 @bcmp(ptr %77, ptr %78, i64 %80)
  %82 = icmp eq i32 %81, 0
  %83 = zext i1 %82 to i8
  %84 = icmp eq ptr %77, %7
  br i1 %84, label %87, label %85

85:                                               ; preds = %76
  %86 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %86(ptr noundef %77) #28
  br label %87

87:                                               ; preds = %85, %76
  %88 = icmp eq ptr %78, %8
  br i1 %88, label %91, label %89

89:                                               ; preds = %87
  %90 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %90(ptr noundef %78) #28
  br label %91

91:                                               ; preds = %89, %87
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #30
  br label %154

92:                                               ; preds = %65
  %93 = tail call i32 @RNA_property_int_get(ptr noundef %0, ptr noundef %2) #29
  %94 = tail call i32 @RNA_property_int_get(ptr noundef %1, ptr noundef %2) #29
  %95 = icmp eq i32 %93, %94
  %96 = zext i1 %95 to i8
  br label %154

97:                                               ; preds = %31
  %98 = icmp eq i32 %28, 0
  br i1 %98, label %124, label %99

99:                                               ; preds = %97
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #30
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #30
  %100 = icmp sgt i32 %28, 16
  br i1 %100, label %101, label %108

101:                                              ; preds = %99
  %102 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %103 = zext nneg i32 %28 to i64
  %104 = shl nuw nsw i64 %103, 2
  %105 = tail call ptr %102(i64 noundef %104, ptr noundef nonnull @.str.75) #28
  %106 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %107 = tail call ptr %106(i64 noundef %104, ptr noundef nonnull @.str.75) #28
  br label %108

108:                                              ; preds = %99, %101
  %109 = phi ptr [ %105, %101 ], [ %9, %99 ]
  %110 = phi ptr [ %107, %101 ], [ %10, %99 ]
  call void @RNA_property_float_get_array(ptr noundef %0, ptr noundef %2, ptr noundef %109) #29
  call void @RNA_property_float_get_array(ptr noundef %1, ptr noundef %2, ptr noundef %110) #29
  %111 = sext i32 %28 to i64
  %112 = shl nsw i64 %111, 2
  %113 = call i32 @bcmp(ptr %109, ptr %110, i64 %112)
  %114 = icmp eq i32 %113, 0
  %115 = zext i1 %114 to i8
  %116 = icmp eq ptr %109, %9
  br i1 %116, label %119, label %117

117:                                              ; preds = %108
  %118 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %118(ptr noundef %109) #28
  br label %119

119:                                              ; preds = %117, %108
  %120 = icmp eq ptr %110, %10
  br i1 %120, label %123, label %121

121:                                              ; preds = %119
  %122 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %122(ptr noundef %110) #28
  br label %123

123:                                              ; preds = %121, %119
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #30
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #30
  br label %154

124:                                              ; preds = %97
  %125 = tail call float @RNA_property_float_get(ptr noundef %0, ptr noundef %2) #29
  %126 = tail call float @RNA_property_float_get(ptr noundef %1, ptr noundef %2) #29
  %127 = fcmp oeq float %125, %126
  %128 = zext i1 %127 to i8
  br label %154

129:                                              ; preds = %31
  %130 = tail call i32 @RNA_property_enum_get(ptr noundef %0, ptr noundef %2) #29
  %131 = tail call i32 @RNA_property_enum_get(ptr noundef %1, ptr noundef %2) #29
  %132 = icmp eq i32 %130, %131
  %133 = zext i1 %132 to i8
  br label %154

134:                                              ; preds = %31
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %11) #30
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %12) #30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #30
  %135 = call ptr @RNA_property_string_get_alloc(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %11, i32 noundef 128, ptr noundef nonnull %13) #29
  %136 = call ptr @RNA_property_string_get_alloc(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %12, i32 noundef 128, ptr noundef nonnull %14) #29
  %137 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %135, ptr noundef nonnull dereferenceable(1) %136) #31
  %138 = icmp eq i32 %137, 0
  %139 = zext i1 %138 to i8
  %140 = icmp eq ptr %135, %11
  br i1 %140, label %143, label %141

141:                                              ; preds = %134
  %142 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %142(ptr noundef %135) #28
  br label %143

143:                                              ; preds = %141, %134
  %144 = icmp eq ptr %136, %12
  br i1 %144, label %147, label %145

145:                                              ; preds = %143
  %146 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %146(ptr noundef %136) #28
  br label %147

147:                                              ; preds = %145, %143
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #30
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %12) #30
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %11) #30
  br label %154

148:                                              ; preds = %31
  %149 = tail call ptr @RNA_property_identifier(ptr noundef %2) #29
  %150 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %149, ptr noundef nonnull dereferenceable(9) @.str.42) #31
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %154, label %152

152:                                              ; preds = %148
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %15) #30
  call void @RNA_property_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %15, ptr noundef %0, ptr noundef %2) #29
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %16) #30
  call void @RNA_property_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %16, ptr noundef %1, ptr noundef %2) #29
  %153 = call zeroext i8 @RNA_struct_equals(ptr noundef nonnull %15, ptr noundef nonnull %16, i32 noundef %3) #29, !range !70
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %16) #30
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #30
  br label %154

154:                                              ; preds = %148, %31, %27, %23, %17, %20, %152, %147, %129, %124, %123, %92, %91, %60, %59
  %155 = phi i8 [ %153, %152 ], [ %139, %147 ], [ %133, %129 ], [ %115, %123 ], [ %128, %124 ], [ %83, %91 ], [ %96, %92 ], [ %51, %59 ], [ %64, %60 ], [ 1, %20 ], [ 1, %17 ], [ 0, %23 ], [ 0, %27 ], [ 1, %31 ], [ 1, %148 ]
  ret i8 %155
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @RNA_struct_equals(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #30
  %5 = icmp eq ptr %0, null
  %6 = icmp eq ptr %1, null
  %7 = and i1 %5, %6
  br i1 %7, label %31, label %8

8:                                                ; preds = %3
  %9 = or i1 %5, %6
  br i1 %9, label %31, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !57
  %13 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !57
  %15 = icmp eq ptr %12, %14
  br i1 %15, label %16, label %31

16:                                               ; preds = %10
  %17 = tail call ptr @RNA_struct_iterator_property(ptr noundef %12) #29
  call void @RNA_property_collection_begin(ptr noundef nonnull %0, ptr noundef %17, ptr noundef nonnull %4) #29
  %18 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 6, i32 2
  %19 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 7
  %20 = load i32, ptr %19, align 8, !tbaa !92
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %16, %26
  %23 = load ptr, ptr %18, align 8, !tbaa !94
  %24 = call zeroext i8 @RNA_property_equals(ptr noundef %0, ptr noundef %1, ptr noundef %23, i32 noundef %2) #29, !range !70
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  call void @RNA_property_collection_next(ptr noundef nonnull %4) #29
  %27 = load i32, ptr %19, align 8, !tbaa !92
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %22, !llvm.loop !366

29:                                               ; preds = %26, %22, %16
  %30 = phi i8 [ 1, %16 ], [ 0, %22 ], [ 1, %26 ]
  call void @RNA_property_collection_end(ptr noundef nonnull %4) #29
  br label %31

31:                                               ; preds = %10, %8, %3, %29
  %32 = phi i8 [ %30, %29 ], [ 1, %3 ], [ 0, %8 ], [ 0, %10 ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #30
  ret i8 %32
}

; Function Attrs: optsize
declare void @WM_main_add_notifier(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @rna_property_array_length_all_dimensions(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !367 {
  %3 = alloca [3 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #30
  %4 = call i32 @RNA_property_array_dimension(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3) #29
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %2
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %6
  %9 = zext nneg i32 %4 to i64
  br label %10

10:                                               ; preds = %8, %10
  %11 = phi i64 [ 0, %8 ], [ %16, %10 ]
  %12 = phi i32 [ 1, %8 ], [ %15, %10 ]
  %13 = getelementptr inbounds [3 x i32], ptr %3, i64 0, i64 %11
  %14 = load i32, ptr %13, align 4, !tbaa !96
  %15 = mul nsw i32 %14, %12
  %16 = add nuw nsw i64 %11, 1
  %17 = icmp eq i64 %16, %9
  br i1 %17, label %18, label %10, !llvm.loop !368

18:                                               ; preds = %10, %6, %2
  %19 = phi i32 [ 0, %2 ], [ 1, %6 ], [ %15, %10 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #30
  ret i32 %19
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @rna_token_strip_quotes(ptr nocapture noundef %0) unnamed_addr #24 !PGOFuncName !369 {
  %2 = load i8, ptr %0, align 1, !tbaa !89
  %3 = icmp eq i8 %2, 34
  br i1 %3, label %4, label %15

4:                                                ; preds = %1
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #31
  %6 = trunc i64 %5 to i32
  %7 = icmp sgt i32 %6, 1
  br i1 %7, label %8, label %15

8:                                                ; preds = %4
  %9 = add i64 %5, 4294967295
  %10 = and i64 %9, 4294967295
  %11 = getelementptr inbounds i8, ptr %0, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !89
  %13 = icmp eq i8 %12, 34
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  store i8 0, ptr %11, align 1, !tbaa !89
  br label %15

15:                                               ; preds = %4, %8, %1, %14
  %16 = phi i32 [ 1, %14 ], [ 0, %1 ], [ 0, %8 ], [ 0, %4 ]
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @rna_path_parse_collection_key(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !370 {
  %5 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5) #30
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !64
  %6 = load ptr, ptr %0, align 8, !tbaa !34
  %7 = load i8, ptr %6, align 1, !tbaa !89
  switch i8 %7, label %37 [
    i8 0, label %42
    i8 91, label %8
  ]

8:                                                ; preds = %4
  %9 = call fastcc ptr @rna_path_token(ptr noundef nonnull %0, ptr noundef nonnull %5, i32 noundef 1) #29
  %10 = icmp eq ptr %9, null
  br i1 %10, label %42, label %11

11:                                               ; preds = %8
  %12 = call fastcc i32 @rna_token_strip_quotes(ptr noundef nonnull %9) #29, !range !276
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds i8, ptr %9, i64 1
  %16 = call i32 @RNA_property_collection_lookup_string(ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %15, ptr noundef nonnull %3) #29
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %31, label %33

18:                                               ; preds = %11
  %19 = call i32 @atoi(ptr nocapture noundef nonnull %9) #31
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load i8, ptr %9, align 1, !tbaa !89
  %23 = icmp eq i8 %22, 48
  br i1 %23, label %24, label %42

24:                                               ; preds = %21
  %25 = getelementptr inbounds i8, ptr %9, i64 1
  %26 = load i8, ptr %25, align 1, !tbaa !89
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %24, %18
  %29 = call i32 @RNA_property_collection_lookup_int(ptr noundef nonnull %1, ptr noundef %2, i32 noundef %19, ptr noundef nonnull %3) #29
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28, %14
  %32 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  store ptr null, ptr %32, align 8, !tbaa !58
  br label %33

33:                                               ; preds = %31, %28, %14
  %34 = icmp eq ptr %9, %5
  br i1 %34, label %42, label %35

35:                                               ; preds = %33
  %36 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %36(ptr noundef nonnull %9) #28
  br label %42

37:                                               ; preds = %4
  %38 = tail call zeroext i8 @RNA_property_collection_type_get(ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3) #29, !range !70
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  store ptr null, ptr %41, align 8, !tbaa !58
  br label %42

42:                                               ; preds = %8, %24, %21, %37, %40, %33, %35, %4
  %43 = phi i8 [ 1, %4 ], [ 1, %35 ], [ 1, %33 ], [ 1, %40 ], [ 1, %37 ], [ 0, %21 ], [ 0, %24 ], [ 0, %8 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #30
  ret i8 %43
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @rna_path_parse_array_index(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 !PGOFuncName !371 {
  %5 = alloca [256 x i8], align 16
  %6 = alloca [3 x i32], align 4
  %7 = alloca [3 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5) #30
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #30
  %8 = call i32 @RNA_property_array_dimension(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %7) #29
  store i32 -1, ptr %3, align 4, !tbaa !96
  %9 = load ptr, ptr %0, align 8, !tbaa !34
  %10 = load i8, ptr %9, align 1, !tbaa !89
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %91, label %12

12:                                               ; preds = %4
  %13 = icmp sgt i32 %8, 0
  br i1 %13, label %14, label %91

14:                                               ; preds = %12
  %15 = icmp eq i32 %8, 1
  %16 = zext nneg i32 %8 to i64
  br label %17

17:                                               ; preds = %14, %65
  %18 = phi i64 [ 0, %14 ], [ %67, %65 ]
  %19 = load ptr, ptr %0, align 8, !tbaa !34
  %20 = load i8, ptr %19, align 1, !tbaa !89
  %21 = icmp eq i8 %20, 91
  br i1 %21, label %22, label %44

22:                                               ; preds = %17
  %23 = call fastcc ptr @rna_path_token(ptr noundef nonnull %0, ptr noundef nonnull %5, i32 noundef 1) #29
  %24 = icmp eq ptr %23, null
  br i1 %24, label %91, label %25

25:                                               ; preds = %22
  %26 = call fastcc i32 @rna_token_strip_quotes(ptr noundef nonnull %23) #29, !range !276
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds i8, ptr %23, i64 1
  br label %48

30:                                               ; preds = %25
  %31 = call i32 @atoi(ptr nocapture noundef nonnull %23) #31
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %53

33:                                               ; preds = %30
  %34 = load i8, ptr %23, align 1, !tbaa !89
  %35 = icmp eq i8 %34, 48
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = getelementptr inbounds i8, ptr %23, i64 1
  %38 = load i8, ptr %37, align 1, !tbaa !89
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %53, label %40

40:                                               ; preds = %36, %33
  %41 = icmp eq ptr %23, %5
  br i1 %41, label %91, label %42

42:                                               ; preds = %40
  %43 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %43(ptr noundef nonnull %23) #28
  br label %91

44:                                               ; preds = %17
  br i1 %15, label %45, label %91

45:                                               ; preds = %44
  %46 = call fastcc ptr @rna_path_token(ptr noundef nonnull %0, ptr noundef nonnull %5, i32 noundef 0) #29
  %47 = icmp eq ptr %46, null
  br i1 %47, label %91, label %48

48:                                               ; preds = %45, %28
  %49 = phi ptr [ %29, %28 ], [ %46, %45 ]
  %50 = phi ptr [ %23, %28 ], [ %46, %45 ]
  %51 = load i8, ptr %49, align 1, !tbaa !89
  %52 = call i32 @RNA_property_array_item_index(ptr noundef %2, i8 noundef zeroext %51) #29, !range !372
  br label %53

53:                                               ; preds = %48, %30, %36
  %54 = phi i32 [ 0, %36 ], [ %31, %30 ], [ %52, %48 ]
  %55 = phi ptr [ %23, %36 ], [ %23, %30 ], [ %50, %48 ]
  %56 = icmp eq ptr %55, %5
  br i1 %56, label %59, label %57

57:                                               ; preds = %53
  %58 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %58(ptr noundef nonnull %55) #28
  br label %59

59:                                               ; preds = %57, %53
  %60 = icmp slt i32 %54, 0
  br i1 %60, label %91, label %61

61:                                               ; preds = %59
  %62 = getelementptr inbounds [3 x i32], ptr %7, i64 0, i64 %18
  %63 = load i32, ptr %62, align 4, !tbaa !96
  %64 = icmp slt i32 %54, %63
  br i1 %64, label %65, label %91

65:                                               ; preds = %61
  %66 = getelementptr inbounds [3 x i32], ptr %6, i64 0, i64 %18
  store i32 %54, ptr %66, align 4, !tbaa !96
  %67 = add nuw nsw i64 %18, 1
  %68 = icmp eq i64 %67, %16
  br i1 %68, label %69, label %17, !llvm.loop !373

69:                                               ; preds = %65
  %70 = load ptr, ptr %0, align 8, !tbaa !34
  %71 = load i8, ptr %70, align 1, !tbaa !89
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %91

73:                                               ; preds = %69
  br i1 %13, label %74, label %89

74:                                               ; preds = %73
  %75 = zext nneg i32 %8 to i64
  br label %76

76:                                               ; preds = %74, %76
  %77 = phi i64 [ %75, %74 ], [ %80, %76 ]
  %78 = phi i32 [ 0, %74 ], [ %84, %76 ]
  %79 = phi i32 [ 1, %74 ], [ %87, %76 ]
  %80 = add nsw i64 %77, -1
  %81 = getelementptr inbounds [3 x i32], ptr %6, i64 0, i64 %80
  %82 = load i32, ptr %81, align 4, !tbaa !96
  %83 = mul nsw i32 %82, %79
  %84 = add nsw i32 %83, %78
  %85 = getelementptr inbounds [3 x i32], ptr %7, i64 0, i64 %80
  %86 = load i32, ptr %85, align 4, !tbaa !96
  %87 = mul nsw i32 %86, %79
  %88 = icmp ugt i64 %77, 1
  br i1 %88, label %76, label %89, !llvm.loop !374

89:                                               ; preds = %76, %73
  %90 = phi i32 [ 0, %73 ], [ %84, %76 ]
  store i32 %90, ptr %3, align 4, !tbaa !96
  br label %91

91:                                               ; preds = %44, %22, %45, %61, %59, %12, %69, %42, %40, %4, %89
  %92 = phi i8 [ 1, %89 ], [ 1, %4 ], [ 0, %40 ], [ 0, %42 ], [ 0, %69 ], [ 0, %12 ], [ 0, %59 ], [ 0, %61 ], [ 0, %45 ], [ 0, %22 ], [ 0, %44 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #30
  ret i8 %92
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #25

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @rna_idp_path(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !375 {
  %5 = alloca %struct.IDP_Chain, align 8
  %6 = alloca %struct.PointerRNA, align 8
  %7 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #30
  store ptr %3, ptr %5, align 8, !tbaa !376
  %8 = getelementptr inbounds %struct.IDP_Chain, ptr %5, i64 0, i32 1
  store ptr null, ptr %8, align 8, !tbaa !378
  %9 = getelementptr inbounds %struct.IDP_Chain, ptr %5, i64 0, i32 2
  store i32 -1, ptr %9, align 8, !tbaa !379
  %10 = getelementptr inbounds %struct.IDProperty, ptr %1, i64 0, i32 7, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %78, label %13

13:                                               ; preds = %4, %75
  %14 = phi ptr [ %76, %75 ], [ %11, %4 ]
  %15 = icmp eq ptr %14, %2
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.IDProperty, ptr %2, i64 0, i32 5
  store ptr %17, ptr %8, align 8, !tbaa !378
  store i32 -1, ptr %9, align 8, !tbaa !379
  %18 = call fastcc ptr @rna_idp_path_create(ptr noundef nonnull %5) #29
  br label %78

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.IDProperty, ptr %14, i64 0, i32 2
  %21 = load i8, ptr %20, align 8, !tbaa !73
  switch i8 %21, label %75 [
    i8 6, label %22
    i8 9, label %33
  ]

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.IDProperty, ptr %14, i64 0, i32 5
  %24 = call ptr @RNA_struct_find_property(ptr noundef %0, ptr noundef nonnull %23) #29
  %25 = icmp eq ptr %24, null
  br i1 %25, label %75, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.PropertyRNA, ptr %24, i64 0, i32 9
  %28 = load i32, ptr %27, align 8, !tbaa !77
  %29 = icmp eq i32 %28, 5
  br i1 %29, label %30, label %75

30:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #30
  call void @RNA_property_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %6, ptr noundef %0, ptr noundef nonnull %24) #29
  store ptr %23, ptr %8, align 8, !tbaa !378
  store i32 -1, ptr %9, align 8, !tbaa !379
  %31 = call fastcc ptr @rna_idp_path(ptr noundef nonnull %6, ptr noundef nonnull %14, ptr noundef %2, ptr noundef nonnull %5) #29
  %32 = icmp eq ptr %31, null
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #30
  br i1 %32, label %75, label %78

33:                                               ; preds = %19
  %34 = getelementptr inbounds %struct.IDProperty, ptr %14, i64 0, i32 5
  %35 = call ptr @RNA_struct_find_property(ptr noundef %0, ptr noundef nonnull %34) #29
  %36 = icmp eq ptr %35, null
  br i1 %36, label %75, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.PropertyRNA, ptr %35, i64 0, i32 9
  %39 = load i32, ptr %38, align 8, !tbaa !77
  %40 = icmp eq i32 %39, 6
  br i1 %40, label %41, label %75

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.IDProperty, ptr %14, i64 0, i32 7
  %43 = load ptr, ptr %42, align 8, !tbaa !100
  %44 = icmp ule ptr %43, %2
  %45 = getelementptr inbounds %struct.IDProperty, ptr %14, i64 0, i32 8
  %46 = load i32, ptr %45, align 8, !tbaa !78
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.IDProperty, ptr %43, i64 %47
  %49 = icmp ugt ptr %48, %2
  %50 = select i1 %44, i1 %49, i1 false
  store ptr %34, ptr %8, align 8, !tbaa !378
  br i1 %50, label %51, label %58

51:                                               ; preds = %41
  %52 = ptrtoint ptr %2 to i64
  %53 = ptrtoint ptr %43 to i64
  %54 = sub i64 %52, %53
  %55 = lshr exact i64 %54, 7
  %56 = trunc i64 %55 to i32
  store i32 %56, ptr %9, align 8, !tbaa !379
  %57 = call fastcc ptr @rna_idp_path_create(ptr noundef nonnull %5) #29
  br label %78

58:                                               ; preds = %41
  %59 = getelementptr inbounds %struct.IDProperty, ptr %14, i64 0, i32 8
  %60 = icmp sgt i32 %46, 0
  br i1 %60, label %61, label %75

61:                                               ; preds = %58, %70
  %62 = phi i32 [ %71, %70 ], [ 0, %58 ]
  %63 = phi ptr [ %72, %70 ], [ %43, %58 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #30
  %64 = call i32 @RNA_property_collection_lookup_int(ptr noundef %0, ptr noundef nonnull %35, i32 noundef %62, ptr noundef nonnull %7) #29
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %61
  store i32 %62, ptr %9, align 8, !tbaa !379
  %67 = call fastcc ptr @rna_idp_path(ptr noundef nonnull %7, ptr noundef %63, ptr noundef %2, ptr noundef nonnull %5) #29
  %68 = icmp eq ptr %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %66
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #30
  br label %78

70:                                               ; preds = %66, %61
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #30
  %71 = add nuw nsw i32 %62, 1
  %72 = getelementptr inbounds %struct.IDProperty, ptr %63, i64 1
  %73 = load i32, ptr %59, align 8, !tbaa !78
  %74 = icmp slt i32 %71, %73
  br i1 %74, label %61, label %75, !llvm.loop !380

75:                                               ; preds = %70, %58, %33, %37, %30, %22, %26, %19
  %76 = load ptr, ptr %14, align 8, !tbaa !34
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %13, !llvm.loop !381

78:                                               ; preds = %75, %30, %4, %69, %51, %16
  %79 = phi ptr [ %18, %16 ], [ %57, %51 ], [ %67, %69 ], [ null, %4 ], [ null, %75 ], [ %31, %30 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #30
  ret ptr %79
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @rna_idp_path_create(ptr noundef %0) unnamed_addr #0 !PGOFuncName !382 {
  %2 = tail call ptr @BLI_dynstr_new() #28
  %3 = icmp eq ptr %0, null
  br i1 %3, label %23, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %6, %4 ], [ null, %1 ]
  %6 = phi ptr [ %7, %4 ], [ %0, %1 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !376
  store ptr %5, ptr %6, align 8, !tbaa !376
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %4, !llvm.loop !383

9:                                                ; preds = %4, %20
  %10 = phi ptr [ %21, %20 ], [ %6, %4 ]
  %11 = phi ptr [ @.str.84, %20 ], [ @.str.38, %4 ]
  %12 = phi ptr [ @.str.85, %20 ], [ @.str.37, %4 ]
  %13 = getelementptr inbounds %struct.IDP_Chain, ptr %10, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !379
  %15 = icmp sgt i32 %14, -1
  %16 = getelementptr inbounds %struct.IDP_Chain, ptr %10, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !378
  br i1 %15, label %18, label %19

18:                                               ; preds = %9
  tail call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %2, ptr noundef nonnull %11, ptr noundef %17, i32 noundef %14) #28
  br label %20

19:                                               ; preds = %9
  tail call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %2, ptr noundef nonnull %12, ptr noundef %17) #28
  br label %20

20:                                               ; preds = %19, %18
  %21 = load ptr, ptr %10, align 8, !tbaa !376
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %9, !llvm.loop !384

23:                                               ; preds = %20, %1
  %24 = tail call ptr @BLI_dynstr_get_cstring(ptr noundef %2) #28
  tail call void @BLI_dynstr_free(ptr noundef %2) #28
  %25 = load i8, ptr %24, align 1, !tbaa !89
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %28(ptr noundef nonnull %24) #28
  br label %29

29:                                               ; preds = %27, %23
  %30 = phi ptr [ null, %27 ], [ %24, %23 ]
  ret ptr %30
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #26

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #27

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree noinline nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #22 = { nofree noinline nounwind optsize memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree noinline nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { nofree nounwind willreturn memory(argmem: read) }
attributes #28 = { nounwind optsize }
attributes #29 = { optsize }
attributes #30 = { nounwind }
attributes #31 = { nounwind optsize willreturn memory(read) }
attributes #32 = { cold optsize }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !35, i64 16}
!39 = !{!"StructRNA", !40, i64 0, !35, i64 40, !35, i64 48, !35, i64 56, !42, i64 64, !35, i64 72, !35, i64 80, !35, i64 88, !42, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !35, i64 152, !35, i64 160, !35, i64 168, !35, i64 176, !41, i64 184}
!40 = !{!"ContainerRNA", !35, i64 0, !35, i64 8, !35, i64 16, !41, i64 24}
!41 = !{!"ListBase", !35, i64 0, !35, i64 8}
!42 = !{!"int", !36, i64 0}
!43 = !{!44, !42, i64 32}
!44 = !{!"PropertyRNA", !35, i64 0, !35, i64 8, !42, i64 16, !35, i64 24, !42, i64 32, !35, i64 40, !35, i64 48, !42, i64 56, !35, i64 64, !42, i64 72, !42, i64 76, !35, i64 80, !42, i64 88, !36, i64 92, !42, i64 104, !35, i64 112, !42, i64 120, !35, i64 128, !35, i64 136, !42, i64 144, !42, i64 148, !35, i64 152, !35, i64 160}
!45 = !{!44, !35, i64 24}
!46 = distinct !{!46, !47}
!47 = !{!"llvm.loop.mustprogress"}
!48 = distinct !{!48, !47}
!49 = distinct !{!49, !47}
!50 = !{!41, !35, i64 0}
!51 = !{!52, !35, i64 0}
!52 = !{!"tRnaUpdateCacheElem", !35, i64 0, !35, i64 8, !53, i64 16, !41, i64 40}
!53 = !{!"PointerRNA", !54, i64 0, !35, i64 8, !35, i64 16}
!54 = !{!"", !35, i64 0}
!55 = distinct !{!55, !47}
!56 = !{!53, !35, i64 0}
!57 = !{!53, !35, i64 8}
!58 = !{!53, !35, i64 16}
!59 = !{!39, !35, i64 136}
!60 = distinct !{!60, !47}
!61 = distinct !{!61, !47}
!62 = !{!"rna_access.c:rna_pointer_inherit_id"}
!63 = !{!39, !42, i64 64}
!64 = !{i64 0, i64 8, !34, i64 8, i64 8, !34, i64 16, i64 8, !34}
!65 = !{!39, !35, i64 120}
!66 = !{i64 0, i64 8, !34, i64 8, i64 8, !34}
!67 = !{i64 0, i64 8, !34}
!68 = distinct !{!68, !47}
!69 = !{!39, !35, i64 176}
!70 = !{i8 0, i8 2}
!71 = !{!"rna_access.c:rna_idproperty_find"}
!72 = !{!"rna_access.c:rna_idproperty_verify_valid"}
!73 = !{!74, !36, i64 16}
!74 = !{!"IDProperty", !35, i64 0, !35, i64 8, !36, i64 16, !36, i64 17, !75, i64 18, !36, i64 20, !42, i64 84, !76, i64 88, !42, i64 120, !42, i64 124}
!75 = !{!"short", !36, i64 0}
!76 = !{!"IDPropertyData", !35, i64 0, !41, i64 8, !42, i64 24, !42, i64 28}
!77 = !{!44, !42, i64 72}
!78 = !{!74, !42, i64 120}
!79 = !{!74, !36, i64 17}
!80 = !{!39, !35, i64 40}
!81 = distinct !{!81, !47}
!82 = !{!39, !35, i64 72}
!83 = !{!39, !42, i64 96}
!84 = !{!39, !35, i64 80}
!85 = !{!39, !35, i64 88}
!86 = !{!39, !35, i64 104}
!87 = !{!39, !35, i64 112}
!88 = distinct !{!88, !47}
!89 = !{!36, !36, i64 0}
!90 = !{!91, !35, i64 216}
!91 = !{!"CollectionPropertyRNA", !44, i64 0, !35, i64 168, !35, i64 176, !35, i64 184, !35, i64 192, !35, i64 200, !35, i64 208, !35, i64 216, !35, i64 224, !35, i64 232}
!92 = !{!93, !42, i64 128}
!93 = !{!"CollectionPropertyIterator", !53, i64 0, !53, i64 24, !35, i64 48, !36, i64 56, !42, i64 96, !42, i64 100, !53, i64 104, !42, i64 128}
!94 = !{!93, !35, i64 120}
!95 = !{!93, !35, i64 112}
!96 = !{!42, !42, i64 0}
!97 = distinct !{!97, !47}
!98 = distinct !{!98, !47}
!99 = !{!93, !35, i64 48}
!100 = !{!74, !35, i64 88}
!101 = !{!93, !42, i64 96}
!102 = !{!91, !35, i64 168}
!103 = !{!91, !35, i64 176}
!104 = !{!91, !35, i64 184}
!105 = distinct !{!105, !47}
!106 = !{!39, !35, i64 152}
!107 = !{!39, !35, i64 160}
!108 = distinct !{!108, !47}
!109 = !{!39, !35, i64 168}
!110 = distinct !{!110, !47}
!111 = !{!39, !35, i64 48}
!112 = !{!39, !35, i64 56}
!113 = !{!"rna_access.c:rna_ensure_property_identifier"}
!114 = !{!44, !42, i64 16}
!115 = !{!"rna_access.c:rna_ensure_property_description"}
!116 = !{!44, !35, i64 48}
!117 = !{!"rna_access.c:rna_ensure_property"}
!118 = !{!44, !42, i64 76}
!119 = !{!44, !35, i64 160}
!120 = !{!"rna_access.c:rna_ensure_property_array_length"}
!121 = !{!44, !35, i64 80}
!122 = !{!44, !42, i64 104}
!123 = !{!"rna_access.c:rna_ensure_property_array_check"}
!124 = !{!44, !42, i64 88}
!125 = !{!"rna_access.c:rna_ensure_property_multi_array_length"}
!126 = !{!74, !42, i64 112}
!127 = !{!128, !35, i64 200}
!128 = !{!"IntPropertyRNA", !44, i64 0, !35, i64 168, !35, i64 176, !35, i64 184, !35, i64 192, !35, i64 200, !35, i64 208, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !42, i64 248, !42, i64 252, !42, i64 256, !42, i64 260, !42, i64 264, !42, i64 268, !35, i64 272}
!129 = !{!128, !35, i64 240}
!130 = !{!128, !42, i64 256}
!131 = !{!128, !42, i64 260}
!132 = !{!"rna_access.c:rna_idproperty_ui"}
!133 = !{!74, !35, i64 8}
!134 = distinct !{!134, !47}
!135 = !{!74, !35, i64 0}
!136 = distinct !{!136, !47}
!137 = !{!128, !42, i64 248}
!138 = !{!128, !42, i64 252}
!139 = !{!"rna_access.c:max_ii"}
!140 = !{!"rna_access.c:min_ii"}
!141 = !{!142, !142, i64 0}
!142 = !{!"double", !36, i64 0}
!143 = !{!144, !144, i64 0}
!144 = !{!"float", !36, i64 0}
!145 = !{!146, !35, i64 200}
!146 = !{!"FloatPropertyRNA", !44, i64 0, !35, i64 168, !35, i64 176, !35, i64 184, !35, i64 192, !35, i64 200, !35, i64 208, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !144, i64 248, !144, i64 252, !144, i64 256, !144, i64 260, !144, i64 264, !42, i64 268, !144, i64 272, !35, i64 280}
!147 = !{!146, !35, i64 240}
!148 = !{!146, !144, i64 256}
!149 = !{!146, !144, i64 260}
!150 = !{!146, !144, i64 248}
!151 = !{!146, !144, i64 252}
!152 = !{!146, !144, i64 264}
!153 = !{!146, !42, i64 268}
!154 = !{!"rna_access.c:max_ff"}
!155 = !{!"rna_access.c:min_ff"}
!156 = !{!157, !42, i64 216}
!157 = !{!"StringPropertyRNA", !44, i64 0, !35, i64 168, !35, i64 176, !35, i64 184, !35, i64 192, !35, i64 200, !35, i64 208, !42, i64 216, !35, i64 224}
!158 = !{!159, !35, i64 184}
!159 = !{!"PointerPropertyRNA", !44, i64 0, !35, i64 168, !35, i64 176, !35, i64 184, !35, i64 192, !35, i64 200}
!160 = !{!159, !35, i64 200}
!161 = !{!91, !35, i64 232}
!162 = !{!159, !35, i64 192}
!163 = !{!164, !35, i64 184}
!164 = !{!"EnumPropertyRNA", !44, i64 0, !35, i64 168, !35, i64 176, !35, i64 184, !35, i64 192, !35, i64 200, !35, i64 208, !35, i64 216, !42, i64 224, !42, i64 228}
!165 = !{!166, !35, i64 8}
!166 = !{!"EnumPropertyItem", !42, i64 0, !35, i64 8, !42, i64 16, !35, i64 24, !35, i64 32}
!167 = distinct !{!167, !47}
!168 = !{!164, !35, i64 216}
!169 = !{!164, !42, i64 224}
!170 = distinct !{!170, !47}
!171 = !{!166, !35, i64 24}
!172 = distinct !{!172, !47}
!173 = !{!166, !42, i64 0}
!174 = distinct !{!174, !47}
!175 = distinct !{!175, !47}
!176 = distinct !{!176, !47}
!177 = !{!166, !35, i64 32}
!178 = !{!44, !35, i64 64}
!179 = !{!"rna_access.c:rna_ensure_property_name"}
!180 = !{!44, !35, i64 40}
!181 = !{!44, !42, i64 56}
!182 = !{!44, !35, i64 128}
!183 = !{!184, !35, i64 24}
!184 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !75, i64 98, !42, i64 100, !42, i64 104, !42, i64 108, !35, i64 112}
!185 = !{!44, !35, i64 136}
!186 = distinct !{!186, !47}
!187 = !{!44, !35, i64 112}
!188 = !{!44, !42, i64 120}
!189 = !{!"rna_access.c:rna_property_update"}
!190 = !{!52, !35, i64 16}
!191 = distinct !{!191, !47}
!192 = !{!193, !35, i64 16}
!193 = !{!"LinkData", !35, i64 0, !35, i64 8, !35, i64 16}
!194 = distinct !{!194, !47}
!195 = distinct !{!195, !47}
!196 = distinct !{!196, !47}
!197 = !{!198, !35, i64 168}
!198 = !{!"BoolPropertyRNA", !44, i64 0, !35, i64 168, !35, i64 176, !35, i64 184, !35, i64 192, !35, i64 200, !35, i64 208, !35, i64 216, !35, i64 224, !42, i64 232, !35, i64 240}
!199 = !{!198, !35, i64 200}
!200 = !{!198, !42, i64 232}
!201 = !{!198, !35, i64 176}
!202 = !{!198, !35, i64 208}
!203 = !{!"rna_access.c:rna_idproperty_touch"}
!204 = !{!74, !75, i64 18}
!205 = !{!198, !35, i64 184}
!206 = !{!198, !35, i64 216}
!207 = !{!198, !35, i64 240}
!208 = !{!198, !35, i64 192}
!209 = !{!198, !35, i64 224}
!210 = !{!128, !35, i64 168}
!211 = !{!128, !35, i64 208}
!212 = !{!128, !42, i64 268}
!213 = !{!128, !35, i64 176}
!214 = !{!128, !35, i64 216}
!215 = !{i32 -1, i32 2}
!216 = !{!128, !35, i64 184}
!217 = !{!128, !35, i64 224}
!218 = !{!128, !35, i64 272}
!219 = distinct !{!219, !47}
!220 = !{!128, !35, i64 192}
!221 = !{!128, !35, i64 232}
!222 = !{!146, !35, i64 168}
!223 = !{!146, !35, i64 208}
!224 = !{!146, !144, i64 272}
!225 = !{!146, !35, i64 176}
!226 = !{!146, !35, i64 216}
!227 = distinct !{!227, !47}
!228 = !{!146, !35, i64 184}
!229 = !{!146, !35, i64 224}
!230 = !{!146, !35, i64 280}
!231 = distinct !{!231, !47}
!232 = distinct !{!232, !47}
!233 = !{!146, !35, i64 192}
!234 = !{!146, !35, i64 232}
!235 = !{!157, !35, i64 168}
!236 = !{!157, !35, i64 192}
!237 = !{!157, !35, i64 224}
!238 = !{!157, !35, i64 176}
!239 = !{!157, !35, i64 200}
!240 = !{!157, !35, i64 184}
!241 = !{!157, !35, i64 208}
!242 = !{!164, !35, i64 168}
!243 = !{!164, !35, i64 192}
!244 = !{!164, !42, i64 228}
!245 = !{!164, !35, i64 176}
!246 = !{!164, !35, i64 200}
!247 = !{!164, !35, i64 208}
!248 = !{!159, !35, i64 168}
!249 = !{!159, !35, i64 176}
!250 = !{!251, !35, i64 0}
!251 = !{!"ArrayIterator", !35, i64 0, !35, i64 8, !35, i64 16, !42, i64 24, !42, i64 28, !35, i64 32}
!252 = !{!251, !35, i64 16}
!253 = !{!251, !35, i64 8}
!254 = !{!251, !42, i64 24}
!255 = !{!251, !35, i64 32}
!256 = !{!251, !42, i64 28}
!257 = !{!"rna_access.c:rna_property_collection_get_idp"}
!258 = distinct !{!258, !47}
!259 = !{!91, !42, i64 32}
!260 = distinct !{!260, !47}
!261 = !{!91, !35, i64 200}
!262 = distinct !{!262, !47}
!263 = distinct !{!263, !47}
!264 = !{!91, !35, i64 208}
!265 = distinct !{!265, !47}
!266 = !{!91, !35, i64 224}
!267 = !{!44, !35, i64 152}
!268 = !{!44, !42, i64 144}
!269 = !{!270, !35, i64 0}
!270 = !{!"RawArray", !35, i64 0, !42, i64 8, !42, i64 12, !42, i64 16}
!271 = !{!270, !42, i64 16}
!272 = !{!270, !42, i64 12}
!273 = !{!44, !42, i64 148}
!274 = !{!270, !42, i64 8}
!275 = !{!"rna_access.c:rna_raw_access"}
!276 = !{i32 0, i32 2}
!277 = !{i32 0, i32 9}
!278 = distinct !{!278, !47}
!279 = !{!75, !75, i64 0}
!280 = distinct !{!280, !47}
!281 = distinct !{!281, !47}
!282 = distinct !{!282, !47}
!283 = distinct !{!283, !47}
!284 = distinct !{!284, !47}
!285 = distinct !{!285, !47}
!286 = distinct !{!286, !47}
!287 = !{!288, !35, i64 0}
!288 = !{!"ListBaseIterator", !35, i64 0, !42, i64 8, !35, i64 16}
!289 = !{!288, !35, i64 16}
!290 = !{!291, !35, i64 0}
!291 = !{!"Link", !35, i64 0, !35, i64 8}
!292 = distinct !{!292, !47}
!293 = !{!"rna_access.c:rna_path_parse"}
!294 = !{!295, !35, i64 40}
!295 = !{!"PropertyElemRNA", !35, i64 0, !35, i64 8, !53, i64 16, !35, i64 40, !42, i64 48}
!296 = !{!295, !42, i64 48}
!297 = distinct !{!297, !47}
!298 = !{!295, !35, i64 32}
!299 = distinct !{!299, !47}
!300 = !{!"rna_access.c:rna_path_token"}
!301 = distinct !{!301, !47}
!302 = distinct !{!302, !47}
!303 = distinct !{!303, !47}
!304 = distinct !{!304, !47}
!305 = !{!39, !35, i64 144}
!306 = !{!39, !35, i64 128}
!307 = !{!"rna_access.c:RNA_struct_find_nested"}
!308 = distinct !{!308, !47}
!309 = !{!"rna_access.c:rna_path_from_ID_to_idpgroup"}
!310 = !{!41, !35, i64 8}
!311 = !{!295, !35, i64 24}
!312 = !{!295, !35, i64 8}
!313 = distinct !{!313, !47}
!314 = !{!166, !42, i64 16}
!315 = !{!"rna_access.c:rna_idproperty_free"}
!316 = distinct !{!316, !47}
!317 = distinct !{!317, !47}
!318 = distinct !{!318, !47}
!319 = distinct !{!319, !47}
!320 = distinct !{!320, !47}
!321 = distinct !{!321, !47}
!322 = !{!"rna_access.c:rna_pointer_as_string__bldata"}
!323 = distinct !{!323, !47}
!324 = !{!"rna_access.c:bool_as_py_string"}
!325 = !{!326, !35, i64 40}
!326 = !{!"FunctionRNA", !40, i64 0, !35, i64 40, !42, i64 48, !35, i64 56, !35, i64 64, !35, i64 72}
!327 = !{!326, !35, i64 56}
!328 = !{!326, !42, i64 48}
!329 = !{!326, !35, i64 64}
!330 = distinct !{!330, !47}
!331 = !{!332, !42, i64 20}
!332 = !{!"ParameterList", !35, i64 0, !35, i64 8, !42, i64 16, !42, i64 20, !42, i64 24}
!333 = !{!332, !42, i64 24}
!334 = distinct !{!334, !47}
!335 = !{!332, !35, i64 0}
!336 = !{!332, !35, i64 8}
!337 = !{!332, !42, i64 16}
!338 = distinct !{!338, !47}
!339 = !{!340, !35, i64 8}
!340 = !{!"ParameterDynAlloc", !341, i64 0, !35, i64 8}
!341 = !{!"long", !36, i64 0}
!342 = distinct !{!342, !47}
!343 = !{!344, !35, i64 0}
!344 = !{!"ParameterIterator", !35, i64 0, !35, i64 8, !42, i64 16, !42, i64 20, !35, i64 24, !42, i64 32}
!345 = !{!326, !35, i64 24}
!346 = !{!344, !35, i64 24}
!347 = !{!344, !42, i64 32}
!348 = !{!344, !42, i64 20}
!349 = !{!344, !42, i64 16}
!350 = !{!344, !35, i64 8}
!351 = !{!44, !35, i64 0}
!352 = distinct !{!352, !47}
!353 = distinct !{!353, !47}
!354 = distinct !{!354, !47}
!355 = !{!340, !341, i64 0}
!356 = distinct !{!356, !47}
!357 = distinct !{!357, !47}
!358 = distinct !{!358, !47}
!359 = !{i32 -1, i32 1}
!360 = !{!326, !35, i64 72}
!361 = distinct !{!361, !47}
!362 = !{!"rna_access.c:rna_function_format_array_length"}
!363 = distinct !{!363, !47}
!364 = !{!"rna_access.c:rna_function_parameter_parse"}
!365 = distinct !{!365, !47}
!366 = distinct !{!366, !47}
!367 = !{!"rna_access.c:rna_property_array_length_all_dimensions"}
!368 = distinct !{!368, !47}
!369 = !{!"rna_access.c:rna_token_strip_quotes"}
!370 = !{!"rna_access.c:rna_path_parse_collection_key"}
!371 = !{!"rna_access.c:rna_path_parse_array_index"}
!372 = !{i32 -1, i32 4}
!373 = distinct !{!373, !47}
!374 = distinct !{!374, !47}
!375 = !{!"rna_access.c:rna_idp_path"}
!376 = !{!377, !35, i64 0}
!377 = !{!"IDP_Chain", !35, i64 0, !35, i64 8, !42, i64 16}
!378 = !{!377, !35, i64 8}
!379 = !{!377, !42, i64 16}
!380 = distinct !{!380, !47}
!381 = distinct !{!381, !47}
!382 = !{!"rna_access.c:rna_idp_path_create"}
!383 = distinct !{!383, !47}
!384 = distinct !{!384, !47}
