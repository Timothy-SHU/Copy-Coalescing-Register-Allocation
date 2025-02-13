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

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
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

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
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
  br i1 %12, label %13, label %6, !llvm.loop !44

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Group_layers_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Group, ptr %4, i64 0, i32 2
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %13, %6 ]
  %8 = load i32, ptr %5, align 8, !tbaa !45
  %9 = trunc i64 %7 to i32
  %10 = lshr i32 %8, %9
  %11 = and i32 %10, 1
  %12 = getelementptr inbounds i32, ptr %1, i64 %7
  store i32 %11, ptr %12, align 4, !tbaa !51
  %13 = add nuw nsw i64 %7, 1
  %14 = icmp eq i64 %13, 20
  br i1 %14, label %15, label %6, !llvm.loop !52

15:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Group_layers_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.Group, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !45
  br label %7

7:                                                ; preds = %2, %7
  %8 = phi i32 [ %6, %2 ], [ %18, %7 ]
  %9 = phi i64 [ 0, %2 ], [ %19, %7 ]
  %10 = getelementptr inbounds i32, ptr %1, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !51
  %12 = icmp eq i32 %11, 0
  %13 = trunc i64 %9 to i32
  %14 = shl nuw nsw i32 1, %13
  %15 = or i32 %8, %14
  %16 = xor i32 %14, -1
  %17 = and i32 %8, %16
  %18 = select i1 %12, i32 %17, i32 %15
  store i32 %18, ptr %5, align 8, !tbaa !45
  %19 = add nuw nsw i64 %9, 1
  %20 = icmp eq i64 %19, 20
  br i1 %20, label %21, label %7, !llvm.loop !53

21:                                               ; preds = %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Group_objects_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #4 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !54
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_Group_objects, ptr %6, align 8, !tbaa !56
  %7 = getelementptr inbounds %struct.Group, ptr %5, i64 0, i32 1
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %7, ptr noundef null) #9
  %8 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !58
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #10
  call void @Group_objects_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !54
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #10
  br label %13

13:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: optsize
declare void @rna_iterator_listbase_begin(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal void @Group_objects_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #4 !PGOFuncName !59 {
  tail call fastcc void @rna_Group_objects_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Group_objects_next(ptr noundef %0) #4 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #9
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !58
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #10
  call void @Group_objects_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !54
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #10
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: optsize
declare void @rna_iterator_listbase_next(ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Group_objects_end(ptr noundef %0) #4 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #9
  ret void
}

; Function Attrs: optsize
declare void @rna_iterator_listbase_end(ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Group_objects_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  %5 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #10
  call void @Group_objects_begin(ptr noundef nonnull %4, ptr noundef %0) #11
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %46, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !60
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
  call void @rna_iterator_listbase_next(ptr noundef nonnull %4) #9
  %22 = icmp ugt i32 %20, 1
  %23 = load i32, ptr %6, align 8
  %24 = icmp ne i32 %23, 0
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %19, label %26, !llvm.loop !62

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
  %37 = load ptr, ptr %33, align 8, !tbaa !63
  store ptr %37, ptr %10, align 8, !tbaa !65
  %38 = icmp sgt i32 %32, 1
  br i1 %38, label %31, label %39, !llvm.loop !66

39:                                               ; preds = %35
  %40 = icmp eq ptr %37, null
  br i1 %40, label %46, label %45

41:                                               ; preds = %16
  %42 = icmp ne i32 %1, 0
  %43 = icmp eq ptr %17, null
  %44 = select i1 %42, i1 true, i1 %43
  br i1 %44, label %46, label %45

45:                                               ; preds = %41, %39, %26
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  call void @Group_objects_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef nonnull %4) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !54
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  br label %46

46:                                               ; preds = %31, %41, %39, %26, %45, %3
  %47 = phi i32 [ 0, %3 ], [ 1, %45 ], [ 0, %41 ], [ 0, %26 ], [ 0, %39 ], [ 0, %31 ]
  call void @Group_objects_end(ptr noundef nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #10
  ret i32 %47
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Group_objects_lookup_string(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  %5 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #10
  call void @Group_objects_begin(ptr noundef nonnull %4, ptr noundef %0) #11
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !58
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %33, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 6
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 6, i32 2
  br label %12

12:                                               ; preds = %9, %29
  %13 = load ptr, ptr %11, align 8, !tbaa !67
  %14 = icmp eq ptr %13, null
  br i1 %14, label %29, label %15

15:                                               ; preds = %12
  %16 = call i32 @ID_name_length(ptr noundef nonnull %10) #9
  %17 = icmp slt i32 %16, 1024
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  call void @ID_name_get(ptr noundef nonnull %10, ptr noundef nonnull %5) #9
  %19 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %1) #12
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %32, label %29

21:                                               ; preds = %15
  %22 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !55
  %23 = add nuw nsw i32 %16, 1
  %24 = zext nneg i32 %23 to i64
  %25 = call ptr %22(i64 noundef %24, ptr noundef nonnull @.str) #9
  call void @ID_name_get(ptr noundef nonnull %10, ptr noundef %25) #9
  %26 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(1) %1) #12
  %27 = icmp eq i32 %26, 0
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !55
  call void %28(ptr noundef %25) #9
  br i1 %27, label %32, label %29

29:                                               ; preds = %21, %18, %12
  call void @Group_objects_next(ptr noundef nonnull %4) #11
  %30 = load i32, ptr %6, align 8, !tbaa !58
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %12, !llvm.loop !68

32:                                               ; preds = %18, %21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false)
  br label %33

33:                                               ; preds = %29, %32, %3
  %34 = phi i32 [ 0, %3 ], [ 1, %32 ], [ 0, %29 ]
  call void @Group_objects_end(ptr noundef nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #10
  ret i32 %34
}

; Function Attrs: optsize
declare i32 @ID_name_length(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @ID_name_get(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GroupObjects_rna_properties_begin(ptr noundef %0, ptr noundef %1) #4 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !54
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_GroupObjects_rna_properties, ptr %4, align 8, !tbaa !56
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #9
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !58
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #10
  call void @GroupObjects_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !54
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #10
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: optsize
declare void @rna_builtin_properties_begin(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal void @GroupObjects_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #4 !PGOFuncName !69 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GroupObjects_rna_properties_next(ptr noundef %0) #4 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #9
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !58
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #10
  call void @GroupObjects_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !54
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #10
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: optsize
declare void @rna_builtin_properties_next(ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GroupObjects_rna_properties_end(ptr noundef %0) #4 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @GroupObjects_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #4 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #9
  ret i32 %4
}

; Function Attrs: optsize
declare i32 @rna_builtin_properties_lookup_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GroupObjects_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #4 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #9
  ret void
}

; Function Attrs: optsize
declare void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GroupObjects_link(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 {
  tail call fastcc void @rna_Group_objects_link(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Group_objects_link(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #4 !PGOFuncName !70 {
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

12:                                               ; preds = %11, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GroupObjects_link_call(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #4 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = load ptr, ptr %3, align 8, !tbaa !71
  %8 = load ptr, ptr %7, align 8, !tbaa !55
  tail call fastcc void @rna_Group_objects_link(ptr noundef %6, ptr noundef %0, ptr noundef %1, ptr noundef %8) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GroupObjects_unlink(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 {
  tail call fastcc void @rna_Group_objects_unlink(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Group_objects_unlink(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #4 !PGOFuncName !73 {
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

12:                                               ; preds = %11, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GroupObjects_unlink_call(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #4 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = load ptr, ptr %3, align 8, !tbaa !71
  %8 = load ptr, ptr %7, align 8, !tbaa !55
  tail call fastcc void @rna_Group_objects_unlink(ptr noundef %6, ptr noundef %0, ptr noundef %1, ptr noundef %8) #11
  ret void
}

; Function Attrs: optsize
declare ptr @rna_ID_refine(ptr noundef) #7

; Function Attrs: optsize
declare ptr @rna_ID_idprops(ptr noundef, i8 noundef zeroext) #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Group_objects_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) unnamed_addr #4 !PGOFuncName !74 {
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !65
  %5 = getelementptr inbounds %struct.GroupObject, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Object, ptr noundef %6) #9
  ret void
}

; Function Attrs: optsize
declare void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare zeroext i8 @BKE_group_object_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: optsize
declare void @WM_main_add_notifier(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare zeroext i8 @BKE_group_object_unlink(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

attributes #0 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind optsize }
attributes #10 = { nounwind }
attributes #11 = { optsize }
attributes #12 = { nounwind optsize willreturn memory(read) }

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
!41 = !{!"float", !38, i64 0}
!42 = distinct !{!42, !43}
!43 = !{!"llvm.loop.mustprogress"}
!44 = distinct !{!44, !43}
!45 = !{!46, !49, i64 136}
!46 = !{!"Group", !47, i64 0, !50, i64 120, !49, i64 136, !38, i64 140}
!47 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !48, i64 98, !49, i64 100, !49, i64 104, !49, i64 108, !37, i64 112}
!48 = !{!"short", !38, i64 0}
!49 = !{!"int", !38, i64 0}
!50 = !{!"ListBase", !37, i64 0, !37, i64 8}
!51 = !{!49, !49, i64 0}
!52 = distinct !{!52, !43}
!53 = distinct !{!53, !43}
!54 = !{i64 0, i64 8, !55, i64 8, i64 8, !55, i64 16, i64 8, !55}
!55 = !{!37, !37, i64 0}
!56 = !{!57, !37, i64 48}
!57 = !{!"CollectionPropertyIterator", !35, i64 0, !35, i64 24, !37, i64 48, !38, i64 56, !49, i64 96, !49, i64 100, !35, i64 104, !49, i64 128}
!58 = !{!57, !49, i64 128}
!59 = !{!"rna_group_gen.c:Group_objects_get"}
!60 = !{!61, !37, i64 16}
!61 = !{!"ListBaseIterator", !37, i64 0, !49, i64 8, !37, i64 16}
!62 = distinct !{!62, !43}
!63 = !{!64, !37, i64 0}
!64 = !{!"Link", !37, i64 0, !37, i64 8}
!65 = !{!61, !37, i64 0}
!66 = distinct !{!66, !43}
!67 = !{!57, !37, i64 120}
!68 = distinct !{!68, !43}
!69 = !{!"rna_group_gen.c:GroupObjects_rna_properties_get"}
!70 = !{!"rna_group_gen.c:rna_Group_objects_link"}
!71 = !{!72, !37, i64 0}
!72 = !{!"ParameterList", !37, i64 0, !37, i64 8, !49, i64 16, !49, i64 20, !49, i64 24}
!73 = !{!"rna_group_gen.c:rna_Group_objects_unlink"}
!74 = !{!"rna_group_gen.c:rna_Group_objects_get"}
!75 = !{!76, !37, i64 16}
!76 = !{!"GroupObject", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !48, i64 32, !38, i64 34}
