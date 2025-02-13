; ModuleID = 'blender/source/blender/blenkernel/intern/modifier.c'
source_filename = "blender/source/blender/blenkernel/intern/modifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.VirtualModifierData = type { %struct.ArmatureModifierData, %struct.CurveModifierData, %struct.LatticeModifierData, %struct.ShapeKeyModifierData }
%struct.ArmatureModifierData = type { %struct.ModifierData, i16, i16, i32, ptr, ptr, [64 x i8] }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.CurveModifierData = type { %struct.ModifierData, ptr, [64 x i8], i16, [6 x i8] }
%struct.LatticeModifierData = type { %struct.ModifierData, ptr, [64 x i8], float, [4 x i8] }
%struct.ShapeKeyModifierData = type { %struct.ModifierData }
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.ModifierTypeInfo = type { [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.bArmature = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.CDMaskLink = type { ptr, i64 }
%struct.Library = type { %struct.ID, ptr, ptr, [1024 x i8], [1024 x i8], ptr, ptr }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }

@modifier_types = internal global [49 x ptr] zeroinitializer, align 16
@virtualModifierCommonData = internal unnamed_addr global %struct.VirtualModifierData zeroinitializer, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [11 x i8] c"CDMaskLink\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"//\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_modifier_init() local_unnamed_addr #0 {
  tail call void @modifier_type_init(ptr noundef nonnull @modifier_types) #9
  %1 = tail call ptr @modifier_new(i32 noundef 8) #10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) @virtualModifierCommonData, ptr noundef nonnull align 8 dereferenceable(200) %1, i64 200, i1 false), !tbaa.struct !34
  tail call void @modifier_free(ptr noundef %1) #10
  %2 = tail call ptr @modifier_new(i32 noundef 3) #10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) getelementptr inbounds (%struct.VirtualModifierData, ptr @virtualModifierCommonData, i64 0, i32 1), ptr noundef nonnull align 8 dereferenceable(192) %2, i64 192, i1 false), !tbaa.struct !44
  tail call void @modifier_free(ptr noundef %2) #10
  %3 = tail call ptr @modifier_new(i32 noundef 2) #10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) getelementptr inbounds (%struct.VirtualModifierData, ptr @virtualModifierCommonData, i64 0, i32 2), ptr noundef nonnull align 8 dereferenceable(192) %3, i64 192, i1 false), !tbaa.struct !45
  tail call void @modifier_free(ptr noundef %3) #10
  %4 = tail call ptr @modifier_new(i32 noundef 32) #10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) getelementptr inbounds (%struct.VirtualModifierData, ptr @virtualModifierCommonData, i64 0, i32 3), ptr noundef nonnull align 8 dereferenceable(112) %4, i64 112, i1 false), !tbaa.struct !48
  tail call void @modifier_free(ptr noundef %4) #10
  %5 = load i32, ptr getelementptr inbounds (%struct.VirtualModifierData, ptr @virtualModifierCommonData, i64 0, i32 0, i32 0, i32 3), align 4, !tbaa !49
  %6 = or i32 %5, 32
  store i32 %6, ptr getelementptr inbounds (%struct.VirtualModifierData, ptr @virtualModifierCommonData, i64 0, i32 0, i32 0, i32 3), align 4, !tbaa !49
  %7 = load i32, ptr getelementptr inbounds (%struct.VirtualModifierData, ptr @virtualModifierCommonData, i64 0, i32 1, i32 0, i32 3), align 4, !tbaa !56
  %8 = or i32 %7, 32
  store i32 %8, ptr getelementptr inbounds (%struct.VirtualModifierData, ptr @virtualModifierCommonData, i64 0, i32 1, i32 0, i32 3), align 4, !tbaa !56
  %9 = load i32, ptr getelementptr inbounds (%struct.VirtualModifierData, ptr @virtualModifierCommonData, i64 0, i32 2, i32 0, i32 3), align 4, !tbaa !57
  %10 = or i32 %9, 32
  store i32 %10, ptr getelementptr inbounds (%struct.VirtualModifierData, ptr @virtualModifierCommonData, i64 0, i32 2, i32 0, i32 3), align 4, !tbaa !57
  %11 = load i32, ptr getelementptr inbounds (%struct.VirtualModifierData, ptr @virtualModifierCommonData, i64 0, i32 3, i32 0, i32 3), align 4, !tbaa !58
  %12 = or i32 %11, 32
  store i32 %12, ptr getelementptr inbounds (%struct.VirtualModifierData, ptr @virtualModifierCommonData, i64 0, i32 3, i32 0, i32 3), align 4, !tbaa !58
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @modifier_type_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @modifier_new(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @modifierType_getInfo(i32 noundef %0) #10
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %4 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %2, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !59
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %2, i64 0, i32 1
  %8 = tail call ptr %3(i64 noundef %6, ptr noundef nonnull %7) #9
  %9 = getelementptr inbounds %struct.ModifierData, ptr %8, i64 0, i32 6
  %10 = tail call ptr @BLI_strncpy(ptr noundef nonnull %9, ptr noundef %2, i64 noundef 64) #9
  %11 = getelementptr inbounds %struct.ModifierData, ptr %8, i64 0, i32 2
  store i32 %0, ptr %11, align 8, !tbaa !61
  %12 = getelementptr inbounds %struct.ModifierData, ptr %8, i64 0, i32 3
  %13 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %2, i64 0, i32 4
  %14 = load i32, ptr %13, align 8, !tbaa !62
  %15 = and i32 %14, 16
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, i32 19, i32 23
  store i32 %17, ptr %12, align 4
  %18 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %2, i64 0, i32 12
  %19 = load ptr, ptr %18, align 8, !tbaa !63
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  tail call void %19(ptr noundef nonnull %8) #9
  br label %22

22:                                               ; preds = %21, %1
  ret ptr %8
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @modifier_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !61
  %4 = tail call ptr @modifierType_getInfo(i32 noundef %3) #10
  %5 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %4, i64 0, i32 14
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  tail call void %6(ptr noundef nonnull %0) #9
  br label %9

9:                                                ; preds = %8, %1
  %10 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !65
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  tail call void %14(ptr noundef nonnull %11) #9
  br label %15

15:                                               ; preds = %13, %9
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  tail call void %16(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @modifierType_getInfo(i32 noundef %0) local_unnamed_addr #4 {
  %2 = icmp ult i32 %0, 49
  br i1 %2, label %3, label %9

3:                                                ; preds = %1
  %4 = zext nneg i32 %0 to i64
  %5 = getelementptr inbounds [49 x ptr], ptr @modifier_types, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = load i8, ptr %6, align 8, !tbaa !41
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %3, %1
  br label %10

10:                                               ; preds = %3, %9
  %11 = phi ptr [ null, %9 ], [ %6, %3 ]
  ret ptr %11
}

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @modifier_unique_name(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ModifierData, ptr %1, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !61
  %9 = tail call ptr @modifierType_getInfo(i32 noundef %8) #10
  tail call void @BLI_uniquename(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %9, i8 noundef zeroext 46, i32 noundef 32, i32 noundef 64) #9
  br label %10

10:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: optsize
declare void @BLI_uniquename(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @modifier_dependsOnTime(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !61
  %4 = tail call ptr @modifierType_getInfo(i32 noundef %3) #10
  %5 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %4, i64 0, i32 17
  %6 = load ptr, ptr %5, align 8, !tbaa !66
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = tail call zeroext i8 %6(ptr noundef nonnull %0) #9
  %10 = icmp ne i8 %9, 0
  %11 = zext i1 %10 to i8
  br label %12

12:                                               ; preds = %8, %1
  %13 = phi i8 [ 0, %1 ], [ %11, %8 ]
  ret i8 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @modifier_supportsMapping(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !61
  %4 = tail call ptr @modifierType_getInfo(i32 noundef %3) #10
  %5 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %4, i64 0, i32 3
  %6 = load i32, ptr %5, align 4, !tbaa !67
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %4, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !62
  %11 = trunc i32 %10 to i8
  %12 = lshr i8 %11, 2
  %13 = and i8 %12, 1
  br label %14

14:                                               ; preds = %8, %1
  %15 = phi i8 [ 1, %1 ], [ %13, %8 ]
  ret i8 %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @modifier_isPreview(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !61
  %4 = tail call ptr @modifierType_getInfo(i32 noundef %3) #10
  %5 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %4, i64 0, i32 4
  %6 = load i32, ptr %5, align 8, !tbaa !62
  %7 = and i32 %6, 512
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %4, i64 0, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !67
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %18

13:                                               ; preds = %9, %1
  %14 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 3
  %15 = load i32, ptr %14, align 4, !tbaa !68
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  br label %18

18:                                               ; preds = %13, %9
  %19 = phi i8 [ 0, %9 ], [ %17, %13 ]
  ret i8 %19
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @modifiers_findByType(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 26
  br label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %3, %2 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ModifierData, ptr %6, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !61
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %12, label %4, !llvm.loop !69

12:                                               ; preds = %8, %4
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @modifiers_findByName(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 26
  %4 = tail call ptr @BLI_findstring(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 32) #9
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @BLI_findstring(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @modifiers_clearErrors(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 26
  %3 = load ptr, ptr %2, align 8, !tbaa !35
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %1, %12
  %6 = phi ptr [ %13, %12 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.ModifierData, ptr %6, i64 0, i32 8
  %8 = load ptr, ptr %7, align 8, !tbaa !65
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  tail call void %11(ptr noundef nonnull %8) #9
  store ptr null, ptr %7, align 8, !tbaa !65
  br label %12

12:                                               ; preds = %5, %10
  %13 = load ptr, ptr %6, align 8, !tbaa !35
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %5, !llvm.loop !71

15:                                               ; preds = %12, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @modifiers_foreachObjectLink(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 26
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %3, %16
  %8 = phi ptr [ %17, %16 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.ModifierData, ptr %8, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !61
  %11 = tail call ptr @modifierType_getInfo(i32 noundef %10) #10
  %12 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %11, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !72
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %7
  tail call void %13(ptr noundef nonnull %8, ptr noundef %0, ptr noundef %1, ptr noundef %2) #9
  br label %16

16:                                               ; preds = %15, %7
  %17 = load ptr, ptr %8, align 8, !tbaa !35
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %7, !llvm.loop !73

19:                                               ; preds = %16, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @modifiers_foreachIDLink(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 26
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  %6 = icmp eq ptr %5, null
  br i1 %6, label %24, label %7

7:                                                ; preds = %3, %21
  %8 = phi ptr [ %22, %21 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.ModifierData, ptr %8, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !61
  %11 = tail call ptr @modifierType_getInfo(i32 noundef %10) #10
  %12 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %11, i64 0, i32 20
  %13 = load ptr, ptr %12, align 8, !tbaa !74
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %11, i64 0, i32 19
  %17 = load ptr, ptr %16, align 8, !tbaa !72
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15, %7
  %20 = phi ptr [ %13, %7 ], [ %17, %15 ]
  tail call void %20(ptr noundef nonnull %8, ptr noundef %0, ptr noundef %1, ptr noundef %2) #9
  br label %21

21:                                               ; preds = %19, %15
  %22 = load ptr, ptr %8, align 8, !tbaa !35
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %7, !llvm.loop !75

24:                                               ; preds = %21, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @modifiers_foreachTexLink(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 26
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %3, %16
  %8 = phi ptr [ %17, %16 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.ModifierData, ptr %8, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !61
  %11 = tail call ptr @modifierType_getInfo(i32 noundef %10) #10
  %12 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %11, i64 0, i32 21
  %13 = load ptr, ptr %12, align 8, !tbaa !76
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %7
  tail call void %13(ptr noundef nonnull %8, ptr noundef %0, ptr noundef %1, ptr noundef %2) #9
  br label %16

16:                                               ; preds = %15, %7
  %17 = load ptr, ptr %8, align 8, !tbaa !35
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %7, !llvm.loop !77

19:                                               ; preds = %16, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @modifier_copyData_generic(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !61
  %5 = tail call ptr @modifierType_getInfo(i32 noundef %4) #10
  %6 = getelementptr inbounds i8, ptr %0, i64 112
  %7 = getelementptr inbounds i8, ptr %1, i64 112
  %8 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %5, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !59
  %10 = sext i32 %9 to i64
  %11 = add nsw i64 %10, -112
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %7, ptr nonnull align 1 %6, i64 %11, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @modifier_copyData(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !61
  %5 = tail call ptr @modifierType_getInfo(i32 noundef %4) #10
  %6 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 4, !tbaa !68
  %8 = getelementptr inbounds %struct.ModifierData, ptr %1, i64 0, i32 3
  store i32 %7, ptr %8, align 4, !tbaa !68
  %9 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %5, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !78
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  tail call void %10(ptr noundef nonnull %0, ptr noundef nonnull %1) #9
  br label %13

13:                                               ; preds = %12, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @modifier_supportsCage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ModifierData, ptr %1, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !61
  %5 = tail call ptr @modifierType_getInfo(i32 noundef %4) #10
  %6 = getelementptr inbounds %struct.ModifierData, ptr %1, i64 0, i32 7
  store ptr %0, ptr %6, align 8, !tbaa !79
  %7 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %5, i64 0, i32 15
  %8 = load ptr, ptr %7, align 8, !tbaa !80
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = tail call zeroext i8 %8(ptr noundef nonnull %1, i32 noundef 0) #9
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %10, %2
  %14 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %5, i64 0, i32 4
  %15 = load i32, ptr %14, align 8, !tbaa !62
  %16 = and i32 %15, 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = tail call zeroext i8 @modifier_supportsMapping(ptr noundef nonnull %1) #10, !range !81
  br label %20

20:                                               ; preds = %18, %13, %10
  %21 = phi i8 [ 0, %13 ], [ 0, %10 ], [ %19, %18 ]
  ret i8 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @modifier_couldBeCage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ModifierData, ptr %1, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !61
  %5 = tail call ptr @modifierType_getInfo(i32 noundef %4) #10
  %6 = getelementptr inbounds %struct.ModifierData, ptr %1, i64 0, i32 7
  store ptr %0, ptr %6, align 8, !tbaa !79
  %7 = getelementptr inbounds %struct.ModifierData, ptr %1, i64 0, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !68
  %9 = and i32 %8, 5
  %10 = icmp eq i32 %9, 5
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %5, i64 0, i32 15
  %13 = load ptr, ptr %12, align 8, !tbaa !80
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = tail call zeroext i8 %13(ptr noundef nonnull %1, i32 noundef 0) #9
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15, %11
  %19 = tail call zeroext i8 @modifier_supportsMapping(ptr noundef nonnull %1) #10, !range !81
  br label %20

20:                                               ; preds = %18, %15, %2
  %21 = phi i8 [ 0, %15 ], [ 0, %2 ], [ %19, %18 ]
  ret i8 %21
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @modifier_isSameTopology(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !61
  %4 = tail call ptr @modifierType_getInfo(i32 noundef %3) #10
  %5 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %4, i64 0, i32 3
  %6 = load i32, ptr %5, align 4, !tbaa !67
  %7 = and i32 %6, -5
  %8 = icmp eq i32 %7, 1
  %9 = zext i1 %8 to i8
  ret i8 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @modifier_isNonGeometrical(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !61
  %4 = tail call ptr @modifierType_getInfo(i32 noundef %3) #10
  %5 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %4, i64 0, i32 3
  %6 = load i32, ptr %5, align 4, !tbaa !67
  %7 = icmp eq i32 %6, 5
  %8 = zext i1 %7 to i8
  ret i8 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @modifier_setError(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ...) local_unnamed_addr #0 {
  %3 = alloca [512 x i8], align 16
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #11
  call void @llvm.va_start(ptr nonnull %4)
  %5 = call i32 @vsnprintf(ptr noundef nonnull %3, i64 noundef 512, ptr noundef %1, ptr noundef nonnull %4) #9
  call void @llvm.va_end(ptr nonnull %4)
  %6 = getelementptr inbounds [512 x i8], ptr %3, i64 0, i64 511
  store i8 0, ptr %6, align 1, !tbaa !41
  %7 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 8
  %8 = load ptr, ptr %7, align 8, !tbaa !65
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  call void %11(ptr noundef nonnull %8) #9
  br label %12

12:                                               ; preds = %10, %2
  %13 = call ptr @BLI_strdup(ptr noundef nonnull %3) #9
  store ptr %13, ptr %7, align 8, !tbaa !65
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %3) #11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #7

; Function Attrs: nofree nounwind optsize
declare noundef i32 @vsnprintf(ptr nocapture noundef, i64 noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #7

; Function Attrs: optsize
declare ptr @BLI_strdup(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @modifiers_getCageIndex(ptr noundef %0, ptr noundef %1, ptr noundef writeonly %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca %struct.VirtualModifierData, align 8
  call void @llvm.lifetime.start.p0(i64 696, ptr nonnull %5) #11
  %6 = icmp eq i8 %3, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = call ptr @modifiers_getVirtualModifierList(ptr noundef %1, ptr noundef nonnull %5) #10
  br label %12

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 26
  %11 = load ptr, ptr %10, align 8, !tbaa !82
  br label %12

12:                                               ; preds = %9, %7
  %13 = phi ptr [ %8, %7 ], [ %11, %9 ]
  %14 = icmp ne ptr %2, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32 -1, ptr %2, align 4, !tbaa !39
  br label %16

16:                                               ; preds = %15, %12
  %17 = icmp eq ptr %13, null
  br i1 %17, label %64, label %18

18:                                               ; preds = %16, %59
  %19 = phi ptr [ %62, %59 ], [ %13, %16 ]
  %20 = phi i32 [ %61, %59 ], [ 0, %16 ]
  %21 = phi i32 [ %60, %59 ], [ -1, %16 ]
  %22 = getelementptr inbounds %struct.ModifierData, ptr %19, i64 0, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !61
  %24 = call ptr @modifierType_getInfo(i32 noundef %23) #10
  %25 = getelementptr inbounds %struct.ModifierData, ptr %19, i64 0, i32 7
  store ptr %0, ptr %25, align 8, !tbaa !79
  %26 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %24, i64 0, i32 15
  %27 = load ptr, ptr %26, align 8, !tbaa !80
  %28 = icmp eq ptr %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %18
  %30 = call zeroext i8 %27(ptr noundef nonnull %19, i32 noundef 0) #9
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %59

32:                                               ; preds = %29, %18
  %33 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %24, i64 0, i32 4
  %34 = load i32, ptr %33, align 8, !tbaa !62
  %35 = and i32 %34, 8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %59, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.ModifierData, ptr %19, i64 0, i32 3
  %39 = load i32, ptr %38, align 4, !tbaa !68
  %40 = icmp sgt i32 %39, -1
  br i1 %40, label %41, label %59

41:                                               ; preds = %37
  %42 = call zeroext i8 @modifier_supportsMapping(ptr noundef nonnull %19) #10, !range !81
  %43 = icmp ne i8 %42, 0
  %44 = select i1 %14, i1 %43, i1 false
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = and i32 %39, 5
  %47 = icmp eq i32 %46, 5
  br i1 %47, label %52, label %59

48:                                               ; preds = %41
  store i32 %20, ptr %2, align 4, !tbaa !39
  %49 = load i32, ptr %38, align 4, !tbaa !68
  %50 = and i32 %49, 5
  %51 = icmp eq i32 %50, 5
  br i1 %51, label %54, label %59

52:                                               ; preds = %45
  %53 = icmp eq i8 %42, 0
  br i1 %53, label %64, label %54

54:                                               ; preds = %48, %52
  %55 = phi i32 [ %39, %52 ], [ %49, %48 ]
  %56 = and i32 %55, 8
  %57 = icmp eq i32 %56, 0
  %58 = select i1 %57, i32 %21, i32 %20
  br label %59

59:                                               ; preds = %48, %54, %29, %32, %37, %45
  %60 = phi i32 [ %21, %45 ], [ %21, %37 ], [ %21, %32 ], [ %21, %29 ], [ %58, %54 ], [ %21, %48 ]
  %61 = add nuw nsw i32 %20, 1
  %62 = load ptr, ptr %19, align 8, !tbaa !88
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %18, !llvm.loop !89

64:                                               ; preds = %59, %52, %16
  %65 = phi i32 [ -1, %16 ], [ %21, %52 ], [ %60, %59 ]
  call void @llvm.lifetime.end.p0(i64 696, ptr nonnull %5) #11
  ret i32 %65
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @modifiers_getVirtualModifierList(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 26
  %4 = load ptr, ptr %3, align 8, !tbaa !82
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(696) %1, ptr noundef nonnull align 8 dereferenceable(696) @virtualModifierCommonData, i64 696, i1 false), !tbaa.struct !90
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !91
  %7 = icmp eq ptr %6, null
  br i1 %7, label %40, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 3
  %10 = load i16, ptr %9, align 8, !tbaa !92
  switch i16 %10, label %40 [
    i16 25, label %11
    i16 2, label %22
    i16 22, label %33
  ]

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 4
  %13 = load i16, ptr %12, align 2, !tbaa !93
  %14 = icmp eq i16 %13, 4
  br i1 %14, label %15, label %40

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.ArmatureModifierData, ptr %1, i64 0, i32 4
  store ptr %6, ptr %16, align 8, !tbaa !94
  store ptr %4, ptr %1, align 8, !tbaa !95
  %17 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 19
  %18 = load ptr, ptr %17, align 8, !tbaa !96
  %19 = getelementptr inbounds %struct.bArmature, ptr %18, i64 0, i32 12
  %20 = load i16, ptr %19, align 8, !tbaa !97
  %21 = getelementptr inbounds %struct.ArmatureModifierData, ptr %1, i64 0, i32 1
  store i16 %20, ptr %21, align 8, !tbaa !99
  br label %40

22:                                               ; preds = %8
  %23 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 4
  %24 = load i16, ptr %23, align 2, !tbaa !93
  %25 = icmp eq i16 %24, 4
  br i1 %25, label %26, label %40

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.VirtualModifierData, ptr %1, i64 0, i32 1
  %28 = getelementptr inbounds %struct.VirtualModifierData, ptr %1, i64 0, i32 1, i32 1
  store ptr %6, ptr %28, align 8, !tbaa !100
  %29 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 57
  %30 = load i16, ptr %29, align 4, !tbaa !101
  %31 = add i16 %30, 1
  %32 = getelementptr inbounds %struct.VirtualModifierData, ptr %1, i64 0, i32 1, i32 3
  store i16 %31, ptr %32, align 8, !tbaa !102
  store ptr %4, ptr %27, align 8, !tbaa !103
  br label %40

33:                                               ; preds = %8
  %34 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 4
  %35 = load i16, ptr %34, align 2, !tbaa !93
  %36 = icmp eq i16 %35, 4
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.VirtualModifierData, ptr %1, i64 0, i32 2
  %39 = getelementptr inbounds %struct.VirtualModifierData, ptr %1, i64 0, i32 2, i32 1
  store ptr %6, ptr %39, align 8, !tbaa !104
  store ptr %4, ptr %38, align 8, !tbaa !105
  br label %40

40:                                               ; preds = %8, %11, %22, %15, %33, %37, %26, %2
  %41 = phi ptr [ %1, %15 ], [ %27, %26 ], [ %38, %37 ], [ %4, %33 ], [ %4, %2 ], [ %4, %22 ], [ %4, %11 ], [ %4, %8 ]
  %42 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %43 = load i16, ptr %42, align 8, !tbaa !92
  switch i16 %43, label %65 [
    i16 1, label %44
    i16 22, label %44
  ]

44:                                               ; preds = %40, %40
  %45 = tail call ptr @BKE_key_from_object(ptr noundef nonnull %0) #9
  %46 = icmp eq ptr %45, null
  br i1 %46, label %65, label %47

47:                                               ; preds = %44
  %48 = load i16, ptr %42, align 8, !tbaa !92
  %49 = icmp eq i16 %48, 1
  br i1 %49, label %50, label %59

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 114
  %52 = load i8, ptr %51, align 1, !tbaa !106
  %53 = and i8 %52, 4
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.VirtualModifierData, ptr %1, i64 0, i32 3, i32 0, i32 3
  %57 = load i32, ptr %56, align 4, !tbaa !58
  %58 = or i32 %57, 12
  store i32 %58, ptr %56, align 4, !tbaa !58
  br label %63

59:                                               ; preds = %50, %47
  %60 = getelementptr inbounds %struct.VirtualModifierData, ptr %1, i64 0, i32 3, i32 0, i32 3
  %61 = load i32, ptr %60, align 4, !tbaa !58
  %62 = and i32 %61, -5
  store i32 %62, ptr %60, align 4, !tbaa !58
  br label %63

63:                                               ; preds = %59, %55
  %64 = getelementptr inbounds %struct.VirtualModifierData, ptr %1, i64 0, i32 3
  store ptr %41, ptr %64, align 8, !tbaa !107
  br label %65

65:                                               ; preds = %40, %63, %44
  %66 = phi ptr [ %64, %63 ], [ %41, %44 ], [ %41, %40 ]
  ret ptr %66
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @modifiers_isSoftbodyEnabled(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = tail call ptr @modifiers_findByType(ptr noundef %0, i32 noundef 10) #10
  %3 = icmp eq ptr %2, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ModifierData, ptr %2, i64 0, i32 3
  %6 = load i32, ptr %5, align 4, !tbaa !68
  %7 = and i32 %6, 3
  %8 = icmp ne i32 %7, 0
  %9 = zext i1 %8 to i8
  br label %10

10:                                               ; preds = %4, %1
  %11 = phi i8 [ 0, %1 ], [ %9, %4 ]
  ret i8 %11
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @modifiers_isClothEnabled(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = tail call ptr @modifiers_findByType(ptr noundef %0, i32 noundef 22) #10
  %3 = icmp eq ptr %2, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ModifierData, ptr %2, i64 0, i32 3
  %6 = load i32, ptr %5, align 4, !tbaa !68
  %7 = and i32 %6, 3
  %8 = icmp ne i32 %7, 0
  %9 = zext i1 %8 to i8
  br label %10

10:                                               ; preds = %4, %1
  %11 = phi i8 [ 0, %1 ], [ %9, %4 ]
  ret i8 %11
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @modifiers_isModifierEnabled(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = tail call ptr @modifiers_findByType(ptr noundef %0, i32 noundef %1) #10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ModifierData, ptr %3, i64 0, i32 3
  %7 = load i32, ptr %6, align 4, !tbaa !68
  %8 = and i32 %7, 3
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i8
  br label %11

11:                                               ; preds = %5, %2
  %12 = phi i8 [ 0, %2 ], [ %10, %5 ]
  ret i8 %12
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @modifiers_isParticleEnabled(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = tail call ptr @modifiers_findByType(ptr noundef %0, i32 noundef 19) #10
  %3 = icmp eq ptr %2, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ModifierData, ptr %2, i64 0, i32 3
  %6 = load i32, ptr %5, align 4, !tbaa !68
  %7 = and i32 %6, 3
  %8 = icmp ne i32 %7, 0
  %9 = zext i1 %8 to i8
  br label %10

10:                                               ; preds = %4, %1
  %11 = phi i8 [ 0, %1 ], [ %9, %4 ]
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @modifier_isEnabled(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ModifierData, ptr %1, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !61
  %6 = tail call ptr @modifierType_getInfo(i32 noundef %5) #10
  %7 = getelementptr inbounds %struct.ModifierData, ptr %1, i64 0, i32 7
  store ptr %0, ptr %7, align 8, !tbaa !79
  %8 = getelementptr inbounds %struct.ModifierData, ptr %1, i64 0, i32 3
  %9 = load i32, ptr %8, align 4, !tbaa !68
  %10 = and i32 %9, %2
  %11 = icmp eq i32 %10, %2
  br i1 %11, label %12, label %35

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %6, i64 0, i32 15
  %14 = load ptr, ptr %13, align 8, !tbaa !80
  %15 = icmp eq ptr %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %12
  %17 = icmp eq i32 %2, 2
  %18 = zext i1 %17 to i32
  %19 = tail call zeroext i8 %14(ptr noundef nonnull %1, i32 noundef %18) #9
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %16
  %22 = load i32, ptr %8, align 4, !tbaa !68
  br label %23

23:                                               ; preds = %21, %12
  %24 = phi i32 [ %22, %21 ], [ %9, %12 ]
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = and i32 %2, 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %6, i64 0, i32 4
  %31 = load i32, ptr %30, align 8, !tbaa !62
  %32 = and i32 %31, 8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29, %26
  br label %35

35:                                               ; preds = %29, %23, %16, %3, %34
  %36 = phi i8 [ 1, %34 ], [ 0, %3 ], [ 0, %16 ], [ 0, %23 ], [ 0, %29 ]
  ret i8 %36
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @modifiers_calcDataMasks(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef readnone %5, i64 noundef %6) local_unnamed_addr #0 {
  %8 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  store ptr null, ptr %8, align 8, !tbaa !35
  %9 = icmp eq ptr %2, null
  br i1 %9, label %50, label %10

10:                                               ; preds = %7, %33
  %11 = phi ptr [ %17, %33 ], [ null, %7 ]
  %12 = phi ptr [ %34, %33 ], [ %2, %7 ]
  %13 = getelementptr inbounds %struct.ModifierData, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !61
  %15 = tail call ptr @modifierType_getInfo(i32 noundef %14) #10
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %17 = tail call ptr %16(i64 noundef 16, ptr noundef nonnull @.str) #9
  %18 = tail call zeroext i8 @modifier_isEnabled(ptr noundef %0, ptr noundef nonnull %12, i32 noundef %4) #10, !range !81
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %33, label %20

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %15, i64 0, i32 13
  %22 = load ptr, ptr %21, align 8, !tbaa !108
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = tail call i64 %22(ptr noundef %1, ptr noundef nonnull %12) #9
  %26 = getelementptr inbounds %struct.CDMaskLink, ptr %17, i64 0, i32 1
  store i64 %25, ptr %26, align 8, !tbaa !109
  br label %27

27:                                               ; preds = %24, %20
  %28 = icmp eq ptr %12, %5
  br i1 %28, label %29, label %33

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.CDMaskLink, ptr %17, i64 0, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !109
  %32 = or i64 %31, %6
  store i64 %32, ptr %30, align 8, !tbaa !109
  br label %33

33:                                               ; preds = %27, %29, %10
  store ptr %11, ptr %17, align 8, !tbaa !111
  store ptr %17, ptr %8, align 8, !tbaa !35
  %34 = load ptr, ptr %12, align 8, !tbaa !88
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %10, !llvm.loop !112

36:                                               ; preds = %33, %43
  %37 = phi ptr [ %48, %43 ], [ %17, %33 ]
  %38 = phi ptr [ %37, %43 ], [ null, %33 ]
  %39 = icmp eq ptr %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.CDMaskLink, ptr %38, i64 0, i32 1
  %42 = load i64, ptr %41, align 8, !tbaa !109
  br label %43

43:                                               ; preds = %36, %40
  %44 = phi i64 [ %42, %40 ], [ %3, %36 ]
  %45 = getelementptr inbounds %struct.CDMaskLink, ptr %37, i64 0, i32 1
  %46 = load i64, ptr %45, align 8, !tbaa !109
  %47 = or i64 %46, %44
  store i64 %47, ptr %45, align 8, !tbaa !109
  %48 = load ptr, ptr %37, align 8, !tbaa !35
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %36, !llvm.loop !113

50:                                               ; preds = %43, %7
  call void @BLI_linklist_reverse(ptr noundef nonnull %8) #9
  %51 = load ptr, ptr %8, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  ret ptr %51
}

; Function Attrs: optsize
declare void @BLI_linklist_reverse(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @modifiers_getLastPreview(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = and i32 %2, -5
  %5 = icmp ne i32 %4, 1
  %6 = icmp eq ptr %1, null
  %7 = or i1 %5, %6
  br i1 %7, label %21, label %8

8:                                                ; preds = %3, %17
  %9 = phi ptr [ %18, %17 ], [ null, %3 ]
  %10 = phi ptr [ %19, %17 ], [ %1, %3 ]
  %11 = tail call zeroext i8 @modifier_isEnabled(ptr noundef %0, ptr noundef nonnull %10, i32 noundef %2) #10, !range !81
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %8
  %14 = tail call zeroext i8 @modifier_isPreview(ptr noundef nonnull %10) #10, !range !81
  %15 = icmp eq i8 %14, 0
  %16 = select i1 %15, ptr %9, ptr %10
  br label %17

17:                                               ; preds = %13, %8
  %18 = phi ptr [ %9, %8 ], [ %16, %13 ]
  %19 = load ptr, ptr %10, align 8, !tbaa !88
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %8, !llvm.loop !114

21:                                               ; preds = %17, %3
  %22 = phi ptr [ null, %3 ], [ %18, %17 ]
  ret ptr %22
}

; Function Attrs: optsize
declare ptr @BKE_key_from_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @modifiers_isDeformedByArmature(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.VirtualModifierData, align 8
  call void @llvm.lifetime.start.p0(i64 696, ptr nonnull %2) #11
  %3 = call ptr @modifiers_getVirtualModifierList(ptr noundef %0, ptr noundef nonnull %2) #10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %29, label %5

5:                                                ; preds = %1, %20
  %6 = phi ptr [ %21, %20 ], [ null, %1 ]
  %7 = phi ptr [ %22, %20 ], [ %3, %1 ]
  %8 = getelementptr inbounds %struct.ModifierData, ptr %7, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !61
  %10 = icmp eq i32 %9, 8
  br i1 %10, label %11, label %20

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.ArmatureModifierData, ptr %7, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !115
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 53
  %17 = load i16, ptr %16, align 4, !tbaa !116
  %18 = and i16 %17, 1
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %5, %15, %11
  %21 = phi ptr [ %7, %15 ], [ %7, %11 ], [ %6, %5 ]
  %22 = load ptr, ptr %7, align 8, !tbaa !88
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %5, !llvm.loop !117

24:                                               ; preds = %20
  %25 = icmp eq ptr %21, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.ArmatureModifierData, ptr %21, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !115
  br label %29

29:                                               ; preds = %15, %1, %24, %26
  %30 = phi ptr [ %28, %26 ], [ null, %24 ], [ null, %1 ], [ %13, %15 ]
  call void @llvm.lifetime.end.p0(i64 696, ptr nonnull %2) #11
  ret ptr %30
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @modifiers_isDeformedByLattice(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.VirtualModifierData, align 8
  call void @llvm.lifetime.start.p0(i64 696, ptr nonnull %2) #11
  %3 = call ptr @modifiers_getVirtualModifierList(ptr noundef %0, ptr noundef nonnull %2) #10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %29, label %5

5:                                                ; preds = %1, %20
  %6 = phi ptr [ %21, %20 ], [ null, %1 ]
  %7 = phi ptr [ %22, %20 ], [ %3, %1 ]
  %8 = getelementptr inbounds %struct.ModifierData, ptr %7, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !61
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %20

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.LatticeModifierData, ptr %7, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !118
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 53
  %17 = load i16, ptr %16, align 4, !tbaa !116
  %18 = and i16 %17, 1
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %5, %15, %11
  %21 = phi ptr [ %7, %15 ], [ %7, %11 ], [ %6, %5 ]
  %22 = load ptr, ptr %7, align 8, !tbaa !88
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %5, !llvm.loop !119

24:                                               ; preds = %20
  %25 = icmp eq ptr %21, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.LatticeModifierData, ptr %21, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !118
  br label %29

29:                                               ; preds = %15, %1, %24, %26
  %30 = phi ptr [ %28, %26 ], [ null, %24 ], [ null, %1 ], [ %13, %15 ]
  call void @llvm.lifetime.end.p0(i64 696, ptr nonnull %2) #11
  ret ptr %30
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @modifiers_isDeformedByCurve(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.VirtualModifierData, align 8
  call void @llvm.lifetime.start.p0(i64 696, ptr nonnull %2) #11
  %3 = call ptr @modifiers_getVirtualModifierList(ptr noundef %0, ptr noundef nonnull %2) #10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %29, label %5

5:                                                ; preds = %1, %20
  %6 = phi ptr [ %21, %20 ], [ null, %1 ]
  %7 = phi ptr [ %22, %20 ], [ %3, %1 ]
  %8 = getelementptr inbounds %struct.ModifierData, ptr %7, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !61
  %10 = icmp eq i32 %9, 3
  br i1 %10, label %11, label %20

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.CurveModifierData, ptr %7, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !120
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 53
  %17 = load i16, ptr %16, align 4, !tbaa !116
  %18 = and i16 %17, 1
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %5, %15, %11
  %21 = phi ptr [ %7, %15 ], [ %7, %11 ], [ %6, %5 ]
  %22 = load ptr, ptr %7, align 8, !tbaa !88
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %5, !llvm.loop !121

24:                                               ; preds = %20
  %25 = icmp eq ptr %21, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.CurveModifierData, ptr %21, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !120
  br label %29

29:                                               ; preds = %15, %1, %24, %26
  %30 = phi ptr [ %28, %26 ], [ null, %24 ], [ null, %1 ], [ %13, %15 ]
  call void @llvm.lifetime.end.p0(i64 696, ptr nonnull %2) #11
  ret ptr %30
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @modifiers_usesArmature(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #0 {
  %3 = alloca %struct.VirtualModifierData, align 8
  call void @llvm.lifetime.start.p0(i64 696, ptr nonnull %3) #11
  %4 = call ptr @modifiers_getVirtualModifierList(ptr noundef %0, ptr noundef nonnull %3) #10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %22, label %6

6:                                                ; preds = %2, %19
  %7 = phi ptr [ %20, %19 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.ModifierData, ptr %7, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !61
  %10 = icmp eq i32 %9, 8
  br i1 %10, label %11, label %19

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.ArmatureModifierData, ptr %7, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !115
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 19
  %17 = load ptr, ptr %16, align 8, !tbaa !96
  %18 = icmp eq ptr %17, %1
  br i1 %18, label %22, label %19

19:                                               ; preds = %11, %15, %6
  %20 = load ptr, ptr %7, align 8, !tbaa !88
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %6, !llvm.loop !122

22:                                               ; preds = %15, %19, %2
  %23 = phi i8 [ 0, %2 ], [ 0, %19 ], [ 1, %15 ]
  call void @llvm.lifetime.end.p0(i64 696, ptr nonnull %3) #11
  ret i8 %23
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @modifier_isCorrectableDeformed(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !61
  %4 = tail call ptr @modifierType_getInfo(i32 noundef %3) #10
  %5 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %4, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !123
  %7 = icmp ne ptr %6, null
  %8 = zext i1 %7 to i8
  ret i8 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @modifiers_isCorrectableDeformed(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.VirtualModifierData, align 8
  call void @llvm.lifetime.start.p0(i64 696, ptr nonnull %3) #11
  %4 = call ptr @modifiers_getVirtualModifierList(ptr noundef %1, ptr noundef nonnull %3) #10
  %5 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 27
  %6 = load i32, ptr %5, align 8, !tbaa !124
  %7 = icmp eq i32 %6, 1
  %8 = select i1 %7, i32 5, i32 1
  %9 = icmp eq ptr %4, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %2, %17
  %11 = phi ptr [ %18, %17 ], [ %4, %2 ]
  %12 = call zeroext i8 @modifier_isEnabled(ptr noundef %0, ptr noundef nonnull %11, i32 noundef %8) #10, !range !81
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = call zeroext i8 @modifier_isCorrectableDeformed(ptr noundef nonnull %11) #10, !range !81
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %10, %14
  %18 = load ptr, ptr %11, align 8, !tbaa !88
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %10, !llvm.loop !125

20:                                               ; preds = %14, %17, %2
  %21 = phi i8 [ 0, %2 ], [ 0, %17 ], [ 1, %14 ]
  call void @llvm.lifetime.end.p0(i64 696, ptr nonnull %3) #11
  ret i8 %21
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @modifiers_isPreview(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 26
  br label %3

3:                                                ; preds = %7, %1
  %4 = phi ptr [ %2, %1 ], [ %5, %7 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = tail call zeroext i8 @modifier_isPreview(ptr noundef nonnull %5) #10, !range !81
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %3, label %10, !llvm.loop !126

10:                                               ; preds = %3, %7
  %11 = phi i8 [ 1, %7 ], [ 0, %3 ]
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @modifier_freeTemporaryData(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !61
  %4 = icmp eq i32 %3, 8
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ArmatureModifierData, ptr %0, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !127
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  tail call void %10(ptr noundef nonnull %7) #9
  store ptr null, ptr %6, align 8, !tbaa !127
  br label %11

11:                                               ; preds = %5, %9, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @test_object_modifiers(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %3 = load i16, ptr %2, align 8, !tbaa !92
  %4 = icmp eq i16 %3, 1
  br i1 %4, label %5, label %18

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 26
  %7 = load ptr, ptr %6, align 8, !tbaa !35
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %5, %15
  %10 = phi ptr [ %16, %15 ], [ %7, %5 ]
  %11 = getelementptr inbounds %struct.ModifierData, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !61
  %13 = icmp eq i32 %12, 29
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  tail call void @multiresModifier_set_levels_from_disps(ptr noundef nonnull %10, ptr noundef %0) #9
  br label %15

15:                                               ; preds = %9, %14
  %16 = load ptr, ptr %10, align 8, !tbaa !35
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %9, !llvm.loop !128

18:                                               ; preds = %15, %5, %1
  ret void
}

; Function Attrs: optsize
declare void @multiresModifier_set_levels_from_disps(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @modifier_path_relbase(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 3), align 8, !tbaa !129
  %3 = icmp eq i8 %2, 0
  %4 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !131
  %6 = icmp eq ptr %5, null
  %7 = select i1 %3, i1 %6, i1 false
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = icmp eq ptr %5, null
  %10 = getelementptr inbounds %struct.Library, ptr %5, i64 0, i32 4
  %11 = load ptr, ptr @G, align 8
  %12 = getelementptr inbounds %struct.Main, ptr %11, i64 0, i32 2
  %13 = select i1 %9, ptr %12, ptr %10
  br label %16

14:                                               ; preds = %1
  %15 = tail call ptr @BLI_temp_dir_session() #9
  br label %16

16:                                               ; preds = %14, %8
  %17 = phi ptr [ %13, %8 ], [ %15, %14 ]
  ret ptr %17
}

; Function Attrs: optsize
declare ptr @BLI_temp_dir_session() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @modifier_path_init(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 3), align 8, !tbaa !129
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call ptr @BLI_temp_dir_session() #9
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ @.str.1, %3 ]
  %10 = sext i32 %1 to i64
  tail call void @BLI_join_dirfile(ptr noundef %0, i64 noundef %10, ptr noundef %9, ptr noundef %2) #9
  ret void
}

; Function Attrs: optsize
declare void @BLI_join_dirfile(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @modwrap_applyModifier(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !61
  %7 = tail call ptr @modifierType_getInfo(i32 noundef %6) #10
  %8 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %7, i64 0, i32 18
  %9 = load ptr, ptr %8, align 8, !tbaa !132
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %4
  %12 = tail call zeroext i8 %9(ptr noundef nonnull %0) #9
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  tail call void @DM_ensure_normals(ptr noundef %2) #9
  br label %15

15:                                               ; preds = %14, %11, %4
  %16 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %7, i64 0, i32 10
  %17 = load ptr, ptr %16, align 8, !tbaa !133
  %18 = tail call ptr %17(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #9
  ret ptr %18
}

; Function Attrs: optsize
declare void @DM_ensure_normals(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @modwrap_applyModifierEM(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !61
  %8 = tail call ptr @modifierType_getInfo(i32 noundef %7) #10
  %9 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %8, i64 0, i32 18
  %10 = load ptr, ptr %9, align 8, !tbaa !132
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %5
  %13 = tail call zeroext i8 %10(ptr noundef nonnull %0) #9
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  tail call void @DM_ensure_normals(ptr noundef %3) #9
  br label %16

16:                                               ; preds = %15, %12, %5
  %17 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %8, i64 0, i32 11
  %18 = load ptr, ptr %17, align 8, !tbaa !134
  %19 = tail call ptr %18(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #9
  ret ptr %19
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @modwrap_deformVerts(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !61
  %9 = tail call ptr @modifierType_getInfo(i32 noundef %8) #10
  %10 = icmp eq ptr %2, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %9, i64 0, i32 18
  %13 = load ptr, ptr %12, align 8, !tbaa !132
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = tail call zeroext i8 %13(ptr noundef nonnull %0) #9
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  tail call void @DM_ensure_normals(ptr noundef nonnull %2) #9
  br label %19

19:                                               ; preds = %18, %15, %11, %6
  %20 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %9, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !135
  tail call void %21(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @modwrap_deformVertsEM(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !61
  %9 = tail call ptr @modifierType_getInfo(i32 noundef %8) #10
  %10 = icmp eq ptr %3, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %9, i64 0, i32 18
  %13 = load ptr, ptr %12, align 8, !tbaa !132
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = tail call zeroext i8 %13(ptr noundef nonnull %0) #9
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  tail call void @DM_ensure_normals(ptr noundef nonnull %3) #9
  br label %19

19:                                               ; preds = %18, %15, %11, %6
  %20 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %9, i64 0, i32 8
  %21 = load ptr, ptr %20, align 8, !tbaa !136
  tail call void %21(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #9
  ret void
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #8 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind optsize }
attributes #10 = { optsize }
attributes #11 = { nounwind }

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
!34 = !{i64 0, i64 8, !35, i64 8, i64 8, !35, i64 16, i64 4, !39, i64 20, i64 4, !39, i64 24, i64 4, !39, i64 28, i64 4, !39, i64 32, i64 64, !41, i64 96, i64 8, !35, i64 104, i64 8, !35, i64 112, i64 2, !42, i64 114, i64 2, !42, i64 116, i64 4, !39, i64 120, i64 8, !35, i64 128, i64 8, !35, i64 136, i64 64, !41}
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !40, i64 0}
!40 = !{!"int", !37, i64 0}
!41 = !{!37, !37, i64 0}
!42 = !{!43, !43, i64 0}
!43 = !{!"short", !37, i64 0}
!44 = !{i64 0, i64 8, !35, i64 8, i64 8, !35, i64 16, i64 4, !39, i64 20, i64 4, !39, i64 24, i64 4, !39, i64 28, i64 4, !39, i64 32, i64 64, !41, i64 96, i64 8, !35, i64 104, i64 8, !35, i64 112, i64 8, !35, i64 120, i64 64, !41, i64 184, i64 2, !42, i64 186, i64 6, !41}
!45 = !{i64 0, i64 8, !35, i64 8, i64 8, !35, i64 16, i64 4, !39, i64 20, i64 4, !39, i64 24, i64 4, !39, i64 28, i64 4, !39, i64 32, i64 64, !41, i64 96, i64 8, !35, i64 104, i64 8, !35, i64 112, i64 8, !35, i64 120, i64 64, !41, i64 184, i64 4, !46, i64 188, i64 4, !41}
!46 = !{!47, !47, i64 0}
!47 = !{!"float", !37, i64 0}
!48 = !{i64 0, i64 8, !35, i64 8, i64 8, !35, i64 16, i64 4, !39, i64 20, i64 4, !39, i64 24, i64 4, !39, i64 28, i64 4, !39, i64 32, i64 64, !41, i64 96, i64 8, !35, i64 104, i64 8, !35}
!49 = !{!50, !40, i64 20}
!50 = !{!"VirtualModifierData", !51, i64 0, !53, i64 200, !54, i64 392, !55, i64 584}
!51 = !{!"ArmatureModifierData", !52, i64 0, !43, i64 112, !43, i64 114, !40, i64 116, !36, i64 120, !36, i64 128, !37, i64 136}
!52 = !{!"ModifierData", !36, i64 0, !36, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !37, i64 32, !36, i64 96, !36, i64 104}
!53 = !{!"CurveModifierData", !52, i64 0, !36, i64 112, !37, i64 120, !43, i64 184, !37, i64 186}
!54 = !{!"LatticeModifierData", !52, i64 0, !36, i64 112, !37, i64 120, !47, i64 184, !37, i64 188}
!55 = !{!"ShapeKeyModifierData", !52, i64 0}
!56 = !{!50, !40, i64 220}
!57 = !{!50, !40, i64 412}
!58 = !{!50, !40, i64 604}
!59 = !{!60, !40, i64 64}
!60 = !{!"ModifierTypeInfo", !37, i64 0, !37, i64 32, !40, i64 64, !40, i64 68, !40, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208}
!61 = !{!52, !40, i64 16}
!62 = !{!60, !40, i64 72}
!63 = !{!60, !36, i64 136}
!64 = !{!60, !36, i64 152}
!65 = !{!52, !36, i64 104}
!66 = !{!60, !36, i64 176}
!67 = !{!60, !40, i64 68}
!68 = !{!52, !40, i64 20}
!69 = distinct !{!69, !70}
!70 = !{!"llvm.loop.mustprogress"}
!71 = distinct !{!71, !70}
!72 = !{!60, !36, i64 192}
!73 = distinct !{!73, !70}
!74 = !{!60, !36, i64 200}
!75 = distinct !{!75, !70}
!76 = !{!60, !36, i64 208}
!77 = distinct !{!77, !70}
!78 = !{!60, !36, i64 80}
!79 = !{!52, !36, i64 96}
!80 = !{!60, !36, i64 160}
!81 = !{i8 0, i8 2}
!82 = !{!83, !36, i64 416}
!83 = !{!"Object", !84, i64 0, !36, i64 120, !36, i64 128, !43, i64 136, !43, i64 138, !40, i64 140, !40, i64 144, !40, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !85, i64 312, !36, i64 360, !86, i64 368, !86, i64 384, !86, i64 400, !86, i64 416, !40, i64 432, !40, i64 436, !36, i64 440, !36, i64 448, !40, i64 456, !40, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !47, i64 616, !47, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !40, i64 944, !43, i64 948, !43, i64 950, !43, i64 952, !43, i64 954, !43, i64 956, !43, i64 958, !43, i64 960, !43, i64 962, !43, i64 964, !37, i64 966, !37, i64 967, !40, i64 968, !40, i64 972, !40, i64 976, !40, i64 980, !40, i64 984, !47, i64 988, !47, i64 992, !47, i64 996, !47, i64 1000, !47, i64 1004, !47, i64 1008, !47, i64 1012, !47, i64 1016, !47, i64 1020, !47, i64 1024, !47, i64 1028, !47, i64 1032, !43, i64 1036, !43, i64 1038, !43, i64 1040, !37, i64 1042, !37, i64 1043, !43, i64 1044, !37, i64 1046, !37, i64 1047, !47, i64 1048, !47, i64 1052, !86, i64 1056, !86, i64 1072, !86, i64 1088, !86, i64 1104, !47, i64 1120, !43, i64 1124, !43, i64 1126, !37, i64 1128, !40, i64 1144, !40, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !43, i64 1162, !37, i64 1164, !86, i64 1176, !86, i64 1192, !86, i64 1208, !86, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !43, i64 1266, !47, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !87, i64 1304, !87, i64 1312, !40, i64 1320, !40, i64 1324, !86, i64 1328, !86, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !86, i64 1400, !36, i64 1416}
!84 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !43, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !36, i64 112}
!85 = !{!"bAnimVizSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !43, i64 16, !43, i64 18, !43, i64 20, !43, i64 22, !43, i64 24, !43, i64 26, !43, i64 28, !43, i64 30, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44}
!86 = !{!"ListBase", !36, i64 0, !36, i64 8}
!87 = !{!"long", !37, i64 0}
!88 = !{!52, !36, i64 0}
!89 = distinct !{!89, !70}
!90 = !{i64 0, i64 8, !35, i64 8, i64 8, !35, i64 16, i64 4, !39, i64 20, i64 4, !39, i64 24, i64 4, !39, i64 28, i64 4, !39, i64 32, i64 64, !41, i64 96, i64 8, !35, i64 104, i64 8, !35, i64 112, i64 2, !42, i64 114, i64 2, !42, i64 116, i64 4, !39, i64 120, i64 8, !35, i64 128, i64 8, !35, i64 136, i64 64, !41, i64 200, i64 8, !35, i64 208, i64 8, !35, i64 216, i64 4, !39, i64 220, i64 4, !39, i64 224, i64 4, !39, i64 228, i64 4, !39, i64 232, i64 64, !41, i64 296, i64 8, !35, i64 304, i64 8, !35, i64 312, i64 8, !35, i64 320, i64 64, !41, i64 384, i64 2, !42, i64 386, i64 6, !41, i64 392, i64 8, !35, i64 400, i64 8, !35, i64 408, i64 4, !39, i64 412, i64 4, !39, i64 416, i64 4, !39, i64 420, i64 4, !39, i64 424, i64 64, !41, i64 488, i64 8, !35, i64 496, i64 8, !35, i64 504, i64 8, !35, i64 512, i64 64, !41, i64 576, i64 4, !46, i64 580, i64 4, !41, i64 584, i64 8, !35, i64 592, i64 8, !35, i64 600, i64 4, !39, i64 604, i64 4, !39, i64 608, i64 4, !39, i64 612, i64 4, !39, i64 616, i64 64, !41, i64 680, i64 8, !35, i64 688, i64 8, !35}
!91 = !{!83, !36, i64 216}
!92 = !{!83, !43, i64 136}
!93 = !{!83, !43, i64 138}
!94 = !{!50, !36, i64 120}
!95 = !{!50, !36, i64 0}
!96 = !{!83, !36, i64 296}
!97 = !{!98, !43, i64 208}
!98 = !{!"bArmature", !84, i64 0, !36, i64 120, !86, i64 128, !86, i64 144, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !40, i64 192, !40, i64 196, !40, i64 200, !40, i64 204, !43, i64 208, !43, i64 210, !40, i64 212, !40, i64 216, !40, i64 220, !43, i64 224, !43, i64 226, !43, i64 228, !43, i64 230, !40, i64 232, !40, i64 236, !40, i64 240, !40, i64 244, !40, i64 248, !40, i64 252}
!99 = !{!50, !43, i64 112}
!100 = !{!50, !36, i64 312}
!101 = !{!83, !43, i64 956}
!102 = !{!50, !43, i64 384}
!103 = !{!50, !36, i64 200}
!104 = !{!50, !36, i64 504}
!105 = !{!50, !36, i64 392}
!106 = !{!83, !37, i64 1265}
!107 = !{!50, !36, i64 584}
!108 = !{!60, !36, i64 144}
!109 = !{!110, !87, i64 8}
!110 = !{!"CDMaskLink", !36, i64 0, !87, i64 8}
!111 = !{!110, !36, i64 0}
!112 = distinct !{!112, !70}
!113 = distinct !{!113, !70}
!114 = distinct !{!114, !70}
!115 = !{!51, !36, i64 120}
!116 = !{!83, !43, i64 948}
!117 = distinct !{!117, !70}
!118 = !{!54, !36, i64 112}
!119 = distinct !{!119, !70}
!120 = !{!53, !36, i64 112}
!121 = distinct !{!121, !70}
!122 = distinct !{!122, !70}
!123 = !{!60, !36, i64 112}
!124 = !{!83, !40, i64 432}
!125 = distinct !{!125, !70}
!126 = distinct !{!126, !70}
!127 = !{!51, !36, i64 128}
!128 = distinct !{!128, !70}
!129 = !{!130, !37, i64 2056}
!130 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !86, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !43, i64 2084, !43, i64 2086, !43, i64 2088, !37, i64 2090, !43, i64 2092, !40, i64 2096, !40, i64 2100, !37, i64 2104, !40, i64 2108, !40, i64 2112, !37, i64 2116}
!131 = !{!83, !36, i64 24}
!132 = !{!60, !36, i64 184}
!133 = !{!60, !36, i64 120}
!134 = !{!60, !36, i64 128}
!135 = !{!60, !36, i64 88}
!136 = !{!60, !36, i64 104}
