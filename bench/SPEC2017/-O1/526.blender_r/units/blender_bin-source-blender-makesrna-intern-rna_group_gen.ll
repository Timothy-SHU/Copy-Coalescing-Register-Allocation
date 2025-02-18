; ModuleID = 'blender_bin/source/blender/makesrna/intern/rna_group_gen.c'
source_filename = "blender_bin/source/blender/makesrna/intern/rna_group_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.CollectionPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.PropertyRNA = type { ptr, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, i32, ptr, i32, [3 x i32], i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr }
%struct.BoolPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.FloatPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, float, float, float, float, i32, float, ptr }
%struct.StructRNA = type { %struct.ContainerRNA, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase }
%struct.ContainerRNA = type { ptr, ptr, ptr, %struct.ListBase }
%struct.ListBase = type { ptr, ptr }
%struct.StringPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.PointerPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr }
%struct.FunctionRNA = type { %struct.ContainerRNA, ptr, i32, ptr, ptr, ptr }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.Group = type { %struct.ID, %struct.ListBase, i32, [3 x float] }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.CollectionPropertyIterator = type { %struct.PointerRNA, %struct.PointerRNA, ptr, %union.anon, i32, i32, %struct.PointerRNA, i32 }
%union.anon = type { %struct.ArrayIterator }
%struct.ArrayIterator = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.GroupObject = type { ptr, ptr, ptr, ptr, i16, [6 x i8] }

@rna_Group_objects = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_Group_layers, i32 -1, ptr @.str.8, i32 0, ptr @.str.9, ptr @.str.10, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr @RNA_GroupObjects, ptr null }, ptr @Group_objects_begin, ptr @Group_objects_next, ptr @Group_objects_end, ptr @Group_objects_get, ptr null, ptr @Group_objects_lookup_int, ptr @Group_objects_lookup_string, ptr null, ptr @RNA_Object }, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [12 x i8] c"name string\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@rna_GroupObjects_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_GroupObjects_rna_type, ptr null, i32 -1, ptr @.str.13, i32 128, ptr @.str.14, ptr @.str.15, i32 0, ptr @.str.4, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @GroupObjects_rna_properties_begin, ptr @GroupObjects_rna_properties_next, ptr @GroupObjects_rna_properties_end, ptr @GroupObjects_rna_properties_get, ptr null, ptr null, ptr @GroupObjects_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_Group_layers = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Group_objects, ptr @rna_Group_dupli_offset, i32 -1, ptr @.str.5, i32 3, ptr @.str.6, ptr @.str.7, i32 0, ptr @.str.4, i32 0, i32 40, ptr null, i32 1, [3 x i32] [i32 20, i32 0, i32 0], i32 20, ptr null, i32 85393408, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr @Group_layers_get, ptr @Group_layers_set, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @rna_Group_layers_default }, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"dupli_offset\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Dupli Offset\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"Offset from the origin to use when instancing as DupliGroup\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@rna_Group_dupli_offset_default = internal global [3 x float] zeroinitializer, align 4
@rna_Group_dupli_offset = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Group_layers, ptr null, i32 -1, ptr @.str.1, i32 8195, ptr @.str.2, ptr @.str.3, i32 0, ptr @.str.4, i32 2, i32 65557, ptr null, i32 1, [3 x i32] [i32 3, i32 0, i32 0], i32 3, ptr null, i32 85393408, ptr null, ptr null, i32 140, i32 4, ptr null, ptr null }, ptr null, ptr null, ptr @Group_dupli_offset_get, ptr @Group_dupli_offset_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 5, float 0.000000e+00, ptr @rna_Group_dupli_offset_default }, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"layers\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"Dupli Layers\00", align 1
@.str.7 = private unnamed_addr constant [55 x i8] c"Layers visible when this group is instanced as a dupli\00", align 1
@rna_Group_layers_default = internal global [20 x i32] zeroinitializer, align 16
@.str.8 = private unnamed_addr constant [8 x i8] c"objects\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"Objects\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"A collection of this groups objects\00", align 1
@RNA_GroupObjects = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_RenderSlot, ptr @RNA_Group, ptr null, %struct.ListBase { ptr @rna_GroupObjects_rna_properties, ptr @rna_GroupObjects_rna_type } }, ptr @.str.27, ptr null, ptr null, i32 4, ptr @.str.28, ptr @.str.29, ptr @.str.4, i32 17, ptr null, ptr @rna_GroupObjects_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_GroupObjects_link_func, ptr @rna_GroupObjects_unlink_func } }, align 8
@RNA_Object = external global %struct.StructRNA, align 8
@RNA_GPencilStrokePoint = external global %struct.StructRNA, align 8
@.str.11 = private unnamed_addr constant [6 x i8] c"Group\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"Group of Object datablocks\00", align 1
@rna_ID_name = external global %struct.StringPropertyRNA, align 8
@rna_ID_rna_properties = external global %struct.CollectionPropertyRNA, align 8
@RNA_ID = external global %struct.StructRNA, align 8
@RNA_Group = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_GroupObjects, ptr @RNA_GPencilStrokePoint, ptr null, %struct.ListBase { ptr @rna_Group_dupli_offset, ptr @rna_Group_objects } }, ptr @.str.11, ptr null, ptr null, i32 5, ptr @.str.11, ptr @.str.12, ptr @.str.4, i32 171, ptr @rna_ID_name, ptr @rna_ID_rna_properties, ptr @RNA_ID, ptr null, ptr @rna_ID_refine, ptr null, ptr null, ptr null, ptr null, ptr @rna_ID_idprops, %struct.ListBase zeroinitializer }, align 8
@rna_GroupObjects_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_GroupObjects_rna_properties, i32 -1, ptr @.str.16, i32 8912896, ptr @.str.17, ptr @.str.18, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @GroupObjects_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@.str.13 = private unnamed_addr constant [15 x i8] c"rna_properties\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"Properties\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"RNA property collection\00", align 1
@RNA_Property = external global %struct.StructRNA, align 8
@.str.16 = private unnamed_addr constant [9 x i8] c"rna_type\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"RNA\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"RNA type definition\00", align 1
@RNA_Struct = external global %struct.StructRNA, align 8
@.str.19 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@.str.20 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"Object to add\00", align 1
@rna_GroupObjects_link_object = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.19, i32 8650756, ptr @.str.20, ptr @.str.21, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Object }, align 8
@rna_GroupObjects_unlink_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr @rna_GroupObjects_link_func, ptr null, %struct.ListBase { ptr @rna_GroupObjects_unlink_object, ptr @rna_GroupObjects_unlink_object } }, ptr @.str.25, i32 24, ptr @.str.26, ptr @GroupObjects_unlink_call, ptr null }, align 8
@.str.22 = private unnamed_addr constant [5 x i8] c"link\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"Add this object to a group\00", align 1
@rna_GroupObjects_link_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_GroupObjects_unlink_func, ptr null, ptr null, %struct.ListBase { ptr @rna_GroupObjects_link_object, ptr @rna_GroupObjects_link_object } }, ptr @.str.22, i32 24, ptr @.str.23, ptr @GroupObjects_link_call, ptr null }, align 8
@.str.24 = private unnamed_addr constant [17 x i8] c"Object to remove\00", align 1
@rna_GroupObjects_unlink_object = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.19, i32 8388612, ptr @.str.20, ptr @.str.24, i32 0, ptr @.str.4, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Object }, align 8
@.str.25 = private unnamed_addr constant [7 x i8] c"unlink\00", align 1
@.str.26 = private unnamed_addr constant [30 x i8] c"Remove this object to a group\00", align 1
@RNA_RenderSlot = external global %struct.StructRNA, align 8
@.str.27 = private unnamed_addr constant [13 x i8] c"GroupObjects\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"Group Objects\00", align 1
@.str.29 = private unnamed_addr constant [28 x i8] c"Collection of group objects\00", align 1
@.str.30 = private unnamed_addr constant [34 x i8] c"Object '%s' already in group '%s'\00", align 1
@.str.31 = private unnamed_addr constant [30 x i8] c"Object '%s' not in group '%s'\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Group_dupli_offset_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Group, ptr %4, i64 0, i32 3
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %5, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !40
  %10 = getelementptr inbounds float, ptr %1, i64 %7
  store float %9, ptr %10, align 4, !tbaa !40
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !42

13:                                               ; preds = %6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Group_dupli_offset_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Group, ptr %4, i64 0, i32 3
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds float, ptr %1, i64 %7
  %9 = load float, ptr %8, align 4, !tbaa !40
  %10 = getelementptr inbounds float, ptr %5, i64 %7
  store float %9, ptr %10, align 4, !tbaa !40
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 3
  br i1 %12, label %13, label %6, !llvm.loop !45

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Group_layers_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Group, ptr %4, i64 0, i32 2
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %13, %6 ]
  %8 = load i32, ptr %5, align 8, !tbaa !46
  %9 = trunc i64 %7 to i32
  %10 = lshr i32 %8, %9
  %11 = and i32 %10, 1
  %12 = getelementptr inbounds i32, ptr %1, i64 %7
  store i32 %11, ptr %12, align 4, !tbaa !52
  %13 = add nuw nsw i64 %7, 1
  %14 = icmp eq i64 %13, 20
  br i1 %14, label %15, label %6, !llvm.loop !53

15:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Group_layers_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Group, ptr %4, i64 0, i32 2
  %6 = getelementptr inbounds %struct.Group, ptr %4, i64 0, i32 2
  br label %7

7:                                                ; preds = %2, %21
  %8 = phi i64 [ 0, %2 ], [ %22, %21 ]
  %9 = getelementptr inbounds i32, ptr %1, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !52
  %11 = icmp eq i32 %10, 0
  %12 = trunc i64 %8 to i32
  %13 = shl nuw nsw i32 1, %12
  br i1 %11, label %17, label %14

14:                                               ; preds = %7
  %15 = load i32, ptr %5, align 8, !tbaa !46
  %16 = or i32 %15, %13
  store i32 %16, ptr %5, align 8, !tbaa !46
  br label %21

17:                                               ; preds = %7
  %18 = xor i32 %13, -1
  %19 = load i32, ptr %6, align 8, !tbaa !46
  %20 = and i32 %19, %18
  store i32 %20, ptr %6, align 8, !tbaa !46
  br label %21

21:                                               ; preds = %14, %17
  %22 = add nuw nsw i64 %8, 1
  %23 = icmp eq i64 %22, 20
  br i1 %23, label %24, label %7, !llvm.loop !54

24:                                               ; preds = %21
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Group_objects_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #4 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !55
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_Group_objects, ptr %6, align 8, !tbaa !57
  %7 = getelementptr inbounds %struct.Group, ptr %5, i64 0, i32 1
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %7, ptr noundef null) #9
  %8 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !59
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #9
  %13 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !60, !noalias !62
  %15 = getelementptr inbounds %struct.GroupObject, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !67, !noalias !62
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @RNA_Object, ptr noundef %16) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !55
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #9
  br label %17

17:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

declare void @rna_iterator_listbase_begin(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal void @Group_objects_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #4 {
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !60, !noalias !69
  %5 = getelementptr inbounds %struct.GroupObject, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !67, !noalias !69
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %6) #9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Group_objects_next(ptr noundef %0) #4 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #9
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !59
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #9
  %8 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !60, !noalias !72
  %10 = getelementptr inbounds %struct.GroupObject, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !67, !noalias !72
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @RNA_Object, ptr noundef %11) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !55
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #9
  br label %12

12:                                               ; preds = %6, %1
  ret void
}

declare void @rna_iterator_listbase_next(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @Group_objects_end(ptr noundef %0) #4 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #9
  ret void
}

declare void @rna_iterator_listbase_end(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @Group_objects_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.CollectionPropertyIterator, align 8
  %6 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %5) #9
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = getelementptr inbounds i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %9, i8 0, i64 112, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !55
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 2
  store ptr @rna_Group_objects, ptr %10, align 8, !tbaa !57
  %11 = getelementptr inbounds %struct.Group, ptr %8, i64 0, i32 1
  call void @rna_iterator_listbase_begin(ptr noundef nonnull %5, ptr noundef nonnull %11, ptr noundef null) #9
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !59
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #9
  %17 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !60, !noalias !77
  %19 = getelementptr inbounds %struct.GroupObject, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !67, !noalias !77
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef nonnull %5, ptr noundef nonnull @RNA_Object, ptr noundef %20) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !55
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #9
  br label %21

21:                                               ; preds = %3, %15
  %22 = load i32, ptr %12, align 8, !tbaa !59
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %69, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3
  %26 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %5, i64 0, i32 3, i32 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !82
  %28 = icmp eq ptr %27, null
  %29 = icmp sgt i32 %1, 0
  br i1 %28, label %34, label %30

30:                                               ; preds = %24
  %31 = load i32, ptr %12, align 8
  %32 = icmp ne i32 %31, 0
  %33 = select i1 %29, i1 %32, i1 false
  br i1 %33, label %37, label %44

34:                                               ; preds = %24
  br i1 %29, label %35, label %57

35:                                               ; preds = %34
  %36 = load ptr, ptr %25, align 8, !tbaa !60
  br label %49

37:                                               ; preds = %30, %37
  %38 = phi i32 [ %39, %37 ], [ %1, %30 ]
  %39 = add nsw i32 %38, -1
  call void @rna_iterator_listbase_next(ptr noundef nonnull %5) #9
  %40 = icmp sgt i32 %38, 1
  %41 = load i32, ptr %12, align 8
  %42 = icmp ne i32 %41, 0
  %43 = select i1 %40, i1 %42, i1 false
  br i1 %43, label %37, label %44, !llvm.loop !83

44:                                               ; preds = %37, %30
  %45 = phi i32 [ %1, %30 ], [ %39, %37 ]
  %46 = phi i1 [ %32, %30 ], [ %42, %37 ]
  %47 = icmp eq i32 %45, 0
  %48 = select i1 %47, i1 %46, i1 false
  br label %63

49:                                               ; preds = %35, %53
  %50 = phi i32 [ %54, %53 ], [ %1, %35 ]
  %51 = phi ptr [ %55, %53 ], [ %36, %35 ]
  %52 = icmp eq ptr %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = add nsw i32 %50, -1
  %55 = load ptr, ptr %51, align 8, !tbaa !84
  store ptr %55, ptr %25, align 8, !tbaa !60
  %56 = icmp sgt i32 %50, 1
  br i1 %56, label %49, label %57, !llvm.loop !86

57:                                               ; preds = %49, %53, %34
  %58 = phi i32 [ %1, %34 ], [ %50, %49 ], [ 0, %53 ]
  %59 = icmp eq i32 %58, 0
  %60 = load ptr, ptr %25, align 8
  %61 = icmp ne ptr %60, null
  %62 = select i1 %59, i1 %61, i1 false
  br label %63

63:                                               ; preds = %57, %44
  %64 = phi i1 [ %48, %44 ], [ %62, %57 ]
  br i1 %64, label %65, label %69

65:                                               ; preds = %63
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #9
  %66 = load ptr, ptr %25, align 8, !tbaa !60, !noalias !87
  %67 = getelementptr inbounds %struct.GroupObject, ptr %66, i64 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !67, !noalias !87
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %6, ptr noundef nonnull %5, ptr noundef nonnull @RNA_Object, ptr noundef %68) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !55
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #9
  br label %69

69:                                               ; preds = %63, %65, %21
  %70 = phi i1 [ false, %21 ], [ %64, %65 ], [ %64, %63 ]
  %71 = zext i1 %70 to i32
  call void @rna_iterator_listbase_end(ptr noundef nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %5) #9
  ret i32 %71
}

; Function Attrs: nounwind uwtable
define dso_local i32 @Group_objects_lookup_string(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca %struct.CollectionPropertyIterator, align 8
  %7 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %7) #9
  %8 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = getelementptr inbounds i8, ptr %6, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %10, i8 0, i64 112, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !55
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 2
  store ptr @rna_Group_objects, ptr %11, align 8, !tbaa !57
  %12 = getelementptr inbounds %struct.Group, ptr %9, i64 0, i32 1
  call void @rna_iterator_listbase_begin(ptr noundef nonnull %6, ptr noundef nonnull %12, ptr noundef null) #9
  %13 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 7
  %14 = load i32, ptr %13, align 8, !tbaa !59
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  %18 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !60, !noalias !92
  %20 = getelementptr inbounds %struct.GroupObject, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !67, !noalias !92
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef nonnull %6, ptr noundef nonnull @RNA_Object, ptr noundef %21) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !55
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  br label %22

22:                                               ; preds = %3, %16
  %23 = load i32, ptr %13, align 8, !tbaa !59
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %65, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 6
  %27 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 6, i32 2
  %28 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 3
  br label %29

29:                                               ; preds = %25, %59
  %30 = phi i8 [ 0, %25 ], [ %52, %59 ]
  %31 = load ptr, ptr %27, align 8, !tbaa !97
  %32 = icmp eq ptr %31, null
  br i1 %32, label %51, label %33

33:                                               ; preds = %29
  %34 = call i32 @ID_name_length(ptr noundef nonnull %26) #9
  %35 = icmp slt i32 %34, 1024
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  call void @ID_name_get(ptr noundef nonnull %26, ptr noundef nonnull %7) #9
  %37 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %1) #10
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %47, label %48

39:                                               ; preds = %33
  %40 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !56
  %41 = add nuw nsw i32 %34, 1
  %42 = zext nneg i32 %41 to i64
  %43 = call ptr %40(i64 noundef %42, ptr noundef nonnull @.str) #9
  call void @ID_name_get(ptr noundef nonnull %26, ptr noundef %43) #9
  %44 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %43, ptr noundef nonnull dereferenceable(1) %1) #10
  %45 = icmp eq i32 %44, 0
  %46 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  call void %46(ptr noundef %43) #9
  br i1 %45, label %47, label %48

47:                                               ; preds = %39, %36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %26, i64 24, i1 false)
  br label %48

48:                                               ; preds = %47, %39, %36
  %49 = phi i8 [ %30, %36 ], [ %30, %39 ], [ 1, %47 ]
  %50 = phi i1 [ true, %36 ], [ true, %39 ], [ false, %47 ]
  br i1 %50, label %51, label %62

51:                                               ; preds = %48, %29
  %52 = phi i8 [ %49, %48 ], [ %30, %29 ]
  call void @rna_iterator_listbase_next(ptr noundef nonnull %6) #9
  %53 = load i32, ptr %13, align 8, !tbaa !59
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #9
  %56 = load ptr, ptr %28, align 8, !tbaa !60, !noalias !98
  %57 = getelementptr inbounds %struct.GroupObject, ptr %56, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !67, !noalias !98
  call void @rna_pointer_inherit_refine(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef nonnull %6, ptr noundef nonnull @RNA_Object, ptr noundef %58) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %26, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !55
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #9
  br label %59

59:                                               ; preds = %51, %55
  %60 = load i32, ptr %13, align 8, !tbaa !59
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %29, !llvm.loop !103

62:                                               ; preds = %48, %59
  %63 = phi i8 [ %52, %59 ], [ %49, %48 ]
  %64 = zext nneg i8 %63 to i32
  br label %65

65:                                               ; preds = %62, %22
  %66 = phi i32 [ 0, %22 ], [ %64, %62 ]
  call void @rna_iterator_listbase_end(ptr noundef nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %6) #9
  ret i32 %66
}

declare i32 @ID_name_length(ptr noundef) local_unnamed_addr #7

declare void @ID_name_get(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local void @GroupObjects_rna_properties_begin(ptr noundef %0, ptr noundef %1) #4 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !55
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_GroupObjects_rna_properties, ptr %4, align 8, !tbaa !57
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #9
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !59
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #9
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !55
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #9
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

declare void @rna_builtin_properties_begin(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal void @GroupObjects_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #4 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @GroupObjects_rna_properties_next(ptr noundef %0) #4 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #9
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !59
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #9
  call void @rna_builtin_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !55
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #9
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

declare void @rna_builtin_properties_next(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @GroupObjects_rna_properties_end(ptr noundef %0) #4 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @GroupObjects_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #4 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #9
  ret i32 %4
}

declare i32 @rna_builtin_properties_lookup_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @GroupObjects_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #4 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #9
  ret void
}

declare void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @GroupObjects_link(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 {
  %5 = tail call ptr @CTX_data_scene(ptr noundef %1) #9
  %6 = tail call zeroext i8 @BKE_group_object_add(ptr noundef %0, ptr noundef %3, ptr noundef %5, ptr noundef null) #9
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 4, i64 2
  %10 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4, i64 2
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.30, ptr noundef nonnull %9, ptr noundef nonnull %10) #9
  br label %12

11:                                               ; preds = %4
  tail call void @WM_main_add_notifier(i32 noundef 85393408, ptr noundef %3) #9
  br label %12

12:                                               ; preds = %8, %11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @GroupObjects_link_call(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #4 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = load ptr, ptr %3, align 8, !tbaa !104
  %8 = load ptr, ptr %7, align 8, !tbaa !56
  %9 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %10 = tail call zeroext i8 @BKE_group_object_add(ptr noundef %6, ptr noundef %8, ptr noundef %9, ptr noundef null) #9
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 4, i64 2
  %14 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 4, i64 2
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.30, ptr noundef nonnull %13, ptr noundef nonnull %14) #9
  br label %16

15:                                               ; preds = %4
  tail call void @WM_main_add_notifier(i32 noundef 85393408, ptr noundef %8) #9
  br label %16

16:                                               ; preds = %12, %15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @GroupObjects_unlink(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 {
  %5 = tail call ptr @CTX_data_scene(ptr noundef %1) #9
  %6 = tail call zeroext i8 @BKE_group_object_unlink(ptr noundef %0, ptr noundef %3, ptr noundef %5, ptr noundef null) #9
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 4, i64 2
  %10 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4, i64 2
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %2, i32 noundef 32, ptr noundef nonnull @.str.31, ptr noundef nonnull %9, ptr noundef nonnull %10) #9
  br label %12

11:                                               ; preds = %4
  tail call void @WM_main_add_notifier(i32 noundef 85393408, ptr noundef %3) #9
  br label %12

12:                                               ; preds = %8, %11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @GroupObjects_unlink_call(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #4 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = load ptr, ptr %3, align 8, !tbaa !104
  %8 = load ptr, ptr %7, align 8, !tbaa !56
  %9 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %10 = tail call zeroext i8 @BKE_group_object_unlink(ptr noundef %6, ptr noundef %8, ptr noundef %9, ptr noundef null) #9
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 4, i64 2
  %14 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 4, i64 2
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.31, ptr noundef nonnull %13, ptr noundef nonnull %14) #9
  br label %16

15:                                               ; preds = %4
  tail call void @WM_main_add_notifier(i32 noundef 85393408, ptr noundef %8) #9
  br label %16

16:                                               ; preds = %12, %15
  ret void
}

declare ptr @rna_ID_refine(ptr noundef) #7

declare ptr @rna_ID_idprops(ptr noundef, i8 noundef zeroext) #7

declare void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) local_unnamed_addr #7

declare zeroext i8 @BKE_group_object_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #7

declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #7

declare void @WM_main_add_notifier(i32 noundef, ptr noundef) local_unnamed_addr #7

declare zeroext i8 @BKE_group_object_unlink(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

attributes #0 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }

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
!41 = !{!"float", !38, i64 0}
!42 = distinct !{!42, !43, !44}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!"llvm.loop.unroll.disable"}
!45 = distinct !{!45, !43, !44}
!46 = !{!47, !50, i64 136}
!47 = !{!"Group", !48, i64 0, !51, i64 120, !50, i64 136, !38, i64 140}
!48 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !49, i64 98, !50, i64 100, !50, i64 104, !50, i64 108, !37, i64 112}
!49 = !{!"short", !38, i64 0}
!50 = !{!"int", !38, i64 0}
!51 = !{!"ListBase", !37, i64 0, !37, i64 8}
!52 = !{!50, !50, i64 0}
!53 = distinct !{!53, !43, !44}
!54 = distinct !{!54, !43, !44}
!55 = !{i64 0, i64 8, !56, i64 8, i64 8, !56, i64 16, i64 8, !56}
!56 = !{!37, !37, i64 0}
!57 = !{!58, !37, i64 48}
!58 = !{!"CollectionPropertyIterator", !35, i64 0, !35, i64 24, !37, i64 48, !38, i64 56, !50, i64 96, !50, i64 100, !35, i64 104, !50, i64 128}
!59 = !{!58, !50, i64 128}
!60 = !{!61, !37, i64 0}
!61 = !{!"ListBaseIterator", !37, i64 0, !50, i64 8, !37, i64 16}
!62 = !{!63, !65}
!63 = distinct !{!63, !64, !"rna_Group_objects_get: argument 0"}
!64 = distinct !{!64, !"rna_Group_objects_get"}
!65 = distinct !{!65, !66, !"Group_objects_get: argument 0"}
!66 = distinct !{!66, !"Group_objects_get"}
!67 = !{!68, !37, i64 16}
!68 = !{!"GroupObject", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !49, i64 32, !38, i64 34}
!69 = !{!70}
!70 = distinct !{!70, !71, !"rna_Group_objects_get: argument 0"}
!71 = distinct !{!71, !"rna_Group_objects_get"}
!72 = !{!73, !75}
!73 = distinct !{!73, !74, !"rna_Group_objects_get: argument 0"}
!74 = distinct !{!74, !"rna_Group_objects_get"}
!75 = distinct !{!75, !76, !"Group_objects_get: argument 0"}
!76 = distinct !{!76, !"Group_objects_get"}
!77 = !{!78, !80}
!78 = distinct !{!78, !79, !"rna_Group_objects_get: argument 0"}
!79 = distinct !{!79, !"rna_Group_objects_get"}
!80 = distinct !{!80, !81, !"Group_objects_get: argument 0"}
!81 = distinct !{!81, !"Group_objects_get"}
!82 = !{!61, !37, i64 16}
!83 = distinct !{!83, !43, !44}
!84 = !{!85, !37, i64 0}
!85 = !{!"Link", !37, i64 0, !37, i64 8}
!86 = distinct !{!86, !43, !44}
!87 = !{!88, !90}
!88 = distinct !{!88, !89, !"rna_Group_objects_get: argument 0"}
!89 = distinct !{!89, !"rna_Group_objects_get"}
!90 = distinct !{!90, !91, !"Group_objects_get: argument 0"}
!91 = distinct !{!91, !"Group_objects_get"}
!92 = !{!93, !95}
!93 = distinct !{!93, !94, !"rna_Group_objects_get: argument 0"}
!94 = distinct !{!94, !"rna_Group_objects_get"}
!95 = distinct !{!95, !96, !"Group_objects_get: argument 0"}
!96 = distinct !{!96, !"Group_objects_get"}
!97 = !{!58, !37, i64 120}
!98 = !{!99, !101}
!99 = distinct !{!99, !100, !"rna_Group_objects_get: argument 0"}
!100 = distinct !{!100, !"rna_Group_objects_get"}
!101 = distinct !{!101, !102, !"Group_objects_get: argument 0"}
!102 = distinct !{!102, !"Group_objects_get"}
!103 = distinct !{!103, !43, !44}
!104 = !{!105, !37, i64 0}
!105 = !{!"ParameterList", !37, i64 0, !37, i64 8, !50, i64 16, !50, i64 20, !50, i64 24}
